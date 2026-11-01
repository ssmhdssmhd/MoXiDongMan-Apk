package com.alibaba.fastjson.serializer;

import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.PropertyNamingStrategy;
import com.alibaba.fastjson.annotation.JSONField;
import com.alibaba.fastjson.annotation.JSONType;
import com.alibaba.fastjson.util.FieldInfo;
import com.alibaba.fastjson.util.TypeUtils;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Type;
import java.lang.reflect.WildcardType;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.slf4j.helpers.MessageFormatter;

/* loaded from: classes.dex */
public class JavaBeanSerializer extends SerializeFilterable implements ObjectSerializer {
    public SerializeBeanInfo beanInfo;
    public final FieldSerializer[] getters;
    private volatile transient long[] hashArray;
    private volatile transient short[] hashArrayMapping;
    public final FieldSerializer[] sortedGetters;

    public JavaBeanSerializer(Class<?> cls) {
        this(cls, (Map<String, String>) null);
    }

    public static Map<String, String> createAliasMap(String... strArr) {
        HashMap map = new HashMap();
        for (String str : strArr) {
            map.put(str, str);
        }
        return map;
    }

    public boolean applyLabel(JSONSerializer jSONSerializer, String str) {
        List<LabelFilter> list = jSONSerializer.labelFilters;
        if (list != null) {
            Iterator<LabelFilter> it = list.iterator();
            while (it.hasNext()) {
                if (!it.next().apply(str)) {
                    return false;
                }
            }
        }
        List<LabelFilter> list2 = this.labelFilters;
        if (list2 == null) {
            return true;
        }
        Iterator<LabelFilter> it2 = list2.iterator();
        while (it2.hasNext()) {
            if (!it2.next().apply(str)) {
                return false;
            }
        }
        return true;
    }

    public BeanContext getBeanContext(int i) {
        return this.sortedGetters[i].fieldContext;
    }

    public Set<String> getFieldNames(Object obj) throws Exception {
        HashSet hashSet = new HashSet();
        for (FieldSerializer fieldSerializer : this.sortedGetters) {
            if (fieldSerializer.getPropertyValueDirect(obj) != null) {
                hashSet.add(fieldSerializer.fieldInfo.name);
            }
        }
        return hashSet;
    }

    public FieldSerializer getFieldSerializer(String str) {
        if (str == null) {
            return null;
        }
        int i = 0;
        int length = this.sortedGetters.length - 1;
        while (i <= length) {
            int i2 = (i + length) >>> 1;
            int iCompareTo = this.sortedGetters[i2].fieldInfo.name.compareTo(str);
            if (iCompareTo < 0) {
                i = i2 + 1;
            } else {
                if (iCompareTo <= 0) {
                    return this.sortedGetters[i2];
                }
                length = i2 - 1;
            }
        }
        return null;
    }

    public Type getFieldType(int i) {
        return this.sortedGetters[i].fieldInfo.fieldType;
    }

    public Object getFieldValue(Object obj, String str) {
        FieldSerializer fieldSerializer = getFieldSerializer(str);
        if (fieldSerializer == null) {
            throw new JSONException("field not found. " + str);
        }
        try {
            return fieldSerializer.getPropertyValue(obj);
        } catch (IllegalAccessException e) {
            throw new JSONException("getFieldValue error." + str, e);
        } catch (InvocationTargetException e2) {
            throw new JSONException("getFieldValue error." + str, e2);
        }
    }

    public List<Object> getFieldValues(Object obj) throws Exception {
        ArrayList arrayList = new ArrayList(this.sortedGetters.length);
        for (FieldSerializer fieldSerializer : this.sortedGetters) {
            arrayList.add(fieldSerializer.getPropertyValue(obj));
        }
        return arrayList;
    }

    public Map<String, Object> getFieldValuesMap(Object obj) throws Exception {
        LinkedHashMap linkedHashMap = new LinkedHashMap(this.sortedGetters.length);
        for (FieldSerializer fieldSerializer : this.sortedGetters) {
            linkedHashMap.put(fieldSerializer.fieldInfo.name, fieldSerializer.getPropertyValue(obj));
        }
        return linkedHashMap;
    }

    public List<Object> getObjectFieldValues(Object obj) throws Exception {
        ArrayList arrayList = new ArrayList(this.sortedGetters.length);
        for (FieldSerializer fieldSerializer : this.sortedGetters) {
            Class<?> cls = fieldSerializer.fieldInfo.fieldClass;
            if (!cls.isPrimitive() && !cls.getName().startsWith("java.lang.")) {
                arrayList.add(fieldSerializer.getPropertyValue(obj));
            }
        }
        return arrayList;
    }

    public int getSize(Object obj) throws Exception {
        int i = 0;
        for (FieldSerializer fieldSerializer : this.sortedGetters) {
            if (fieldSerializer.getPropertyValueDirect(obj) != null) {
                i++;
            }
        }
        return i;
    }

    public Class<?> getType() {
        return this.beanInfo.beanType;
    }

    public boolean isWriteAsArray(JSONSerializer jSONSerializer) {
        return isWriteAsArray(jSONSerializer, 0);
    }

    @Override // com.alibaba.fastjson.serializer.ObjectSerializer
    public void write(JSONSerializer jSONSerializer, Object obj, Object obj2, Type type, int i) throws Throwable {
        write(jSONSerializer, obj, obj2, type, i, false);
    }

