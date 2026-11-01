package com.alibaba.fastjson.util;

import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.PropertyNamingStrategy;
import com.alibaba.fastjson.annotation.JSONCreator;
import com.alibaba.fastjson.annotation.JSONField;
import com.alibaba.fastjson.annotation.JSONPOJOBuilder;
import com.alibaba.fastjson.annotation.JSONType;
import com.alibaba.fastjson.parser.Feature;
import com.alibaba.fastjson.serializer.SerializerFeature;
import com.umeng.analytics.pro.ak;
import java.lang.annotation.Annotation;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;

/* loaded from: classes.dex */
public class JavaBeanInfo {
    public final Method buildMethod;
    public final Class<?> builderClass;
    public final Class<?> clazz;
    public final Constructor<?> creatorConstructor;
    public Type[] creatorConstructorParameterTypes;
    public String[] creatorConstructorParameters;
    public final Constructor<?> defaultConstructor;
    public final int defaultConstructorParameterSize;
    public final Method factoryMethod;
    public final FieldInfo[] fields;
    public final JSONType jsonType;

    /* renamed from: kotlin, reason: collision with root package name */
    public boolean f36254kotlin;
    public Constructor<?> kotlinDefaultConstructor;
    public String[] orders;
    public final int parserFeatures;
    public final FieldInfo[] sortedFields;
    public final String typeKey;
    public final String typeName;

    public JavaBeanInfo(Class<?> cls, Class<?> cls2, Constructor<?> constructor, Constructor<?> constructor2, Method method, Method method2, JSONType jSONType, List<FieldInfo> list) {
        JSONField jSONField;
        this.clazz = cls;
        this.builderClass = cls2;
        this.defaultConstructor = constructor;
        this.creatorConstructor = constructor2;
        this.factoryMethod = method;
        this.parserFeatures = TypeUtils.getParserFeatures(cls);
        this.buildMethod = method2;
        this.jsonType = jSONType;
        if (jSONType != null) {
            String strTypeName = jSONType.typeName();
            String strTypeKey = jSONType.typeKey();
            this.typeKey = strTypeKey.length() <= 0 ? null : strTypeKey;
            if (strTypeName.length() != 0) {
                this.typeName = strTypeName;
            } else {
                this.typeName = cls.getName();
            }
            String[] strArrOrders = jSONType.orders();
            this.orders = strArrOrders.length == 0 ? null : strArrOrders;
        } else {
            this.typeName = cls.getName();
            this.typeKey = null;
            this.orders = null;
        }
        FieldInfo[] fieldInfoArr = new FieldInfo[list.size()];
        this.fields = fieldInfoArr;
        list.toArray(fieldInfoArr);
        FieldInfo[] fieldInfoArr2 = new FieldInfo[fieldInfoArr.length];
        boolean z = false;
        if (this.orders != null) {
            LinkedHashMap linkedHashMap = new LinkedHashMap(list.size());
            for (FieldInfo fieldInfo : fieldInfoArr) {
                linkedHashMap.put(fieldInfo.name, fieldInfo);
            }
            int i = 0;
            for (String str : this.orders) {
                FieldInfo fieldInfo2 = (FieldInfo) linkedHashMap.get(str);
                if (fieldInfo2 != null) {
                    fieldInfoArr2[i] = fieldInfo2;
                    linkedHashMap.remove(str);
                    i++;
                }
            }
            Iterator it = linkedHashMap.values().iterator();
            while (it.hasNext()) {
                fieldInfoArr2[i] = (FieldInfo) it.next();
                i++;
            }
        } else {
            System.arraycopy(fieldInfoArr, 0, fieldInfoArr2, 0, fieldInfoArr.length);
            Arrays.sort(fieldInfoArr2);
        }
        this.sortedFields = Arrays.equals(this.fields, fieldInfoArr2) ? this.fields : fieldInfoArr2;
        if (constructor != null) {
            this.defaultConstructorParameterSize = constructor.getParameterTypes().length;
        } else if (method != null) {
            this.defaultConstructorParameterSize = method.getParameterTypes().length;
        } else {
            this.defaultConstructorParameterSize = 0;
        }
        if (constructor2 != null) {
            this.creatorConstructorParameterTypes = constructor2.getParameterTypes();
            boolean zIsKotlin = TypeUtils.isKotlin(cls);
            this.f36254kotlin = zIsKotlin;
            if (!zIsKotlin) {
                if (this.creatorConstructorParameterTypes.length == this.fields.length) {
                    int i2 = 0;
                    while (true) {
                        Type[] typeArr = this.creatorConstructorParameterTypes;
                        if (i2 >= typeArr.length) {
                            z = true;
                            break;
                        } else if (typeArr[i2] != this.fields[i2].fieldClass) {
                            break;
                        } else {
                            i2++;
                        }
                    }
                }
                if (z) {
                    return;
                }
                this.creatorConstructorParameters = ASMUtils.lookupParameterNames(constructor2);
                return;
            }
            this.creatorConstructorParameters = TypeUtils.getKoltinConstructorParameters(cls);
            try {
                this.kotlinDefaultConstructor = cls.getConstructor(new Class[0]);
            } catch (Throwable unused) {
            }
            Annotation[][] parameterAnnotations = constructor2.getParameterAnnotations();
            for (int i3 = 0; i3 < this.creatorConstructorParameters.length && i3 < parameterAnnotations.length; i3++) {
                Annotation[] annotationArr = parameterAnnotations[i3];
                int length = annotationArr.length;
                int i4 = 0;
                while (true) {
                    if (i4 >= length) {
                        jSONField = null;
                        break;
                    }
                    Annotation annotation = annotationArr[i4];
                    if (annotation instanceof JSONField) {
                        jSONField = (JSONField) annotation;
                        break;
                    }
                    i4++;
                }
                if (jSONField != null) {
                    String strName = jSONField.name();
                    if (strName.length() > 0) {
                        this.creatorConstructorParameters[i3] = strName;
                    }
                }
            }
        }
    }

