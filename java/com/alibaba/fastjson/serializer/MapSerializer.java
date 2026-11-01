package com.alibaba.fastjson.serializer;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import java.io.IOException;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.Collection;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.SortedMap;
import java.util.TreeMap;

/* loaded from: classes.dex */
public class MapSerializer extends SerializeFilterable implements ObjectSerializer {
    public static MapSerializer instance = new MapSerializer();
    private static final int NON_STRINGKEY_AS_STRING = SerializerFeature.of(new SerializerFeature[]{SerializerFeature.BrowserCompatible, SerializerFeature.WriteNonStringKeyAsString, SerializerFeature.BrowserSecure});

    @Override // com.alibaba.fastjson.serializer.ObjectSerializer
    public void write(JSONSerializer jSONSerializer, Object obj, Object obj2, Type type, int i) throws IOException {
        write(jSONSerializer, obj, obj2, type, i, false);
    }

    /* JADX WARN: Removed duplicated region for block: B:101:0x0154 A[Catch: all -> 0x02fc, TryCatch #0 {all -> 0x02fc, blocks: (B:28:0x0052, B:29:0x0055, B:31:0x0061, B:42:0x0080, B:44:0x0091, B:45:0x00a1, B:47:0x00a7, B:49:0x00b9, B:52:0x00c1, B:55:0x00c6, B:57:0x00d0, B:59:0x00d4, B:62:0x00df, B:65:0x00ec, B:67:0x00f0, B:70:0x00f8, B:73:0x00fd, B:75:0x0107, B:77:0x010b, B:80:0x0116, B:83:0x0120, B:85:0x0124, B:88:0x012c, B:91:0x0131, B:93:0x013b, B:95:0x013f, B:98:0x014a, B:101:0x0154, B:103:0x0158, B:106:0x0160, B:109:0x0165, B:111:0x016f, B:113:0x0173, B:116:0x017f, B:119:0x018a, B:121:0x018e, B:124:0x0196, B:127:0x019b, B:129:0x01a5, B:131:0x01a9, B:132:0x01b2, B:133:0x01b8, B:135:0x01bc, B:138:0x01c4, B:141:0x01c9, B:143:0x01d3, B:145:0x01d7, B:146:0x01e0, B:149:0x01e9, B:152:0x01ee, B:154:0x01f2, B:160:0x01fc, B:165:0x0235, B:168:0x0242, B:170:0x0248, B:172:0x024d, B:173:0x0250, B:175:0x0258, B:176:0x025b, B:187:0x0282, B:189:0x028c, B:191:0x0294, B:193:0x029d, B:195:0x02a7, B:197:0x02ab, B:199:0x02af, B:201:0x02ba, B:203:0x02c0, B:204:0x02ce, B:178:0x0261, B:179:0x0264, B:181:0x026c, B:183:0x0270, B:185:0x027b, B:184:0x0278, B:162:0x021d, B:37:0x0075), top: B:219:0x0052 }] */
    /* JADX WARN: Removed duplicated region for block: B:11:0x0022 A[PHI: r1
      0x0022: PHI (r1v64 java.util.Map<java.lang.String, java.lang.Object>) = 
      (r1v2 java.util.Map<java.lang.String, java.lang.Object>)
      (r1v2 java.util.Map<java.lang.String, java.lang.Object>)
      (r1v2 java.util.Map<java.lang.String, java.lang.Object>)
      (r1v1 java.util.Map<java.lang.String, java.lang.Object>)
     binds: [B:16:0x0030, B:18:0x0034, B:218:0x0022, B:9:0x001f] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:170:0x0248 A[Catch: all -> 0x02fc, TryCatch #0 {all -> 0x02fc, blocks: (B:28:0x0052, B:29:0x0055, B:31:0x0061, B:42:0x0080, B:44:0x0091, B:45:0x00a1, B:47:0x00a7, B:49:0x00b9, B:52:0x00c1, B:55:0x00c6, B:57:0x00d0, B:59:0x00d4, B:62:0x00df, B:65:0x00ec, B:67:0x00f0, B:70:0x00f8, B:73:0x00fd, B:75:0x0107, B:77:0x010b, B:80:0x0116, B:83:0x0120, B:85:0x0124, B:88:0x012c, B:91:0x0131, B:93:0x013b, B:95:0x013f, B:98:0x014a, B:101:0x0154, B:103:0x0158, B:106:0x0160, B:109:0x0165, B:111:0x016f, B:113:0x0173, B:116:0x017f, B:119:0x018a, B:121:0x018e, B:124:0x0196, B:127:0x019b, B:129:0x01a5, B:131:0x01a9, B:132:0x01b2, B:133:0x01b8, B:135:0x01bc, B:138:0x01c4, B:141:0x01c9, B:143:0x01d3, B:145:0x01d7, B:146:0x01e0, B:149:0x01e9, B:152:0x01ee, B:154:0x01f2, B:160:0x01fc, B:165:0x0235, B:168:0x0242, B:170:0x0248, B:172:0x024d, B:173:0x0250, B:175:0x0258, B:176:0x025b, B:187:0x0282, B:189:0x028c, B:191:0x0294, B:193:0x029d, B:195:0x02a7, B:197:0x02ab, B:199:0x02af, B:201:0x02ba, B:203:0x02c0, B:204:0x02ce, B:178:0x0261, B:179:0x0264, B:181:0x026c, B:183:0x0270, B:185:0x027b, B:184:0x0278, B:162:0x021d, B:37:0x0075), top: B:219:0x0052 }] */
    /* JADX WARN: Removed duplicated region for block: B:177:0x025f  */
    /* JADX WARN: Removed duplicated region for block: B:187:0x0282 A[Catch: all -> 0x02fc, TryCatch #0 {all -> 0x02fc, blocks: (B:28:0x0052, B:29:0x0055, B:31:0x0061, B:42:0x0080, B:44:0x0091, B:45:0x00a1, B:47:0x00a7, B:49:0x00b9, B:52:0x00c1, B:55:0x00c6, B:57:0x00d0, B:59:0x00d4, B:62:0x00df, B:65:0x00ec, B:67:0x00f0, B:70:0x00f8, B:73:0x00fd, B:75:0x0107, B:77:0x010b, B:80:0x0116, B:83:0x0120, B:85:0x0124, B:88:0x012c, B:91:0x0131, B:93:0x013b, B:95:0x013f, B:98:0x014a, B:101:0x0154, B:103:0x0158, B:106:0x0160, B:109:0x0165, B:111:0x016f, B:113:0x0173, B:116:0x017f, B:119:0x018a, B:121:0x018e, B:124:0x0196, B:127:0x019b, B:129:0x01a5, B:131:0x01a9, B:132:0x01b2, B:133:0x01b8, B:135:0x01bc, B:138:0x01c4, B:141:0x01c9, B:143:0x01d3, B:145:0x01d7, B:146:0x01e0, B:149:0x01e9, B:152:0x01ee, B:154:0x01f2, B:160:0x01fc, B:165:0x0235, B:168:0x0242, B:170:0x0248, B:172:0x024d, B:173:0x0250, B:175:0x0258, B:176:0x025b, B:187:0x0282, B:189:0x028c, B:191:0x0294, B:193:0x029d, B:195:0x02a7, B:197:0x02ab, B:199:0x02af, B:201:0x02ba, B:203:0x02c0, B:204:0x02ce, B:178:0x0261, B:179:0x0264, B:181:0x026c, B:183:0x0270, B:185:0x027b, B:184:0x0278, B:162:0x021d, B:37:0x0075), top: B:219:0x0052 }] */
    /* JADX WARN: Removed duplicated region for block: B:189:0x028c A[Catch: all -> 0x02fc, TryCatch #0 {all -> 0x02fc, blocks: (B:28:0x0052, B:29:0x0055, B:31:0x0061, B:42:0x0080, B:44:0x0091, B:45:0x00a1, B:47:0x00a7, B:49:0x00b9, B:52:0x00c1, B:55:0x00c6, B:57:0x00d0, B:59:0x00d4, B:62:0x00df, B:65:0x00ec, B:67:0x00f0, B:70:0x00f8, B:73:0x00fd, B:75:0x0107, B:77:0x010b, B:80:0x0116, B:83:0x0120, B:85:0x0124, B:88:0x012c, B:91:0x0131, B:93:0x013b, B:95:0x013f, B:98:0x014a, B:101:0x0154, B:103:0x0158, B:106:0x0160, B:109:0x0165, B:111:0x016f, B:113:0x0173, B:116:0x017f, B:119:0x018a, B:121:0x018e, B:124:0x0196, B:127:0x019b, B:129:0x01a5, B:131:0x01a9, B:132:0x01b2, B:133:0x01b8, B:135:0x01bc, B:138:0x01c4, B:141:0x01c9, B:143:0x01d3, B:145:0x01d7, B:146:0x01e0, B:149:0x01e9, B:152:0x01ee, B:154:0x01f2, B:160:0x01fc, B:165:0x0235, B:168:0x0242, B:170:0x0248, B:172:0x024d, B:173:0x0250, B:175:0x0258, B:176:0x025b, B:187:0x0282, B:189:0x028c, B:191:0x0294, B:193:0x029d, B:195:0x02a7, B:197:0x02ab, B:199:0x02af, B:201:0x02ba, B:203:0x02c0, B:204:0x02ce, B:178:0x0261, B:179:0x0264, B:181:0x026c, B:183:0x0270, B:185:0x027b, B:184:0x0278, B:162:0x021d, B:37:0x0075), top: B:219:0x0052 }] */
    /* JADX WARN: Removed duplicated region for block: B:202:0x02be  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0090  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x00ec A[Catch: all -> 0x02fc, TryCatch #0 {all -> 0x02fc, blocks: (B:28:0x0052, B:29:0x0055, B:31:0x0061, B:42:0x0080, B:44:0x0091, B:45:0x00a1, B:47:0x00a7, B:49:0x00b9, B:52:0x00c1, B:55:0x00c6, B:57:0x00d0, B:59:0x00d4, B:62:0x00df, B:65:0x00ec, B:67:0x00f0, B:70:0x00f8, B:73:0x00fd, B:75:0x0107, B:77:0x010b, B:80:0x0116, B:83:0x0120, B:85:0x0124, B:88:0x012c, B:91:0x0131, B:93:0x013b, B:95:0x013f, B:98:0x014a, B:101:0x0154, B:103:0x0158, B:106:0x0160, B:109:0x0165, B:111:0x016f, B:113:0x0173, B:116:0x017f, B:119:0x018a, B:121:0x018e, B:124:0x0196, B:127:0x019b, B:129:0x01a5, B:131:0x01a9, B:132:0x01b2, B:133:0x01b8, B:135:0x01bc, B:138:0x01c4, B:141:0x01c9, B:143:0x01d3, B:145:0x01d7, B:146:0x01e0, B:149:0x01e9, B:152:0x01ee, B:154:0x01f2, B:160:0x01fc, B:165:0x0235, B:168:0x0242, B:170:0x0248, B:172:0x024d, B:173:0x0250, B:175:0x0258, B:176:0x025b, B:187:0x0282, B:189:0x028c, B:191:0x0294, B:193:0x029d, B:195:0x02a7, B:197:0x02ab, B:199:0x02af, B:201:0x02ba, B:203:0x02c0, B:204:0x02ce, B:178:0x0261, B:179:0x0264, B:181:0x026c, B:183:0x0270, B:185:0x027b, B:184:0x0278, B:162:0x021d, B:37:0x0075), top: B:219:0x0052 }] */
    /* JADX WARN: Removed duplicated region for block: B:83:0x0120 A[Catch: all -> 0x02fc, TryCatch #0 {all -> 0x02fc, blocks: (B:28:0x0052, B:29:0x0055, B:31:0x0061, B:42:0x0080, B:44:0x0091, B:45:0x00a1, B:47:0x00a7, B:49:0x00b9, B:52:0x00c1, B:55:0x00c6, B:57:0x00d0, B:59:0x00d4, B:62:0x00df, B:65:0x00ec, B:67:0x00f0, B:70:0x00f8, B:73:0x00fd, B:75:0x0107, B:77:0x010b, B:80:0x0116, B:83:0x0120, B:85:0x0124, B:88:0x012c, B:91:0x0131, B:93:0x013b, B:95:0x013f, B:98:0x014a, B:101:0x0154, B:103:0x0158, B:106:0x0160, B:109:0x0165, B:111:0x016f, B:113:0x0173, B:116:0x017f, B:119:0x018a, B:121:0x018e, B:124:0x0196, B:127:0x019b, B:129:0x01a5, B:131:0x01a9, B:132:0x01b2, B:133:0x01b8, B:135:0x01bc, B:138:0x01c4, B:141:0x01c9, B:143:0x01d3, B:145:0x01d7, B:146:0x01e0, B:149:0x01e9, B:152:0x01ee, B:154:0x01f2, B:160:0x01fc, B:165:0x0235, B:168:0x0242, B:170:0x0248, B:172:0x024d, B:173:0x0250, B:175:0x0258, B:176:0x025b, B:187:0x0282, B:189:0x028c, B:191:0x0294, B:193:0x029d, B:195:0x02a7, B:197:0x02ab, B:199:0x02af, B:201:0x02ba, B:203:0x02c0, B:204:0x02ce, B:178:0x0261, B:179:0x0264, B:181:0x026c, B:183:0x0270, B:185:0x027b, B:184:0x0278, B:162:0x021d, B:37:0x0075), top: B:219:0x0052 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void write(JSONSerializer jSONSerializer, Object obj, Object obj2, Type type, int i, boolean z) throws IOException {
        Map<String, Object> treeMap;
        boolean z2;
        String str;
        Class<?> cls;
        Object objProcessValue;
        Object obj3;
        Class<?> cls2;
        SerializeWriter serializeWriter = jSONSerializer.out;
        if (obj == null) {
            serializeWriter.writeNull();
            return;
        }
        Map<String, Object> innerMap = (Map) obj;
        int i2 = SerializerFeature.MapSortField.mask;
        if ((serializeWriter.features & i2) != 0 || (i2 & i) != 0) {
            if (innerMap instanceof JSONObject) {
                innerMap = ((JSONObject) innerMap).getInnerMap();
            }
            if ((innerMap instanceof SortedMap) || (innerMap instanceof LinkedHashMap)) {
                treeMap = innerMap;
            } else {
                try {
                    treeMap = new TreeMap(innerMap);
                } catch (Exception unused) {
                }
            }
        }
        if (jSONSerializer.containsReference(obj)) {
            jSONSerializer.writeReference(obj);
            return;
        }
        SerialContext serialContext = jSONSerializer.context;
        jSONSerializer.setContext(serialContext, obj, obj2, 0);
        if (!z) {
            try {
                serializeWriter.write(123);
            } catch (Throwable th) {
                jSONSerializer.context = serialContext;
                throw th;
            }
        }
        jSONSerializer.incrementIndent();
        if (serializeWriter.isEnabled(SerializerFeature.WriteClassName)) {
            String str2 = jSONSerializer.config.typeKey;
            Class<?> cls3 = treeMap.getClass();
            if ((cls3 == JSONObject.class || cls3 == HashMap.class || cls3 == LinkedHashMap.class) && treeMap.containsKey(str2)) {
                z2 = true;
            } else {
                serializeWriter.writeFieldName(str2);
                serializeWriter.writeString(obj.getClass().getName());
                z2 = false;
            }
        }
        boolean z3 = z2;
        Class<?> cls4 = null;
        ObjectSerializer objectWriter = null;
        for (Map.Entry<String, Object> entry : treeMap.entrySet()) {
            Object value = entry.getValue();
            String key = entry.getKey();
            List<PropertyPreFilter> list = jSONSerializer.propertyPreFilters;
            if (list == null || list.size() <= 0) {
                List<PropertyPreFilter> list2 = this.propertyPreFilters;
                if (list2 == null || list2.size() <= 0) {
                    List<PropertyFilter> list3 = jSONSerializer.propertyFilters;
                    if (list3 == null || list3.size() <= 0) {
                        List<PropertyFilter> list4 = this.propertyFilters;
                        if (list4 != null && list4.size() > 0) {
                            if (key == null || (key instanceof String)) {
                                if (!apply(jSONSerializer, obj, key, value)) {
                                    cls = cls4;
                                    cls4 = cls;
                                }
                            } else if ((key.getClass().isPrimitive() || (key instanceof Number)) && !apply(jSONSerializer, obj, JSON.toJSONString(key), value)) {
                                cls = cls4;
                                cls4 = cls;
                            }
                        }
                        List<NameFilter> list5 = jSONSerializer.nameFilters;
                        if (list5 != null && list5.size() > 0) {
                            if (key == null || (key instanceof String)) {
                                key = processKey(jSONSerializer, obj, key, value);
                            } else if (key.getClass().isPrimitive() || (key instanceof Number)) {
                                key = processKey(jSONSerializer, obj, JSON.toJSONString(key), value);
                            }
                        }
                        List<NameFilter> list6 = this.nameFilters;
                        if (list6 != null && list6.size() > 0) {
                            if (key == null || (key instanceof String)) {
                                key = processKey(jSONSerializer, obj, key, value);
                            } else if (key.getClass().isPrimitive() || (key instanceof Number)) {
                                key = processKey(jSONSerializer, obj, JSON.toJSONString(key), value);
                            }
                        }
                        String str3 = key;
                        if (str3 == null || (str3 instanceof String)) {
                            str = str3;
                            cls = cls4;
                            objProcessValue = processValue(jSONSerializer, null, obj, str, value);
                        } else if ((str3 instanceof Map) || (str3 instanceof Collection)) {
                            str = str3;
                            cls = cls4;
                            obj3 = value;
                            if (obj3 == null || serializeWriter.isEnabled(SerializerFeature.WriteMapNullValue)) {
                                if (str instanceof String) {
                                    if (!z3) {
                                        serializeWriter.write(44);
                                    }
                                    if (!serializeWriter.isEnabled(NON_STRINGKEY_AS_STRING) || (str instanceof Enum)) {
                                        jSONSerializer.write((Object) str);
                                    } else {
                                        jSONSerializer.write(JSON.toJSONString(str));
                                    }
                                    serializeWriter.write(58);
                                } else {
                                    String str4 = str;
                                    if (!z3) {
                                        serializeWriter.write(44);
                                    }
                                    if (serializeWriter.isEnabled(SerializerFeature.PrettyFormat)) {
                                        jSONSerializer.println();
                                    }
                                    serializeWriter.writeFieldName(str4, true);
                                }
                                if (obj3 != null) {
                                    serializeWriter.writeNull();
                                    cls4 = cls;
                                } else {
                                    Class<?> cls5 = obj3.getClass();
                                    Class<?> cls6 = cls;
                                    if (cls5 != cls6) {
                                        objectWriter = jSONSerializer.getObjectWriter(cls5);
                                        cls2 = cls5;
                                    } else {
                                        cls2 = cls6;
                                    }
                                    ObjectSerializer objectSerializer = objectWriter;
                                    if (!SerializerFeature.isEnabled(i, SerializerFeature.WriteClassName) || !(objectSerializer instanceof JavaBeanSerializer)) {
                                        objectWriter = objectSerializer;
                                        objectWriter.write(jSONSerializer, obj3, str, null, i);
                                    } else if (type instanceof ParameterizedType) {
                                        Type[] actualTypeArguments = ((ParameterizedType) type).getActualTypeArguments();
                                        Type type2 = actualTypeArguments.length == 2 ? actualTypeArguments[1] : null;
                                        objectWriter = objectSerializer;
                                        ((JavaBeanSerializer) objectSerializer).writeNoneASM(jSONSerializer, obj3, str, type2, i);
                                    }
                                    cls4 = cls2;
                                }
                                z3 = false;
                            } else {
                                cls4 = cls;
                            }
                        } else {
                            str = str3;
                            cls = cls4;
                            objProcessValue = processValue(jSONSerializer, null, obj, JSON.toJSONString(str3), value);
                        }
                        obj3 = objProcessValue;
                        if (obj3 == null) {
                        }
                        if (str instanceof String) {
                        }
                        if (obj3 != null) {
                        }
                        z3 = false;
                    } else if (key == null || (key instanceof String)) {
                        if (!apply(jSONSerializer, obj, key, value)) {
                        }
                        cls = cls4;
                        cls4 = cls;
                    } else {
                        if ((key.getClass().isPrimitive() || (key instanceof Number)) && !apply(jSONSerializer, obj, JSON.toJSONString(key), value)) {
                        }
                        cls = cls4;
                        cls4 = cls;
                    }
                } else if (key == null || (key instanceof String)) {
                    if (!applyName(jSONSerializer, obj, key)) {
                    }
                    cls = cls4;
                    cls4 = cls;
                } else {
                    if ((key.getClass().isPrimitive() || (key instanceof Number)) && !applyName(jSONSerializer, obj, JSON.toJSONString(key))) {
                    }
                    cls = cls4;
                    cls4 = cls;
                }
            } else if (key == null || (key instanceof String)) {
                if (!applyName(jSONSerializer, obj, key)) {
                }
                cls = cls4;
                cls4 = cls;
            } else {
                if ((key.getClass().isPrimitive() || (key instanceof Number)) && !applyName(jSONSerializer, obj, JSON.toJSONString(key))) {
                }
                cls = cls4;
                cls4 = cls;
            }
        }
        jSONSerializer.context = serialContext;
        jSONSerializer.decrementIdent();
        if (serializeWriter.isEnabled(SerializerFeature.PrettyFormat) && treeMap.size() > 0) {
            jSONSerializer.println();
        }
        if (z) {
            return;
        }
        serializeWriter.write(125);
    }
}