    public char writeAfter(JSONSerializer jSONSerializer, Object obj, char c) {
        List<AfterFilter> list = jSONSerializer.afterFilters;
        if (list != null) {
            Iterator<AfterFilter> it = list.iterator();
            while (it.hasNext()) {
                c = it.next().writeAfter(jSONSerializer, obj, c);
            }
        }
        List<AfterFilter> list2 = this.afterFilters;
        if (list2 != null) {
            Iterator<AfterFilter> it2 = list2.iterator();
            while (it2.hasNext()) {
                c = it2.next().writeAfter(jSONSerializer, obj, c);
            }
        }
        return c;
    }

    public void writeAsArray(JSONSerializer jSONSerializer, Object obj, Object obj2, Type type, int i) throws Throwable {
        write(jSONSerializer, obj, obj2, type, i);
    }

    public void writeAsArrayNonContext(JSONSerializer jSONSerializer, Object obj, Object obj2, Type type, int i) throws Throwable {
        write(jSONSerializer, obj, obj2, type, i);
    }

    public char writeBefore(JSONSerializer jSONSerializer, Object obj, char c) {
        List<BeforeFilter> list = jSONSerializer.beforeFilters;
        if (list != null) {
            Iterator<BeforeFilter> it = list.iterator();
            while (it.hasNext()) {
                c = it.next().writeBefore(jSONSerializer, obj, c);
            }
        }
        List<BeforeFilter> list2 = this.beforeFilters;
        if (list2 != null) {
            Iterator<BeforeFilter> it2 = list2.iterator();
            while (it2.hasNext()) {
                c = it2.next().writeBefore(jSONSerializer, obj, c);
            }
        }
        return c;
    }

    public void writeClassName(JSONSerializer jSONSerializer, String str, Object obj) {
        if (str == null) {
            str = jSONSerializer.config.typeKey;
        }
        jSONSerializer.out.writeFieldName(str, false);
        String name = this.beanInfo.typeName;
        if (name == null) {
            Class<?> superclass = obj.getClass();
            if (TypeUtils.isProxy(superclass)) {
                superclass = superclass.getSuperclass();
            }
            name = superclass.getName();
        }
        jSONSerializer.write(name);
    }

    public void writeDirectNonContext(JSONSerializer jSONSerializer, Object obj, Object obj2, Type type, int i) throws Throwable {
        write(jSONSerializer, obj, obj2, type, i);
    }

    public void writeNoneASM(JSONSerializer jSONSerializer, Object obj, Object obj2, Type type, int i) throws Throwable {
        write(jSONSerializer, obj, obj2, type, i, false);
    }

    public boolean writeReference(JSONSerializer jSONSerializer, Object obj, int i) {
        IdentityHashMap<Object, SerialContext> identityHashMap;
        SerialContext serialContext = jSONSerializer.context;
        int i2 = SerializerFeature.DisableCircularReferenceDetect.mask;
        if (serialContext == null || (serialContext.features & i2) != 0 || (i & i2) != 0 || (identityHashMap = jSONSerializer.references) == null || !identityHashMap.containsKey(obj)) {
            return false;
        }
        jSONSerializer.writeReference(obj);
        return true;
    }

    public JavaBeanSerializer(Class<?> cls, String... strArr) {
        this(cls, createAliasMap(strArr));
    }

