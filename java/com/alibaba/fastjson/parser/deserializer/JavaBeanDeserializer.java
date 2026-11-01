package com.alibaba.fastjson.parser.deserializer;

import android.support.v4.wk;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.JSONObject;
import com.alibaba.fastjson.annotation.JSONField;
import com.alibaba.fastjson.annotation.JSONType;
import com.alibaba.fastjson.parser.DefaultJSONParser;
import com.alibaba.fastjson.parser.Feature;
import com.alibaba.fastjson.parser.JSONLexer;
import com.alibaba.fastjson.parser.JSONLexerBase;
import com.alibaba.fastjson.parser.JSONToken;
import com.alibaba.fastjson.parser.ParseContext;
import com.alibaba.fastjson.parser.ParserConfig;
import com.alibaba.fastjson.util.FieldInfo;
import com.alibaba.fastjson.util.JavaBeanInfo;
import com.alibaba.fastjson.util.TypeUtils;
import com.umeng.analytics.pro.ak;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.lang.reflect.Type;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.Arrays;
import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

/* loaded from: classes.dex */
public class JavaBeanDeserializer implements ObjectDeserializer {
    private final Map<String, FieldDeserializer> alterNameFieldDeserializers;
    public final JavaBeanInfo beanInfo;
    public final Class<?> clazz;
    private ConcurrentMap<String, Object> extraFieldDeserializers;
    private final FieldDeserializer[] fieldDeserializers;
    private transient long[] hashArray;
    private transient short[] hashArrayMapping;
    private transient long[] smartMatchHashArray;
    private transient short[] smartMatchHashArrayMapping;
    public final FieldDeserializer[] sortedFieldDeserializers;

    public JavaBeanDeserializer(ParserConfig parserConfig, Class<?> cls) {
        this(parserConfig, cls, cls);
    }

