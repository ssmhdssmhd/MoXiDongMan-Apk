package com.alibaba.fastjson.parser;

import android.support.v4.ca2;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.JSONObject;
import com.alibaba.fastjson.JSONPath;
import com.alibaba.fastjson.JSONPathException;
import com.alibaba.fastjson.parser.deserializer.ExtraProcessable;
import com.alibaba.fastjson.parser.deserializer.ExtraProcessor;
import com.alibaba.fastjson.parser.deserializer.ExtraTypeProvider;
import com.alibaba.fastjson.parser.deserializer.FieldDeserializer;
import com.alibaba.fastjson.parser.deserializer.FieldTypeResolver;
import com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer;
import com.alibaba.fastjson.parser.deserializer.MapDeserializer;
import com.alibaba.fastjson.parser.deserializer.ObjectDeserializer;
import com.alibaba.fastjson.parser.deserializer.PropertyProcessable;
import com.alibaba.fastjson.parser.deserializer.ResolveFieldDeserializer;
import com.alibaba.fastjson.serializer.BeanContext;
import com.alibaba.fastjson.serializer.IntegerCodec;
import com.alibaba.fastjson.serializer.LongCodec;
import com.alibaba.fastjson.serializer.StringCodec;
import com.alibaba.fastjson.util.FieldInfo;
import com.alibaba.fastjson.util.TypeUtils;
import java.io.Closeable;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeSet;

/* loaded from: classes.dex */
public class DefaultJSONParser implements Closeable {
    public static final int NONE = 0;
    public static final int NeedToResolve = 1;
    public static final int TypeNameRedirect = 2;
    private static final Set<Class<?>> primitiveClasses = new HashSet();
    private String[] autoTypeAccept;
    private boolean autoTypeEnable;
    public ParserConfig config;
    public ParseContext context;
    private ParseContext[] contextArray;
    private int contextArrayIndex;
    private DateFormat dateFormat;
    private String dateFormatPattern;
    private List<ExtraProcessor> extraProcessors;
    private List<ExtraTypeProvider> extraTypeProviders;
    public FieldTypeResolver fieldTypeResolver;
    public final Object input;
    public transient BeanContext lastBeanContext;
    public final JSONLexer lexer;
    public int resolveStatus;
    private List<ResolveTask> resolveTaskList;
    public final SymbolTable symbolTable;

    public static class ResolveTask {
        public final ParseContext context;
        public FieldDeserializer fieldDeserializer;
        public ParseContext ownerContext;
        public final String referenceValue;

        public ResolveTask(ParseContext parseContext, String str) {
            this.context = parseContext;
            this.referenceValue = str;
        }
    }

    static {
        Class<?>[] clsArr = {Boolean.TYPE, Byte.TYPE, Short.TYPE, Integer.TYPE, Long.TYPE, Float.TYPE, Double.TYPE, Boolean.class, Byte.class, Short.class, Integer.class, Long.class, Float.class, Double.class, BigInteger.class, BigDecimal.class, String.class};
        for (int i = 0; i < 17; i++) {
            primitiveClasses.add(clsArr[i]);
        }
    }

    public DefaultJSONParser(String str) {
        this(str, ParserConfig.getGlobalInstance(), JSON.DEFAULT_PARSER_FEATURE);
    }

    private void addContext(ParseContext parseContext) {
        int i = this.contextArrayIndex;
        this.contextArrayIndex = i + 1;
        ParseContext[] parseContextArr = this.contextArray;
        if (parseContextArr == null) {
            this.contextArray = new ParseContext[8];
        } else if (i >= parseContextArr.length) {
            ParseContext[] parseContextArr2 = new ParseContext[(parseContextArr.length * 3) / 2];
            System.arraycopy(parseContextArr, 0, parseContextArr2, 0, parseContextArr.length);
            this.contextArray = parseContextArr2;
        }
        this.contextArray[i] = parseContext;
    }

    public final void accept(int i) {
        JSONLexer jSONLexer = this.lexer;
        if (jSONLexer.token() == i) {
            jSONLexer.nextToken();
            return;
        }
        throw new JSONException("syntax error, expect " + JSONToken.name(i) + ", actual " + JSONToken.name(jSONLexer.token()));
    }

    public void acceptType(String str) {
        JSONLexer jSONLexer = this.lexer;
        jSONLexer.nextTokenWithColon();
        if (jSONLexer.token() != 4) {
            throw new JSONException("type not match error");
        }
        if (!str.equals(jSONLexer.stringVal())) {
            throw new JSONException("type not match error");
        }
        jSONLexer.nextToken();
        if (jSONLexer.token() == 16) {
            jSONLexer.nextToken();
        }
    }

    public void addResolveTask(ResolveTask resolveTask) {
        if (this.resolveTaskList == null) {
            this.resolveTaskList = new ArrayList(2);
        }
        this.resolveTaskList.add(resolveTask);
    }

    public void checkListResolve(Collection collection) {
        if (this.resolveStatus == 1) {
            if (!(collection instanceof List)) {
                ResolveTask lastResolveTask = getLastResolveTask();
                lastResolveTask.fieldDeserializer = new ResolveFieldDeserializer(collection);
                lastResolveTask.ownerContext = this.context;
                setResolveStatus(0);
                return;
            }
            int size = collection.size() - 1;
            ResolveTask lastResolveTask2 = getLastResolveTask();
            lastResolveTask2.fieldDeserializer = new ResolveFieldDeserializer(this, (List) collection, size);
            lastResolveTask2.ownerContext = this.context;
            setResolveStatus(0);
        }
    }