    public boolean isWriteAsArray(JSONSerializer jSONSerializer, int i) {
        int i2 = SerializerFeature.BeanToArray.mask;
        return ((this.beanInfo.features & i2) == 0 && !jSONSerializer.out.beanToArray && (i & i2) == 0) ? false : true;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(3:(4:387|64|65|(3:393|66|(2:(4:77|(3:(1:84)|76|403)(1:82)|85|(8:(1:93)(9:394|95|96|385|102|(1:104)(4:(3:383|107|(1:110))|114|115|(4:117|(1:119)|120|(2:122|(3:129|(1:133)|(5:(1:248)(3:238|(2:245|(1:247))|244)|(2:(1:251)(1:252)|253)(2:255|(2:(1:258)|259)(4:(1:267)(1:(1:265)(1:266))|(2:269|(2:286|(1:293)(2:292|404))(1:(2:275|(1:281)(1:280))(2:282|(1:284)(1:285))))(1:294)|295|(2:313|(2:315|405)(2:316|406))(4:299|(4:302|(4:304|(2:305|(2:307|(2:408|309)(1:409))(2:407|310))|(0)|(0)(0))|313|(0)(0))|301|(0)(0))))|254|295|(3:297|313|(0)(0))(0))(2:182|(2:184|(3:188|(0)(1:236)|244)(0))(0)))(2:128|244))(1:(2:135|(3:142|(1:146)|(0)(0))(2:141|244))(2:147|(2:149|(3:156|(1:160)|(0)(0))(2:155|244))(2:161|(2:163|(3:170|(1:174)|(0)(0))(2:169|244))(2:(1:(0)(0))(1:180)|244)))))(0))|105|316|406)|94|385|102|(0)(0)|105|316|406)(2:76|403))(0)|323)(4:396|69|(0)(0)|323)))|379|62) */
    /* JADX WARN: Code restructure failed: missing block: B:346:0x044e, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:347:0x044f, code lost:
    
        r0 = r0;
     */
    /* JADX WARN: Removed duplicated region for block: B:104:0x014c  */
    /* JADX WARN: Removed duplicated region for block: B:106:0x0156  */
    /* JADX WARN: Removed duplicated region for block: B:181:0x0255 A[PHI: r1
      0x0255: PHI (r1v42 java.lang.Object) = 
      (r1v41 java.lang.Object)
      (r1v41 java.lang.Object)
      (r1v41 java.lang.Object)
      (r1v41 java.lang.Object)
      (r1v48 java.lang.Object)
      (r1v41 java.lang.Object)
      (r1v49 java.lang.Object)
      (r1v41 java.lang.Object)
      (r1v50 java.lang.Object)
      (r1v41 java.lang.Object)
      (r1v51 java.lang.Object)
      (r1v41 java.lang.Object)
     binds: [B:116:0x0191, B:175:0x0243, B:177:0x0247, B:179:0x0251, B:174:0x023e, B:173:0x023c, B:160:0x0213, B:159:0x0211, B:146:0x01ea, B:145:0x01e8, B:133:0x01c6, B:132:0x01c4] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:182:0x0257 A[Catch: Exception -> 0x03eb, all -> 0x040c, TryCatch #3 {Exception -> 0x03eb, blocks: (B:102:0x0146, B:114:0x016f, B:117:0x0193, B:119:0x019b, B:122:0x01a8, B:124:0x01b3, B:126:0x01b7, B:129:0x01be, B:131:0x01c1, B:133:0x01c6, B:135:0x01cc, B:137:0x01d7, B:139:0x01db, B:142:0x01e2, B:144:0x01e5, B:147:0x01ed, B:149:0x01f5, B:151:0x0200, B:153:0x0204, B:156:0x020b, B:158:0x020e, B:160:0x0213, B:161:0x0218, B:163:0x0220, B:165:0x022b, B:167:0x022f, B:170:0x0236, B:172:0x0239, B:174:0x023e, B:176:0x0245, B:178:0x0249, B:182:0x0257, B:184:0x025b, B:186:0x0264, B:188:0x026b, B:190:0x0271, B:192:0x0275, B:195:0x0280, B:197:0x0284, B:199:0x0288, B:202:0x0293, B:204:0x0297, B:206:0x029b, B:209:0x02a6, B:211:0x02aa, B:213:0x02ae, B:216:0x02bc, B:218:0x02c0, B:220:0x02c4, B:223:0x02d1, B:225:0x02d5, B:227:0x02d9, B:230:0x02e7, B:232:0x02eb, B:234:0x02ef, B:238:0x02fb, B:240:0x02ff, B:242:0x0303, B:245:0x030e, B:247:0x031b, B:251:0x0325, B:253:0x032b, B:295:0x03ac, B:297:0x03b0, B:299:0x03b4, B:302:0x03be, B:304:0x03c6, B:305:0x03ce, B:307:0x03d4, B:258:0x0336, B:259:0x0339, B:262:0x0341, B:265:0x0347, B:269:0x0357, B:272:0x035f, B:275:0x0369, B:277:0x0372, B:280:0x0378, B:281:0x037c, B:282:0x0380, B:284:0x0387, B:285:0x038b, B:286:0x038f, B:288:0x0393, B:290:0x0397, B:293:0x03a5, B:294:0x03a9, B:266:0x034f), top: B:385:0x0146 }] */
    /* JADX WARN: Removed duplicated region for block: B:188:0x026b A[Catch: Exception -> 0x03eb, all -> 0x040c, TryCatch #3 {Exception -> 0x03eb, blocks: (B:102:0x0146, B:114:0x016f, B:117:0x0193, B:119:0x019b, B:122:0x01a8, B:124:0x01b3, B:126:0x01b7, B:129:0x01be, B:131:0x01c1, B:133:0x01c6, B:135:0x01cc, B:137:0x01d7, B:139:0x01db, B:142:0x01e2, B:144:0x01e5, B:147:0x01ed, B:149:0x01f5, B:151:0x0200, B:153:0x0204, B:156:0x020b, B:158:0x020e, B:160:0x0213, B:161:0x0218, B:163:0x0220, B:165:0x022b, B:167:0x022f, B:170:0x0236, B:172:0x0239, B:174:0x023e, B:176:0x0245, B:178:0x0249, B:182:0x0257, B:184:0x025b, B:186:0x0264, B:188:0x026b, B:190:0x0271, B:192:0x0275, B:195:0x0280, B:197:0x0284, B:199:0x0288, B:202:0x0293, B:204:0x0297, B:206:0x029b, B:209:0x02a6, B:211:0x02aa, B:213:0x02ae, B:216:0x02bc, B:218:0x02c0, B:220:0x02c4, B:223:0x02d1, B:225:0x02d5, B:227:0x02d9, B:230:0x02e7, B:232:0x02eb, B:234:0x02ef, B:238:0x02fb, B:240:0x02ff, B:242:0x0303, B:245:0x030e, B:247:0x031b, B:251:0x0325, B:253:0x032b, B:295:0x03ac, B:297:0x03b0, B:299:0x03b4, B:302:0x03be, B:304:0x03c6, B:305:0x03ce, B:307:0x03d4, B:258:0x0336, B:259:0x0339, B:262:0x0341, B:265:0x0347, B:269:0x0357, B:272:0x035f, B:275:0x0369, B:277:0x0372, B:280:0x0378, B:281:0x037c, B:282:0x0380, B:284:0x0387, B:285:0x038b, B:286:0x038f, B:288:0x0393, B:290:0x0397, B:293:0x03a5, B:294:0x03a9, B:266:0x034f), top: B:385:0x0146 }] */
    /* JADX WARN: Removed duplicated region for block: B:237:0x02f9  */
    /* JADX WARN: Removed duplicated region for block: B:313:0x03e0  */
    /* JADX WARN: Removed duplicated region for block: B:315:0x03e3  */
    /* JADX WARN: Removed duplicated region for block: B:316:0x03e8 A[PHI: r28 r29
      0x03e8: PHI (r28v1 int) = (r28v0 int), (r28v2 int) binds: [B:314:0x03e1, B:105:0x0150] A[DONT_GENERATE, DONT_INLINE]
      0x03e8: PHI (r29v2 char) = (r29v1 char), (r29v3 char) binds: [B:314:0x03e1, B:105:0x0150] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:356:0x047f A[Catch: all -> 0x04fe, TRY_ENTER, TryCatch #12 {all -> 0x04fe, blocks: (B:353:0x045b, B:356:0x047f, B:364:0x04cd, B:366:0x04d3, B:367:0x04eb, B:369:0x04ef, B:373:0x04f8, B:374:0x04fd, B:358:0x0494, B:360:0x0498, B:362:0x049c, B:363:0x04b7), top: B:399:0x045b }] */
    /* JADX WARN: Removed duplicated region for block: B:357:0x0492  */
    /* JADX WARN: Removed duplicated region for block: B:366:0x04d3 A[Catch: all -> 0x04fe, TryCatch #12 {all -> 0x04fe, blocks: (B:353:0x045b, B:356:0x047f, B:364:0x04cd, B:366:0x04d3, B:367:0x04eb, B:369:0x04ef, B:373:0x04f8, B:374:0x04fd, B:358:0x0494, B:360:0x0498, B:362:0x049c, B:363:0x04b7), top: B:399:0x045b }] */
    /* JADX WARN: Removed duplicated region for block: B:369:0x04ef A[Catch: all -> 0x04fe, TryCatch #12 {all -> 0x04fe, blocks: (B:353:0x045b, B:356:0x047f, B:364:0x04cd, B:366:0x04d3, B:367:0x04eb, B:369:0x04ef, B:373:0x04f8, B:374:0x04fd, B:358:0x0494, B:360:0x0498, B:362:0x049c, B:363:0x04b7), top: B:399:0x045b }] */
    /* JADX WARN: Removed duplicated region for block: B:371:0x04f5  */
    /* JADX WARN: Removed duplicated region for block: B:372:0x04f6  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00a2  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x00f6  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x00fa  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void write(JSONSerializer jSONSerializer, Object obj, Object obj2, Type type, int i, boolean z) throws Throwable {
        SerialContext serialContext;
        FieldSerializer fieldSerializer;
        Exception exc;
        FieldInfo fieldInfo;
        boolean z2;
        SerialContext serialContext2;
        boolean z3;
        FieldSerializer fieldSerializer2;
        Object propertyValueDirect;
        Exception exc2;
        int i2;
        char c;
        char c2;
        boolean z4;
        boolean z5;
        Object obj3 = obj;
        Type type2 = type;
        SerializeWriter serializeWriter = jSONSerializer.out;
        if (obj3 == null) {
            serializeWriter.writeNull();
            return;
        }
        if (writeReference(jSONSerializer, obj3, i)) {
            return;
        }
        FieldSerializer[] fieldSerializerArr = serializeWriter.sortField ? this.sortedGetters : this.getters;
        SerialContext serialContext3 = jSONSerializer.context;
        if (!this.beanInfo.beanType.isEnum()) {
            jSONSerializer.setContext(serialContext3, obj, obj2, this.beanInfo.features, i);
        }
        boolean zIsWriteAsArray = isWriteAsArray(jSONSerializer, i);
        char c3 = zIsWriteAsArray ? '[' : MessageFormatter.DELIM_START;
        char c4 = zIsWriteAsArray ? ']' : MessageFormatter.DELIM_STOP;
        if (!z) {
            try {
                try {
                    serializeWriter.append(c3);
                } catch (Exception e) {
                    serialContext = serialContext3;
                    fieldSerializer = null;
                    exc = e;
                    try {
                        String str = "write javaBean error, fastjson version 1.2.54, class " + obj.getClass().getName();
                        if (obj2 == null) {
                        }
                        if (exc.getMessage() != null) {
                        }
                        if (exc instanceof InvocationTargetException) {
                        }
                        throw new JSONException(str, cause != null ? exc : cause);
                    } catch (Throwable th) {
                        th = th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                serialContext = serialContext3;
            }
        }
        if (fieldSerializerArr.length > 0 && serializeWriter.isEnabled(SerializerFeature.PrettyFormat)) {
            jSONSerializer.incrementIndent();
            jSONSerializer.println();
        }
        int i3 = this.beanInfo.features;
        SerializerFeature serializerFeature = SerializerFeature.WriteClassName;
        int i4 = serializerFeature.mask;
        if ((i3 & i4) != 0 || (i & i4) != 0 || jSONSerializer.isWriteClassName(type2, obj3)) {
            Class<?> cls = obj.getClass();
            if (cls != ((cls == type2 || !(type2 instanceof WildcardType)) ? type2 : TypeUtils.getClass(type))) {
                writeClassName(jSONSerializer, this.beanInfo.typeKey, obj3);
                z2 = true;
            } else {
                z2 = false;
            }
            char c5 = z2 ? ',' : (char) 0;
            boolean zIsEnabled = serializeWriter.isEnabled(serializerFeature);
            boolean z6 = serializeWriter.quoteFieldNames && !serializeWriter.useSingleQuotes;
            boolean z7 = writeBefore(jSONSerializer, obj3, c5) == ',';
            boolean zIsEnabled2 = serializeWriter.isEnabled(SerializerFeature.SkipTransientField);
            boolean zIsEnabled3 = serializeWriter.isEnabled(SerializerFeature.IgnoreNonFieldGetter);
            boolean z8 = z7;
            fieldSerializer = null;
            int i5 = 0;
            while (i5 < fieldSerializerArr.length) {
                try {
                    FieldSerializer fieldSerializer3 = fieldSerializerArr[i5];
                    serialContext2 = serialContext3;
                    try {
                        try {
                            FieldInfo fieldInfo2 = fieldSerializer3.fieldInfo;
                            Field field = fieldInfo2.field;
                            FieldSerializer[] fieldSerializerArr2 = fieldSerializerArr;
                            String str2 = fieldInfo2.name;
                            char c6 = c4;
                            Class<?> cls2 = fieldInfo2.fieldClass;
                            if (!zIsEnabled2 || field == null) {
                                if (!zIsEnabled3 || field != null) {
                                    if (!applyName(jSONSerializer, obj3, str2) || !applyLabel(jSONSerializer, fieldInfo2.label)) {
                                        z3 = zIsWriteAsArray;
                                        i2 = i5;
                                        c = c6;
                                    }
                                    String str3 = this.beanInfo.typeKey;
                                    if (str3 != null && str2.equals(str3) && jSONSerializer.isWriteClassName(type2, obj3)) {
                                        i2 = i5;
                                        c = c6;
                                    } else {
                                        try {
                                            if (z3) {
                                                fieldSerializer2 = fieldSerializer;
                                            } else {
                                                try {
                                                    propertyValueDirect = fieldSerializer3.getPropertyValueDirect(obj3);
                                                    fieldSerializer2 = fieldSerializer;
                                                } catch (InvocationTargetException e2) {
                                                    try {
                                                        if (!serializeWriter.isEnabled(SerializerFeature.IgnoreErrorGetter)) {
                                                            throw e2;
                                                        }
                                                        fieldSerializer2 = fieldSerializer3;
                                                    } catch (Exception e3) {
                                                        e = e3;
                                                        fieldSerializer = fieldSerializer3;
                                                        serialContext = serialContext2;
                                                        exc = e;
                                                        String str4 = "write javaBean error, fastjson version 1.2.54, class " + obj.getClass().getName();
                                                        if (obj2 == null) {
                                                        }
                                                        if (exc.getMessage() != null) {
                                                        }
                                                        if (exc instanceof InvocationTargetException) {
                                                        }
                                                        throw new JSONException(str4, cause != null ? exc : cause);
                                                    }
                                                }
                                                if (apply(jSONSerializer, obj3, str2, propertyValueDirect)) {
                                                    i2 = i5;
                                                    c = c6;
                                                } else {
                                                    if (cls2 == String.class) {
                                                        try {
                                                            if ("trim".equals(fieldInfo2.format) && propertyValueDirect != null) {
                                                                propertyValueDirect = ((String) propertyValueDirect).trim();
                                                            }
                                                        } catch (Exception e4) {
                                                            exc2 = e4;
                                                            serialContext = serialContext2;
                                                            fieldSerializer = fieldSerializer2;
                                                            exc = exc2;
                                                            String str42 = "write javaBean error, fastjson version 1.2.54, class " + obj.getClass().getName();
                                                            if (obj2 == null) {
                                                            }
                                                            if (exc.getMessage() != null) {
                                                            }
                                                            if (exc instanceof InvocationTargetException) {
                                                            }
                                                            throw new JSONException(str42, cause != null ? exc : cause);
                                                        }
                                                    }
                                                    String strProcessKey = processKey(jSONSerializer, obj3, str2, propertyValueDirect);
                                                    i2 = i5;
                                                    c = c6;
                                                    Object objProcessValue = processValue(jSONSerializer, fieldSerializer3.fieldContext, obj, str2, propertyValueDirect);
                                                    if (objProcessValue == null) {
                                                        int iOf = fieldInfo2.serialzeFeatures;
                                                        JSONType jSONType = this.beanInfo.jsonType;
                                                        if (jSONType != null) {
                                                            iOf |= SerializerFeature.of(jSONType.serialzeFeatures());
                                                        }
                                                        if (cls2 == Boolean.class) {
                                                            int i6 = SerializerFeature.WriteNullBooleanAsFalse.mask;
                                                            int i7 = SerializerFeature.WriteMapNullValue.mask | i6;
                                                            if (zIsWriteAsArray || (iOf & i7) != 0 || (i7 & serializeWriter.features) != 0) {
                                                                if ((iOf & i6) != 0 || (serializeWriter.features & i6) != 0) {
                                                                    objProcessValue = Boolean.FALSE;
                                                                }
                                                                if (objProcessValue == null) {
                                                                    if (z8) {
                                                                        if (!fieldInfo2.unwrapped || !(objProcessValue instanceof Map) || ((Map) objProcessValue).size() != 0) {
                                                                            serializeWriter.write(44);
                                                                            if (serializeWriter.isEnabled(SerializerFeature.PrettyFormat)) {
                                                                                jSONSerializer.println();
                                                                            }
                                                                        }
                                                                    }
                                                                    if (strProcessKey != str2) {
                                                                        if (!zIsWriteAsArray) {
                                                                            serializeWriter.writeFieldName(strProcessKey, true);
                                                                        }
                                                                        jSONSerializer.write(objProcessValue);
                                                                    } else if (propertyValueDirect != objProcessValue) {
                                                                        if (!zIsWriteAsArray) {
                                                                            fieldSerializer3.writePrefix(jSONSerializer);
                                                                        }
                                                                        jSONSerializer.write(objProcessValue);
                                                                    } else {
                                                                        if (zIsWriteAsArray || (!zIsEnabled && fieldInfo2.unwrapped)) {
                                                                            c2 = 0;
                                                                        } else if (z6) {
                                                                            char[] cArr = fieldInfo2.name_chars;
                                                                            c2 = 0;
                                                                            serializeWriter.write(cArr, 0, cArr.length);
                                                                        } else {
                                                                            c2 = 0;
                                                                            fieldSerializer3.writePrefix(jSONSerializer);
                                                                        }
                                                                        if (zIsWriteAsArray) {
                                                                            fieldSerializer3.writeValue(jSONSerializer, objProcessValue);
                                                                        } else {
                                                                            JSONField annotation = fieldInfo2.getAnnotation();
                                                                            if (cls2 == String.class && (annotation == null || annotation.serializeUsing() == Void.class)) {
                                                                                if (objProcessValue == null) {
                                                                                    int i8 = serializeWriter.features;
                                                                                    int i9 = SerializerFeature.WriteNullStringAsEmpty.mask;
                                                                                    if ((i8 & i9) == 0 && (fieldSerializer3.features & i9) == 0) {
                                                                                        serializeWriter.writeNull();
                                                                                    } else {
                                                                                        serializeWriter.writeString("");
                                                                                    }
                                                                                } else {
                                                                                    String str5 = (String) objProcessValue;
                                                                                    if (serializeWriter.useSingleQuotes) {
                                                                                        serializeWriter.writeStringWithSingleQuote(str5);
                                                                                    } else {
                                                                                        serializeWriter.writeStringWithDoubleQuote(str5, c2);
                                                                                    }
                                                                                }
                                                                            } else if (fieldInfo2.unwrapped && (objProcessValue instanceof Map) && ((Map) objProcessValue).size() == 0) {
                                                                                fieldSerializer = fieldSerializer2;
                                                                                z8 = false;
                                                                            } else {
                                                                                fieldSerializer3.writeValue(jSONSerializer, objProcessValue);
                                                                            }
                                                                        }
                                                                        if (fieldInfo2.unwrapped || !(objProcessValue instanceof Map)) {
                                                                            z4 = false;
                                                                            if (z4) {
                                                                                fieldSerializer = fieldSerializer2;
                                                                            } else {
                                                                                fieldSerializer = fieldSerializer2;
                                                                                z8 = true;
                                                                            }
                                                                        } else {
                                                                            Map map = (Map) objProcessValue;
                                                                            if (map.size() != 0) {
                                                                                if (!jSONSerializer.isEnabled(SerializerFeature.WriteMapNullValue)) {
                                                                                    Iterator it = map.values().iterator();
                                                                                    while (true) {
                                                                                        if (!it.hasNext()) {
                                                                                            z5 = false;
                                                                                            break;
                                                                                        } else if (it.next() != null) {
                                                                                            z5 = true;
                                                                                            break;
                                                                                        }
                                                                                    }
                                                                                    if (!z5) {
                                                                                    }
                                                                                    if (z4) {
                                                                                    }
                                                                                }
                                                                                z4 = false;
                                                                                if (z4) {
                                                                                }
                                                                            }
                                                                            z4 = true;
                                                                            if (z4) {
                                                                            }
                                                                        }
                                                                    }
                                                                    if (fieldInfo2.unwrapped) {
                                                                        z4 = false;
                                                                        if (z4) {
                                                                        }
                                                                    }
                                                                } else if (!serializeWriter.notWriteDefaultValue) {
                                                                    int i10 = fieldInfo2.serialzeFeatures;
                                                                    int i11 = SerializerFeature.NotWriteDefaultValue.mask;
                                                                    if ((i10 & i11) != 0 || (this.beanInfo.features & i11) != 0) {
                                                                        Class<?> cls3 = fieldInfo2.fieldClass;
                                                                        if ((cls3 != Byte.TYPE || !(objProcessValue instanceof Byte) || ((Byte) objProcessValue).byteValue() != 0) && ((cls3 != Short.TYPE || !(objProcessValue instanceof Short) || ((Short) objProcessValue).shortValue() != 0) && ((cls3 != Integer.TYPE || !(objProcessValue instanceof Integer) || ((Integer) objProcessValue).intValue() != 0) && ((cls3 != Long.TYPE || !(objProcessValue instanceof Long) || ((Long) objProcessValue).longValue() != 0) && ((cls3 != Float.TYPE || !(objProcessValue instanceof Float) || ((Float) objProcessValue).floatValue() != 0.0f) && ((cls3 != Double.TYPE || !(objProcessValue instanceof Double) || ((Double) objProcessValue).doubleValue() != 0.0d) && (cls3 != Boolean.TYPE || !(objProcessValue instanceof Boolean) || ((Boolean) objProcessValue).booleanValue()))))))) {
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        } else if (cls2 == String.class) {
                                                            int i12 = SerializerFeature.WriteNullStringAsEmpty.mask;
                                                            int i13 = SerializerFeature.WriteMapNullValue.mask | i12;
                                                            if (zIsWriteAsArray || (iOf & i13) != 0 || (i13 & serializeWriter.features) != 0) {
                                                                if ((iOf & i12) != 0 || (serializeWriter.features & i12) != 0) {
                                                                    objProcessValue = "";
                                                                }
                                                                if (objProcessValue == null) {
                                                                }
                                                            }
                                                        } else if (Number.class.isAssignableFrom(cls2)) {
                                                            int i14 = SerializerFeature.WriteNullNumberAsZero.mask;
                                                            int i15 = SerializerFeature.WriteMapNullValue.mask | i14;
                                                            if (zIsWriteAsArray || (iOf & i15) != 0 || (i15 & serializeWriter.features) != 0) {
                                                                if ((iOf & i14) != 0 || (serializeWriter.features & i14) != 0) {
                                                                    objProcessValue = 0;
                                                                }
                                                                if (objProcessValue == null) {
                                                                }
                                                            }
                                                        } else if (Collection.class.isAssignableFrom(cls2)) {
                                                            int i16 = SerializerFeature.WriteNullListAsEmpty.mask;
                                                            int i17 = SerializerFeature.WriteMapNullValue.mask | i16;
                                                            if (zIsWriteAsArray || (iOf & i17) != 0 || (i17 & serializeWriter.features) != 0) {
                                                                if ((iOf & i16) != 0 || (serializeWriter.features & i16) != 0) {
                                                                    objProcessValue = Collections.emptyList();
                                                                }
                                                                if (objProcessValue == null) {
                                                                }
                                                            }
                                                        } else if (zIsWriteAsArray || fieldSerializer3.writeNull || serializeWriter.isEnabled(SerializerFeature.WriteMapNullValue.mask)) {
                                                            if (objProcessValue == null) {
                                                            }
                                                        }
                                                    }
                                                }
                                                fieldSerializer = fieldSerializer2;
                                            }
                                            if (apply(jSONSerializer, obj3, str2, propertyValueDirect)) {
                                            }
                                            fieldSerializer = fieldSerializer2;
                                        } catch (Exception e5) {
                                            exc2 = e5;
                                        }
                                        propertyValueDirect = null;
                                    }
                                }
                                i5 = i2 + 1;
                                obj3 = obj;
                                type2 = type;
                                serialContext3 = serialContext2;
                                fieldSerializerArr = fieldSerializerArr2;
                                c4 = c;
                            } else {
                                try {
                                    if (fieldInfo2.fieldTransient) {
                                    }
                                    i5 = i2 + 1;
                                    obj3 = obj;
                                    type2 = type;
                                    serialContext3 = serialContext2;
                                    fieldSerializerArr = fieldSerializerArr2;
                                    c4 = c;
                                } catch (Exception e6) {
                                    e = e6;
                                    serialContext = serialContext2;
                                    exc = e;
                                    String str422 = "write javaBean error, fastjson version 1.2.54, class " + obj.getClass().getName();
                                    if (obj2 == null) {
                                    }
                                    if (exc.getMessage() != null) {
                                    }
                                    if (exc instanceof InvocationTargetException) {
                                    }
                                    throw new JSONException(str422, cause != null ? exc : cause);
                                }
                            }
                        } catch (Throwable th3) {
                            th = th3;
                            serialContext = serialContext2;
                        }
                    } catch (Exception e7) {
                        e = e7;
                    }
                } catch (Exception e8) {
                    Exception exc3 = e8;
                    serialContext = serialContext3;
                    exc = exc3;
                    String str4222 = "write javaBean error, fastjson version 1.2.54, class " + obj.getClass().getName();
                    if (obj2 == null) {
                    }
                    if (exc.getMessage() != null) {
                    }
                    if (exc instanceof InvocationTargetException) {
                    }
                    throw new JSONException(str4222, cause != null ? exc : cause);
                }
            }
            char c7 = c4;
            FieldSerializer[] fieldSerializerArr3 = fieldSerializerArr;
            serialContext2 = serialContext3;
            try {
                writeAfter(jSONSerializer, obj, z8 ? ',' : (char) 0);
                if (fieldSerializerArr3.length > 0 && serializeWriter.isEnabled(SerializerFeature.PrettyFormat)) {
                    jSONSerializer.decrementIdent();
                    jSONSerializer.println();
                }
                if (!z) {
                    serializeWriter.append(c7);
                }
                jSONSerializer.context = serialContext2;
                return;
            } catch (Exception e9) {
                e = e9;
                serialContext = serialContext2;
                exc = e;
                String str42222 = "write javaBean error, fastjson version 1.2.54, class " + obj.getClass().getName();
                if (obj2 == null) {
                    str42222 = str42222 + ", fieldName : " + obj2;
                } else if (fieldSerializer != null && (fieldInfo = fieldSerializer.fieldInfo) != null) {
                    if (fieldInfo.method != null) {
                        str42222 = str42222 + ", method : " + fieldInfo.method.getName();
                    } else {
                        str42222 = str42222 + ", fieldName : " + fieldSerializer.fieldInfo.name;
                    }
                }
                if (exc.getMessage() != null) {
                    str42222 = str42222 + ", " + exc.getMessage();
                }
                Throwable cause = exc instanceof InvocationTargetException ? exc.getCause() : null;
                throw new JSONException(str42222, cause != null ? exc : cause);
            }
        }
        jSONSerializer.context = serialContext;
        throw th;
    }

    public JavaBeanSerializer(Class<?> cls, Map<String, String> map) {
        this(TypeUtils.buildBeanInfo(cls, map, null));
    }

    public JavaBeanSerializer(SerializeBeanInfo serializeBeanInfo) {
        FieldSerializer[] fieldSerializerArr;
        boolean z;
        this.beanInfo = serializeBeanInfo;
        this.sortedGetters = new FieldSerializer[serializeBeanInfo.sortedFields.length];
        int i = 0;
        while (true) {
            fieldSerializerArr = this.sortedGetters;
            if (i >= fieldSerializerArr.length) {
                break;
            }
            fieldSerializerArr[i] = new FieldSerializer(serializeBeanInfo.beanType, serializeBeanInfo.sortedFields[i]);
            i++;
        }
        FieldInfo[] fieldInfoArr = serializeBeanInfo.fields;
        if (fieldInfoArr == serializeBeanInfo.sortedFields) {
            this.getters = fieldSerializerArr;
        } else {
            this.getters = new FieldSerializer[fieldInfoArr.length];
            int i2 = 0;
            while (true) {
                if (i2 >= this.getters.length) {
                    z = false;
                    break;
                }
                FieldSerializer fieldSerializer = getFieldSerializer(serializeBeanInfo.fields[i2].name);
                if (fieldSerializer == null) {
                    z = true;
                    break;
                } else {
                    this.getters[i2] = fieldSerializer;
                    i2++;
                }
            }
            if (z) {
                FieldSerializer[] fieldSerializerArr2 = this.sortedGetters;
                System.arraycopy(fieldSerializerArr2, 0, this.getters, 0, fieldSerializerArr2.length);
            }
        }
        JSONType jSONType = serializeBeanInfo.jsonType;
        if (jSONType != null) {
            for (Class<? extends SerializeFilter> cls : jSONType.serialzeFilters()) {
                try {
                    addFilter(cls.getConstructor(new Class[0]).newInstance(new Object[0]));
                } catch (Exception unused) {
                }
            }
        }
        JSONType jSONType2 = serializeBeanInfo.jsonType;
        if (jSONType2 != null) {
            for (Class<? extends SerializeFilter> cls2 : jSONType2.serialzeFilters()) {
                try {
                    addFilter(cls2.getConstructor(new Class[0]).newInstance(new Object[0]));
                } catch (Exception unused2) {
                }
            }
        }
    }

    public FieldSerializer getFieldSerializer(long j) {
        PropertyNamingStrategy[] propertyNamingStrategyArrValues;
        int iBinarySearch;
        if (this.hashArray == null) {
            propertyNamingStrategyArrValues = PropertyNamingStrategy.values();
            long[] jArr = new long[this.sortedGetters.length * propertyNamingStrategyArrValues.length];
            int i = 0;
            int i2 = 0;
            while (true) {
                FieldSerializer[] fieldSerializerArr = this.sortedGetters;
                if (i >= fieldSerializerArr.length) {
                    break;
                }
                String str = fieldSerializerArr[i].fieldInfo.name;
                jArr[i2] = TypeUtils.fnv1a_64(str);
                i2++;
                for (PropertyNamingStrategy propertyNamingStrategy : propertyNamingStrategyArrValues) {
                    String strTranslate = propertyNamingStrategy.translate(str);
                    if (!str.equals(strTranslate)) {
                        jArr[i2] = TypeUtils.fnv1a_64(strTranslate);
                        i2++;
                    }
                }
                i++;
            }
            Arrays.sort(jArr, 0, i2);
            this.hashArray = new long[i2];
            System.arraycopy(jArr, 0, this.hashArray, 0, i2);
        } else {
            propertyNamingStrategyArrValues = null;
        }
        int iBinarySearch2 = Arrays.binarySearch(this.hashArray, j);
        if (iBinarySearch2 < 0) {
            return null;
        }
        if (this.hashArrayMapping == null) {
            if (propertyNamingStrategyArrValues == null) {
                propertyNamingStrategyArrValues = PropertyNamingStrategy.values();
            }
            short[] sArr = new short[this.hashArray.length];
            Arrays.fill(sArr, (short) -1);
            int i3 = 0;
            while (true) {
                FieldSerializer[] fieldSerializerArr2 = this.sortedGetters;
                if (i3 >= fieldSerializerArr2.length) {
                    break;
                }
                String str2 = fieldSerializerArr2[i3].fieldInfo.name;
                int iBinarySearch3 = Arrays.binarySearch(this.hashArray, TypeUtils.fnv1a_64(str2));
                if (iBinarySearch3 >= 0) {
                    sArr[iBinarySearch3] = (short) i3;
                }
                for (PropertyNamingStrategy propertyNamingStrategy2 : propertyNamingStrategyArrValues) {
                    String strTranslate2 = propertyNamingStrategy2.translate(str2);
                    if (!str2.equals(strTranslate2) && (iBinarySearch = Arrays.binarySearch(this.hashArray, TypeUtils.fnv1a_64(strTranslate2))) >= 0) {
                        sArr[iBinarySearch] = (short) i3;
                    }
                }
                i3++;
            }
            this.hashArrayMapping = sArr;
        }
        short s = this.hashArrayMapping[iBinarySearch2];
        if (s != -1) {
            return this.sortedGetters[s];
        }
        return null;
    }

    public Object getFieldValue(Object obj, String str, long j, boolean z) {
        FieldSerializer fieldSerializer = getFieldSerializer(j);
        if (fieldSerializer == null) {
            if (!z) {
                return null;
            }
            throw new JSONException("field not found. " + str);
        }
        try {
            return fieldSerializer.getPropertyValue(obj);
        } catch (IllegalAccessException e) {
            throw new JSONException("getFieldValue error." + str, e);
        } catch (InvocationTargetException e2) {
            throw new JSONException("getFieldValue error." + str, e2);
        }
    }
}