    private Object createFactoryInstance(ParserConfig parserConfig, Object obj) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        return this.beanInfo.factoryMethod.invoke(null, obj);
    }

    public static boolean isSetFlag(int i, int[] iArr) {
        if (iArr == null) {
            return false;
        }
        int i2 = i / 32;
        int i3 = i % 32;
        if (i2 < iArr.length) {
            if (((1 << i3) & iArr[i2]) != 0) {
                return true;
            }
        }
        return false;
    }

    public static void parseArray(Collection collection, ObjectDeserializer objectDeserializer, DefaultJSONParser defaultJSONParser, Type type, Object obj) {
        JSONLexerBase jSONLexerBase = (JSONLexerBase) defaultJSONParser.lexer;
        int i = jSONLexerBase.token();
        if (i == 8) {
            jSONLexerBase.nextToken(16);
            jSONLexerBase.token();
            return;
        }
        if (i != 14) {
            defaultJSONParser.throwException(i);
        }
        if (jSONLexerBase.getCurrent() == '[') {
            jSONLexerBase.next();
            jSONLexerBase.setToken(14);
        } else {
            jSONLexerBase.nextToken(14);
        }
        if (jSONLexerBase.token() == 15) {
            jSONLexerBase.nextToken();
            return;
        }
        int i2 = 0;
        while (true) {
            collection.add(objectDeserializer.deserialze(defaultJSONParser, type, Integer.valueOf(i2)));
            i2++;
            if (jSONLexerBase.token() != 16) {
                break;
            }
            if (jSONLexerBase.getCurrent() == '[') {
                jSONLexerBase.next();
                jSONLexerBase.setToken(14);
            } else {
                jSONLexerBase.nextToken(14);
            }
        }
        int i3 = jSONLexerBase.token();
        if (i3 != 15) {
            defaultJSONParser.throwException(i3);
        }
        if (jSONLexerBase.getCurrent() != ',') {
            jSONLexerBase.nextToken(16);
        } else {
            jSONLexerBase.next();
            jSONLexerBase.setToken(16);
        }
    }

    public void check(JSONLexer jSONLexer, int i) {
        if (jSONLexer.token() != i) {
            throw new JSONException("syntax error");
        }
    }

    public Object createInstance(DefaultJSONParser defaultJSONParser, Type type) throws IllegalAccessException, InstantiationException, IllegalArgumentException, InvocationTargetException {
        Object objNewInstance;
        if ((type instanceof Class) && this.clazz.isInterface()) {
            return Proxy.newProxyInstance(Thread.currentThread().getContextClassLoader(), new Class[]{(Class) type}, new JSONObject());
        }
        JavaBeanInfo javaBeanInfo = this.beanInfo;
        Constructor<?> constructor = javaBeanInfo.defaultConstructor;
        Object obj = null;
        if (constructor == null && javaBeanInfo.factoryMethod == null) {
            return null;
        }
        Method method = javaBeanInfo.factoryMethod;
        if (method != null && javaBeanInfo.defaultConstructorParameterSize > 0) {
            return null;
        }
        try {
            if (javaBeanInfo.defaultConstructorParameterSize == 0) {
                objNewInstance = constructor != null ? constructor.newInstance(new Object[0]) : method.invoke(null, new Object[0]);
            } else {
                ParseContext context = defaultJSONParser.getContext();
                if (context == null || context.object == null) {
                    throw new JSONException("can't create non-static inner class instance.");
                }
                if (!(type instanceof Class)) {
                    throw new JSONException("can't create non-static inner class instance.");
                }
                String name = ((Class) type).getName();
                String strSubstring = name.substring(0, name.lastIndexOf(36));
                Object obj2 = context.object;
                String name2 = obj2.getClass().getName();
                if (!name2.equals(strSubstring)) {
                    ParseContext parseContext = context.parent;
                    if (parseContext == null || parseContext.object == null || !("java.util.ArrayList".equals(name2) || "java.util.List".equals(name2) || "java.util.Collection".equals(name2) || "java.util.Map".equals(name2) || "java.util.HashMap".equals(name2))) {
                        obj = obj2;
                    } else if (parseContext.object.getClass().getName().equals(strSubstring)) {
                        obj = parseContext.object;
                    }
                    obj2 = obj;
                }
                if (obj2 == null) {
                    throw new JSONException("can't create non-static inner class instance.");
                }
                objNewInstance = constructor.newInstance(obj2);
            }
            if (defaultJSONParser != null && defaultJSONParser.lexer.isEnabled(Feature.InitStringFieldAsEmpty)) {
                for (FieldInfo fieldInfo : this.beanInfo.fields) {
                    if (fieldInfo.fieldClass == String.class) {
                        try {
                            fieldInfo.set(objNewInstance, "");
                        } catch (Exception e) {
                            throw new JSONException("create instance error, class " + this.clazz.getName(), e);
                        }
                    }
                }
            }
            return objNewInstance;
        } catch (JSONException e2) {
            throw e2;
        } catch (Exception e3) {
            throw new JSONException("create instance error, class " + this.clazz.getName(), e3);
        }
    }

    @Override // com.alibaba.fastjson.parser.deserializer.ObjectDeserializer
    public <T> T deserialze(DefaultJSONParser defaultJSONParser, Type type, Object obj) {
        return (T) deserialze(defaultJSONParser, type, obj, 0);
    }

    public <T> T deserialzeArrayMapping(DefaultJSONParser defaultJSONParser, Type type, Object obj, Object obj2) {
        JSONLexer jSONLexer = defaultJSONParser.lexer;
        if (jSONLexer.token() != 14) {
            throw new JSONException("error");
        }
        T t = (T) createInstance(defaultJSONParser, type);
        int i = 0;
        int length = this.sortedFieldDeserializers.length;
        while (true) {
            if (i >= length) {
                break;
            }
            char c = i == length + (-1) ? ']' : ',';
            FieldDeserializer fieldDeserializer = this.sortedFieldDeserializers[i];
            Class<?> cls = fieldDeserializer.fieldInfo.fieldClass;
            if (cls == Integer.TYPE) {
                fieldDeserializer.setValue((Object) t, jSONLexer.scanInt(c));
            } else if (cls == String.class) {
                fieldDeserializer.setValue((Object) t, jSONLexer.scanString(c));
            } else if (cls == Long.TYPE) {
                fieldDeserializer.setValue(t, jSONLexer.scanLong(c));
            } else if (cls.isEnum()) {
                char current = jSONLexer.getCurrent();
                fieldDeserializer.setValue(t, (current == '\"' || current == 'n') ? jSONLexer.scanEnum(cls, defaultJSONParser.getSymbolTable(), c) : (current < '0' || current > '9') ? scanEnum(jSONLexer, c) : ((EnumDeserializer) ((DefaultFieldDeserializer) fieldDeserializer).getFieldValueDeserilizer(defaultJSONParser.getConfig())).valueOf(jSONLexer.scanInt(c)));
            } else if (cls == Boolean.TYPE) {
                fieldDeserializer.setValue(t, jSONLexer.scanBoolean(c));
            } else if (cls == Float.TYPE) {
                fieldDeserializer.setValue(t, Float.valueOf(jSONLexer.scanFloat(c)));
            } else if (cls == Double.TYPE) {
                fieldDeserializer.setValue(t, Double.valueOf(jSONLexer.scanDouble(c)));
            } else if (cls == Date.class && jSONLexer.getCurrent() == '1') {
                fieldDeserializer.setValue(t, new Date(jSONLexer.scanLong(c)));
            } else if (cls == BigDecimal.class) {
                fieldDeserializer.setValue(t, jSONLexer.scanDecimal(c));
            } else {
                jSONLexer.nextToken(14);
                FieldInfo fieldInfo = fieldDeserializer.fieldInfo;
                fieldDeserializer.setValue(t, defaultJSONParser.parseObject(fieldInfo.fieldType, fieldInfo.name));
                if (jSONLexer.token() == 15) {
                    break;
                }
                check(jSONLexer, c == ']' ? 15 : 16);
            }
            i++;
        }
        jSONLexer.nextToken(16);
        return t;
    }

    @Override // com.alibaba.fastjson.parser.deserializer.ObjectDeserializer
    public int getFastMatchToken() {
        return 12;
    }

    public FieldDeserializer getFieldDeserializer(String str) {
        return getFieldDeserializer(str, null);
    }

    public Type getFieldType(int i) {
        return this.sortedFieldDeserializers[i].fieldInfo.fieldType;
    }

    public JavaBeanDeserializer getSeeAlso(ParserConfig parserConfig, JavaBeanInfo javaBeanInfo, String str) {
        JSONType jSONType = javaBeanInfo.jsonType;
        if (jSONType == null) {
            return null;
        }
        for (Class<?> cls : jSONType.seeAlso()) {
            ObjectDeserializer deserializer = parserConfig.getDeserializer(cls);
            if (deserializer instanceof JavaBeanDeserializer) {
                JavaBeanDeserializer javaBeanDeserializer = (JavaBeanDeserializer) deserializer;
                JavaBeanInfo javaBeanInfo2 = javaBeanDeserializer.beanInfo;
                if (javaBeanInfo2.typeName.equals(str)) {
                    return javaBeanDeserializer;
                }
                JavaBeanDeserializer seeAlso = getSeeAlso(parserConfig, javaBeanInfo2, str);
                if (seeAlso != null) {
                    return seeAlso;
                }
            }
        }
        return null;
    }

    public boolean parseField(DefaultJSONParser defaultJSONParser, String str, Object obj, Type type, Map<String, Object> map) {
        return parseField(defaultJSONParser, str, obj, type, map, null);
    }

    public Object parseRest(DefaultJSONParser defaultJSONParser, Type type, Object obj, Object obj2, int i) {
        return parseRest(defaultJSONParser, type, obj, obj2, i, new int[0]);
    }

    public Enum<?> scanEnum(JSONLexer jSONLexer, char c) {
        throw new JSONException("illegal enum. " + jSONLexer.info());
    }

    public FieldDeserializer smartMatch(String str) {
        return smartMatch(str, null);
    }

    public JavaBeanDeserializer(ParserConfig parserConfig, Class<?> cls, Type type) {
        this(parserConfig, JavaBeanInfo.build(cls, type, parserConfig.propertyNamingStrategy, parserConfig.fieldBased, parserConfig.compatibleWithJavaBean, parserConfig.isJacksonCompatible()));
    }

    public <T> T deserialze(DefaultJSONParser defaultJSONParser, Type type, Object obj, int i) {
        return (T) deserialze(defaultJSONParser, type, obj, null, i, null);
    }

    public FieldDeserializer getFieldDeserializer(String str, int[] iArr) {
        if (str == null) {
            return null;
        }
        int i = 0;
        int length = this.sortedFieldDeserializers.length - 1;
        while (i <= length) {
            int i2 = (i + length) >>> 1;
            int iCompareTo = this.sortedFieldDeserializers[i2].fieldInfo.name.compareTo(str);
            if (iCompareTo < 0) {
                i = i2 + 1;
            } else {
                if (iCompareTo <= 0) {
                    if (isSetFlag(i2, iArr)) {
                        return null;
                    }
                    return this.sortedFieldDeserializers[i2];
                }
                length = i2 - 1;
            }
        }
        Map<String, FieldDeserializer> map = this.alterNameFieldDeserializers;
        if (map != null) {
            return map.get(str);
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:40:0x0094 A[PHI: r2
      0x0094: PHI (r2v4 com.alibaba.fastjson.parser.deserializer.FieldDeserializer) = 
      (r2v3 com.alibaba.fastjson.parser.deserializer.FieldDeserializer)
      (r2v3 com.alibaba.fastjson.parser.deserializer.FieldDeserializer)
      (r2v30 com.alibaba.fastjson.parser.deserializer.FieldDeserializer)
      (r2v3 com.alibaba.fastjson.parser.deserializer.FieldDeserializer)
     binds: [B:10:0x0032, B:36:0x008b, B:39:0x0091, B:14:0x003f] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Type inference failed for: r17v0 */
    /* JADX WARN: Type inference failed for: r17v1, types: [boolean] */
    /* JADX WARN: Type inference failed for: r17v3 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean parseField(DefaultJSONParser defaultJSONParser, String str, Object obj, Type type, Map<String, Object> map, int[] iArr) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        JSONLexer jSONLexer;
        ?? r17;
        JSONLexer jSONLexer2;
        JSONLexer jSONLexer3 = defaultJSONParser.lexer;
        int i = Feature.DisableFieldSmartMatch.mask;
        FieldDeserializer fieldDeserializer = (jSONLexer3.isEnabled(i) || (i & this.beanInfo.parserFeatures) != 0) ? getFieldDeserializer(str) : smartMatch(str, iArr);
        int i2 = Feature.SupportNonPublicField.mask;
        if (fieldDeserializer != null || (!jSONLexer3.isEnabled(i2) && (i2 & this.beanInfo.parserFeatures) == 0)) {
            jSONLexer = jSONLexer3;
            r17 = 1;
        } else {
            if (this.extraFieldDeserializers == null) {
                ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap(1, 0.75f, 1);
                for (Class<?> superclass = this.clazz; superclass != null && superclass != Object.class; superclass = superclass.getSuperclass()) {
                    for (Field field : superclass.getDeclaredFields()) {
                        String name = field.getName();
                        if (getFieldDeserializer(name) == null) {
                            int modifiers = field.getModifiers();
                            if ((modifiers & 16) == 0 && (modifiers & 8) == 0) {
                                concurrentHashMap.put(name, field);
                            }
                        }
                    }
                }
                this.extraFieldDeserializers = concurrentHashMap;
            }
            Object obj2 = this.extraFieldDeserializers.get(str);
            if (obj2 != null) {
                if (obj2 instanceof FieldDeserializer) {
                    fieldDeserializer = (FieldDeserializer) obj2;
                    jSONLexer = jSONLexer3;
                    r17 = 1;
                } else {
                    Field field2 = (Field) obj2;
                    field2.setAccessible(true);
                    r17 = 1;
                    jSONLexer = jSONLexer3;
                    fieldDeserializer = new DefaultFieldDeserializer(defaultJSONParser.getConfig(), this.clazz, new FieldInfo(str, field2.getDeclaringClass(), field2.getType(), field2.getGenericType(), field2, 0, 0, 0));
                    this.extraFieldDeserializers.put(str, fieldDeserializer);
                }
            }
        }
        if (fieldDeserializer != null) {
            int i3 = 0;
            while (true) {
                FieldDeserializer[] fieldDeserializerArr = this.sortedFieldDeserializers;
                if (i3 >= fieldDeserializerArr.length) {
                    i3 = -1;
                    break;
                }
                if (fieldDeserializerArr[i3] == fieldDeserializer) {
                    break;
                }
                i3++;
            }
            if (i3 != -1) {
                jSONLexer2 = jSONLexer;
                if (iArr != null && str.startsWith("_") && isSetFlag(i3, iArr)) {
                    defaultJSONParser.parseExtra(obj, str);
                    return false;
                }
            } else {
                jSONLexer2 = jSONLexer;
            }
            jSONLexer2.nextTokenWithColon(fieldDeserializer.getFastMatchToken());
            fieldDeserializer.parseField(defaultJSONParser, obj, type, map);
            return r17;
        }
        if (!jSONLexer.isEnabled(Feature.IgnoreNotMatch)) {
            throw new JSONException("setter not found, class " + this.clazz.getName() + ", property " + str);
        }
        for (FieldDeserializer fieldDeserializer2 : this.sortedFieldDeserializers) {
            FieldInfo fieldInfo = fieldDeserializer2.fieldInfo;
            if (fieldInfo.unwrapped && (fieldDeserializer2 instanceof DefaultFieldDeserializer)) {
                if (fieldInfo.field != null) {
                    DefaultFieldDeserializer defaultFieldDeserializer = (DefaultFieldDeserializer) fieldDeserializer2;
                    ObjectDeserializer fieldValueDeserilizer = defaultFieldDeserializer.getFieldValueDeserilizer(defaultJSONParser.getConfig());
                    if (fieldValueDeserilizer instanceof JavaBeanDeserializer) {
                        FieldDeserializer fieldDeserializer3 = ((JavaBeanDeserializer) fieldValueDeserilizer).getFieldDeserializer(str);
                        if (fieldDeserializer3 != null) {
                            try {
                                Object objCreateInstance = fieldInfo.field.get(obj);
                                if (objCreateInstance == null) {
                                    objCreateInstance = ((JavaBeanDeserializer) fieldValueDeserilizer).createInstance(defaultJSONParser, fieldInfo.fieldType);
                                    fieldDeserializer2.setValue(obj, objCreateInstance);
                                }
                                jSONLexer.nextTokenWithColon(defaultFieldDeserializer.getFastMatchToken());
                                fieldDeserializer3.parseField(defaultJSONParser, objCreateInstance, type, map);
                                return r17;
                            } catch (Exception e) {
                                throw new JSONException("parse unwrapped field error.", e);
                            }
                        }
                    } else if (fieldValueDeserilizer instanceof MapDeserializer) {
                        MapDeserializer mapDeserializer = (MapDeserializer) fieldValueDeserilizer;
                        try {
                            Map<Object, Object> mapCreateMap = (Map) fieldInfo.field.get(obj);
                            if (mapCreateMap == null) {
                                mapCreateMap = mapDeserializer.createMap(fieldInfo.fieldType);
                                fieldDeserializer2.setValue(obj, mapCreateMap);
                            }
                            jSONLexer.nextTokenWithColon();
                            mapCreateMap.put(str, defaultJSONParser.parse(str));
                            return r17;
                        } catch (Exception e2) {
                            throw new JSONException("parse unwrapped field error.", e2);
                        }
                    }
                } else if (fieldInfo.method.getParameterTypes().length == 2) {
                    jSONLexer.nextTokenWithColon();
                    Object obj3 = defaultJSONParser.parse(str);
                    try {
                        Method method = fieldInfo.method;
                        Object[] objArr = new Object[2];
                        objArr[0] = str;
                        objArr[r17] = obj3;
                        method.invoke(obj, objArr);
                        return r17;
                    } catch (Exception e3) {
                        throw new JSONException("parse unwrapped field error.", e3);
                    }
                }
            }
        }
        defaultJSONParser.parseExtra(obj, str);
        return false;
    }

    public Object parseRest(DefaultJSONParser defaultJSONParser, Type type, Object obj, Object obj2, int i, int[] iArr) {
        return deserialze(defaultJSONParser, type, obj, obj2, i, iArr);
    }

    public Enum scanEnum(JSONLexerBase jSONLexerBase, char[] cArr, ObjectDeserializer objectDeserializer) {
        EnumDeserializer enumDeserializer = objectDeserializer instanceof EnumDeserializer ? (EnumDeserializer) objectDeserializer : null;
        if (enumDeserializer == null) {
            jSONLexerBase.matchStat = -1;
            return null;
        }
        long jScanFieldSymbol = jSONLexerBase.scanFieldSymbol(cArr);
        if (jSONLexerBase.matchStat > 0) {
            return enumDeserializer.getEnumByHashCode(jScanFieldSymbol);
        }
        return null;
    }

    public FieldDeserializer smartMatch(String str, int[] iArr) {
        boolean zStartsWith;
        if (str == null) {
            return null;
        }
        FieldDeserializer fieldDeserializer = getFieldDeserializer(str, iArr);
        if (fieldDeserializer == null) {
            long jFnv1a_64_lower = TypeUtils.fnv1a_64_lower(str);
            int i = 0;
            if (this.smartMatchHashArray == null) {
                long[] jArr = new long[this.sortedFieldDeserializers.length];
                int i2 = 0;
                while (true) {
                    FieldDeserializer[] fieldDeserializerArr = this.sortedFieldDeserializers;
                    if (i2 >= fieldDeserializerArr.length) {
                        break;
                    }
                    jArr[i2] = TypeUtils.fnv1a_64_lower(fieldDeserializerArr[i2].fieldInfo.name);
                    i2++;
                }
                Arrays.sort(jArr);
                this.smartMatchHashArray = jArr;
            }
            int iBinarySearch = Arrays.binarySearch(this.smartMatchHashArray, jFnv1a_64_lower);
            if (iBinarySearch < 0) {
                zStartsWith = str.startsWith(ak.ae);
                if (zStartsWith) {
                    iBinarySearch = Arrays.binarySearch(this.smartMatchHashArray, TypeUtils.fnv1a_64_lower(str.substring(2)));
                }
            } else {
                zStartsWith = false;
            }
            if (iBinarySearch >= 0) {
                if (this.smartMatchHashArrayMapping == null) {
                    short[] sArr = new short[this.smartMatchHashArray.length];
                    Arrays.fill(sArr, (short) -1);
                    while (true) {
                        FieldDeserializer[] fieldDeserializerArr2 = this.sortedFieldDeserializers;
                        if (i >= fieldDeserializerArr2.length) {
                            break;
                        }
                        int iBinarySearch2 = Arrays.binarySearch(this.smartMatchHashArray, TypeUtils.fnv1a_64_lower(fieldDeserializerArr2[i].fieldInfo.name));
                        if (iBinarySearch2 >= 0) {
                            sArr[iBinarySearch2] = (short) i;
                        }
                        i++;
                    }
                    this.smartMatchHashArrayMapping = sArr;
                }
                short s = this.smartMatchHashArrayMapping[iBinarySearch];
                if (s != -1 && !isSetFlag(s, iArr)) {
                    fieldDeserializer = this.sortedFieldDeserializers[s];
                }
            }
            if (fieldDeserializer != null) {
                FieldInfo fieldInfo = fieldDeserializer.fieldInfo;
                if ((fieldInfo.parserFeatures & Feature.DisableFieldSmartMatch.mask) != 0) {
                    return null;
                }
                Class<?> cls = fieldInfo.fieldClass;
                if (zStartsWith && cls != Boolean.TYPE && cls != Boolean.class) {
                    return null;
                }
            }
        }
        return fieldDeserializer;
    }

    /* JADX WARN: Code restructure failed: missing block: B:385:0x04d7, code lost:
    
        r1 = getSeeAlso(r14, r31.beanInfo, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:386:0x04dd, code lost:
    
        if (r1 != null) goto L389;
     */
    /* JADX WARN: Code restructure failed: missing block: B:387:0x04df, code lost:
    
        r7 = r14.checkAutoType(r0, com.alibaba.fastjson.util.TypeUtils.getClass(r33), r13.getFeatures());
        r1 = r32.getConfig().getDeserializer(r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:389:0x04f4, code lost:
    
        r7 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:390:0x04f5, code lost:
    
        r2 = (T) r1.deserialze(r32, r7, r34);
     */
    /* JADX WARN: Code restructure failed: missing block: B:391:0x04fb, code lost:
    
        if ((r1 instanceof com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer) == false) goto L395;
     */
    /* JADX WARN: Code restructure failed: missing block: B:392:0x04fd, code lost:
    
        r1 = (com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer) r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:393:0x04ff, code lost:
    
        if (r3 == null) goto L395;
     */
    /* JADX WARN: Code restructure failed: missing block: B:394:0x0501, code lost:
    
        r1.getFieldDeserializer(r3).setValue((java.lang.Object) r2, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:395:0x0508, code lost:
    
        if (r4 == null) goto L397;
     */
    /* JADX WARN: Code restructure failed: missing block: B:396:0x050a, code lost:
    
        r4.object = r27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:397:0x050e, code lost:
    
        r32.setContext(r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:398:0x0511, code lost:
    
        return r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:403:0x051f, code lost:
    
        r7 = r4;
        r20 = r11;
        r0 = r19;
        r36 = 0;
        r11 = r6;
        r1 = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:657:0x08f0, code lost:
    
        throw new com.alibaba.fastjson.JSONException("syntax error, unexpect token " + com.alibaba.fastjson.parser.JSONToken.name(r13.token()));
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:250:0x02f9  */
    /* JADX WARN: Removed duplicated region for block: B:412:0x055b  */
    /* JADX WARN: Removed duplicated region for block: B:414:0x0566 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:425:0x0590  */
    /* JADX WARN: Removed duplicated region for block: B:429:0x059c  */
    /* JADX WARN: Removed duplicated region for block: B:458:0x0604  */
    /* JADX WARN: Removed duplicated region for block: B:469:0x064e  */
    /* JADX WARN: Removed duplicated region for block: B:470:0x0653 A[Catch: all -> 0x08f9, TryCatch #15 {all -> 0x08f9, blocks: (B:655:0x08bc, B:467:0x0646, B:470:0x0653, B:472:0x0659, B:651:0x08ad, B:653:0x08b5, B:656:0x08d2, B:657:0x08f0, B:459:0x0627, B:461:0x062d, B:463:0x0633, B:465:0x063e, B:658:0x08f1, B:659:0x08f8), top: B:697:0x08bc }] */
    /* JADX WARN: Removed duplicated region for block: B:603:0x07e8 A[Catch: Exception -> 0x081a, all -> 0x087b, TRY_ENTER, TRY_LEAVE, TryCatch #13 {Exception -> 0x081a, blocks: (B:586:0x07be, B:588:0x07c4, B:603:0x07e8), top: B:693:0x07be }] */
    /* JADX WARN: Removed duplicated region for block: B:668:0x090c  */
    /* JADX WARN: Removed duplicated region for block: B:689:0x0391 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:693:0x07be A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r1v100 */
    /* JADX WARN: Type inference failed for: r1v12 */
    /* JADX WARN: Type inference failed for: r1v158, types: [int] */
    /* JADX WARN: Type inference failed for: r1v159, types: [int] */
    /* JADX WARN: Type inference failed for: r1v161 */
    /* JADX WARN: Type inference failed for: r1v18 */
    /* JADX WARN: Type inference failed for: r1v29, types: [boolean] */
    /* JADX WARN: Type inference failed for: r1v91, types: [int] */
    /* JADX WARN: Type inference failed for: r1v99 */
    /* JADX WARN: Type inference failed for: r32v0, types: [com.alibaba.fastjson.parser.DefaultJSONParser] */
    /* JADX WARN: Type inference failed for: r3v19, types: [boolean] */
    /* JADX WARN: Type inference failed for: r3v20 */
    /* JADX WARN: Type inference failed for: r3v31, types: [int] */
    /* JADX WARN: Type inference failed for: r3v36, types: [java.lang.Class<?>] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public <T> T deserialze(DefaultJSONParser defaultJSONParser, Type type, Object obj, Object obj2, int i, int[] iArr) throws Throwable {
        ParseContext parseContext;
        Object objInvoke;
        FieldDeserializer fieldDeserializer;
        int i2;
        JSONField annotation;
        FieldInfo fieldInfo;
        Class cls;
        boolean z;
        FieldInfo fieldInfo2;
        Class cls2;
        Object obj3;
        int[] iArr2;
        boolean z2;
        ?? r1;
        Object objValueOf;
        Class cls3;
        Class cls4;
        Object obj4;
        int[] iArr3;
        String str;
        Object obj5;
        ParserConfig parserConfig;
        HashMap map;
        Class cls5;
        ParseContext parseContext2;
        String strScanSymbol;
        Object obj6;
        byte b;
        Object objCreateInstance;
        T t;
        Object obj7;
        Class cls6;
        Object[] objArr;
        boolean z3;
        Object obj8;
        FieldInfo[] fieldInfoArr;
        FieldInfo[] fieldInfoArr2;
        Class cls7;
        String str2;
        char c;
        Object obj9;
        Object obj10;
        boolean z4;
        int i3;
        boolean z5;
        boolean z6;
        Class cls8 = Integer.class;
        Class cls9 = String.class;
        if (type != JSON.class && type != JSONObject.class) {
            JSONLexerBase jSONLexerBase = (JSONLexerBase) defaultJSONParser.lexer;
            ParserConfig config = defaultJSONParser.getConfig();
            int i4 = jSONLexerBase.token();
            ParseContext context = null;
            if (i4 == 8) {
                jSONLexerBase.nextToken(16);
                return null;
            }
            ParseContext context2 = defaultJSONParser.getContext();
            if (obj2 != null && context2 != null) {
                context2 = context2.parent;
            }
            ParseContext parseContext3 = context2;
            try {
            } catch (Throwable th) {
                th = th;
            }
            if (i4 == 13) {
                jSONLexerBase.nextToken(16);
                T t2 = obj2 == null ? (T) createInstance((DefaultJSONParser) defaultJSONParser, type) : (T) obj2;
                defaultJSONParser.setContext(parseContext3);
                return t2;
            }
            if (i4 == 14) {
                Feature feature = Feature.SupportArrayToBean;
                int i5 = feature.mask;
                if (((this.beanInfo.parserFeatures & i5) == 0 && !jSONLexerBase.isEnabled(feature) && (i & i5) == 0) ? false : true) {
                    T t3 = (T) deserialzeArrayMapping(defaultJSONParser, type, obj, obj2);
                    defaultJSONParser.setContext(parseContext3);
                    return t3;
                }
            }
            if (i4 != 12 && i4 != 16) {
                if (jSONLexerBase.isBlankInput()) {
                    defaultJSONParser.setContext(parseContext3);
                    return null;
                }
                try {
                    if (i4 == 4) {
                        String strStringVal = jSONLexerBase.stringVal();
                        if (strStringVal.length() == 0) {
                            jSONLexerBase.nextToken();
                            defaultJSONParser.setContext(parseContext3);
                            return null;
                        }
                        JSONType jSONType = this.beanInfo.jsonType;
                        if (jSONType != null) {
                            for (Class<?> cls10 : jSONType.seeAlso()) {
                                if (Enum.class.isAssignableFrom(cls10)) {
                                    try {
                                        T t4 = (T) Enum.valueOf(cls10, strStringVal);
                                        defaultJSONParser.setContext(parseContext3);
                                        return t4;
                                    } catch (IllegalArgumentException unused) {
                                        continue;
                                    }
                                }
                            }
                        }
                    } else if (i4 == 5) {
                        jSONLexerBase.getCalendar();
                    }
                    if (i4 == 14) {
                        try {
                            if (jSONLexerBase.getCurrent() == ']') {
                                jSONLexerBase.next();
                                jSONLexerBase.nextToken();
                                defaultJSONParser.setContext(parseContext3);
                                return null;
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            context = null;
                            objInvoke = obj2;
                            parseContext = parseContext3;
                            if (context != null) {
                            }
                            defaultJSONParser.setContext(parseContext);
                            throw th;
                        }
                    }
                    context = null;
                    JavaBeanInfo javaBeanInfo = this.beanInfo;
                    if (javaBeanInfo.factoryMethod != null) {
                        FieldInfo[] fieldInfoArr3 = javaBeanInfo.fields;
                        if (fieldInfoArr3.length == 1) {
                            try {
                                Class cls11 = fieldInfoArr3[0].fieldClass;
                                if (cls11 == cls8) {
                                    if (i4 == 2) {
                                        int iIntValue = jSONLexerBase.intValue();
                                        jSONLexerBase.nextToken();
                                        T t5 = (T) createFactoryInstance(config, Integer.valueOf(iIntValue));
                                        defaultJSONParser.setContext(parseContext3);
                                        return t5;
                                    }
                                } else if (cls11 == cls9 && i4 == 4) {
                                    String strStringVal2 = jSONLexerBase.stringVal();
                                    jSONLexerBase.nextToken();
                                    T t6 = (T) createFactoryInstance(config, strStringVal2);
                                    defaultJSONParser.setContext(parseContext3);
                                    return t6;
                                }
                            } catch (Exception e) {
                                throw new JSONException(e.getMessage(), e);
                            }
                        }
                    }
                    StringBuilder sb = new StringBuilder();
                    sb.append("syntax error, expect {, actual ");
                    sb.append(jSONLexerBase.tokenName());
                    sb.append(", pos ");
                    sb.append(jSONLexerBase.pos());
                    if (obj instanceof String) {
                        sb.append(", fieldName ");
                        sb.append(obj);
                    }
                    sb.append(", fastjson-version ");
                    sb.append(JSON.VERSION);
                    throw new JSONException(sb.toString());
                } catch (Throwable th3) {
                    th = th3;
                    objInvoke = obj2;
                    parseContext = parseContext3;
                    context = null;
                }
            } else {
                try {
                    if (defaultJSONParser.resolveStatus == 2) {
                        defaultJSONParser.resolveStatus = 0;
                    }
                    String str3 = this.beanInfo.typeKey;
                    objInvoke = obj2;
                    int[] iArr4 = iArr;
                    ParseContext context3 = null;
                    HashMap map2 = null;
                    int i6 = 0;
                    while (true) {
                        try {
                            FieldDeserializer[] fieldDeserializerArr = this.sortedFieldDeserializers;
                            if (i6 < fieldDeserializerArr.length) {
                                try {
                                    fieldDeserializer = fieldDeserializerArr[i6];
                                    FieldInfo fieldInfo3 = fieldDeserializer.fieldInfo;
                                    i2 = i6;
                                    Class cls12 = fieldInfo3.fieldClass;
                                    annotation = fieldInfo3.getAnnotation();
                                    if (annotation != null) {
                                        fieldInfo = fieldInfo3;
                                        if (fieldDeserializer instanceof DefaultFieldDeserializer) {
                                            z = ((DefaultFieldDeserializer) fieldDeserializer).customDeserilizer;
                                            cls = cls12;
                                        }
                                        fieldInfo2 = fieldInfo;
                                    } else {
                                        fieldInfo = fieldInfo3;
                                    }
                                    cls = cls12;
                                    z = false;
                                    fieldInfo2 = fieldInfo;
                                } catch (Throwable th4) {
                                    th = th4;
                                    context = context3;
                                    objInvoke = objInvoke;
                                    parseContext = parseContext3;
                                    if (context != null) {
                                    }
                                    defaultJSONParser.setContext(parseContext);
                                    throw th;
                                }
                            } else {
                                i2 = i6;
                                cls = null;
                                fieldDeserializer = null;
                                z = false;
                                fieldInfo2 = null;
                                annotation = null;
                            }
                            if (fieldDeserializer != null) {
                                iArr2 = iArr4;
                                try {
                                    char[] cArr = fieldInfo2.name_chars;
                                    if (z && jSONLexerBase.matchField(cArr)) {
                                        cls2 = cls;
                                        obj3 = objInvoke;
                                    } else {
                                        obj3 = objInvoke;
                                        try {
                                            if (cls != Integer.TYPE && cls != cls8) {
                                                if (cls == Long.TYPE || cls == Long.class) {
                                                    cls2 = cls;
                                                    long jScanFieldLong = jSONLexerBase.scanFieldLong(cArr);
                                                    objValueOf = (jScanFieldLong == 0 && jSONLexerBase.matchStat == 5) ? null : Long.valueOf(jScanFieldLong);
                                                    int i7 = jSONLexerBase.matchStat;
                                                    if (i7 > 0) {
                                                        z2 = true;
                                                        z4 = true;
                                                        r1 = z4;
                                                        if (z2) {
                                                        }
                                                        if (objCreateInstance == null) {
                                                            str2 = str3;
                                                            iArr3 = iArr2;
                                                            HashMap map3 = map2;
                                                            parseContext2 = context3;
                                                            if (!z2) {
                                                            }
                                                        }
                                                    } else {
                                                        if (i7 == -2) {
                                                        }
                                                        z2 = false;
                                                        z4 = false;
                                                        r1 = z4;
                                                        if (z2) {
                                                        }
                                                        if (objCreateInstance == null) {
                                                        }
                                                    }
                                                } else if (cls == cls9) {
                                                    objValueOf = jSONLexerBase.scanFieldString(cArr);
                                                    int i8 = jSONLexerBase.matchStat;
                                                    if (i8 <= 0) {
                                                        if (i8 == -2) {
                                                        }
                                                        cls2 = cls;
                                                        z2 = false;
                                                        z4 = false;
                                                        r1 = z4;
                                                        if (z2) {
                                                        }
                                                        if (objCreateInstance == null) {
                                                        }
                                                    }
                                                    cls2 = cls;
                                                    z2 = true;
                                                    z4 = true;
                                                    r1 = z4;
                                                    if (z2) {
                                                    }
                                                    if (objCreateInstance == null) {
                                                    }
                                                } else if (cls == Date.class && fieldInfo2.format == null) {
                                                    objValueOf = jSONLexerBase.scanFieldDate(cArr);
                                                    int i9 = jSONLexerBase.matchStat;
                                                    if (i9 > 0) {
                                                        cls2 = cls;
                                                        z2 = true;
                                                        z4 = true;
                                                        r1 = z4;
                                                        if (z2) {
                                                        }
                                                        if (objCreateInstance == null) {
                                                        }
                                                    } else {
                                                        if (i9 == -2) {
                                                        }
                                                        cls2 = cls;
                                                        z2 = false;
                                                        z4 = false;
                                                        r1 = z4;
                                                        if (z2) {
                                                        }
                                                        if (objCreateInstance == null) {
                                                        }
                                                    }
                                                } else if (cls == BigDecimal.class) {
                                                    objValueOf = jSONLexerBase.scanFieldDecimal(cArr);
                                                    int i10 = jSONLexerBase.matchStat;
                                                    if (i10 > 0) {
                                                        cls2 = cls;
                                                        z2 = true;
                                                        z4 = true;
                                                        r1 = z4;
                                                        if (z2) {
                                                        }
                                                        if (objCreateInstance == null) {
                                                        }
                                                    } else {
                                                        if (i10 == -2) {
                                                        }
                                                        cls2 = cls;
                                                        z2 = false;
                                                        z4 = false;
                                                        r1 = z4;
                                                        if (z2) {
                                                        }
                                                        if (objCreateInstance == null) {
                                                        }
                                                    }
                                                } else if (cls == BigInteger.class) {
                                                    objValueOf = jSONLexerBase.scanFieldBigInteger(cArr);
                                                    int i11 = jSONLexerBase.matchStat;
                                                    if (i11 > 0) {
                                                        cls2 = cls;
                                                        z2 = true;
                                                        z4 = true;
                                                        r1 = z4;
                                                        if (z2) {
                                                        }
                                                        if (objCreateInstance == null) {
                                                        }
                                                    } else {
                                                        if (i11 == -2) {
                                                        }
                                                        cls2 = cls;
                                                        z2 = false;
                                                        z4 = false;
                                                        r1 = z4;
                                                        if (z2) {
                                                        }
                                                        if (objCreateInstance == null) {
                                                        }
                                                    }
                                                } else if (cls != Boolean.TYPE && cls != Boolean.class) {
                                                    if (cls != Float.TYPE && cls != Float.class) {
                                                        if (cls != Double.TYPE && cls != Double.class) {
                                                            if (cls.isEnum() && (defaultJSONParser.getConfig().getDeserializer(cls) instanceof EnumDeserializer) && (annotation == null || annotation.deserializeUsing() == Void.class)) {
                                                                if (fieldDeserializer instanceof DefaultFieldDeserializer) {
                                                                    objValueOf = scanEnum(jSONLexerBase, cArr, ((DefaultFieldDeserializer) fieldDeserializer).fieldValueDeserilizer);
                                                                    int i12 = jSONLexerBase.matchStat;
                                                                    if (i12 > 0) {
                                                                        z5 = true;
                                                                        z6 = true;
                                                                    } else if (i12 != -2) {
                                                                        z5 = false;
                                                                        z6 = false;
                                                                    }
                                                                    cls2 = cls;
                                                                    z2 = z5;
                                                                    z4 = z6;
                                                                    r1 = z4;
                                                                    if (z2) {
                                                                    }
                                                                    if (objCreateInstance == null) {
                                                                    }
                                                                } else {
                                                                    cls2 = cls;
                                                                }
                                                            } else if (cls == int[].class) {
                                                                objValueOf = jSONLexerBase.scanFieldIntArray(cArr);
                                                                int i13 = jSONLexerBase.matchStat;
                                                                if (i13 > 0) {
                                                                    cls2 = cls;
                                                                    z2 = true;
                                                                    z4 = true;
                                                                    r1 = z4;
                                                                    if (z2) {
                                                                    }
                                                                    if (objCreateInstance == null) {
                                                                    }
                                                                } else {
                                                                    if (i13 == -2) {
                                                                    }
                                                                    cls2 = cls;
                                                                    z2 = false;
                                                                    z4 = false;
                                                                    r1 = z4;
                                                                    if (z2) {
                                                                    }
                                                                    if (objCreateInstance == null) {
                                                                    }
                                                                }
                                                            } else if (cls == float[].class) {
                                                                objValueOf = jSONLexerBase.scanFieldFloatArray(cArr);
                                                                int i14 = jSONLexerBase.matchStat;
                                                                if (i14 > 0) {
                                                                    cls2 = cls;
                                                                    z2 = true;
                                                                    z4 = true;
                                                                    r1 = z4;
                                                                    if (z2) {
                                                                    }
                                                                    if (objCreateInstance == null) {
                                                                    }
                                                                } else {
                                                                    if (i14 == -2) {
                                                                    }
                                                                    cls2 = cls;
                                                                    z2 = false;
                                                                    z4 = false;
                                                                    r1 = z4;
                                                                    if (z2) {
                                                                    }
                                                                    if (objCreateInstance == null) {
                                                                    }
                                                                }
                                                            } else if (cls == float[][].class) {
                                                                objValueOf = jSONLexerBase.scanFieldFloatArray2(cArr);
                                                                int i15 = jSONLexerBase.matchStat;
                                                                if (i15 > 0) {
                                                                    cls2 = cls;
                                                                    z2 = true;
                                                                    z4 = true;
                                                                    r1 = z4;
                                                                    if (z2) {
                                                                    }
                                                                    if (objCreateInstance == null) {
                                                                    }
                                                                } else {
                                                                    if (i15 == -2) {
                                                                    }
                                                                    cls2 = cls;
                                                                    z2 = false;
                                                                    z4 = false;
                                                                    r1 = z4;
                                                                    if (z2) {
                                                                    }
                                                                    if (objCreateInstance == null) {
                                                                    }
                                                                }
                                                            } else if (jSONLexerBase.matchField(cArr)) {
                                                                cls2 = cls;
                                                            }
                                                        } else {
                                                            double dScanFieldDouble = jSONLexerBase.scanFieldDouble(cArr);
                                                            if (dScanFieldDouble == 0.0d) {
                                                                cls2 = cls;
                                                                if (jSONLexerBase.matchStat == 5) {
                                                                    objValueOf = null;
                                                                }
                                                                i3 = jSONLexerBase.matchStat;
                                                                if (i3 <= 0) {
                                                                    if (i3 == -2) {
                                                                    }
                                                                    z2 = false;
                                                                    z4 = false;
                                                                    r1 = z4;
                                                                    if (z2) {
                                                                    }
                                                                    if (objCreateInstance == null) {
                                                                    }
                                                                }
                                                                z2 = true;
                                                                z4 = true;
                                                                r1 = z4;
                                                                if (z2) {
                                                                }
                                                                if (objCreateInstance == null) {
                                                                }
                                                            } else {
                                                                cls2 = cls;
                                                            }
                                                            objValueOf = Double.valueOf(dScanFieldDouble);
                                                            i3 = jSONLexerBase.matchStat;
                                                            if (i3 <= 0) {
                                                            }
                                                            z2 = true;
                                                            z4 = true;
                                                            r1 = z4;
                                                            if (z2) {
                                                            }
                                                            if (objCreateInstance == null) {
                                                            }
                                                        }
                                                    } else {
                                                        cls2 = cls;
                                                        float fScanFieldFloat = jSONLexerBase.scanFieldFloat(cArr);
                                                        objValueOf = (fScanFieldFloat == 0.0f && jSONLexerBase.matchStat == 5) ? null : Float.valueOf(fScanFieldFloat);
                                                        int i16 = jSONLexerBase.matchStat;
                                                        if (i16 > 0) {
                                                            z2 = true;
                                                            z4 = true;
                                                            r1 = z4;
                                                            if (z2) {
                                                            }
                                                            if (objCreateInstance == null) {
                                                            }
                                                        } else {
                                                            if (i16 == -2) {
                                                            }
                                                            z2 = false;
                                                            z4 = false;
                                                            r1 = z4;
                                                            if (z2) {
                                                            }
                                                            if (objCreateInstance == null) {
                                                            }
                                                        }
                                                    }
                                                } else {
                                                    cls2 = cls;
                                                    objValueOf = jSONLexerBase.matchStat == 5 ? null : Boolean.valueOf(jSONLexerBase.scanFieldBoolean(cArr));
                                                    int i17 = jSONLexerBase.matchStat;
                                                    if (i17 > 0) {
                                                        z2 = true;
                                                        z4 = true;
                                                        r1 = z4;
                                                        if (z2) {
                                                        }
                                                        if (objCreateInstance == null) {
                                                        }
                                                    } else {
                                                        if (i17 == -2) {
                                                        }
                                                        z2 = false;
                                                        z4 = false;
                                                        r1 = z4;
                                                        if (z2) {
                                                        }
                                                        if (objCreateInstance == null) {
                                                        }
                                                    }
                                                }
                                            } else {
                                                cls2 = cls;
                                                int iScanFieldInt = jSONLexerBase.scanFieldInt(cArr);
                                                objValueOf = (iScanFieldInt == 0 && jSONLexerBase.matchStat == 5) ? null : Integer.valueOf(iScanFieldInt);
                                                int i18 = jSONLexerBase.matchStat;
                                                if (i18 > 0) {
                                                    z2 = true;
                                                    r1 = 1;
                                                } else if (i18 != -2) {
                                                    z2 = false;
                                                    r1 = 0;
                                                }
                                                if (z2) {
                                                    cls4 = cls8;
                                                    cls3 = cls9;
                                                    objCreateInstance = obj3;
                                                    strScanSymbol = null;
                                                } else {
                                                    try {
                                                        strScanSymbol = jSONLexerBase.scanSymbol(defaultJSONParser.symbolTable);
                                                        if (strScanSymbol == null) {
                                                            cls4 = cls8;
                                                            try {
                                                                int i19 = jSONLexerBase.token();
                                                                cls3 = cls9;
                                                                if (i19 == 13) {
                                                                    jSONLexerBase.nextToken(16);
                                                                    obj4 = obj3;
                                                                    obj6 = r1;
                                                                    break;
                                                                }
                                                                if (i19 == 16 && jSONLexerBase.isEnabled(Feature.AllowArbitraryCommas)) {
                                                                    obj4 = obj3;
                                                                }
                                                                iArr3 = iArr2;
                                                                str = str3;
                                                                obj5 = obj4;
                                                                parserConfig = config;
                                                                map = map2;
                                                                cls5 = cls3;
                                                                parseContext2 = context3;
                                                                parseContext = parseContext3;
                                                                parseContext3 = parseContext;
                                                                iArr4 = iArr3;
                                                                str3 = str;
                                                                context3 = parseContext2;
                                                                cls8 = cls4;
                                                                config = parserConfig;
                                                                cls9 = cls5;
                                                                i6 = i2 + 1;
                                                                map2 = map;
                                                                objInvoke = obj5;
                                                            } catch (Throwable th5) {
                                                                th = th5;
                                                                context = context3;
                                                                parseContext = parseContext3;
                                                                objInvoke = obj3;
                                                            }
                                                        } else {
                                                            cls4 = cls8;
                                                            cls3 = cls9;
                                                        }
                                                        if ("$ref" == strScanSymbol && parseContext3 != null) {
                                                            jSONLexerBase.nextTokenWithColon(4);
                                                            int i20 = jSONLexerBase.token();
                                                            if (i20 == 4) {
                                                                String strStringVal3 = jSONLexerBase.stringVal();
                                                                if ("@".equals(strStringVal3)) {
                                                                    t = (T) parseContext3.object;
                                                                } else if ("..".equals(strStringVal3)) {
                                                                    ParseContext parseContext4 = parseContext3.parent;
                                                                    obj7 = parseContext4.object;
                                                                    if (obj7 == null) {
                                                                        defaultJSONParser.addResolveTask(new DefaultJSONParser.ResolveTask(parseContext4, strStringVal3));
                                                                        defaultJSONParser.resolveStatus = 1;
                                                                        t = (T) obj3;
                                                                    }
                                                                    t = (T) obj7;
                                                                } else {
                                                                    if ("$".equals(strStringVal3)) {
                                                                        ParseContext parseContext5 = parseContext3;
                                                                        while (true) {
                                                                            ParseContext parseContext6 = parseContext5.parent;
                                                                            if (parseContext6 == null) {
                                                                                break;
                                                                            }
                                                                            parseContext5 = parseContext6;
                                                                        }
                                                                        obj7 = parseContext5.object;
                                                                        if (obj7 != null) {
                                                                            t = (T) obj7;
                                                                        } else {
                                                                            defaultJSONParser.addResolveTask(new DefaultJSONParser.ResolveTask(parseContext5, strStringVal3));
                                                                            defaultJSONParser.resolveStatus = 1;
                                                                        }
                                                                    } else {
                                                                        if (strStringVal3.indexOf(92) > 0) {
                                                                            StringBuilder sb2 = new StringBuilder();
                                                                            int i21 = 0;
                                                                            while (i21 < strStringVal3.length()) {
                                                                                char cCharAt = strStringVal3.charAt(i21);
                                                                                if (cCharAt == '\\') {
                                                                                    i21++;
                                                                                    cCharAt = strStringVal3.charAt(i21);
                                                                                }
                                                                                sb2.append(cCharAt);
                                                                                i21++;
                                                                            }
                                                                            strStringVal3 = sb2.toString();
                                                                        }
                                                                        t = (T) defaultJSONParser.resolveReference(strStringVal3);
                                                                        if (t == null) {
                                                                            defaultJSONParser.addResolveTask(new DefaultJSONParser.ResolveTask(parseContext3, strStringVal3));
                                                                            defaultJSONParser.resolveStatus = 1;
                                                                        }
                                                                    }
                                                                    t = (T) obj3;
                                                                }
                                                                jSONLexerBase.nextToken(13);
                                                                if (jSONLexerBase.token() == 13) {
                                                                    jSONLexerBase.nextToken(16);
                                                                    defaultJSONParser.setContext(parseContext3, t, obj);
                                                                    if (context3 != null) {
                                                                        context3.object = t;
                                                                    }
                                                                    defaultJSONParser.setContext(parseContext3);
                                                                    return t;
                                                                }
                                                                throw new JSONException("illegal ref");
                                                            }
                                                            throw new JSONException("illegal ref, " + JSONToken.name(i20));
                                                        }
                                                        if ((str3 == null || !str3.equals(strScanSymbol)) && JSON.DEFAULT_TYPE_KEY != strScanSymbol) {
                                                            objCreateInstance = obj3;
                                                        } else {
                                                            jSONLexerBase.nextTokenWithColon(4);
                                                            if (jSONLexerBase.token() == 4) {
                                                                String strStringVal4 = jSONLexerBase.stringVal();
                                                                jSONLexerBase.nextToken(16);
                                                                boolean zEquals = strStringVal4.equals(this.beanInfo.typeName);
                                                                Object obj11 = zEquals;
                                                                if (!zEquals) {
                                                                    ?? IsEnabled = defaultJSONParser.isEnabled(Feature.IgnoreAutoType);
                                                                    if (IsEnabled == 0) {
                                                                        break;
                                                                    }
                                                                    obj11 = IsEnabled;
                                                                }
                                                                obj4 = obj3;
                                                                try {
                                                                    if (jSONLexerBase.token() == 13) {
                                                                        jSONLexerBase.nextToken();
                                                                        obj6 = obj11;
                                                                        break;
                                                                    }
                                                                    iArr3 = iArr2;
                                                                    str = str3;
                                                                    obj5 = obj4;
                                                                    parserConfig = config;
                                                                    map = map2;
                                                                    cls5 = cls3;
                                                                    parseContext2 = context3;
                                                                    parseContext = parseContext3;
                                                                    parseContext3 = parseContext;
                                                                    iArr4 = iArr3;
                                                                    str3 = str;
                                                                    context3 = parseContext2;
                                                                    cls8 = cls4;
                                                                    config = parserConfig;
                                                                    cls9 = cls5;
                                                                    i6 = i2 + 1;
                                                                    map2 = map;
                                                                    objInvoke = obj5;
                                                                } catch (Throwable th6) {
                                                                    th = th6;
                                                                    context = context3;
                                                                    objInvoke = obj4;
                                                                    parseContext = parseContext3;
                                                                    if (context != null) {
                                                                    }
                                                                    defaultJSONParser.setContext(parseContext);
                                                                    throw th;
                                                                }
                                                            } else {
                                                                throw new JSONException("syntax error");
                                                            }
                                                        }
                                                    } catch (Throwable th7) {
                                                        th = th7;
                                                        obj4 = obj3;
                                                    }
                                                }
                                                if (objCreateInstance == null && map2 == null) {
                                                    objCreateInstance = createInstance((DefaultJSONParser) defaultJSONParser, type);
                                                    if (objCreateInstance == null) {
                                                        str2 = str3;
                                                        map2 = new HashMap(this.fieldDeserializers.length);
                                                    } else {
                                                        str2 = str3;
                                                    }
                                                    context3 = defaultJSONParser.setContext(parseContext3, objCreateInstance, obj);
                                                    if (iArr2 == null) {
                                                        iArr3 = new int[(this.fieldDeserializers.length / 32) + 1];
                                                    }
                                                    HashMap map32 = map2;
                                                    parseContext2 = context3;
                                                    if (!z2) {
                                                        str = str2;
                                                        String str4 = strScanSymbol;
                                                        map = map32;
                                                        Object obj12 = objCreateInstance;
                                                        c = wk.f7547for;
                                                        obj5 = objCreateInstance;
                                                        parseContext = parseContext3;
                                                        parserConfig = config;
                                                        b = 0;
                                                        obj9 = null;
                                                        if (!parseField(defaultJSONParser, str4, obj12, type, map, iArr3)) {
                                                            int i22 = jSONLexerBase.token();
                                                            if (i22 == 13) {
                                                                jSONLexerBase.nextToken();
                                                                obj10 = i22;
                                                                break;
                                                            }
                                                            cls5 = cls3;
                                                            parseContext3 = parseContext;
                                                            iArr4 = iArr3;
                                                            str3 = str;
                                                            context3 = parseContext2;
                                                            cls8 = cls4;
                                                            config = parserConfig;
                                                            cls9 = cls5;
                                                            i6 = i2 + 1;
                                                            map2 = map;
                                                            objInvoke = obj5;
                                                        } else {
                                                            if (jSONLexerBase.token() == 17) {
                                                                throw new JSONException("syntax error, unexpect token ':'");
                                                            }
                                                            if (jSONLexerBase.token() != 16) {
                                                            }
                                                        }
                                                    } else {
                                                        if (r1 == 0) {
                                                            try {
                                                                fieldDeserializer.parseField(defaultJSONParser, objCreateInstance, type, map32);
                                                            } catch (Throwable th8) {
                                                                th = th8;
                                                                objInvoke = objCreateInstance;
                                                                context = parseContext2;
                                                                parseContext = parseContext3;
                                                                if (context != null) {
                                                                }
                                                                defaultJSONParser.setContext(parseContext);
                                                                throw th;
                                                            }
                                                        } else {
                                                            Class cls13 = cls2;
                                                            if (objCreateInstance == null) {
                                                                map32.put(fieldInfo2.name, objValueOf);
                                                            } else if (objValueOf == null) {
                                                                if (cls13 != Integer.TYPE && cls13 != Long.TYPE && cls13 != Float.TYPE && cls13 != Double.TYPE && cls13 != Boolean.TYPE) {
                                                                    fieldDeserializer.setValue(objCreateInstance, objValueOf);
                                                                }
                                                            } else {
                                                                fieldDeserializer.setValue(objCreateInstance, objValueOf);
                                                            }
                                                            if (iArr3 != null) {
                                                                int i23 = i2 / 32;
                                                                iArr3[i23] = (1 >> (i2 % 32)) | iArr3[i23];
                                                            }
                                                            ?? r12 = (T) jSONLexerBase.matchStat;
                                                            if (r12 == 4) {
                                                                map = map32;
                                                                obj5 = objCreateInstance;
                                                                b = 0;
                                                                parseContext = parseContext3;
                                                                obj10 = r12;
                                                                break;
                                                            }
                                                        }
                                                        map = map32;
                                                        obj5 = objCreateInstance;
                                                        str = str2;
                                                        b = 0;
                                                        c = wk.f7547for;
                                                        parseContext = parseContext3;
                                                        parserConfig = config;
                                                        obj9 = null;
                                                        if (jSONLexerBase.token() != 16) {
                                                            cls5 = cls3;
                                                            parseContext3 = parseContext;
                                                            iArr4 = iArr3;
                                                            str3 = str;
                                                            context3 = parseContext2;
                                                            cls8 = cls4;
                                                            config = parserConfig;
                                                            cls9 = cls5;
                                                            i6 = i2 + 1;
                                                            map2 = map;
                                                            objInvoke = obj5;
                                                        } else {
                                                            Object obj13 = (T) jSONLexerBase.token();
                                                            if (obj13 == c) {
                                                                jSONLexerBase.nextToken(16);
                                                                obj10 = obj13;
                                                                break;
                                                            }
                                                            cls5 = cls3;
                                                            if (jSONLexerBase.token() == 18 || jSONLexerBase.token() == 1) {
                                                                break;
                                                            }
                                                            parseContext3 = parseContext;
                                                            iArr4 = iArr3;
                                                            str3 = str;
                                                            context3 = parseContext2;
                                                            cls8 = cls4;
                                                            config = parserConfig;
                                                            cls9 = cls5;
                                                            i6 = i2 + 1;
                                                            map2 = map;
                                                            objInvoke = obj5;
                                                        }
                                                    }
                                                } else {
                                                    str2 = str3;
                                                }
                                                iArr3 = iArr2;
                                                HashMap map322 = map2;
                                                parseContext2 = context3;
                                                if (!z2) {
                                                }
                                            }
                                            parseContext3 = parseContext;
                                            iArr4 = iArr3;
                                            str3 = str;
                                            context3 = parseContext2;
                                            cls8 = cls4;
                                            config = parserConfig;
                                            cls9 = cls5;
                                            i6 = i2 + 1;
                                            map2 = map;
                                            objInvoke = obj5;
                                        } catch (Throwable th9) {
                                            th = th9;
                                            context = parseContext2;
                                            objInvoke = obj5;
                                            if (context != null) {
                                            }
                                            defaultJSONParser.setContext(parseContext);
                                            throw th;
                                        }
                                        cls4 = cls8;
                                        cls3 = cls9;
                                        obj4 = obj3;
                                        iArr3 = iArr2;
                                        str = str3;
                                        obj5 = obj4;
                                        parserConfig = config;
                                        map = map2;
                                        cls5 = cls3;
                                        parseContext2 = context3;
                                        parseContext = parseContext3;
                                    }
                                    z2 = true;
                                    z4 = false;
                                    objValueOf = null;
                                    r1 = z4;
                                    if (z2) {
                                    }
                                    if (objCreateInstance == null) {
                                    }
                                } catch (Throwable th10) {
                                    th = th10;
                                    context = context3;
                                    objInvoke = objInvoke;
                                    parseContext = parseContext3;
                                    if (context != null) {
                                    }
                                    defaultJSONParser.setContext(parseContext);
                                    throw th;
                                }
                            } else {
                                cls2 = cls;
                                obj3 = objInvoke;
                                iArr2 = iArr4;
                            }
                            z2 = false;
                            r1 = 0;
                            objValueOf = null;
                            if (z2) {
                            }
                            if (objCreateInstance == null) {
                            }
                        } catch (Throwable th11) {
                            th = th11;
                            parseContext = parseContext3;
                            context = context3;
                        }
                    }
                    HashMap map4 = map;
                    context = parseContext2;
                    objInvoke = obj10;
                    try {
                        if (obj5 == null) {
                            try {
                                if (map4 == null) {
                                    T t7 = (T) createInstance((DefaultJSONParser) defaultJSONParser, type);
                                    if (context == null) {
                                        context = defaultJSONParser.setContext(parseContext, t7, obj);
                                    }
                                    if (context != null) {
                                        context.object = t7;
                                    }
                                    defaultJSONParser.setContext(parseContext);
                                    return t7;
                                }
                                JavaBeanInfo javaBeanInfo2 = this.beanInfo;
                                String[] strArr = javaBeanInfo2.creatorConstructorParameters;
                                if (strArr != null) {
                                    objArr = new Object[strArr.length];
                                    int i24 = 0;
                                    while (i24 < strArr.length) {
                                        Object objRemove = map4.remove(strArr[i24]);
                                        if (objRemove == null) {
                                            JavaBeanInfo javaBeanInfo3 = this.beanInfo;
                                            Type type2 = javaBeanInfo3.creatorConstructorParameterTypes[i24];
                                            FieldInfo fieldInfo4 = javaBeanInfo3.fields[i24];
                                            if (type2 == Byte.TYPE) {
                                                objRemove = Byte.valueOf(b);
                                            } else if (type2 == Short.TYPE) {
                                                objRemove = Short.valueOf(b);
                                            } else if (type2 == Integer.TYPE) {
                                                objRemove = Integer.valueOf(b);
                                            } else if (type2 == Long.TYPE) {
                                                objRemove = 0L;
                                            } else if (type2 == Float.TYPE) {
                                                objRemove = Float.valueOf(0.0f);
                                            } else if (type2 == Double.TYPE) {
                                                objRemove = Double.valueOf(0.0d);
                                            } else if (type2 == Boolean.TYPE) {
                                                objRemove = Boolean.FALSE;
                                            } else {
                                                cls7 = cls3;
                                                if (type2 == cls7 && (fieldInfo4.parserFeatures & Feature.InitStringFieldAsEmpty.mask) != 0) {
                                                    objRemove = "";
                                                }
                                            }
                                            cls7 = cls3;
                                        } else {
                                            cls7 = cls3;
                                            Type[] typeArr = this.beanInfo.creatorConstructorParameterTypes;
                                            if (typeArr != null && i24 < typeArr.length) {
                                                Type type3 = typeArr[i24];
                                                if (type3 instanceof Class) {
                                                    Class cls14 = (Class) type3;
                                                    if (!cls14.isInstance(objRemove) && (objRemove instanceof List)) {
                                                        List list = (List) objRemove;
                                                        if (list.size() == 1) {
                                                            if (cls14.isInstance(list.get(0))) {
                                                                objRemove = list.get(0);
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                            objArr[i24] = objRemove;
                                            i24++;
                                            cls3 = cls7;
                                            b = 0;
                                        }
                                        objArr[i24] = objRemove;
                                        i24++;
                                        cls3 = cls7;
                                        b = 0;
                                    }
                                    cls6 = cls3;
                                } else {
                                    cls6 = cls3;
                                    FieldInfo[] fieldInfoArr4 = javaBeanInfo2.fields;
                                    int length = fieldInfoArr4.length;
                                    Object[] objArr2 = new Object[length];
                                    for (int i25 = 0; i25 < length; i25++) {
                                        FieldInfo fieldInfo5 = fieldInfoArr4[i25];
                                        Object objValueOf2 = map4.get(fieldInfo5.name);
                                        if (objValueOf2 == null) {
                                            Type type4 = fieldInfo5.fieldType;
                                            if (type4 == Byte.TYPE) {
                                                objValueOf2 = (byte) 0;
                                            } else if (type4 == Short.TYPE) {
                                                objValueOf2 = (short) 0;
                                            } else if (type4 == Integer.TYPE) {
                                                objValueOf2 = 0;
                                            } else if (type4 == Long.TYPE) {
                                                objValueOf2 = 0L;
                                            } else if (type4 == Float.TYPE) {
                                                objValueOf2 = Float.valueOf(0.0f);
                                            } else if (type4 == Double.TYPE) {
                                                objValueOf2 = Double.valueOf(0.0d);
                                            } else if (type4 == Boolean.TYPE) {
                                                objValueOf2 = Boolean.FALSE;
                                            } else if (type4 == cls6 && (fieldInfo5.parserFeatures & Feature.InitStringFieldAsEmpty.mask) != 0) {
                                                objValueOf2 = "";
                                            }
                                        }
                                        objArr2[i25] = objValueOf2;
                                    }
                                    objArr = objArr2;
                                }
                                JavaBeanInfo javaBeanInfo4 = this.beanInfo;
                                if (javaBeanInfo4.creatorConstructor != null) {
                                    ?? length2 = javaBeanInfo4.f36254kotlin;
                                    if (length2 != 0) {
                                        int i26 = 0;
                                        while (true) {
                                            length2 = objArr.length;
                                            if (i26 >= length2) {
                                                break;
                                            }
                                            if (objArr[i26] != null || (fieldInfoArr2 = this.beanInfo.fields) == null || i26 >= fieldInfoArr2.length) {
                                                i26++;
                                            } else {
                                                length2 = fieldInfoArr2[i26].fieldClass;
                                                if (length2 == cls6) {
                                                    z3 = true;
                                                    obj8 = length2;
                                                }
                                            }
                                        }
                                        z3 = false;
                                        obj8 = length2;
                                        try {
                                            if (!z3) {
                                                try {
                                                    Constructor<?> constructor = this.beanInfo.kotlinDefaultConstructor;
                                                    if (constructor != null) {
                                                        Object objNewInstance = constructor.newInstance(new Object[0]);
                                                        for (int i27 = 0; i27 < objArr.length; i27++) {
                                                            try {
                                                                Object obj14 = objArr[i27];
                                                                if (obj14 != null && (fieldInfoArr = this.beanInfo.fields) != null && i27 < fieldInfoArr.length) {
                                                                    fieldInfoArr[i27].set(objNewInstance, obj14);
                                                                }
                                                            } catch (Exception e2) {
                                                                e = e2;
                                                                throw new JSONException("create instance error, " + strArr + ", " + this.beanInfo.creatorConstructor.toGenericString(), e);
                                                            }
                                                        }
                                                        objInvoke = objNewInstance;
                                                    } else {
                                                        objInvoke = (T) this.beanInfo.creatorConstructor.newInstance(objArr);
                                                    }
                                                    if (strArr != null) {
                                                        for (Map.Entry<String, Object> entry : map4.entrySet()) {
                                                            FieldDeserializer fieldDeserializer2 = getFieldDeserializer(entry.getKey());
                                                            if (fieldDeserializer2 != null) {
                                                                fieldDeserializer2.setValue(objInvoke, entry.getValue());
                                                            }
                                                        }
                                                    }
                                                } catch (Exception e3) {
                                                    e = e3;
                                                }
                                            }
                                        } catch (Throwable th12) {
                                            th = th12;
                                            objInvoke = obj8;
                                        }
                                    } else {
                                        z3 = false;
                                        obj8 = length2;
                                        if (!z3) {
                                        }
                                    }
                                } else {
                                    Method method = javaBeanInfo4.factoryMethod;
                                    if (method != null) {
                                        try {
                                            objInvoke = method.invoke(null, objArr);
                                        } catch (Exception e4) {
                                            throw new JSONException("create factory method error, " + this.beanInfo.factoryMethod.toString(), e4);
                                        }
                                    } else {
                                        objInvoke = obj5;
                                    }
                                }
                                if (context != null) {
                                    context.object = objInvoke;
                                }
                            } catch (Throwable th13) {
                                th = th13;
                                objInvoke = obj5;
                                if (context != null) {
                                }
                                defaultJSONParser.setContext(parseContext);
                                throw th;
                            }
                        } else {
                            objInvoke = (T) obj5;
                        }
                        Method method2 = this.beanInfo.buildMethod;
                        if (method2 == null) {
                            if (context != null) {
                                context.object = objInvoke;
                            }
                            defaultJSONParser.setContext(parseContext);
                            return (T) objInvoke;
                        }
                        try {
                            T t8 = (T) method2.invoke(objInvoke, new Object[0]);
                            if (context != null) {
                                context.object = objInvoke;
                            }
                            defaultJSONParser.setContext(parseContext);
                            return t8;
                        } catch (Exception e5) {
                            throw new JSONException("build object error", e5);
                        }
                    } catch (Throwable th14) {
                        th = th14;
                    }
                } catch (Throwable th15) {
                    th = th15;
                    parseContext = parseContext3;
                    objInvoke = obj2;
                }
            }
            if (context != null) {
                context.object = objInvoke;
            }
            defaultJSONParser.setContext(parseContext);
            throw th;
        }
        return (T) defaultJSONParser.parse();
    }

    public JavaBeanDeserializer(ParserConfig parserConfig, JavaBeanInfo javaBeanInfo) {
        this.clazz = javaBeanInfo.clazz;
        this.beanInfo = javaBeanInfo;
        FieldInfo[] fieldInfoArr = javaBeanInfo.sortedFields;
        this.sortedFieldDeserializers = new FieldDeserializer[fieldInfoArr.length];
        int length = fieldInfoArr.length;
        HashMap map = null;
        for (int i = 0; i < length; i++) {
            FieldInfo fieldInfo = javaBeanInfo.sortedFields[i];
            FieldDeserializer fieldDeserializerCreateFieldDeserializer = parserConfig.createFieldDeserializer(parserConfig, javaBeanInfo, fieldInfo);
            this.sortedFieldDeserializers[i] = fieldDeserializerCreateFieldDeserializer;
            for (String str : fieldInfo.alternateNames) {
                if (map == null) {
                    map = new HashMap();
                }
                map.put(str, fieldDeserializerCreateFieldDeserializer);
            }
        }
        this.alterNameFieldDeserializers = map;
        FieldInfo[] fieldInfoArr2 = javaBeanInfo.fields;
        this.fieldDeserializers = new FieldDeserializer[fieldInfoArr2.length];
        int length2 = fieldInfoArr2.length;
        for (int i2 = 0; i2 < length2; i2++) {
            this.fieldDeserializers[i2] = getFieldDeserializer(javaBeanInfo.fields[i2].name);
        }
    }

    public FieldDeserializer getFieldDeserializer(long j) {
        int i = 0;
        if (this.hashArray == null) {
            long[] jArr = new long[this.sortedFieldDeserializers.length];
            int i2 = 0;
            while (true) {
                FieldDeserializer[] fieldDeserializerArr = this.sortedFieldDeserializers;
                if (i2 >= fieldDeserializerArr.length) {
                    break;
                }
                jArr[i2] = TypeUtils.fnv1a_64(fieldDeserializerArr[i2].fieldInfo.name);
                i2++;
            }
            Arrays.sort(jArr);
            this.hashArray = jArr;
        }
        int iBinarySearch = Arrays.binarySearch(this.hashArray, j);
        if (iBinarySearch < 0) {
            return null;
        }
        if (this.hashArrayMapping == null) {
            short[] sArr = new short[this.hashArray.length];
            Arrays.fill(sArr, (short) -1);
            while (true) {
                FieldDeserializer[] fieldDeserializerArr2 = this.sortedFieldDeserializers;
                if (i >= fieldDeserializerArr2.length) {
                    break;
                }
                int iBinarySearch2 = Arrays.binarySearch(this.hashArray, TypeUtils.fnv1a_64(fieldDeserializerArr2[i].fieldInfo.name));
                if (iBinarySearch2 >= 0) {
                    sArr[iBinarySearch2] = (short) i;
                }
                i++;
            }
            this.hashArrayMapping = sArr;
        }
        short s = this.hashArrayMapping[iBinarySearch];
        if (s != -1) {
            return this.sortedFieldDeserializers[s];
        }
        return null;
    }

    public Object createInstance(Map<String, Object> map, ParserConfig parserConfig) throws IllegalAccessException, InstantiationException, IllegalArgumentException, InvocationTargetException {
        boolean z;
        Object objNewInstance;
        Constructor<?> constructor;
        FieldInfo[] fieldInfoArr;
        FieldInfo[] fieldInfoArr2;
        Integer num;
        Object objCast;
        JavaBeanInfo javaBeanInfo = this.beanInfo;
        if (javaBeanInfo.creatorConstructor == null && javaBeanInfo.factoryMethod == null) {
            Object objCreateInstance = createInstance((DefaultJSONParser) null, this.clazz);
            for (Map.Entry<String, Object> entry : map.entrySet()) {
                String key = entry.getKey();
                Object value = entry.getValue();
                FieldDeserializer fieldDeserializerSmartMatch = smartMatch(key);
                if (fieldDeserializerSmartMatch != null) {
                    FieldInfo fieldInfo = fieldDeserializerSmartMatch.fieldInfo;
                    Type type = fieldInfo.fieldType;
                    String str = fieldInfo.format;
                    if (str != null && type == Date.class) {
                        objCast = TypeUtils.castToDate(value, str);
                    } else {
                        objCast = TypeUtils.cast(value, type, parserConfig);
                    }
                    fieldDeserializerSmartMatch.setValue(objCreateInstance, objCast);
                }
            }
            Method method = this.beanInfo.buildMethod;
            if (method == null) {
                return objCreateInstance;
            }
            try {
                return method.invoke(objCreateInstance, new Object[0]);
            } catch (Exception e) {
                throw new JSONException("build object error", e);
            }
        }
        FieldInfo[] fieldInfoArr3 = javaBeanInfo.fields;
        int length = fieldInfoArr3.length;
        Object[] objArr = new Object[length];
        HashMap map2 = null;
        for (int i = 0; i < length; i++) {
            FieldInfo fieldInfo2 = fieldInfoArr3[i];
            Object objValueOf = map.get(fieldInfo2.name);
            if (objValueOf == null) {
                Class<?> cls = fieldInfo2.fieldClass;
                if (cls == Integer.TYPE) {
                    objValueOf = 0;
                } else if (cls == Long.TYPE) {
                    objValueOf = 0L;
                } else if (cls == Short.TYPE) {
                    objValueOf = (short) 0;
                } else if (cls == Byte.TYPE) {
                    objValueOf = (byte) 0;
                } else if (cls == Float.TYPE) {
                    objValueOf = Float.valueOf(0.0f);
                } else if (cls == Double.TYPE) {
                    objValueOf = Double.valueOf(0.0d);
                } else if (cls == Character.TYPE) {
                    objValueOf = '0';
                } else if (cls == Boolean.TYPE) {
                    objValueOf = Boolean.FALSE;
                }
                if (map2 == null) {
                    map2 = new HashMap();
                }
                map2.put(fieldInfo2.name, Integer.valueOf(i));
            }
            objArr[i] = objValueOf;
        }
        if (map2 != null) {
            for (Map.Entry<String, Object> entry2 : map.entrySet()) {
                String key2 = entry2.getKey();
                Object value2 = entry2.getValue();
                FieldDeserializer fieldDeserializerSmartMatch2 = smartMatch(key2);
                if (fieldDeserializerSmartMatch2 != null && (num = (Integer) map2.get(fieldDeserializerSmartMatch2.fieldInfo.name)) != null) {
                    objArr[num.intValue()] = value2;
                }
            }
        }
        JavaBeanInfo javaBeanInfo2 = this.beanInfo;
        if (javaBeanInfo2.creatorConstructor != null) {
            if (javaBeanInfo2.f36254kotlin) {
                int i2 = 0;
                while (true) {
                    if (i2 >= length) {
                        break;
                    }
                    if (objArr[i2] != null || (fieldInfoArr2 = this.beanInfo.fields) == null || i2 >= fieldInfoArr2.length) {
                        i2++;
                    } else {
                        z = fieldInfoArr2[i2].fieldClass == String.class;
                    }
                }
            }
            if (z && (constructor = this.beanInfo.kotlinDefaultConstructor) != null) {
                try {
                    objNewInstance = constructor.newInstance(new Object[0]);
                    for (int i3 = 0; i3 < length; i3++) {
                        Object obj = objArr[i3];
                        if (obj != null && (fieldInfoArr = this.beanInfo.fields) != null && i3 < fieldInfoArr.length) {
                            fieldInfoArr[i3].set(objNewInstance, obj);
                        }
                    }
                } catch (Exception e2) {
                    throw new JSONException("create instance error, " + this.beanInfo.creatorConstructor.toGenericString(), e2);
                }
            } else {
                try {
                    objNewInstance = this.beanInfo.creatorConstructor.newInstance(objArr);
                } catch (Exception e3) {
                    throw new JSONException("create instance error, " + this.beanInfo.creatorConstructor.toGenericString(), e3);
                }
            }
            return objNewInstance;
        }
        Method method2 = javaBeanInfo2.factoryMethod;
        if (method2 == null) {
            return null;
        }
        try {
            return method2.invoke(null, objArr);
        } catch (Exception e4) {
            throw new JSONException("create factory method error, " + this.beanInfo.factoryMethod.toString(), e4);
        }
    }
}