    public static boolean add(List<FieldInfo> list, FieldInfo fieldInfo) {
        for (int size = list.size() - 1; size >= 0; size--) {
            FieldInfo fieldInfo2 = list.get(size);
            if (fieldInfo2.name.equals(fieldInfo.name) && (!fieldInfo2.getOnly || fieldInfo.getOnly)) {
                if (fieldInfo2.fieldClass.isAssignableFrom(fieldInfo.fieldClass)) {
                    list.set(size, fieldInfo);
                    return true;
                }
                if (fieldInfo2.compareTo(fieldInfo) >= 0) {
                    return false;
                }
                list.set(size, fieldInfo);
                return true;
            }
        }
        list.add(fieldInfo);
        return true;
    }

    public static JavaBeanInfo build(Class<?> cls, Type type, PropertyNamingStrategy propertyNamingStrategy) {
        return build(cls, type, propertyNamingStrategy, false, TypeUtils.compatibleWithJavaBean, false);
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x004e  */
    /* JADX WARN: Removed duplicated region for block: B:6:0x0012  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static void computeFields(Class<?> cls, Type type, PropertyNamingStrategy propertyNamingStrategy, List<FieldInfo> list, Field[] fieldArr) {
        int i;
        int i2;
        int i3;
        for (Field field : fieldArr) {
            int modifiers = field.getModifiers();
            if ((modifiers & 8) == 0) {
                boolean z = true;
                if ((modifiers & 16) != 0) {
                    Class<?> type2 = field.getType();
                    if (Map.class.isAssignableFrom(type2) || Collection.class.isAssignableFrom(type2) || AtomicLong.class.equals(type2) || AtomicInteger.class.equals(type2) || AtomicBoolean.class.equals(type2)) {
                        Iterator<FieldInfo> it = list.iterator();
                        while (true) {
                            if (it.hasNext()) {
                                if (it.next().name.equals(field.getName())) {
                                    break;
                                }
                            } else {
                                z = false;
                                break;
                            }
                        }
                        if (!z) {
                            String name = field.getName();
                            JSONField jSONField = (JSONField) field.getAnnotation(JSONField.class);
                            if (jSONField == null) {
                                i = 0;
                                i2 = 0;
                                i3 = 0;
                            } else if (jSONField.deserialize()) {
                                int iOrdinal = jSONField.ordinal();
                                int iOf = SerializerFeature.of(jSONField.serialzeFeatures());
                                int iOf2 = Feature.of(jSONField.parseFeatures());
                                if (jSONField.name().length() != 0) {
                                    name = jSONField.name();
                                }
                                i = iOrdinal;
                                i2 = iOf;
                                i3 = iOf2;
                            }
                            if (propertyNamingStrategy != null) {
                                name = propertyNamingStrategy.translate(name);
                            }
                            add(list, new FieldInfo(name, null, field, cls, type, i, i2, i3, null, jSONField, null));
                        }
                    }
                }
            }
        }
    }

    public static Class<?> getBuilderClass(JSONType jSONType) {
        return getBuilderClass(null, jSONType);
    }

    public static Constructor<?> getCreatorConstructor(Constructor[] constructorArr) {
        boolean z;
        Constructor constructor = null;
        for (Constructor constructor2 : constructorArr) {
            if (((JSONCreator) constructor2.getAnnotation(JSONCreator.class)) != null) {
                if (constructor != null) {
                    throw new JSONException("multi-JSONCreator");
                }
                constructor = constructor2;
            }
        }
        if (constructor != null) {
            return constructor;
        }
        for (Constructor constructor3 : constructorArr) {
            Annotation[][] parameterAnnotations = constructor3.getParameterAnnotations();
            if (parameterAnnotations.length != 0) {
                int length = parameterAnnotations.length;
                int i = 0;
                while (true) {
                    z = true;
                    if (i >= length) {
                        break;
                    }
                    Annotation[] annotationArr = parameterAnnotations[i];
                    int length2 = annotationArr.length;
                    int i2 = 0;
                    while (true) {
                        if (i2 >= length2) {
                            z = false;
                            break;
                        }
                        if (annotationArr[i2] instanceof JSONField) {
                            break;
                        }
                        i2++;
                    }
                    if (!z) {
                        z = false;
                        break;
                    }
                    i++;
                }
                if (!z) {
                    continue;
                } else {
                    if (constructor != null) {
                        throw new JSONException("multi-JSONCreator");
                    }
                    constructor = constructor3;
                }
            }
        }
        return constructor;
    }

    public static Constructor<?> getDefaultConstructor(Class<?> cls, Constructor<?>[] constructorArr) {
        Constructor<?> constructor = null;
        if (Modifier.isAbstract(cls.getModifiers())) {
            return null;
        }
        int length = constructorArr.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                break;
            }
            Constructor<?> constructor2 = constructorArr[i];
            if (constructor2.getParameterTypes().length == 0) {
                constructor = constructor2;
                break;
            }
            i++;
        }
        if (constructor != null || !cls.isMemberClass() || Modifier.isStatic(cls.getModifiers())) {
            return constructor;
        }
        for (Constructor<?> constructor3 : constructorArr) {
            Class<?>[] parameterTypes = constructor3.getParameterTypes();
            if (parameterTypes.length == 1 && parameterTypes[0].equals(cls.getDeclaringClass())) {
                return constructor3;
            }
        }
        return constructor;
    }

    private static Method getFactoryMethod(Class<?> cls, Method[] methodArr, boolean z) {
        Method method = null;
        for (Method method2 : methodArr) {
            if (Modifier.isStatic(method2.getModifiers()) && cls.isAssignableFrom(method2.getReturnType()) && ((JSONCreator) method2.getAnnotation(JSONCreator.class)) != null) {
                if (method != null) {
                    throw new JSONException("multi-JSONCreator");
                }
                method = method2;
            }
        }
        if (method != null || !z) {
            return method;
        }
        for (Method method3 : methodArr) {
            if (TypeUtils.isJacksonCreator(method3)) {
                return method3;
            }
        }
        return method;
    }

    private static FieldInfo getField(List<FieldInfo> list, String str) {
        for (FieldInfo fieldInfo : list) {
            if (fieldInfo.name.equals(str)) {
                return fieldInfo;
            }
            Field field = fieldInfo.field;
            if (field != null && fieldInfo.getAnnotation() != null && field.getName().equals(str)) {
                return fieldInfo;
            }
        }
        return null;
    }

    public static JavaBeanInfo build(Class<?> cls, Type type, PropertyNamingStrategy propertyNamingStrategy, boolean z, boolean z2) {
        return build(cls, type, propertyNamingStrategy, z, z2, false);
    }

    public static Class<?> getBuilderClass(Class<?> cls, JSONType jSONType) {
        Class<?> clsBuilder;
        if (cls != null && cls.getName().equals("org.springframework.security.web.savedrequest.DefaultSavedRequest")) {
            return TypeUtils.loadClass("org.springframework.security.web.savedrequest.DefaultSavedRequest$Builder");
        }
        if (jSONType == null || (clsBuilder = jSONType.builder()) == Void.class) {
            return null;
        }
        return clsBuilder;
    }

    /* JADX WARN: Removed duplicated region for block: B:162:0x02f1  */
    /* JADX WARN: Removed duplicated region for block: B:163:0x02f7  */
    /* JADX WARN: Removed duplicated region for block: B:218:0x042b  */
    /* JADX WARN: Removed duplicated region for block: B:280:0x060a  */
    /* JADX WARN: Removed duplicated region for block: B:371:0x084e  */
    /* JADX WARN: Removed duplicated region for block: B:421:0x0987 A[PHI: r7
      0x0987: PHI (r7v5 java.lang.reflect.Field[]) = (r7v4 java.lang.reflect.Field[]), (r7v6 java.lang.reflect.Field[]) binds: [B:415:0x0977, B:420:0x0985] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static JavaBeanInfo build(Class<?> cls, Type type, PropertyNamingStrategy propertyNamingStrategy, boolean z, boolean z2, boolean z3) {
        Constructor<?> defaultConstructor;
        Constructor<?> constructor;
        ArrayList arrayList;
        Method[] methodArr;
        Class<?> cls2;
        Class<?> cls3;
        Field[] fieldArr;
        Constructor<?> creatorConstructor;
        PropertyNamingStrategy propertyNamingStrategy2;
        Class<?> cls4;
        Field[] fieldArr2;
        Method[] methodArr2;
        char c;
        String str;
        JSONType jSONType;
        Class<?> cls5;
        int i;
        JSONField jSONField;
        String strTranslate;
        Field[] fieldArr3;
        JSONField jSONField2;
        Field[] fieldArr4;
        int i2;
        int i3;
        Method[] methodArr3;
        Class<?> cls6;
        int i4;
        int i5;
        Method[] methodArr4;
        Class<?> cls7;
        Class<String> cls8;
        String str2;
        Field[] fieldArr5;
        PropertyNamingStrategy propertyNamingStrategy3;
        String strDecapitalize;
        Field[] fieldArr6;
        JSONField jSONField3;
        int iOrdinal;
        int iOf;
        int i6;
        PropertyNamingStrategy propertyNamingStrategy4;
        int i7;
        int i8;
        Method[] methodArr5;
        String str3;
        Class<?> cls9;
        String str4;
        Class<?> cls10;
        Method[] methodArr6;
        JSONType jSONType2;
        int i9;
        int i10;
        int i11;
        String str5;
        StringBuilder sb;
        String str6;
        Field[] fieldArr7;
        String str7;
        Method[] methodArr7;
        Class<?> cls11;
        String[] strArrLookupParameterNames;
        char c2;
        int i12;
        String[] strArrLookupParameterNames2;
        JSONField jSONField4;
        int iOf2;
        int i13;
        int i14;
        JSONField jSONField5;
        String strName;
        int iOrdinal2;
        int iOf3;
        int iOf4;
        JSONField jSONField6;
        String str8;
        Field field;
        int iOrdinal3;
        int iOf5;
        int iOf6;
        PropertyNamingStrategy propertyNamingStrategyNaming;
        boolean z4 = z3;
        Class<String> cls12 = String.class;
        Class<?> cls13 = Object.class;
        JSONType jSONType3 = (JSONType) TypeUtils.getAnnotation(cls, JSONType.class);
        PropertyNamingStrategy propertyNamingStrategy5 = (jSONType3 == null || (propertyNamingStrategyNaming = jSONType3.naming()) == null || propertyNamingStrategyNaming == PropertyNamingStrategy.CamelCase) ? propertyNamingStrategy : propertyNamingStrategyNaming;
        Class<?> builderClass = getBuilderClass(cls, jSONType3);
        Field[] declaredFields = cls.getDeclaredFields();
        Method[] methods = cls.getMethods();
        boolean zIsKotlin = TypeUtils.isKotlin(cls);
        Constructor<?>[] declaredConstructors = cls.getDeclaredConstructors();
        if (!zIsKotlin || declaredConstructors.length == 1) {
            if (builderClass == null) {
                defaultConstructor = getDefaultConstructor(cls, declaredConstructors);
            } else {
                defaultConstructor = getDefaultConstructor(builderClass, builderClass.getDeclaredConstructors());
            }
            constructor = defaultConstructor;
        } else {
            constructor = null;
        }
        Method method = null;
        Method factoryMethod = null;
        ArrayList arrayList2 = new ArrayList();
        if (z) {
            for (Class<?> superclass = cls; superclass != null; superclass = superclass.getSuperclass()) {
                computeFields(cls, type, propertyNamingStrategy5, arrayList2, superclass.getDeclaredFields());
            }
            return new JavaBeanInfo(cls, builderClass, constructor, null, null, null, jSONType3, arrayList2);
        }
        boolean z5 = cls.isInterface() || Modifier.isAbstract(cls.getModifiers());
        PropertyNamingStrategy propertyNamingStrategy6 = propertyNamingStrategy5;
        if ((constructor == null && builderClass == null) || z5) {
            creatorConstructor = getCreatorConstructor(declaredConstructors);
            if (creatorConstructor != null && !z5) {
                TypeUtils.setAccessible(creatorConstructor);
                Class<?>[] parameterTypes = creatorConstructor.getParameterTypes();
                if (parameterTypes.length > 0) {
                    Annotation[][] parameterAnnotations = creatorConstructor.getParameterAnnotations();
                    String[] strArrLookupParameterNames3 = null;
                    int i15 = 0;
                    while (i15 < parameterTypes.length) {
                        Annotation[] annotationArr = parameterAnnotations[i15];
                        int length = annotationArr.length;
                        int i16 = 0;
                        while (true) {
                            if (i16 >= length) {
                                jSONField6 = null;
                                break;
                            }
                            Annotation annotation = annotationArr[i16];
                            Annotation[] annotationArr2 = annotationArr;
                            if (annotation instanceof JSONField) {
                                jSONField6 = (JSONField) annotation;
                                break;
                            }
                            i16++;
                            annotationArr = annotationArr2;
                        }
                        Class<?> cls14 = parameterTypes[i15];
                        Type type2 = creatorConstructor.getGenericParameterTypes()[i15];
                        if (jSONField6 != null) {
                            Field field2 = TypeUtils.getField(cls, jSONField6.name(), declaredFields);
                            iOrdinal3 = jSONField6.ordinal();
                            iOf5 = SerializerFeature.of(jSONField6.serialzeFeatures());
                            iOf6 = Feature.of(jSONField6.parseFeatures());
                            String strName2 = jSONField6.name();
                            field = field2;
                            str8 = strName2;
                        } else {
                            str8 = null;
                            field = null;
                            iOrdinal3 = 0;
                            iOf5 = 0;
                            iOf6 = 0;
                        }
                        if (str8 == null || str8.length() == 0) {
                            if (strArrLookupParameterNames3 == null) {
                                strArrLookupParameterNames3 = ASMUtils.lookupParameterNames(creatorConstructor);
                            }
                            str8 = strArrLookupParameterNames3[i15];
                        }
                        String[] strArr = strArrLookupParameterNames3;
                        ArrayList arrayList3 = arrayList2;
                        add(arrayList3, new FieldInfo(str8, cls, cls14, type2, field, iOrdinal3, iOf5, iOf6));
                        i15++;
                        methods = methods;
                        arrayList2 = arrayList3;
                        declaredFields = declaredFields;
                        cls13 = cls13;
                        builderClass = builderClass;
                        strArrLookupParameterNames3 = strArr;
                    }
                }
                arrayList = arrayList2;
                methodArr7 = methods;
                cls2 = builderClass;
                cls11 = cls13;
                fieldArr = declaredFields;
            } else {
                arrayList = arrayList2;
                methodArr7 = methods;
                cls2 = builderClass;
                cls11 = cls13;
                fieldArr = declaredFields;
                factoryMethod = getFactoryMethod(cls, methodArr7, z4);
                if (factoryMethod != null) {
                    TypeUtils.setAccessible(factoryMethod);
                    Class<?>[] parameterTypes2 = factoryMethod.getParameterTypes();
                    if (parameterTypes2.length > 0) {
                        Annotation[][] parameterAnnotations2 = factoryMethod.getParameterAnnotations();
                        String[] strArrLookupParameterNames4 = null;
                        int i17 = 0;
                        while (i17 < parameterTypes2.length) {
                            Annotation[] annotationArr3 = parameterAnnotations2[i17];
                            int length2 = annotationArr3.length;
                            int i18 = 0;
                            while (true) {
                                if (i18 >= length2) {
                                    jSONField5 = null;
                                    break;
                                }
                                Annotation annotation2 = annotationArr3[i18];
                                if (annotation2 instanceof JSONField) {
                                    jSONField5 = (JSONField) annotation2;
                                    break;
                                }
                                i18++;
                            }
                            if (jSONField5 == null && (!z4 || !TypeUtils.isJacksonCreator(factoryMethod))) {
                                throw new JSONException("illegal json creator");
                            }
                            if (jSONField5 != null) {
                                strName = jSONField5.name();
                                iOrdinal2 = jSONField5.ordinal();
                                iOf3 = SerializerFeature.of(jSONField5.serialzeFeatures());
                                iOf4 = Feature.of(jSONField5.parseFeatures());
                            } else {
                                strName = null;
                                iOrdinal2 = 0;
                                iOf3 = 0;
                                iOf4 = 0;
                            }
                            if (strName == null || strName.length() == 0) {
                                if (strArrLookupParameterNames4 == null) {
                                    strArrLookupParameterNames4 = ASMUtils.lookupParameterNames(factoryMethod);
                                }
                                strName = strArrLookupParameterNames4[i17];
                            }
                            String[] strArr2 = strArrLookupParameterNames4;
                            add(arrayList, new FieldInfo(strName, cls, parameterTypes2[i17], factoryMethod.getGenericParameterTypes()[i17], TypeUtils.getField(cls, strName, fieldArr), iOrdinal2, iOf3, iOf4));
                            i17++;
                            z4 = z3;
                            strArrLookupParameterNames4 = strArr2;
                            parameterTypes2 = parameterTypes2;
                        }
                        return new JavaBeanInfo(cls, cls2, null, null, factoryMethod, null, jSONType3, arrayList);
                    }
                } else if (!z5) {
                    String name = cls.getName();
                    if (zIsKotlin && declaredConstructors.length > 0) {
                        String[] koltinConstructorParameters = TypeUtils.getKoltinConstructorParameters(cls);
                        Constructor<?> koltinConstructor = TypeUtils.getKoltinConstructor(declaredConstructors, koltinConstructorParameters);
                        TypeUtils.setAccessible(koltinConstructor);
                        creatorConstructor = koltinConstructor;
                        strArrLookupParameterNames = koltinConstructorParameters;
                        methodArr = methodArr7;
                        cls3 = cls11;
                    } else {
                        int length3 = declaredConstructors.length;
                        String[] strArr3 = null;
                        int i19 = 0;
                        while (true) {
                            if (i19 >= length3) {
                                methodArr = methodArr7;
                                cls3 = cls11;
                                strArrLookupParameterNames = strArr3;
                                break;
                            }
                            Constructor<?> constructor2 = declaredConstructors[i19];
                            Class<?>[] parameterTypes3 = constructor2.getParameterTypes();
                            if (name.equals("org.springframework.security.web.authentication.WebAuthenticationDetails") && parameterTypes3.length == 2) {
                                c2 = 0;
                                if (parameterTypes3[0] == cls12 && parameterTypes3[1] == cls12) {
                                    constructor2.setAccessible(true);
                                    strArrLookupParameterNames = ASMUtils.lookupParameterNames(constructor2);
                                    creatorConstructor = constructor2;
                                    methodArr = methodArr7;
                                    cls3 = cls11;
                                    break;
                                }
                            } else {
                                c2 = 0;
                            }
                            if (name.equals("org.springframework.security.web.authentication.preauth.PreAuthenticatedAuthenticationToken") && parameterTypes3.length == 3) {
                                methodArr = methodArr7;
                                cls3 = cls11;
                                if (parameterTypes3[c2] == cls3 && parameterTypes3[1] == cls3 && parameterTypes3[2] == Collection.class) {
                                    constructor2.setAccessible(true);
                                    strArrLookupParameterNames = new String[]{"principal", "credentials", "authorities"};
                                    creatorConstructor = constructor2;
                                    break;
                                }
                            } else {
                                methodArr = methodArr7;
                                cls3 = cls11;
                            }
                            if (name.equals("org.springframework.security.core.authority.SimpleGrantedAuthority")) {
                                i12 = 1;
                                if (parameterTypes3.length == 1 && parameterTypes3[0] == cls12) {
                                    strArrLookupParameterNames = new String[]{"authority"};
                                    creatorConstructor = constructor2;
                                    break;
                                }
                            } else {
                                i12 = 1;
                            }
                            if (((constructor2.getModifiers() & i12) != 0) && (strArrLookupParameterNames2 = ASMUtils.lookupParameterNames(constructor2)) != null && strArrLookupParameterNames2.length != 0 && (creatorConstructor == null || strArr3 == null || strArrLookupParameterNames2.length > strArr3.length)) {
                                creatorConstructor = constructor2;
                                strArr3 = strArrLookupParameterNames2;
                            }
                            i19++;
                            cls11 = cls3;
                            methodArr7 = methodArr;
                        }
                        Class<?>[] parameterTypes4 = strArrLookupParameterNames == null ? creatorConstructor.getParameterTypes() : null;
                        if (strArrLookupParameterNames == null && parameterTypes4.length == strArrLookupParameterNames.length) {
                            Annotation[][] parameterAnnotations3 = creatorConstructor.getParameterAnnotations();
                            int i20 = 0;
                            while (i20 < parameterTypes4.length) {
                                Annotation[] annotationArr4 = parameterAnnotations3[i20];
                                String str9 = strArrLookupParameterNames[i20];
                                int length4 = annotationArr4.length;
                                int i21 = 0;
                                while (true) {
                                    if (i21 >= length4) {
                                        jSONField4 = null;
                                        break;
                                    }
                                    Annotation annotation3 = annotationArr4[i21];
                                    if (annotation3 instanceof JSONField) {
                                        jSONField4 = (JSONField) annotation3;
                                        break;
                                    }
                                    i21++;
                                }
                                Class<?> cls15 = parameterTypes4[i20];
                                Type type3 = creatorConstructor.getGenericParameterTypes()[i20];
                                Field field3 = TypeUtils.getField(cls, str9, fieldArr);
                                if (field3 != null && jSONField4 == null) {
                                    jSONField4 = (JSONField) field3.getAnnotation(JSONField.class);
                                }
                                if (jSONField4 == null) {
                                    if ("org.springframework.security.core.userdetails.User".equals(name) && "password".equals(str9)) {
                                        iOf2 = Feature.InitStringFieldAsEmpty.mask;
                                        i14 = 0;
                                        i13 = 0;
                                    } else {
                                        i14 = 0;
                                        i13 = 0;
                                        iOf2 = 0;
                                    }
                                } else {
                                    String strName3 = jSONField4.name();
                                    if (strName3.length() != 0) {
                                        str9 = strName3;
                                    }
                                    int iOrdinal4 = jSONField4.ordinal();
                                    int iOf7 = SerializerFeature.of(jSONField4.serialzeFeatures());
                                    iOf2 = Feature.of(jSONField4.parseFeatures());
                                    i13 = iOf7;
                                    i14 = iOrdinal4;
                                }
                                add(arrayList, new FieldInfo(str9, cls, cls15, type3, field3, i14, i13, iOf2));
                                i20++;
                                name = name;
                                strArrLookupParameterNames = strArrLookupParameterNames;
                                parameterTypes4 = parameterTypes4;
                            }
                            if (!zIsKotlin && !cls.getName().equals("javax.servlet.http.Cookie")) {
                                return new JavaBeanInfo(cls, cls2, null, creatorConstructor, null, null, jSONType3, arrayList);
                            }
                        } else {
                            throw new JSONException("default constructor not found. " + cls);
                        }
                    }
                    if (strArrLookupParameterNames == null) {
                    }
                    if (strArrLookupParameterNames == null) {
                    }
                    throw new JSONException("default constructor not found. " + cls);
                }
            }
            methodArr = methodArr7;
            cls3 = cls11;
        } else {
            arrayList = arrayList2;
            methodArr = methods;
            cls2 = builderClass;
            cls3 = cls13;
            fieldArr = declaredFields;
            creatorConstructor = null;
        }
        if (constructor != null) {
            TypeUtils.setAccessible(constructor);
        }
        String str10 = "set";
        Class<?> cls16 = cls2;
        if (cls16 != null) {
            JSONPOJOBuilder jSONPOJOBuilder = (JSONPOJOBuilder) cls16.getAnnotation(JSONPOJOBuilder.class);
            String strWithPrefix = jSONPOJOBuilder != null ? jSONPOJOBuilder.withPrefix() : null;
            if (strWithPrefix == null || strWithPrefix.length() == 0) {
                strWithPrefix = "with";
            }
            String str11 = strWithPrefix;
            Method[] methods2 = cls16.getMethods();
            int length5 = methods2.length;
            int i22 = 0;
            while (i22 < length5) {
                Method method2 = methods2[i22];
                if (!Modifier.isStatic(method2.getModifiers()) && method2.getReturnType().equals(cls16)) {
                    JSONField superMethodAnnotation = (JSONField) method2.getAnnotation(JSONField.class);
                    if (superMethodAnnotation == null) {
                        superMethodAnnotation = TypeUtils.getSuperMethodAnnotation(cls, method2);
                    }
                    JSONField jSONField7 = superMethodAnnotation;
                    if (jSONField7 == null) {
                        propertyNamingStrategy4 = propertyNamingStrategy6;
                        i7 = i22;
                        i8 = length5;
                        methodArr5 = methods2;
                        str3 = str11;
                        cls9 = cls16;
                        str4 = str10;
                        cls10 = cls3;
                        methodArr6 = methodArr;
                        jSONType2 = jSONType3;
                        i9 = 0;
                        i10 = 0;
                        i11 = 0;
                    } else if (jSONField7.deserialize()) {
                        int iOrdinal5 = jSONField7.ordinal();
                        int iOf8 = SerializerFeature.of(jSONField7.serialzeFeatures());
                        int iOf9 = Feature.of(jSONField7.parseFeatures());
                        if (jSONField7.name().length() != 0) {
                            i7 = i22;
                            i8 = length5;
                            methodArr5 = methods2;
                            cls9 = cls16;
                            propertyNamingStrategy4 = propertyNamingStrategy6;
                            cls10 = cls3;
                            methodArr6 = methodArr;
                            jSONType2 = jSONType3;
                            add(arrayList, new FieldInfo(jSONField7.name(), method2, null, cls, type, iOrdinal5, iOf8, iOf9, jSONField7, null, null));
                            fieldArr7 = fieldArr;
                            str6 = str11;
                            str7 = str10;
                        } else {
                            propertyNamingStrategy4 = propertyNamingStrategy6;
                            i7 = i22;
                            i8 = length5;
                            methodArr5 = methods2;
                            str3 = str11;
                            cls9 = cls16;
                            str4 = str10;
                            cls10 = cls3;
                            methodArr6 = methodArr;
                            jSONType2 = jSONType3;
                            i9 = iOrdinal5;
                            i10 = iOf8;
                            i11 = iOf9;
                        }
                    } else {
                        propertyNamingStrategy4 = propertyNamingStrategy6;
                        i7 = i22;
                        i8 = length5;
                        methodArr5 = methods2;
                        str6 = str11;
                        cls9 = cls16;
                        cls10 = cls3;
                        fieldArr7 = fieldArr;
                        methodArr6 = methodArr;
                        str7 = str10;
                        jSONType2 = jSONType3;
                    }
                    String name2 = method2.getName();
                    String str12 = str4;
                    if (name2.startsWith(str12) && name2.length() > 3) {
                        sb = new StringBuilder(name2.substring(3));
                        str5 = str3;
                    } else {
                        str5 = str3;
                        if (name2.startsWith(str5) && name2.length() > str5.length()) {
                            sb = new StringBuilder(name2.substring(str5.length()));
                        }
                        str6 = str5;
                        fieldArr7 = fieldArr;
                        str7 = str12;
                    }
                    char cCharAt = sb.charAt(0);
                    if (Character.isUpperCase(cCharAt)) {
                        sb.setCharAt(0, Character.toLowerCase(cCharAt));
                        str6 = str5;
                        fieldArr7 = fieldArr;
                        str7 = str12;
                        add(arrayList, new FieldInfo(sb.toString(), method2, null, cls, type, i9, i10, i11, jSONField7, null, null));
                    } else {
                        str6 = str5;
                        fieldArr7 = fieldArr;
                        str7 = str12;
                    }
                }
                i22 = i7 + 1;
                str10 = str7;
                fieldArr = fieldArr7;
                jSONType3 = jSONType2;
                str11 = str6;
                length5 = i8;
                methods2 = methodArr5;
                cls16 = cls9;
                methodArr = methodArr6;
                propertyNamingStrategy6 = propertyNamingStrategy4;
                cls3 = cls10;
            }
            propertyNamingStrategy2 = propertyNamingStrategy6;
            cls4 = cls3;
            fieldArr2 = fieldArr;
            methodArr2 = methodArr;
            str = str10;
            jSONType = jSONType3;
            cls5 = cls16;
            JSONPOJOBuilder jSONPOJOBuilder2 = (JSONPOJOBuilder) cls5.getAnnotation(JSONPOJOBuilder.class);
            String strBuildMethod = jSONPOJOBuilder2 != null ? jSONPOJOBuilder2.buildMethod() : null;
            if (strBuildMethod == null || strBuildMethod.length() == 0) {
                strBuildMethod = "build";
            }
            c = 0;
            try {
                method = cls5.getMethod(strBuildMethod, new Class[0]);
            } catch (NoSuchMethodException | SecurityException unused) {
            }
            if (method == null) {
                try {
                    method = cls5.getMethod("create", new Class[0]);
                } catch (NoSuchMethodException | SecurityException unused2) {
                }
            }
            if (method != null) {
                TypeUtils.setAccessible(method);
            } else {
                throw new JSONException("buildMethod not found.");
            }
        } else {
            propertyNamingStrategy2 = propertyNamingStrategy6;
            cls4 = cls3;
            fieldArr2 = fieldArr;
            methodArr2 = methodArr;
            c = 0;
            str = "set";
            jSONType = jSONType3;
            cls5 = cls16;
        }
        Method[] methodArr8 = methodArr2;
        int length6 = methodArr8.length;
        int i23 = 0;
        while (true) {
            i = 4;
            if (i23 >= length6) {
                break;
            }
            Method method3 = methodArr8[i23];
            int i24 = 0;
            int i25 = 0;
            int i26 = 0;
            String name3 = method3.getName();
            if (Modifier.isStatic(method3.getModifiers())) {
                i4 = i23;
                i5 = length6;
                methodArr4 = methodArr8;
                cls7 = cls5;
                cls8 = cls12;
                str2 = str;
                fieldArr5 = fieldArr2;
                propertyNamingStrategy3 = propertyNamingStrategy2;
                cls6 = cls4;
            } else {
                Class<?> returnType = method3.getReturnType();
                if (returnType.equals(Void.TYPE) || returnType.equals(method3.getDeclaringClass())) {
                    Class<?> cls17 = cls4;
                    if (method3.getDeclaringClass() != cls17) {
                        Class<?>[] parameterTypes5 = method3.getParameterTypes();
                        if (parameterTypes5.length != 0 && parameterTypes5.length <= 2) {
                            JSONField jSONField8 = (JSONField) method3.getAnnotation(JSONField.class);
                            if (jSONField8 != null && parameterTypes5.length == 2 && parameterTypes5[c] == cls12 && parameterTypes5[1] == cls17) {
                                cls6 = cls17;
                                i4 = i23;
                                i5 = length6;
                                methodArr4 = methodArr8;
                                cls7 = cls5;
                                add(arrayList, new FieldInfo("", method3, null, cls, type, 0, 0, 0, jSONField8, null, null));
                            } else {
                                cls6 = cls17;
                                i4 = i23;
                                i5 = length6;
                                methodArr4 = methodArr8;
                                cls7 = cls5;
                                if (parameterTypes5.length == 1) {
                                    JSONField superMethodAnnotation2 = jSONField8 == null ? TypeUtils.getSuperMethodAnnotation(cls, method3) : jSONField8;
                                    if (superMethodAnnotation2 != null || name3.length() >= 4) {
                                        if (superMethodAnnotation2 != null) {
                                            if (superMethodAnnotation2.deserialize()) {
                                                int iOrdinal6 = superMethodAnnotation2.ordinal();
                                                int iOf10 = SerializerFeature.of(superMethodAnnotation2.serialzeFeatures());
                                                int iOf11 = Feature.of(superMethodAnnotation2.parseFeatures());
                                                if (superMethodAnnotation2.name().length() != 0) {
                                                    cls8 = cls12;
                                                    add(arrayList, new FieldInfo(superMethodAnnotation2.name(), method3, null, cls, type, iOrdinal6, iOf10, iOf11, superMethodAnnotation2, null, null));
                                                } else {
                                                    cls8 = cls12;
                                                    i24 = iOrdinal6;
                                                    i25 = iOf10;
                                                    i26 = iOf11;
                                                }
                                            }
                                            str2 = str;
                                            fieldArr5 = fieldArr2;
                                            propertyNamingStrategy3 = propertyNamingStrategy2;
                                        } else {
                                            cls8 = cls12;
                                        }
                                        if (superMethodAnnotation2 != null || name3.startsWith(str)) {
                                            char cCharAt2 = name3.charAt(3);
                                            if (Character.isUpperCase(cCharAt2) || cCharAt2 > 512) {
                                                strDecapitalize = TypeUtils.compatibleWithJavaBean ? TypeUtils.decapitalize(name3.substring(3)) : Character.toLowerCase(name3.charAt(3)) + name3.substring(4);
                                            } else if (cCharAt2 == '_') {
                                                strDecapitalize = name3.substring(4);
                                            } else if (cCharAt2 == 'f') {
                                                strDecapitalize = name3.substring(3);
                                            } else {
                                                if (name3.length() >= 5 && Character.isUpperCase(name3.charAt(4))) {
                                                    strDecapitalize = TypeUtils.decapitalize(name3.substring(3));
                                                }
                                                str2 = str;
                                                fieldArr5 = fieldArr2;
                                                propertyNamingStrategy3 = propertyNamingStrategy2;
                                            }
                                            Field[] fieldArr8 = fieldArr2;
                                            Field field4 = TypeUtils.getField(cls, strDecapitalize, fieldArr8);
                                            if (field4 == null && parameterTypes5[0] == Boolean.TYPE) {
                                                field4 = TypeUtils.getField(cls, ak.ae + Character.toUpperCase(strDecapitalize.charAt(0)) + strDecapitalize.substring(1), fieldArr8);
                                            }
                                            if (field4 != null) {
                                                JSONField jSONField9 = (JSONField) field4.getAnnotation(JSONField.class);
                                                if (jSONField9 == null) {
                                                    str2 = str;
                                                    fieldArr6 = fieldArr8;
                                                    jSONField3 = jSONField9;
                                                } else if (jSONField9.deserialize()) {
                                                    iOrdinal = jSONField9.ordinal();
                                                    iOf = SerializerFeature.of(jSONField9.serialzeFeatures());
                                                    int iOf12 = Feature.of(jSONField9.parseFeatures());
                                                    if (jSONField9.name().length() != 0) {
                                                        str2 = str;
                                                        add(arrayList, new FieldInfo(jSONField9.name(), method3, field4, cls, type, iOrdinal, iOf, iOf12, superMethodAnnotation2, jSONField9, null));
                                                        fieldArr5 = fieldArr8;
                                                        propertyNamingStrategy3 = propertyNamingStrategy2;
                                                    } else {
                                                        str2 = str;
                                                        fieldArr6 = fieldArr8;
                                                        jSONField3 = jSONField9;
                                                        i6 = iOf12;
                                                        propertyNamingStrategy3 = propertyNamingStrategy2;
                                                        if (propertyNamingStrategy3 != null) {
                                                            strDecapitalize = propertyNamingStrategy3.translate(strDecapitalize);
                                                        }
                                                        fieldArr5 = fieldArr6;
                                                        add(arrayList, new FieldInfo(strDecapitalize, method3, field4, cls, type, iOrdinal, iOf, i6, superMethodAnnotation2, jSONField3, null));
                                                    }
                                                } else {
                                                    fieldArr5 = fieldArr8;
                                                    str2 = str;
                                                    propertyNamingStrategy3 = propertyNamingStrategy2;
                                                }
                                            } else {
                                                str2 = str;
                                                fieldArr6 = fieldArr8;
                                                jSONField3 = null;
                                            }
                                            iOrdinal = i24;
                                            iOf = i25;
                                            i6 = i26;
                                            propertyNamingStrategy3 = propertyNamingStrategy2;
                                            if (propertyNamingStrategy3 != null) {
                                            }
                                            fieldArr5 = fieldArr6;
                                            add(arrayList, new FieldInfo(strDecapitalize, method3, field4, cls, type, iOrdinal, iOf, i6, superMethodAnnotation2, jSONField3, null));
                                        } else {
                                            str2 = str;
                                            fieldArr5 = fieldArr2;
                                            propertyNamingStrategy3 = propertyNamingStrategy2;
                                        }
                                    }
                                }
                            }
                            cls8 = cls12;
                            str2 = str;
                            fieldArr5 = fieldArr2;
                            propertyNamingStrategy3 = propertyNamingStrategy2;
                        }
                    }
                    cls6 = cls17;
                    i4 = i23;
                    i5 = length6;
                    methodArr4 = methodArr8;
                    cls7 = cls5;
                    cls8 = cls12;
                    str2 = str;
                    fieldArr5 = fieldArr2;
                    propertyNamingStrategy3 = propertyNamingStrategy2;
                }
            }
            i23 = i4 + 1;
            propertyNamingStrategy2 = propertyNamingStrategy3;
            fieldArr2 = fieldArr5;
            cls5 = cls7;
            cls4 = cls6;
            length6 = i5;
            methodArr8 = methodArr4;
            str = str2;
            c = 0;
            cls12 = cls8;
        }
        Class<?> cls18 = cls5;
        Field[] fieldArr9 = fieldArr2;
        PropertyNamingStrategy propertyNamingStrategy7 = propertyNamingStrategy2;
        computeFields(cls, type, propertyNamingStrategy7, arrayList, cls.getFields());
        Method[] methods3 = cls.getMethods();
        int length7 = methods3.length;
        int i27 = 0;
        while (i27 < length7) {
            Method method4 = methods3[i27];
            String name4 = method4.getName();
            if (name4.length() >= i && !Modifier.isStatic(method4.getModifiers()) && cls18 == null && name4.startsWith("get") && Character.isUpperCase(name4.charAt(3)) && method4.getParameterTypes().length == 0 && ((Collection.class.isAssignableFrom(method4.getReturnType()) || Map.class.isAssignableFrom(method4.getReturnType()) || AtomicBoolean.class == method4.getReturnType() || AtomicInteger.class == method4.getReturnType() || AtomicLong.class == method4.getReturnType()) && ((jSONField = (JSONField) method4.getAnnotation(JSONField.class)) == null || !jSONField.deserialize()))) {
                if (jSONField != null && jSONField.name().length() > 0) {
                    strTranslate = jSONField.name();
                    fieldArr3 = fieldArr9;
                } else {
                    strTranslate = Character.toLowerCase(name4.charAt(3)) + name4.substring(i);
                    fieldArr3 = fieldArr9;
                    Field field5 = TypeUtils.getField(cls, strTranslate, fieldArr3);
                    if (field5 != null && (jSONField2 = (JSONField) field5.getAnnotation(JSONField.class)) != null && !jSONField2.deserialize()) {
                        fieldArr4 = fieldArr3;
                        i2 = i27;
                        i3 = length7;
                        methodArr3 = methods3;
                    }
                }
                if (propertyNamingStrategy7 != null) {
                    strTranslate = propertyNamingStrategy7.translate(strTranslate);
                }
                String str13 = strTranslate;
                if (getField(arrayList, str13) == null) {
                    fieldArr4 = fieldArr3;
                    i2 = i27;
                    i3 = length7;
                    methodArr3 = methods3;
                    add(arrayList, new FieldInfo(str13, method4, null, cls, type, 0, 0, 0, jSONField, null, null));
                }
            } else {
                i3 = length7;
                methodArr3 = methods3;
                fieldArr4 = fieldArr9;
                i2 = i27;
            }
            i27 = i2 + 1;
            length7 = i3;
            methods3 = methodArr3;
            fieldArr9 = fieldArr4;
            i = 4;
        }
        Field[] fieldArr10 = fieldArr9;
        if (arrayList.size() == 0) {
            XmlAccessorType annotation4 = cls.getAnnotation(XmlAccessorType.class);
            if ((annotation4 == null || annotation4.value() != XmlAccessType.FIELD) ? z : true) {
                for (Class<?> superclass2 = cls; superclass2 != null; superclass2 = superclass2.getSuperclass()) {
                    computeFields(cls, type, propertyNamingStrategy7, arrayList, fieldArr10);
                }
            }
        }
        return new JavaBeanInfo(cls, cls18, constructor, creatorConstructor, factoryMethod, method, jSONType, arrayList);
    }
}