    public void checkMapResolve(Map map, Object obj) {
        if (this.resolveStatus == 1) {
            ResolveFieldDeserializer resolveFieldDeserializer = new ResolveFieldDeserializer(map, obj);
            ResolveTask lastResolveTask = getLastResolveTask();
            lastResolveTask.fieldDeserializer = resolveFieldDeserializer;
            lastResolveTask.ownerContext = this.context;
            setResolveStatus(0);
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        JSONLexer jSONLexer = this.lexer;
        try {
            if (jSONLexer.isEnabled(Feature.AutoCloseSource) && jSONLexer.token() != 20) {
                throw new JSONException("not close json text, token : " + JSONToken.name(jSONLexer.token()));
            }
        } finally {
            jSONLexer.close();
        }
    }

    public void config(Feature feature, boolean z) {
        this.lexer.config(feature, z);
    }

    public ParserConfig getConfig() {
        return this.config;
    }

    public ParseContext getContext() {
        return this.context;
    }

    public String getDateFomartPattern() {
        return this.dateFormatPattern;
    }

    public DateFormat getDateFormat() {
        if (this.dateFormat == null) {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat(this.dateFormatPattern, this.lexer.getLocale());
            this.dateFormat = simpleDateFormat;
            simpleDateFormat.setTimeZone(this.lexer.getTimeZone());
        }
        return this.dateFormat;
    }

    public List<ExtraProcessor> getExtraProcessors() {
        if (this.extraProcessors == null) {
            this.extraProcessors = new ArrayList(2);
        }
        return this.extraProcessors;
    }

    public List<ExtraTypeProvider> getExtraTypeProviders() {
        if (this.extraTypeProviders == null) {
            this.extraTypeProviders = new ArrayList(2);
        }
        return this.extraTypeProviders;
    }

    public FieldTypeResolver getFieldTypeResolver() {
        return this.fieldTypeResolver;
    }

    public String getInput() {
        Object obj = this.input;
        return obj instanceof char[] ? new String((char[]) obj) : obj.toString();
    }

    public ResolveTask getLastResolveTask() {
        return this.resolveTaskList.get(r0.size() - 1);
    }

    public JSONLexer getLexer() {
        return this.lexer;
    }

    public Object getObject(String str) {
        for (int i = 0; i < this.contextArrayIndex; i++) {
            if (str.equals(this.contextArray[i].toString())) {
                return this.contextArray[i].object;
            }
        }
        return null;
    }

    public int getResolveStatus() {
        return this.resolveStatus;
    }

    public List<ResolveTask> getResolveTaskList() {
        if (this.resolveTaskList == null) {
            this.resolveTaskList = new ArrayList(2);
        }
        return this.resolveTaskList;
    }

    public SymbolTable getSymbolTable() {
        return this.symbolTable;
    }

    public void handleResovleTask(Object obj) {
        Object objEval;
        FieldInfo fieldInfo;
        List<ResolveTask> list = this.resolveTaskList;
        if (list == null) {
            return;
        }
        int size = list.size();
        for (int i = 0; i < size; i++) {
            ResolveTask resolveTask = this.resolveTaskList.get(i);
            String str = resolveTask.referenceValue;
            ParseContext parseContext = resolveTask.ownerContext;
            Object obj2 = parseContext != null ? parseContext.object : null;
            if (str.startsWith("$")) {
                objEval = getObject(str);
                if (objEval == null) {
                    try {
                        objEval = JSONPath.eval(obj, str);
                    } catch (JSONPathException unused) {
                    }
                }
            } else {
                objEval = resolveTask.context.object;
            }
            FieldDeserializer fieldDeserializer = resolveTask.fieldDeserializer;
            if (fieldDeserializer != null) {
                if (objEval != null && objEval.getClass() == JSONObject.class && (fieldInfo = fieldDeserializer.fieldInfo) != null && !Map.class.isAssignableFrom(fieldInfo.fieldClass)) {
                    objEval = JSONPath.eval(this.contextArray[0].object, str);
                }
                fieldDeserializer.setValue(obj2, objEval);
            }
        }
    }

    public boolean isEnabled(Feature feature) {
        return this.lexer.isEnabled(feature);
    }

    public Object parse() {
        return parse(null);
    }

    public <T> List<T> parseArray(Class<T> cls) {
        ArrayList arrayList = new ArrayList();
        parseArray((Class<?>) cls, (Collection) arrayList);
        return arrayList;
    }

    public Object parseArrayWithType(Type type) {
        if (this.lexer.token() == 8) {
            this.lexer.nextToken();
            return null;
        }
        Type[] actualTypeArguments = ((ParameterizedType) type).getActualTypeArguments();
        if (actualTypeArguments.length != 1) {
            throw new JSONException("not support type " + type);
        }
        Type type2 = actualTypeArguments[0];
        if (type2 instanceof Class) {
            ArrayList arrayList = new ArrayList();
            parseArray((Class<?>) type2, (Collection) arrayList);
            return arrayList;
        }
        if (type2 instanceof WildcardType) {
            WildcardType wildcardType = (WildcardType) type2;
            Type type3 = wildcardType.getUpperBounds()[0];
            if (!Object.class.equals(type3)) {
                ArrayList arrayList2 = new ArrayList();
                parseArray((Class<?>) type3, (Collection) arrayList2);
                return arrayList2;
            }
            if (wildcardType.getLowerBounds().length == 0) {
                return parse();
            }
            throw new JSONException("not support type : " + type);
        }
        if (type2 instanceof TypeVariable) {
            TypeVariable typeVariable = (TypeVariable) type2;
            Type[] bounds = typeVariable.getBounds();
            if (bounds.length != 1) {
                throw new JSONException("not support : " + typeVariable);
            }
            Type type4 = bounds[0];
            if (type4 instanceof Class) {
                ArrayList arrayList3 = new ArrayList();
                parseArray((Class<?>) type4, (Collection) arrayList3);
                return arrayList3;
            }
        }
        if (type2 instanceof ParameterizedType) {
            ArrayList arrayList4 = new ArrayList();
            parseArray((ParameterizedType) type2, arrayList4);
            return arrayList4;
        }
        throw new JSONException("TODO : " + type);
    }

    public void parseExtra(Object obj, String str) {
        this.lexer.nextTokenWithColon();
        List<ExtraTypeProvider> list = this.extraTypeProviders;
        Type extraType = null;
        if (list != null) {
            Iterator<ExtraTypeProvider> it = list.iterator();
            while (it.hasNext()) {
                extraType = it.next().getExtraType(obj, str);
            }
        }
        Object object = extraType == null ? parse() : parseObject(extraType);
        if (obj instanceof ExtraProcessable) {
            ((ExtraProcessable) obj).processExtra(str, object);
            return;
        }
        List<ExtraProcessor> list2 = this.extraProcessors;
        if (list2 != null) {
            Iterator<ExtraProcessor> it2 = list2.iterator();
            while (it2.hasNext()) {
                it2.next().processExtra(obj, str, object);
            }
        }
        if (this.resolveStatus == 1) {
            this.resolveStatus = 0;
        }
    }

    public Object parseKey() {
        if (this.lexer.token() != 18) {
            return parse(null);
        }
        String strStringVal = this.lexer.stringVal();
        this.lexer.nextToken(16);
        return strStringVal;
    }

    /* JADX WARN: Code restructure failed: missing block: B:125:0x025d, code lost:
    
        r5.nextToken(16);
     */
    /* JADX WARN: Code restructure failed: missing block: B:126:0x0268, code lost:
    
        if (r5.token() != 13) goto L152;
     */
    /* JADX WARN: Code restructure failed: missing block: B:127:0x026a, code lost:
    
        r5.nextToken(16);
     */
    /* JADX WARN: Code restructure failed: missing block: B:128:0x026d, code lost:
    
        r0 = r16.config.getDeserializer(r8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:129:0x0275, code lost:
    
        if ((r0 instanceof com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer) == false) goto L138;
     */
    /* JADX WARN: Code restructure failed: missing block: B:130:0x0277, code lost:
    
        r0 = (com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer) r0;
        r2 = r0.createInstance(r16, r8);
        r3 = r10.entrySet().iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:132:0x0289, code lost:
    
        if (r3.hasNext() == false) goto L389;
     */
    /* JADX WARN: Code restructure failed: missing block: B:133:0x028b, code lost:
    
        r4 = (java.util.Map.Entry) r3.next();
        r5 = r4.getKey();
     */
    /* JADX WARN: Code restructure failed: missing block: B:134:0x0297, code lost:
    
        if ((r5 instanceof java.lang.String) == false) goto L393;
     */
    /* JADX WARN: Code restructure failed: missing block: B:135:0x0299, code lost:
    
        r5 = r0.getFieldDeserializer((java.lang.String) r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:136:0x029f, code lost:
    
        if (r5 == null) goto L394;
     */
    /* JADX WARN: Code restructure failed: missing block: B:137:0x02a1, code lost:
    
        r5.setValue(r2, r4.getValue());
     */
    /* JADX WARN: Code restructure failed: missing block: B:138:0x02a9, code lost:
    
        r2 = r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:139:0x02aa, code lost:
    
        if (r2 != null) goto L147;
     */
    /* JADX WARN: Code restructure failed: missing block: B:141:0x02ae, code lost:
    
        if (r8 != java.lang.Cloneable.class) goto L143;
     */
    /* JADX WARN: Code restructure failed: missing block: B:142:0x02b0, code lost:
    
        r2 = new java.util.HashMap();
     */
    /* JADX WARN: Code restructure failed: missing block: B:144:0x02bc, code lost:
    
        if ("java.util.Collections$EmptyMap".equals(r7) == false) goto L146;
     */
    /* JADX WARN: Code restructure failed: missing block: B:145:0x02be, code lost:
    
        r2 = java.util.Collections.emptyMap();
     */
    /* JADX WARN: Code restructure failed: missing block: B:146:0x02c3, code lost:
    
        r2 = r8.newInstance();
     */
    /* JADX WARN: Code restructure failed: missing block: B:148:0x02ca, code lost:
    
        return r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:149:0x02cb, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:151:0x02d3, code lost:
    
        throw new com.alibaba.fastjson.JSONException("create instance error", r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:152:0x02d4, code lost:
    
        setResolveStatus(2);
        r3 = r16.context;
     */
    /* JADX WARN: Code restructure failed: missing block: B:153:0x02da, code lost:
    
        if (r3 == null) goto L160;
     */
    /* JADX WARN: Code restructure failed: missing block: B:154:0x02dc, code lost:
    
        if (r18 == null) goto L160;
     */
    /* JADX WARN: Code restructure failed: missing block: B:156:0x02e0, code lost:
    
        if ((r18 instanceof java.lang.Integer) != false) goto L160;
     */
    /* JADX WARN: Code restructure failed: missing block: B:158:0x02e6, code lost:
    
        if ((r3.fieldName instanceof java.lang.Integer) != false) goto L160;
     */
    /* JADX WARN: Code restructure failed: missing block: B:159:0x02e8, code lost:
    
        popContext();
     */
    /* JADX WARN: Code restructure failed: missing block: B:161:0x02ef, code lost:
    
        if (r17.size() <= 0) goto L165;
     */
    /* JADX WARN: Code restructure failed: missing block: B:162:0x02f1, code lost:
    
        r0 = com.alibaba.fastjson.util.TypeUtils.cast((java.lang.Object) r17, (java.lang.Class<java.lang.Object>) r8, r16.config);
        parseObject(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:164:0x02fd, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:165:0x02fe, code lost:
    
        r0 = r16.config.getDeserializer(r8);
        r3 = r0.getClass();
     */
    /* JADX WARN: Code restructure failed: missing block: B:166:0x030e, code lost:
    
        if (com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer.class.isAssignableFrom(r3) == false) goto L172;
     */
    /* JADX WARN: Code restructure failed: missing block: B:168:0x0312, code lost:
    
        if (r3 == com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer.class) goto L172;
     */
    /* JADX WARN: Code restructure failed: missing block: B:170:0x0316, code lost:
    
        if (r3 == com.alibaba.fastjson.parser.deserializer.ThrowableDeserializer.class) goto L172;
     */
    /* JADX WARN: Code restructure failed: missing block: B:171:0x0318, code lost:
    
        setResolveStatus(0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:173:0x031f, code lost:
    
        if ((r0 instanceof com.alibaba.fastjson.parser.deserializer.MapDeserializer) == false) goto L175;
     */
    /* JADX WARN: Code restructure failed: missing block: B:174:0x0321, code lost:
    
        setResolveStatus(0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:177:0x032c, code lost:
    
        return r0.deserialze(r16, r8, r18);
     */
    /* JADX WARN: Removed duplicated region for block: B:110:0x0205 A[Catch: all -> 0x062b, TryCatch #1 {all -> 0x062b, blocks: (B:24:0x0074, B:26:0x0078, B:29:0x0082, B:32:0x0095, B:36:0x00ad, B:110:0x0205, B:111:0x020b, B:113:0x0216, B:115:0x021e, B:119:0x0234, B:121:0x0242, B:124:0x0255, B:125:0x025d, B:127:0x026a, B:128:0x026d, B:130:0x0277, B:131:0x0285, B:133:0x028b, B:135:0x0299, B:137:0x02a1, B:142:0x02b0, B:143:0x02b6, B:145:0x02be, B:146:0x02c3, B:150:0x02cc, B:151:0x02d3, B:152:0x02d4, B:155:0x02de, B:157:0x02e2, B:159:0x02e8, B:160:0x02eb, B:162:0x02f1, B:165:0x02fe, B:171:0x0318, B:175:0x0325, B:172:0x031d, B:174:0x0321, B:122:0x0248, B:182:0x0334, B:184:0x033c, B:186:0x0346, B:188:0x0357, B:191:0x0362, B:193:0x036a, B:195:0x036e, B:197:0x0374, B:200:0x0379, B:202:0x037d, B:222:0x03c8, B:224:0x03d0, B:227:0x03d9, B:228:0x03f3, B:204:0x0382, B:206:0x038a, B:209:0x0390, B:210:0x039c, B:213:0x03a5, B:216:0x03ab, B:219:0x03b0, B:220:0x03bc, B:229:0x03f4, B:230:0x0412, B:233:0x0416, B:235:0x041a, B:237:0x041e, B:240:0x0424, B:244:0x042c, B:250:0x043c, B:252:0x044b, B:254:0x0456, B:255:0x045e, B:256:0x0461, B:268:0x048d, B:270:0x0498, B:274:0x04a5, B:277:0x04b5, B:278:0x04d5, B:263:0x0471, B:265:0x047b, B:267:0x048a, B:266:0x0480, B:281:0x04da, B:283:0x04e4, B:285:0x04ea, B:286:0x04ed, B:288:0x04f8, B:289:0x04fc, B:291:0x0507, B:294:0x050e, B:297:0x0517, B:298:0x051c, B:301:0x0521, B:303:0x0526, B:307:0x052f, B:309:0x0537, B:312:0x0555, B:314:0x055b, B:317:0x0561, B:319:0x0567, B:321:0x056f, B:324:0x057e, B:327:0x0586, B:329:0x058a, B:330:0x0591, B:332:0x0596, B:333:0x0599, B:335:0x05a1, B:338:0x05ab, B:341:0x05b5, B:342:0x05ba, B:343:0x05bf, B:344:0x05d9, B:310:0x0548, B:345:0x05da, B:347:0x05ec, B:350:0x05f3, B:353:0x05fe, B:354:0x061e, B:39:0x00bf, B:40:0x00dd, B:43:0x00e2, B:45:0x00ed, B:47:0x00f1, B:49:0x00f5, B:52:0x00fb, B:59:0x010a, B:61:0x0112, B:64:0x0122, B:65:0x013a, B:66:0x013b, B:67:0x0140, B:78:0x0155, B:79:0x015b, B:81:0x0162, B:83:0x016b, B:85:0x0173, B:87:0x0178, B:90:0x0180, B:91:0x0198, B:82:0x0167, B:92:0x0199, B:93:0x01b1, B:99:0x01bb, B:101:0x01c3, B:104:0x01d4, B:105:0x01f4, B:106:0x01f5, B:107:0x01fa, B:108:0x01fb, B:355:0x061f, B:356:0x0624, B:357:0x0625, B:358:0x062a), top: B:364:0x0074, inners: #0, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:178:0x032d  */
    /* JADX WARN: Removed duplicated region for block: B:221:0x03c7  */
    /* JADX WARN: Removed duplicated region for block: B:233:0x0416 A[Catch: all -> 0x062b, TryCatch #1 {all -> 0x062b, blocks: (B:24:0x0074, B:26:0x0078, B:29:0x0082, B:32:0x0095, B:36:0x00ad, B:110:0x0205, B:111:0x020b, B:113:0x0216, B:115:0x021e, B:119:0x0234, B:121:0x0242, B:124:0x0255, B:125:0x025d, B:127:0x026a, B:128:0x026d, B:130:0x0277, B:131:0x0285, B:133:0x028b, B:135:0x0299, B:137:0x02a1, B:142:0x02b0, B:143:0x02b6, B:145:0x02be, B:146:0x02c3, B:150:0x02cc, B:151:0x02d3, B:152:0x02d4, B:155:0x02de, B:157:0x02e2, B:159:0x02e8, B:160:0x02eb, B:162:0x02f1, B:165:0x02fe, B:171:0x0318, B:175:0x0325, B:172:0x031d, B:174:0x0321, B:122:0x0248, B:182:0x0334, B:184:0x033c, B:186:0x0346, B:188:0x0357, B:191:0x0362, B:193:0x036a, B:195:0x036e, B:197:0x0374, B:200:0x0379, B:202:0x037d, B:222:0x03c8, B:224:0x03d0, B:227:0x03d9, B:228:0x03f3, B:204:0x0382, B:206:0x038a, B:209:0x0390, B:210:0x039c, B:213:0x03a5, B:216:0x03ab, B:219:0x03b0, B:220:0x03bc, B:229:0x03f4, B:230:0x0412, B:233:0x0416, B:235:0x041a, B:237:0x041e, B:240:0x0424, B:244:0x042c, B:250:0x043c, B:252:0x044b, B:254:0x0456, B:255:0x045e, B:256:0x0461, B:268:0x048d, B:270:0x0498, B:274:0x04a5, B:277:0x04b5, B:278:0x04d5, B:263:0x0471, B:265:0x047b, B:267:0x048a, B:266:0x0480, B:281:0x04da, B:283:0x04e4, B:285:0x04ea, B:286:0x04ed, B:288:0x04f8, B:289:0x04fc, B:291:0x0507, B:294:0x050e, B:297:0x0517, B:298:0x051c, B:301:0x0521, B:303:0x0526, B:307:0x052f, B:309:0x0537, B:312:0x0555, B:314:0x055b, B:317:0x0561, B:319:0x0567, B:321:0x056f, B:324:0x057e, B:327:0x0586, B:329:0x058a, B:330:0x0591, B:332:0x0596, B:333:0x0599, B:335:0x05a1, B:338:0x05ab, B:341:0x05b5, B:342:0x05ba, B:343:0x05bf, B:344:0x05d9, B:310:0x0548, B:345:0x05da, B:347:0x05ec, B:350:0x05f3, B:353:0x05fe, B:354:0x061e, B:39:0x00bf, B:40:0x00dd, B:43:0x00e2, B:45:0x00ed, B:47:0x00f1, B:49:0x00f5, B:52:0x00fb, B:59:0x010a, B:61:0x0112, B:64:0x0122, B:65:0x013a, B:66:0x013b, B:67:0x0140, B:78:0x0155, B:79:0x015b, B:81:0x0162, B:83:0x016b, B:85:0x0173, B:87:0x0178, B:90:0x0180, B:91:0x0198, B:82:0x0167, B:92:0x0199, B:93:0x01b1, B:99:0x01bb, B:101:0x01c3, B:104:0x01d4, B:105:0x01f4, B:106:0x01f5, B:107:0x01fa, B:108:0x01fb, B:355:0x061f, B:356:0x0624, B:357:0x0625, B:358:0x062a), top: B:364:0x0074, inners: #0, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:250:0x043c A[Catch: all -> 0x062b, TryCatch #1 {all -> 0x062b, blocks: (B:24:0x0074, B:26:0x0078, B:29:0x0082, B:32:0x0095, B:36:0x00ad, B:110:0x0205, B:111:0x020b, B:113:0x0216, B:115:0x021e, B:119:0x0234, B:121:0x0242, B:124:0x0255, B:125:0x025d, B:127:0x026a, B:128:0x026d, B:130:0x0277, B:131:0x0285, B:133:0x028b, B:135:0x0299, B:137:0x02a1, B:142:0x02b0, B:143:0x02b6, B:145:0x02be, B:146:0x02c3, B:150:0x02cc, B:151:0x02d3, B:152:0x02d4, B:155:0x02de, B:157:0x02e2, B:159:0x02e8, B:160:0x02eb, B:162:0x02f1, B:165:0x02fe, B:171:0x0318, B:175:0x0325, B:172:0x031d, B:174:0x0321, B:122:0x0248, B:182:0x0334, B:184:0x033c, B:186:0x0346, B:188:0x0357, B:191:0x0362, B:193:0x036a, B:195:0x036e, B:197:0x0374, B:200:0x0379, B:202:0x037d, B:222:0x03c8, B:224:0x03d0, B:227:0x03d9, B:228:0x03f3, B:204:0x0382, B:206:0x038a, B:209:0x0390, B:210:0x039c, B:213:0x03a5, B:216:0x03ab, B:219:0x03b0, B:220:0x03bc, B:229:0x03f4, B:230:0x0412, B:233:0x0416, B:235:0x041a, B:237:0x041e, B:240:0x0424, B:244:0x042c, B:250:0x043c, B:252:0x044b, B:254:0x0456, B:255:0x045e, B:256:0x0461, B:268:0x048d, B:270:0x0498, B:274:0x04a5, B:277:0x04b5, B:278:0x04d5, B:263:0x0471, B:265:0x047b, B:267:0x048a, B:266:0x0480, B:281:0x04da, B:283:0x04e4, B:285:0x04ea, B:286:0x04ed, B:288:0x04f8, B:289:0x04fc, B:291:0x0507, B:294:0x050e, B:297:0x0517, B:298:0x051c, B:301:0x0521, B:303:0x0526, B:307:0x052f, B:309:0x0537, B:312:0x0555, B:314:0x055b, B:317:0x0561, B:319:0x0567, B:321:0x056f, B:324:0x057e, B:327:0x0586, B:329:0x058a, B:330:0x0591, B:332:0x0596, B:333:0x0599, B:335:0x05a1, B:338:0x05ab, B:341:0x05b5, B:342:0x05ba, B:343:0x05bf, B:344:0x05d9, B:310:0x0548, B:345:0x05da, B:347:0x05ec, B:350:0x05f3, B:353:0x05fe, B:354:0x061e, B:39:0x00bf, B:40:0x00dd, B:43:0x00e2, B:45:0x00ed, B:47:0x00f1, B:49:0x00f5, B:52:0x00fb, B:59:0x010a, B:61:0x0112, B:64:0x0122, B:65:0x013a, B:66:0x013b, B:67:0x0140, B:78:0x0155, B:79:0x015b, B:81:0x0162, B:83:0x016b, B:85:0x0173, B:87:0x0178, B:90:0x0180, B:91:0x0198, B:82:0x0167, B:92:0x0199, B:93:0x01b1, B:99:0x01bb, B:101:0x01c3, B:104:0x01d4, B:105:0x01f4, B:106:0x01f5, B:107:0x01fa, B:108:0x01fb, B:355:0x061f, B:356:0x0624, B:357:0x0625, B:358:0x062a), top: B:364:0x0074, inners: #0, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:257:0x0465  */
    /* JADX WARN: Removed duplicated region for block: B:270:0x0498 A[Catch: all -> 0x062b, TryCatch #1 {all -> 0x062b, blocks: (B:24:0x0074, B:26:0x0078, B:29:0x0082, B:32:0x0095, B:36:0x00ad, B:110:0x0205, B:111:0x020b, B:113:0x0216, B:115:0x021e, B:119:0x0234, B:121:0x0242, B:124:0x0255, B:125:0x025d, B:127:0x026a, B:128:0x026d, B:130:0x0277, B:131:0x0285, B:133:0x028b, B:135:0x0299, B:137:0x02a1, B:142:0x02b0, B:143:0x02b6, B:145:0x02be, B:146:0x02c3, B:150:0x02cc, B:151:0x02d3, B:152:0x02d4, B:155:0x02de, B:157:0x02e2, B:159:0x02e8, B:160:0x02eb, B:162:0x02f1, B:165:0x02fe, B:171:0x0318, B:175:0x0325, B:172:0x031d, B:174:0x0321, B:122:0x0248, B:182:0x0334, B:184:0x033c, B:186:0x0346, B:188:0x0357, B:191:0x0362, B:193:0x036a, B:195:0x036e, B:197:0x0374, B:200:0x0379, B:202:0x037d, B:222:0x03c8, B:224:0x03d0, B:227:0x03d9, B:228:0x03f3, B:204:0x0382, B:206:0x038a, B:209:0x0390, B:210:0x039c, B:213:0x03a5, B:216:0x03ab, B:219:0x03b0, B:220:0x03bc, B:229:0x03f4, B:230:0x0412, B:233:0x0416, B:235:0x041a, B:237:0x041e, B:240:0x0424, B:244:0x042c, B:250:0x043c, B:252:0x044b, B:254:0x0456, B:255:0x045e, B:256:0x0461, B:268:0x048d, B:270:0x0498, B:274:0x04a5, B:277:0x04b5, B:278:0x04d5, B:263:0x0471, B:265:0x047b, B:267:0x048a, B:266:0x0480, B:281:0x04da, B:283:0x04e4, B:285:0x04ea, B:286:0x04ed, B:288:0x04f8, B:289:0x04fc, B:291:0x0507, B:294:0x050e, B:297:0x0517, B:298:0x051c, B:301:0x0521, B:303:0x0526, B:307:0x052f, B:309:0x0537, B:312:0x0555, B:314:0x055b, B:317:0x0561, B:319:0x0567, B:321:0x056f, B:324:0x057e, B:327:0x0586, B:329:0x058a, B:330:0x0591, B:332:0x0596, B:333:0x0599, B:335:0x05a1, B:338:0x05ab, B:341:0x05b5, B:342:0x05ba, B:343:0x05bf, B:344:0x05d9, B:310:0x0548, B:345:0x05da, B:347:0x05ec, B:350:0x05f3, B:353:0x05fe, B:354:0x061e, B:39:0x00bf, B:40:0x00dd, B:43:0x00e2, B:45:0x00ed, B:47:0x00f1, B:49:0x00f5, B:52:0x00fb, B:59:0x010a, B:61:0x0112, B:64:0x0122, B:65:0x013a, B:66:0x013b, B:67:0x0140, B:78:0x0155, B:79:0x015b, B:81:0x0162, B:83:0x016b, B:85:0x0173, B:87:0x0178, B:90:0x0180, B:91:0x0198, B:82:0x0167, B:92:0x0199, B:93:0x01b1, B:99:0x01bb, B:101:0x01c3, B:104:0x01d4, B:105:0x01f4, B:106:0x01f5, B:107:0x01fa, B:108:0x01fb, B:355:0x061f, B:356:0x0624, B:357:0x0625, B:358:0x062a), top: B:364:0x0074, inners: #0, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:322:0x057a  */
    /* JADX WARN: Removed duplicated region for block: B:324:0x057e A[Catch: all -> 0x062b, TryCatch #1 {all -> 0x062b, blocks: (B:24:0x0074, B:26:0x0078, B:29:0x0082, B:32:0x0095, B:36:0x00ad, B:110:0x0205, B:111:0x020b, B:113:0x0216, B:115:0x021e, B:119:0x0234, B:121:0x0242, B:124:0x0255, B:125:0x025d, B:127:0x026a, B:128:0x026d, B:130:0x0277, B:131:0x0285, B:133:0x028b, B:135:0x0299, B:137:0x02a1, B:142:0x02b0, B:143:0x02b6, B:145:0x02be, B:146:0x02c3, B:150:0x02cc, B:151:0x02d3, B:152:0x02d4, B:155:0x02de, B:157:0x02e2, B:159:0x02e8, B:160:0x02eb, B:162:0x02f1, B:165:0x02fe, B:171:0x0318, B:175:0x0325, B:172:0x031d, B:174:0x0321, B:122:0x0248, B:182:0x0334, B:184:0x033c, B:186:0x0346, B:188:0x0357, B:191:0x0362, B:193:0x036a, B:195:0x036e, B:197:0x0374, B:200:0x0379, B:202:0x037d, B:222:0x03c8, B:224:0x03d0, B:227:0x03d9, B:228:0x03f3, B:204:0x0382, B:206:0x038a, B:209:0x0390, B:210:0x039c, B:213:0x03a5, B:216:0x03ab, B:219:0x03b0, B:220:0x03bc, B:229:0x03f4, B:230:0x0412, B:233:0x0416, B:235:0x041a, B:237:0x041e, B:240:0x0424, B:244:0x042c, B:250:0x043c, B:252:0x044b, B:254:0x0456, B:255:0x045e, B:256:0x0461, B:268:0x048d, B:270:0x0498, B:274:0x04a5, B:277:0x04b5, B:278:0x04d5, B:263:0x0471, B:265:0x047b, B:267:0x048a, B:266:0x0480, B:281:0x04da, B:283:0x04e4, B:285:0x04ea, B:286:0x04ed, B:288:0x04f8, B:289:0x04fc, B:291:0x0507, B:294:0x050e, B:297:0x0517, B:298:0x051c, B:301:0x0521, B:303:0x0526, B:307:0x052f, B:309:0x0537, B:312:0x0555, B:314:0x055b, B:317:0x0561, B:319:0x0567, B:321:0x056f, B:324:0x057e, B:327:0x0586, B:329:0x058a, B:330:0x0591, B:332:0x0596, B:333:0x0599, B:335:0x05a1, B:338:0x05ab, B:341:0x05b5, B:342:0x05ba, B:343:0x05bf, B:344:0x05d9, B:310:0x0548, B:345:0x05da, B:347:0x05ec, B:350:0x05f3, B:353:0x05fe, B:354:0x061e, B:39:0x00bf, B:40:0x00dd, B:43:0x00e2, B:45:0x00ed, B:47:0x00f1, B:49:0x00f5, B:52:0x00fb, B:59:0x010a, B:61:0x0112, B:64:0x0122, B:65:0x013a, B:66:0x013b, B:67:0x0140, B:78:0x0155, B:79:0x015b, B:81:0x0162, B:83:0x016b, B:85:0x0173, B:87:0x0178, B:90:0x0180, B:91:0x0198, B:82:0x0167, B:92:0x0199, B:93:0x01b1, B:99:0x01bb, B:101:0x01c3, B:104:0x01d4, B:105:0x01f4, B:106:0x01f5, B:107:0x01fa, B:108:0x01fb, B:355:0x061f, B:356:0x0624, B:357:0x0625, B:358:0x062a), top: B:364:0x0074, inners: #0, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:329:0x058a A[Catch: all -> 0x062b, TryCatch #1 {all -> 0x062b, blocks: (B:24:0x0074, B:26:0x0078, B:29:0x0082, B:32:0x0095, B:36:0x00ad, B:110:0x0205, B:111:0x020b, B:113:0x0216, B:115:0x021e, B:119:0x0234, B:121:0x0242, B:124:0x0255, B:125:0x025d, B:127:0x026a, B:128:0x026d, B:130:0x0277, B:131:0x0285, B:133:0x028b, B:135:0x0299, B:137:0x02a1, B:142:0x02b0, B:143:0x02b6, B:145:0x02be, B:146:0x02c3, B:150:0x02cc, B:151:0x02d3, B:152:0x02d4, B:155:0x02de, B:157:0x02e2, B:159:0x02e8, B:160:0x02eb, B:162:0x02f1, B:165:0x02fe, B:171:0x0318, B:175:0x0325, B:172:0x031d, B:174:0x0321, B:122:0x0248, B:182:0x0334, B:184:0x033c, B:186:0x0346, B:188:0x0357, B:191:0x0362, B:193:0x036a, B:195:0x036e, B:197:0x0374, B:200:0x0379, B:202:0x037d, B:222:0x03c8, B:224:0x03d0, B:227:0x03d9, B:228:0x03f3, B:204:0x0382, B:206:0x038a, B:209:0x0390, B:210:0x039c, B:213:0x03a5, B:216:0x03ab, B:219:0x03b0, B:220:0x03bc, B:229:0x03f4, B:230:0x0412, B:233:0x0416, B:235:0x041a, B:237:0x041e, B:240:0x0424, B:244:0x042c, B:250:0x043c, B:252:0x044b, B:254:0x0456, B:255:0x045e, B:256:0x0461, B:268:0x048d, B:270:0x0498, B:274:0x04a5, B:277:0x04b5, B:278:0x04d5, B:263:0x0471, B:265:0x047b, B:267:0x048a, B:266:0x0480, B:281:0x04da, B:283:0x04e4, B:285:0x04ea, B:286:0x04ed, B:288:0x04f8, B:289:0x04fc, B:291:0x0507, B:294:0x050e, B:297:0x0517, B:298:0x051c, B:301:0x0521, B:303:0x0526, B:307:0x052f, B:309:0x0537, B:312:0x0555, B:314:0x055b, B:317:0x0561, B:319:0x0567, B:321:0x056f, B:324:0x057e, B:327:0x0586, B:329:0x058a, B:330:0x0591, B:332:0x0596, B:333:0x0599, B:335:0x05a1, B:338:0x05ab, B:341:0x05b5, B:342:0x05ba, B:343:0x05bf, B:344:0x05d9, B:310:0x0548, B:345:0x05da, B:347:0x05ec, B:350:0x05f3, B:353:0x05fe, B:354:0x061e, B:39:0x00bf, B:40:0x00dd, B:43:0x00e2, B:45:0x00ed, B:47:0x00f1, B:49:0x00f5, B:52:0x00fb, B:59:0x010a, B:61:0x0112, B:64:0x0122, B:65:0x013a, B:66:0x013b, B:67:0x0140, B:78:0x0155, B:79:0x015b, B:81:0x0162, B:83:0x016b, B:85:0x0173, B:87:0x0178, B:90:0x0180, B:91:0x0198, B:82:0x0167, B:92:0x0199, B:93:0x01b1, B:99:0x01bb, B:101:0x01c3, B:104:0x01d4, B:105:0x01f4, B:106:0x01f5, B:107:0x01fa, B:108:0x01fb, B:355:0x061f, B:356:0x0624, B:357:0x0625, B:358:0x062a), top: B:364:0x0074, inners: #0, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:332:0x0596 A[Catch: all -> 0x062b, TryCatch #1 {all -> 0x062b, blocks: (B:24:0x0074, B:26:0x0078, B:29:0x0082, B:32:0x0095, B:36:0x00ad, B:110:0x0205, B:111:0x020b, B:113:0x0216, B:115:0x021e, B:119:0x0234, B:121:0x0242, B:124:0x0255, B:125:0x025d, B:127:0x026a, B:128:0x026d, B:130:0x0277, B:131:0x0285, B:133:0x028b, B:135:0x0299, B:137:0x02a1, B:142:0x02b0, B:143:0x02b6, B:145:0x02be, B:146:0x02c3, B:150:0x02cc, B:151:0x02d3, B:152:0x02d4, B:155:0x02de, B:157:0x02e2, B:159:0x02e8, B:160:0x02eb, B:162:0x02f1, B:165:0x02fe, B:171:0x0318, B:175:0x0325, B:172:0x031d, B:174:0x0321, B:122:0x0248, B:182:0x0334, B:184:0x033c, B:186:0x0346, B:188:0x0357, B:191:0x0362, B:193:0x036a, B:195:0x036e, B:197:0x0374, B:200:0x0379, B:202:0x037d, B:222:0x03c8, B:224:0x03d0, B:227:0x03d9, B:228:0x03f3, B:204:0x0382, B:206:0x038a, B:209:0x0390, B:210:0x039c, B:213:0x03a5, B:216:0x03ab, B:219:0x03b0, B:220:0x03bc, B:229:0x03f4, B:230:0x0412, B:233:0x0416, B:235:0x041a, B:237:0x041e, B:240:0x0424, B:244:0x042c, B:250:0x043c, B:252:0x044b, B:254:0x0456, B:255:0x045e, B:256:0x0461, B:268:0x048d, B:270:0x0498, B:274:0x04a5, B:277:0x04b5, B:278:0x04d5, B:263:0x0471, B:265:0x047b, B:267:0x048a, B:266:0x0480, B:281:0x04da, B:283:0x04e4, B:285:0x04ea, B:286:0x04ed, B:288:0x04f8, B:289:0x04fc, B:291:0x0507, B:294:0x050e, B:297:0x0517, B:298:0x051c, B:301:0x0521, B:303:0x0526, B:307:0x052f, B:309:0x0537, B:312:0x0555, B:314:0x055b, B:317:0x0561, B:319:0x0567, B:321:0x056f, B:324:0x057e, B:327:0x0586, B:329:0x058a, B:330:0x0591, B:332:0x0596, B:333:0x0599, B:335:0x05a1, B:338:0x05ab, B:341:0x05b5, B:342:0x05ba, B:343:0x05bf, B:344:0x05d9, B:310:0x0548, B:345:0x05da, B:347:0x05ec, B:350:0x05f3, B:353:0x05fe, B:354:0x061e, B:39:0x00bf, B:40:0x00dd, B:43:0x00e2, B:45:0x00ed, B:47:0x00f1, B:49:0x00f5, B:52:0x00fb, B:59:0x010a, B:61:0x0112, B:64:0x0122, B:65:0x013a, B:66:0x013b, B:67:0x0140, B:78:0x0155, B:79:0x015b, B:81:0x0162, B:83:0x016b, B:85:0x0173, B:87:0x0178, B:90:0x0180, B:91:0x0198, B:82:0x0167, B:92:0x0199, B:93:0x01b1, B:99:0x01bb, B:101:0x01c3, B:104:0x01d4, B:105:0x01f4, B:106:0x01f5, B:107:0x01fa, B:108:0x01fb, B:355:0x061f, B:356:0x0624, B:357:0x0625, B:358:0x062a), top: B:364:0x0074, inners: #0, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:338:0x05ab A[Catch: all -> 0x062b, TRY_ENTER, TryCatch #1 {all -> 0x062b, blocks: (B:24:0x0074, B:26:0x0078, B:29:0x0082, B:32:0x0095, B:36:0x00ad, B:110:0x0205, B:111:0x020b, B:113:0x0216, B:115:0x021e, B:119:0x0234, B:121:0x0242, B:124:0x0255, B:125:0x025d, B:127:0x026a, B:128:0x026d, B:130:0x0277, B:131:0x0285, B:133:0x028b, B:135:0x0299, B:137:0x02a1, B:142:0x02b0, B:143:0x02b6, B:145:0x02be, B:146:0x02c3, B:150:0x02cc, B:151:0x02d3, B:152:0x02d4, B:155:0x02de, B:157:0x02e2, B:159:0x02e8, B:160:0x02eb, B:162:0x02f1, B:165:0x02fe, B:171:0x0318, B:175:0x0325, B:172:0x031d, B:174:0x0321, B:122:0x0248, B:182:0x0334, B:184:0x033c, B:186:0x0346, B:188:0x0357, B:191:0x0362, B:193:0x036a, B:195:0x036e, B:197:0x0374, B:200:0x0379, B:202:0x037d, B:222:0x03c8, B:224:0x03d0, B:227:0x03d9, B:228:0x03f3, B:204:0x0382, B:206:0x038a, B:209:0x0390, B:210:0x039c, B:213:0x03a5, B:216:0x03ab, B:219:0x03b0, B:220:0x03bc, B:229:0x03f4, B:230:0x0412, B:233:0x0416, B:235:0x041a, B:237:0x041e, B:240:0x0424, B:244:0x042c, B:250:0x043c, B:252:0x044b, B:254:0x0456, B:255:0x045e, B:256:0x0461, B:268:0x048d, B:270:0x0498, B:274:0x04a5, B:277:0x04b5, B:278:0x04d5, B:263:0x0471, B:265:0x047b, B:267:0x048a, B:266:0x0480, B:281:0x04da, B:283:0x04e4, B:285:0x04ea, B:286:0x04ed, B:288:0x04f8, B:289:0x04fc, B:291:0x0507, B:294:0x050e, B:297:0x0517, B:298:0x051c, B:301:0x0521, B:303:0x0526, B:307:0x052f, B:309:0x0537, B:312:0x0555, B:314:0x055b, B:317:0x0561, B:319:0x0567, B:321:0x056f, B:324:0x057e, B:327:0x0586, B:329:0x058a, B:330:0x0591, B:332:0x0596, B:333:0x0599, B:335:0x05a1, B:338:0x05ab, B:341:0x05b5, B:342:0x05ba, B:343:0x05bf, B:344:0x05d9, B:310:0x0548, B:345:0x05da, B:347:0x05ec, B:350:0x05f3, B:353:0x05fe, B:354:0x061e, B:39:0x00bf, B:40:0x00dd, B:43:0x00e2, B:45:0x00ed, B:47:0x00f1, B:49:0x00f5, B:52:0x00fb, B:59:0x010a, B:61:0x0112, B:64:0x0122, B:65:0x013a, B:66:0x013b, B:67:0x0140, B:78:0x0155, B:79:0x015b, B:81:0x0162, B:83:0x016b, B:85:0x0173, B:87:0x0178, B:90:0x0180, B:91:0x0198, B:82:0x0167, B:92:0x0199, B:93:0x01b1, B:99:0x01bb, B:101:0x01c3, B:104:0x01d4, B:105:0x01f4, B:106:0x01f5, B:107:0x01fa, B:108:0x01fb, B:355:0x061f, B:356:0x0624, B:357:0x0625, B:358:0x062a), top: B:364:0x0074, inners: #0, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:367:0x04a1 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:376:0x05a1 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object parseObject(Map map, Object obj) {
        Object objScanSymbolUnQuoted;
        boolean z;
        char current;
        Object obj2;
        Object object;
        Object obj3;
        char current2;
        Object obj4;
        Object obj5;
        Class<?> clsCheckAutoType;
        JSONLexer jSONLexer = this.lexer;
        if (jSONLexer.token() == 8) {
            jSONLexer.nextToken();
            return null;
        }
        if (jSONLexer.token() == 13) {
            jSONLexer.nextToken();
            return map;
        }
        if (jSONLexer.token() == 4 && jSONLexer.stringVal().length() == 0) {
            jSONLexer.nextToken();
            return map;
        }
        if (jSONLexer.token() != 12 && jSONLexer.token() != 16) {
            throw new JSONException("syntax error, expect {, actual " + jSONLexer.tokenName() + ", " + jSONLexer.info());
        }
        ParseContext parseContext = this.context;
        try {
            Map innerMap = map instanceof JSONObject ? ((JSONObject) map).getInnerMap() : map;
            boolean z2 = false;
            while (true) {
                jSONLexer.skipWhitespace();
                char current3 = jSONLexer.getCurrent();
                if (jSONLexer.isEnabled(Feature.AllowArbitraryCommas)) {
                    while (current3 == ',') {
                        jSONLexer.next();
                        jSONLexer.skipWhitespace();
                        current3 = jSONLexer.getCurrent();
                    }
                }
                boolean z3 = true;
                if (current3 == '\"') {
                    objScanSymbolUnQuoted = jSONLexer.scanSymbol(this.symbolTable, ca2.f674do);
                    jSONLexer.skipWhitespace();
                    if (jSONLexer.getCurrent() != ':') {
                        throw new JSONException("expect ':' at " + jSONLexer.pos() + ", name " + objScanSymbolUnQuoted);
                    }
                } else {
                    if (current3 == '}') {
                        jSONLexer.next();
                        jSONLexer.resetStringPosition();
                        jSONLexer.nextToken();
                        if (!z2) {
                            ParseContext parseContext2 = this.context;
                            if (parseContext2 != null && obj == parseContext2.fieldName && map == parseContext2.object) {
                                parseContext = parseContext2;
                            } else {
                                ParseContext context = setContext(map, obj);
                                if (parseContext == null) {
                                    parseContext = context;
                                }
                            }
                        }
                        return map;
                    }
                    if (current3 == '\'') {
                        if (!jSONLexer.isEnabled(Feature.AllowSingleQuotes)) {
                            throw new JSONException("syntax error");
                        }
                        objScanSymbolUnQuoted = jSONLexer.scanSymbol(this.symbolTable, '\'');
                        jSONLexer.skipWhitespace();
                        if (jSONLexer.getCurrent() != ':') {
                            throw new JSONException("expect ':' at " + jSONLexer.pos());
                        }
                    } else {
                        if (current3 == 26) {
                            throw new JSONException("syntax error");
                        }
                        if (current3 == ',') {
                            throw new JSONException("syntax error");
                        }
                        if ((current3 < '0' || current3 > '9') && current3 != '-') {
                            if (current3 != '{' && current3 != '[') {
                                if (!jSONLexer.isEnabled(Feature.AllowUnQuotedFieldNames)) {
                                    throw new JSONException("syntax error");
                                }
                                objScanSymbolUnQuoted = jSONLexer.scanSymbolUnQuoted(this.symbolTable);
                                jSONLexer.skipWhitespace();
                                char current4 = jSONLexer.getCurrent();
                                if (current4 != ':') {
                                    throw new JSONException("expect ':' at " + jSONLexer.pos() + ", actual " + current4);
                                }
                            }
                            jSONLexer.nextToken();
                            objScanSymbolUnQuoted = parse();
                            z = true;
                            if (!z) {
                                jSONLexer.next();
                                jSONLexer.skipWhitespace();
                            }
                            current = jSONLexer.getCurrent();
                            jSONLexer.resetStringPosition();
                            if (objScanSymbolUnQuoted != JSON.DEFAULT_TYPE_KEY && !jSONLexer.isEnabled(Feature.DisableSpecialKeyDetect)) {
                                String strScanSymbol = jSONLexer.scanSymbol(this.symbolTable, ca2.f674do);
                                if (!jSONLexer.isEnabled(Feature.IgnoreAutoType)) {
                                    if (map == null || !map.getClass().getName().equals(strScanSymbol)) {
                                        obj2 = null;
                                        clsCheckAutoType = this.config.checkAutoType(strScanSymbol, null, jSONLexer.getFeatures());
                                    } else {
                                        clsCheckAutoType = map.getClass();
                                        obj2 = null;
                                    }
                                    if (clsCheckAutoType != null) {
                                        break;
                                    }
                                    innerMap.put(JSON.DEFAULT_TYPE_KEY, strScanSymbol);
                                } else {
                                    obj2 = null;
                                }
                            } else {
                                obj2 = null;
                                if (objScanSymbolUnQuoted == "$ref" || parseContext == null || jSONLexer.isEnabled(Feature.DisableSpecialKeyDetect)) {
                                    if (!z2) {
                                        ParseContext parseContext3 = this.context;
                                        if (parseContext3 != null && obj == parseContext3.fieldName && map == parseContext3.object) {
                                            parseContext = parseContext3;
                                        } else {
                                            ParseContext context2 = setContext(map, obj);
                                            if (parseContext == null) {
                                                parseContext = context2;
                                            }
                                            z2 = true;
                                        }
                                    }
                                    if (map.getClass() == JSONObject.class && objScanSymbolUnQuoted == null) {
                                        objScanSymbolUnQuoted = "null";
                                    }
                                    if (current != '\"') {
                                        jSONLexer.scanString();
                                        String strStringVal = jSONLexer.stringVal();
                                        Object obj6 = strStringVal;
                                        if (jSONLexer.isEnabled(Feature.AllowISO8601DateFormat)) {
                                            JSONScanner jSONScanner = new JSONScanner(strStringVal);
                                            Object time = strStringVal;
                                            if (jSONScanner.scanISO8601DateIfMatch()) {
                                                time = jSONScanner.getCalendar().getTime();
                                            }
                                            jSONScanner.close();
                                            obj6 = time;
                                        }
                                        innerMap.put(objScanSymbolUnQuoted, obj6);
                                        obj3 = obj6;
                                    } else if ((current >= '0' && current <= '9') || current == '-') {
                                        jSONLexer.scanNumber();
                                        Number numberIntegerValue = jSONLexer.token() == 2 ? jSONLexer.integerValue() : jSONLexer.decimalValue(jSONLexer.isEnabled(Feature.UseBigDecimal));
                                        innerMap.put(objScanSymbolUnQuoted, numberIntegerValue);
                                        obj3 = numberIntegerValue;
                                    } else if (current == '[') {
                                        jSONLexer.nextToken();
                                        Collection jSONArray = new JSONArray();
                                        if (obj != null) {
                                            obj.getClass();
                                        }
                                        if (obj == null) {
                                            setContext(parseContext);
                                        }
                                        parseArray(jSONArray, objScanSymbolUnQuoted);
                                        Object[] array = jSONArray;
                                        if (jSONLexer.isEnabled(Feature.UseObjectArray)) {
                                            array = jSONArray.toArray();
                                        }
                                        innerMap.put(objScanSymbolUnQuoted, array);
                                        if (jSONLexer.token() == 13) {
                                            jSONLexer.nextToken();
                                            return map;
                                        }
                                        if (jSONLexer.token() != 16) {
                                            throw new JSONException("syntax error");
                                        }
                                    } else if (current == '{') {
                                        jSONLexer.nextToken();
                                        boolean z4 = obj != null && obj.getClass() == Integer.class;
                                        Map<Object, Object> mapCreateMap = jSONLexer.isEnabled(Feature.CustomMapDeserializer) ? ((MapDeserializer) this.config.getDeserializer(Map.class)).createMap(Map.class) : new JSONObject(jSONLexer.isEnabled(Feature.OrderedField));
                                        ParseContext context3 = !z4 ? setContext(parseContext, mapCreateMap, objScanSymbolUnQuoted) : null;
                                        if (this.fieldTypeResolver == null) {
                                            object = null;
                                            z3 = false;
                                            if (!z3) {
                                                object = parseObject(mapCreateMap, objScanSymbolUnQuoted);
                                            }
                                            if (context3 != null && mapCreateMap != object) {
                                                context3.object = map;
                                            }
                                            if (objScanSymbolUnQuoted != null) {
                                                checkMapResolve(map, objScanSymbolUnQuoted.toString());
                                            }
                                            innerMap.put(objScanSymbolUnQuoted, object);
                                            if (z4) {
                                                setContext(object, objScanSymbolUnQuoted);
                                            }
                                            if (jSONLexer.token() != 13) {
                                                jSONLexer.nextToken();
                                                setContext(parseContext);
                                                return map;
                                            }
                                            if (jSONLexer.token() != 16) {
                                                throw new JSONException("syntax error, " + jSONLexer.tokenName());
                                            }
                                            if (z4) {
                                                popContext();
                                            } else {
                                                setContext(parseContext);
                                            }
                                        } else {
                                            Type typeResolve = this.fieldTypeResolver.resolve(map, objScanSymbolUnQuoted != null ? objScanSymbolUnQuoted.toString() : null);
                                            if (typeResolve != null) {
                                                object = this.config.getDeserializer(typeResolve).deserialze(this, typeResolve, objScanSymbolUnQuoted);
                                            }
                                            if (!z3) {
                                            }
                                            if (context3 != null) {
                                                context3.object = map;
                                            }
                                            if (objScanSymbolUnQuoted != null) {
                                            }
                                            innerMap.put(objScanSymbolUnQuoted, object);
                                            if (z4) {
                                            }
                                            if (jSONLexer.token() != 13) {
                                            }
                                        }
                                    } else {
                                        jSONLexer.nextToken();
                                        innerMap.put(objScanSymbolUnQuoted, parse());
                                        if (jSONLexer.token() == 13) {
                                            jSONLexer.nextToken();
                                            return map;
                                        }
                                        if (jSONLexer.token() != 16) {
                                            throw new JSONException("syntax error, position at " + jSONLexer.pos() + ", name " + objScanSymbolUnQuoted);
                                        }
                                    }
                                    jSONLexer.skipWhitespace();
                                    current2 = jSONLexer.getCurrent();
                                    if (current2 == ',') {
                                        if (current2 == '}') {
                                            jSONLexer.next();
                                            jSONLexer.resetStringPosition();
                                            jSONLexer.nextToken();
                                            setContext(obj3, objScanSymbolUnQuoted);
                                            return map;
                                        }
                                        throw new JSONException("syntax error, position at " + jSONLexer.pos() + ", name " + objScanSymbolUnQuoted);
                                    }
                                    jSONLexer.next();
                                } else {
                                    jSONLexer.nextToken(4);
                                    if (jSONLexer.token() != 4) {
                                        throw new JSONException("illegal ref, " + JSONToken.name(jSONLexer.token()));
                                    }
                                    String strStringVal2 = jSONLexer.stringVal();
                                    jSONLexer.nextToken(13);
                                    if (jSONLexer.token() != 16) {
                                        if ("@".equals(strStringVal2)) {
                                            ParseContext parseContext4 = this.context;
                                            if (parseContext4 != null) {
                                                obj4 = parseContext4.object;
                                                if ((obj4 instanceof Object[]) || (obj4 instanceof Collection)) {
                                                    obj5 = obj4;
                                                } else {
                                                    ParseContext parseContext5 = parseContext4.parent;
                                                    obj5 = parseContext5 != null ? parseContext5.object : null;
                                                }
                                            }
                                        } else {
                                            if ("..".equals(strStringVal2)) {
                                                Object obj7 = parseContext.object;
                                                if (obj7 != null) {
                                                    obj5 = obj7;
                                                } else {
                                                    addResolveTask(new ResolveTask(parseContext, strStringVal2));
                                                    setResolveStatus(1);
                                                }
                                            } else if ("$".equals(strStringVal2)) {
                                                ParseContext parseContext6 = parseContext;
                                                while (true) {
                                                    ParseContext parseContext7 = parseContext6.parent;
                                                    if (parseContext7 == null) {
                                                        break;
                                                    }
                                                    parseContext6 = parseContext7;
                                                }
                                                obj4 = parseContext6.object;
                                                if (obj4 != null) {
                                                    obj5 = obj4;
                                                } else {
                                                    addResolveTask(new ResolveTask(parseContext6, strStringVal2));
                                                    setResolveStatus(1);
                                                }
                                            } else {
                                                addResolveTask(new ResolveTask(parseContext, strStringVal2));
                                                setResolveStatus(1);
                                            }
                                        }
                                        if (jSONLexer.token() == 13) {
                                            jSONLexer.nextToken(16);
                                            return obj5;
                                        }
                                        throw new JSONException("syntax error, " + jSONLexer.info());
                                    }
                                    innerMap.put(objScanSymbolUnQuoted, strStringVal2);
                                }
                            }
                        } else {
                            jSONLexer.resetStringPosition();
                            jSONLexer.scanNumber();
                            try {
                                Number numberIntegerValue2 = jSONLexer.token() == 2 ? jSONLexer.integerValue() : jSONLexer.decimalValue(true);
                                Object string = numberIntegerValue2;
                                if (jSONLexer.isEnabled(Feature.NonStringKeyAsString)) {
                                    string = numberIntegerValue2.toString();
                                }
                                objScanSymbolUnQuoted = string;
                                if (jSONLexer.getCurrent() != ':') {
                                    throw new JSONException("parse number key error" + jSONLexer.info());
                                }
                            } catch (NumberFormatException unused) {
                                throw new JSONException("parse number key error" + jSONLexer.info());
                            }
                        }
                    }
                }
                z = false;
                if (!z) {
                }
                current = jSONLexer.getCurrent();
                jSONLexer.resetStringPosition();
                if (objScanSymbolUnQuoted != JSON.DEFAULT_TYPE_KEY) {
                    obj2 = null;
                    if (objScanSymbolUnQuoted == "$ref") {
                    }
                    if (!z2) {
                    }
                    if (map.getClass() == JSONObject.class) {
                        objScanSymbolUnQuoted = "null";
                    }
                    if (current != '\"') {
                    }
                    jSONLexer.skipWhitespace();
                    current2 = jSONLexer.getCurrent();
                    if (current2 == ',') {
                    }
                }
            }
        } finally {
            setContext(parseContext);
        }
    }

    public void popContext() {
        if (this.lexer.isEnabled(Feature.DisableCircularReferenceDetect)) {
            return;
        }
        this.context = this.context.parent;
        int i = this.contextArrayIndex;
        if (i <= 0) {
            return;
        }
        int i2 = i - 1;
        this.contextArrayIndex = i2;
        this.contextArray[i2] = null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0022, code lost:
    
        return null;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Object resolveReference(String str) {
        if (this.contextArray == null) {
            return null;
        }
        int i = 0;
        while (true) {
            ParseContext[] parseContextArr = this.contextArray;
            if (i >= parseContextArr.length || i >= this.contextArrayIndex) {
                break;
            }
            ParseContext parseContext = parseContextArr[i];
            if (parseContext.toString().equals(str)) {
                return parseContext.object;
            }
            i++;
        }
    }

    public void setConfig(ParserConfig parserConfig) {
        this.config = parserConfig;
    }

    public void setContext(ParseContext parseContext) {
        if (this.lexer.isEnabled(Feature.DisableCircularReferenceDetect)) {
            return;
        }
        this.context = parseContext;
    }

    public void setDateFomrat(DateFormat dateFormat) {
        this.dateFormat = dateFormat;
    }

    public void setDateFormat(String str) {
        this.dateFormatPattern = str;
        this.dateFormat = null;
    }

    public void setFieldTypeResolver(FieldTypeResolver fieldTypeResolver) {
        this.fieldTypeResolver = fieldTypeResolver;
    }

    public void setResolveStatus(int i) {
        this.resolveStatus = i;
    }

    public void throwException(int i) {
        throw new JSONException("syntax error, expect " + JSONToken.name(i) + ", actual " + JSONToken.name(this.lexer.token()));
    }

    public DefaultJSONParser(String str, ParserConfig parserConfig) {
        this(str, new JSONScanner(str, JSON.DEFAULT_PARSER_FEATURE), parserConfig);
    }

    public Object parse(Object obj) {
        JSONLexer jSONLexer = this.lexer;
        int i = jSONLexer.token();
        if (i == 2) {
            Number numberIntegerValue = jSONLexer.integerValue();
            jSONLexer.nextToken();
            return numberIntegerValue;
        }
        if (i == 3) {
            Number numberDecimalValue = jSONLexer.decimalValue(jSONLexer.isEnabled(Feature.UseBigDecimal));
            jSONLexer.nextToken();
            return numberDecimalValue;
        }
        if (i == 4) {
            String strStringVal = jSONLexer.stringVal();
            jSONLexer.nextToken(16);
            if (jSONLexer.isEnabled(Feature.AllowISO8601DateFormat)) {
                JSONScanner jSONScanner = new JSONScanner(strStringVal);
                try {
                    if (jSONScanner.scanISO8601DateIfMatch()) {
                        return jSONScanner.getCalendar().getTime();
                    }
                } finally {
                    jSONScanner.close();
                }
            }
            return strStringVal;
        }
        if (i == 12) {
            return parseObject(new JSONObject(jSONLexer.isEnabled(Feature.OrderedField)), obj);
        }
        if (i == 14) {
            JSONArray jSONArray = new JSONArray();
            parseArray(jSONArray, obj);
            return jSONLexer.isEnabled(Feature.UseObjectArray) ? jSONArray.toArray() : jSONArray;
        }
        if (i == 18) {
            if ("NaN".equals(jSONLexer.stringVal())) {
                jSONLexer.nextToken();
                return null;
            }
            throw new JSONException("syntax error, " + jSONLexer.info());
        }
        if (i == 26) {
            byte[] bArrBytesValue = jSONLexer.bytesValue();
            jSONLexer.nextToken();
            return bArrBytesValue;
        }
        switch (i) {
            case 6:
                jSONLexer.nextToken();
                return Boolean.TRUE;
            case 7:
                jSONLexer.nextToken();
                return Boolean.FALSE;
            case 8:
                jSONLexer.nextToken();
                return null;
            case 9:
                jSONLexer.nextToken(18);
                if (jSONLexer.token() != 18) {
                    throw new JSONException("syntax error");
                }
                jSONLexer.nextToken(10);
                accept(10);
                long jLongValue = jSONLexer.integerValue().longValue();
                accept(2);
                accept(11);
                return new Date(jLongValue);
            default:
                switch (i) {
                    case 20:
                        if (jSONLexer.isBlankInput()) {
                            return null;
                        }
                        throw new JSONException("unterminated json string, " + jSONLexer.info());
                    case 21:
                        jSONLexer.nextToken();
                        HashSet hashSet = new HashSet();
                        parseArray(hashSet, obj);
                        return hashSet;
                    case 22:
                        jSONLexer.nextToken();
                        TreeSet treeSet = new TreeSet();
                        parseArray(treeSet, obj);
                        return treeSet;
                    case 23:
                        jSONLexer.nextToken();
                        return null;
                    default:
                        throw new JSONException("syntax error, " + jSONLexer.info());
                }
        }
    }

    public DefaultJSONParser(String str, ParserConfig parserConfig, int i) {
        this(str, new JSONScanner(str, i), parserConfig);
    }

    public void parseArray(Class<?> cls, Collection collection) {
        parseArray((Type) cls, collection);
    }

    public ParseContext setContext(Object obj, Object obj2) {
        if (this.lexer.isEnabled(Feature.DisableCircularReferenceDetect)) {
            return null;
        }
        return setContext(this.context, obj, obj2);
    }

    public DefaultJSONParser(char[] cArr, int i, ParserConfig parserConfig, int i2) {
        this(cArr, new JSONScanner(cArr, i, i2), parserConfig);
    }

    public void parseArray(Type type, Collection collection) {
        parseArray(type, collection, null);
    }

    public DefaultJSONParser(JSONLexer jSONLexer) {
        this(jSONLexer, ParserConfig.getGlobalInstance());
    }

    public void parseArray(Type type, Collection collection, Object obj) {
        ObjectDeserializer deserializer;
        int i = this.lexer.token();
        if (i == 21 || i == 22) {
            this.lexer.nextToken();
            i = this.lexer.token();
        }
        if (i == 14) {
            if (Integer.TYPE != type) {
                if (String.class == type) {
                    deserializer = StringCodec.instance;
                    this.lexer.nextToken(4);
                } else {
                    deserializer = this.config.getDeserializer(type);
                    this.lexer.nextToken(deserializer.getFastMatchToken());
                }
            } else {
                deserializer = IntegerCodec.instance;
                this.lexer.nextToken(2);
            }
            ParseContext parseContext = this.context;
            setContext(collection, obj);
            int i2 = 0;
            while (true) {
                try {
                    if (this.lexer.isEnabled(Feature.AllowArbitraryCommas)) {
                        while (this.lexer.token() == 16) {
                            this.lexer.nextToken();
                        }
                    }
                    if (this.lexer.token() == 15) {
                        setContext(parseContext);
                        this.lexer.nextToken(16);
                        return;
                    }
                    Object objDeserialze = null;
                    if (Integer.TYPE != type) {
                        if (String.class == type) {
                            if (this.lexer.token() == 4) {
                                objDeserialze = this.lexer.stringVal();
                                this.lexer.nextToken(16);
                            } else {
                                Object obj2 = parse();
                                if (obj2 != null) {
                                    objDeserialze = obj2.toString();
                                }
                            }
                            collection.add(objDeserialze);
                        } else {
                            if (this.lexer.token() == 8) {
                                this.lexer.nextToken();
                            } else {
                                objDeserialze = deserializer.deserialze(this, type, Integer.valueOf(i2));
                            }
                            collection.add(objDeserialze);
                            checkListResolve(collection);
                        }
                    } else {
                        collection.add(IntegerCodec.instance.deserialze(this, null, null));
                    }
                    if (this.lexer.token() == 16) {
                        this.lexer.nextToken(deserializer.getFastMatchToken());
                    }
                    i2++;
                } catch (Throwable th) {
                    setContext(parseContext);
                    throw th;
                }
            }
        } else {
            throw new JSONException("exepct '[', but " + JSONToken.name(i) + ", " + this.lexer.info());
        }
    }

    public ParseContext setContext(ParseContext parseContext, Object obj, Object obj2) {
        if (this.lexer.isEnabled(Feature.DisableCircularReferenceDetect)) {
            return null;
        }
        ParseContext parseContext2 = new ParseContext(parseContext, obj, obj2);
        this.context = parseContext2;
        addContext(parseContext2);
        return this.context;
    }

    public DefaultJSONParser(JSONLexer jSONLexer, ParserConfig parserConfig) {
        this((Object) null, jSONLexer, parserConfig);
    }

    public final void accept(int i, int i2) {
        JSONLexer jSONLexer = this.lexer;
        if (jSONLexer.token() == i) {
            jSONLexer.nextToken(i2);
        } else {
            throwException(i);
        }
    }

    public DefaultJSONParser(Object obj, JSONLexer jSONLexer, ParserConfig parserConfig) {
        this.dateFormatPattern = JSON.DEFFAULT_DATE_FORMAT;
        this.contextArrayIndex = 0;
        this.resolveStatus = 0;
        this.extraTypeProviders = null;
        this.extraProcessors = null;
        this.fieldTypeResolver = null;
        this.autoTypeAccept = null;
        this.lexer = jSONLexer;
        this.input = obj;
        this.config = parserConfig;
        this.symbolTable = parserConfig.symbolTable;
        char current = jSONLexer.getCurrent();
        if (current == '{') {
            jSONLexer.next();
            ((JSONLexerBase) jSONLexer).token = 12;
        } else if (current == '[') {
            jSONLexer.next();
            ((JSONLexerBase) jSONLexer).token = 14;
        } else {
            jSONLexer.nextToken();
        }
    }

    public Object[] parseArray(Type[] typeArr) {
        Object objCast;
        Class<?> componentType;
        boolean zIsArray;
        int i = 8;
        if (this.lexer.token() == 8) {
            this.lexer.nextToken(16);
            return null;
        }
        int i2 = 14;
        if (this.lexer.token() == 14) {
            Object[] objArr = new Object[typeArr.length];
            if (typeArr.length == 0) {
                this.lexer.nextToken(15);
                if (this.lexer.token() == 15) {
                    this.lexer.nextToken(16);
                    return new Object[0];
                }
                throw new JSONException("syntax error");
            }
            this.lexer.nextToken(2);
            int i3 = 0;
            while (i3 < typeArr.length) {
                if (this.lexer.token() == i) {
                    this.lexer.nextToken(16);
                    objCast = null;
                } else {
                    Type type = typeArr[i3];
                    if (type != Integer.TYPE && type != Integer.class) {
                        if (type == String.class) {
                            if (this.lexer.token() == 4) {
                                objCast = this.lexer.stringVal();
                                this.lexer.nextToken(16);
                            } else {
                                objCast = TypeUtils.cast(parse(), type, this.config);
                            }
                        } else {
                            if (i3 == typeArr.length - 1 && (type instanceof Class)) {
                                Class cls = (Class) type;
                                zIsArray = cls.isArray();
                                componentType = cls.getComponentType();
                            } else {
                                componentType = null;
                                zIsArray = false;
                            }
                            if (zIsArray && this.lexer.token() != i2) {
                                ArrayList arrayList = new ArrayList();
                                ObjectDeserializer deserializer = this.config.getDeserializer(componentType);
                                int fastMatchToken = deserializer.getFastMatchToken();
                                if (this.lexer.token() != 15) {
                                    while (true) {
                                        arrayList.add(deserializer.deserialze(this, type, null));
                                        if (this.lexer.token() != 16) {
                                            break;
                                        }
                                        this.lexer.nextToken(fastMatchToken);
                                    }
                                    if (this.lexer.token() != 15) {
                                        throw new JSONException("syntax error :" + JSONToken.name(this.lexer.token()));
                                    }
                                }
                                objCast = TypeUtils.cast(arrayList, type, this.config);
                            } else {
                                objCast = this.config.getDeserializer(type).deserialze(this, type, Integer.valueOf(i3));
                            }
                        }
                    } else if (this.lexer.token() == 2) {
                        objCast = Integer.valueOf(this.lexer.intValue());
                        this.lexer.nextToken(16);
                    } else {
                        objCast = TypeUtils.cast(parse(), type, this.config);
                    }
                }
                objArr[i3] = objCast;
                if (this.lexer.token() == 15) {
                    break;
                }
                if (this.lexer.token() == 16) {
                    if (i3 == typeArr.length - 1) {
                        this.lexer.nextToken(15);
                    } else {
                        this.lexer.nextToken(2);
                    }
                    i3++;
                    i = 8;
                    i2 = 14;
                } else {
                    throw new JSONException("syntax error :" + JSONToken.name(this.lexer.token()));
                }
            }
            if (this.lexer.token() == 15) {
                this.lexer.nextToken(16);
                return objArr;
            }
            throw new JSONException("syntax error");
        }
        throw new JSONException("syntax error : " + this.lexer.tokenName());
    }

    /* JADX WARN: Code restructure failed: missing block: B:86:0x0236, code lost:
    
        return r11;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Object parse(PropertyProcessable propertyProcessable, Object obj) {
        String strScanSymbolUnQuoted;
        int i = 0;
        if (this.lexer.token() != 12) {
            String str = "syntax error, expect {, actual " + this.lexer.tokenName();
            if (obj instanceof String) {
                str = (str + ", fieldName ") + obj;
            }
            String str2 = (str + ", ") + this.lexer.info();
            JSONArray jSONArray = new JSONArray();
            parseArray(jSONArray, obj);
            if (jSONArray.size() == 1) {
                Object obj2 = jSONArray.get(0);
                if (obj2 instanceof JSONObject) {
                    return (JSONObject) obj2;
                }
            }
            throw new JSONException(str2);
        }
        ParseContext parseContext = this.context;
        while (true) {
            try {
                this.lexer.skipWhitespace();
                char current = this.lexer.getCurrent();
                if (this.lexer.isEnabled(Feature.AllowArbitraryCommas)) {
                    while (current == ',') {
                        this.lexer.next();
                        this.lexer.skipWhitespace();
                        current = this.lexer.getCurrent();
                    }
                }
                if (current == '\"') {
                    strScanSymbolUnQuoted = this.lexer.scanSymbol(this.symbolTable, ca2.f674do);
                    this.lexer.skipWhitespace();
                    if (this.lexer.getCurrent() != ':') {
                        throw new JSONException("expect ':' at " + this.lexer.pos());
                    }
                } else {
                    if (current == '}') {
                        this.lexer.next();
                        this.lexer.resetStringPosition();
                        this.lexer.nextToken(16);
                        return propertyProcessable;
                    }
                    if (current == '\'') {
                        if (this.lexer.isEnabled(Feature.AllowSingleQuotes)) {
                            strScanSymbolUnQuoted = this.lexer.scanSymbol(this.symbolTable, '\'');
                            this.lexer.skipWhitespace();
                            if (this.lexer.getCurrent() != ':') {
                                throw new JSONException("expect ':' at " + this.lexer.pos());
                            }
                        } else {
                            throw new JSONException("syntax error");
                        }
                    } else if (this.lexer.isEnabled(Feature.AllowUnQuotedFieldNames)) {
                        strScanSymbolUnQuoted = this.lexer.scanSymbolUnQuoted(this.symbolTable);
                        this.lexer.skipWhitespace();
                        char current2 = this.lexer.getCurrent();
                        if (current2 != ':') {
                            throw new JSONException("expect ':' at " + this.lexer.pos() + ", actual " + current2);
                        }
                    } else {
                        throw new JSONException("syntax error");
                    }
                }
                this.lexer.next();
                this.lexer.skipWhitespace();
                this.lexer.getCurrent();
                this.lexer.resetStringPosition();
                Object object = null;
                if (strScanSymbolUnQuoted == JSON.DEFAULT_TYPE_KEY && !this.lexer.isEnabled(Feature.DisableSpecialKeyDetect)) {
                    Class<?> clsCheckAutoType = this.config.checkAutoType(this.lexer.scanSymbol(this.symbolTable, ca2.f674do), null, this.lexer.getFeatures());
                    if (Map.class.isAssignableFrom(clsCheckAutoType)) {
                        this.lexer.nextToken(16);
                        if (this.lexer.token() == 13) {
                            this.lexer.nextToken(16);
                            return propertyProcessable;
                        }
                    } else {
                        ObjectDeserializer deserializer = this.config.getDeserializer(clsCheckAutoType);
                        this.lexer.nextToken(16);
                        setResolveStatus(2);
                        if (parseContext != null && !(obj instanceof Integer)) {
                            popContext();
                        }
                        return (Map) deserializer.deserialze(this, clsCheckAutoType, obj);
                    }
                } else {
                    this.lexer.nextToken();
                    if (i != 0) {
                        setContext(parseContext);
                    }
                    Type type = propertyProcessable.getType(strScanSymbolUnQuoted);
                    if (this.lexer.token() == 8) {
                        this.lexer.nextToken();
                    } else {
                        object = parseObject(type, strScanSymbolUnQuoted);
                    }
                    propertyProcessable.apply(strScanSymbolUnQuoted, object);
                    setContext(parseContext, object, strScanSymbolUnQuoted);
                    setContext(parseContext);
                    int i2 = this.lexer.token();
                    if (i2 == 20 || i2 == 15) {
                        break;
                    }
                    if (i2 == 13) {
                        this.lexer.nextToken();
                        return propertyProcessable;
                    }
                }
                i++;
            } finally {
                setContext(parseContext);
            }
        }
    }

    public final void parseArray(Collection collection) {
        parseArray(collection, (Object) null);
    }

    public final void parseArray(Collection collection, Object obj) {
        Number numberDecimalValue;
        JSONLexer jSONLexer = this.lexer;
        if (jSONLexer.token() == 21 || jSONLexer.token() == 22) {
            jSONLexer.nextToken();
        }
        if (jSONLexer.token() == 14) {
            jSONLexer.nextToken(4);
            ParseContext parseContext = this.context;
            setContext(collection, obj);
            int i = 0;
            while (true) {
                try {
                    if (jSONLexer.isEnabled(Feature.AllowArbitraryCommas)) {
                        while (jSONLexer.token() == 16) {
                            jSONLexer.nextToken();
                        }
                    }
                    int i2 = jSONLexer.token();
                    Object object = null;
                    object = null;
                    if (i2 == 2) {
                        Number numberIntegerValue = jSONLexer.integerValue();
                        jSONLexer.nextToken(16);
                        object = numberIntegerValue;
                    } else if (i2 == 3) {
                        if (jSONLexer.isEnabled(Feature.UseBigDecimal)) {
                            numberDecimalValue = jSONLexer.decimalValue(true);
                        } else {
                            numberDecimalValue = jSONLexer.decimalValue(false);
                        }
                        object = numberDecimalValue;
                        jSONLexer.nextToken(16);
                    } else if (i2 == 4) {
                        String strStringVal = jSONLexer.stringVal();
                        jSONLexer.nextToken(16);
                        object = strStringVal;
                        if (jSONLexer.isEnabled(Feature.AllowISO8601DateFormat)) {
                            JSONScanner jSONScanner = new JSONScanner(strStringVal);
                            Object time = strStringVal;
                            if (jSONScanner.scanISO8601DateIfMatch()) {
                                time = jSONScanner.getCalendar().getTime();
                            }
                            jSONScanner.close();
                            object = time;
                        }
                    } else if (i2 == 6) {
                        Boolean bool = Boolean.TRUE;
                        jSONLexer.nextToken(16);
                        object = bool;
                    } else if (i2 == 7) {
                        Boolean bool2 = Boolean.FALSE;
                        jSONLexer.nextToken(16);
                        object = bool2;
                    } else if (i2 == 8) {
                        jSONLexer.nextToken(4);
                    } else if (i2 == 12) {
                        object = parseObject(new JSONObject(jSONLexer.isEnabled(Feature.OrderedField)), Integer.valueOf(i));
                    } else {
                        if (i2 == 20) {
                            throw new JSONException("unclosed jsonArray");
                        }
                        if (i2 == 23) {
                            jSONLexer.nextToken(4);
                        } else if (i2 == 14) {
                            JSONArray jSONArray = new JSONArray();
                            parseArray(jSONArray, Integer.valueOf(i));
                            object = jSONArray;
                            if (jSONLexer.isEnabled(Feature.UseObjectArray)) {
                                object = jSONArray.toArray();
                            }
                        } else if (i2 != 15) {
                            object = parse();
                        } else {
                            jSONLexer.nextToken(16);
                            return;
                        }
                    }
                    collection.add(object);
                    checkListResolve(collection);
                    if (jSONLexer.token() == 16) {
                        jSONLexer.nextToken(4);
                    }
                    i++;
                } finally {
                    setContext(parseContext);
                }
            }
        } else {
            throw new JSONException("syntax error, expect [, actual " + JSONToken.name(jSONLexer.token()) + ", pos " + jSONLexer.pos() + ", fieldName " + obj);
        }
    }

    public <T> T parseObject(Class<T> cls) {
        return (T) parseObject(cls, (Object) null);
    }

    public <T> T parseObject(Type type) {
        return (T) parseObject(type, (Object) null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <T> T parseObject(Type type, Object obj) {
        int i = this.lexer.token();
        if (i == 8) {
            this.lexer.nextToken();
            return null;
        }
        if (i == 4) {
            if (type == byte[].class) {
                T t = (T) this.lexer.bytesValue();
                this.lexer.nextToken();
                return t;
            }
            if (type == char[].class) {
                String strStringVal = this.lexer.stringVal();
                this.lexer.nextToken();
                return (T) strStringVal.toCharArray();
            }
        }
        ObjectDeserializer deserializer = this.config.getDeserializer(type);
        try {
            if (deserializer.getClass() == JavaBeanDeserializer.class) {
                return (T) ((JavaBeanDeserializer) deserializer).deserialze(this, type, obj, 0);
            }
            return (T) deserializer.deserialze(this, type, obj);
        } catch (JSONException e) {
            throw e;
        } catch (Throwable th) {
            throw new JSONException(th.getMessage(), th);
        }
    }

    public void parseObject(Object obj) {
        Object objDeserialze;
        Class<?> cls = obj.getClass();
        ObjectDeserializer deserializer = this.config.getDeserializer(cls);
        JavaBeanDeserializer javaBeanDeserializer = deserializer instanceof JavaBeanDeserializer ? (JavaBeanDeserializer) deserializer : null;
        if (this.lexer.token() != 12 && this.lexer.token() != 16) {
            throw new JSONException("syntax error, expect {, actual " + this.lexer.tokenName());
        }
        while (true) {
            String strScanSymbol = this.lexer.scanSymbol(this.symbolTable);
            if (strScanSymbol == null) {
                if (this.lexer.token() == 13) {
                    this.lexer.nextToken(16);
                    return;
                } else if (this.lexer.token() != 16 || !this.lexer.isEnabled(Feature.AllowArbitraryCommas)) {
                }
            }
            FieldDeserializer fieldDeserializer = javaBeanDeserializer != null ? javaBeanDeserializer.getFieldDeserializer(strScanSymbol) : null;
            if (fieldDeserializer == null) {
                if (this.lexer.isEnabled(Feature.IgnoreNotMatch)) {
                    this.lexer.nextTokenWithColon();
                    parse();
                    if (this.lexer.token() == 13) {
                        this.lexer.nextToken();
                        return;
                    }
                } else {
                    throw new JSONException("setter not found, class " + cls.getName() + ", property " + strScanSymbol);
                }
            } else {
                FieldInfo fieldInfo = fieldDeserializer.fieldInfo;
                Class<?> cls2 = fieldInfo.fieldClass;
                Type type = fieldInfo.fieldType;
                if (cls2 == Integer.TYPE) {
                    this.lexer.nextTokenWithColon(2);
                    objDeserialze = IntegerCodec.instance.deserialze(this, type, null);
                } else if (cls2 == String.class) {
                    this.lexer.nextTokenWithColon(4);
                    objDeserialze = StringCodec.deserialze(this);
                } else if (cls2 == Long.TYPE) {
                    this.lexer.nextTokenWithColon(2);
                    objDeserialze = LongCodec.instance.deserialze(this, type, null);
                } else {
                    ObjectDeserializer deserializer2 = this.config.getDeserializer(cls2, type);
                    this.lexer.nextTokenWithColon(deserializer2.getFastMatchToken());
                    objDeserialze = deserializer2.deserialze(this, type, null);
                }
                fieldDeserializer.setValue(obj, objDeserialze);
                if (this.lexer.token() != 16 && this.lexer.token() == 13) {
                    this.lexer.nextToken(16);
                    return;
                }
            }
        }
    }

    public Object parseObject(Map map) {
        return parseObject(map, (Object) null);
    }

    public JSONObject parseObject() {
        return (JSONObject) parseObject((Map) new JSONObject(this.lexer.isEnabled(Feature.OrderedField)));
    }
}
