package com.alibaba.fastjson.util;

import android.support.v4.ca2;
import com.alibaba.fastjson.annotation.JSONField;
import java.lang.annotation.Annotation;
import java.lang.reflect.Array;
import java.lang.reflect.Field;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;

/* loaded from: classes.dex */
public class FieldInfo implements Comparable<FieldInfo> {
    public final String[] alternateNames;
    public final Class<?> declaringClass;
    public final Field field;
    public final boolean fieldAccess;
    private final JSONField fieldAnnotation;
    public final Class<?> fieldClass;
    public final boolean fieldTransient;
    public final Type fieldType;
    public final String format;
    public final boolean getOnly;
    public final boolean isEnum;
    public final boolean jsonDirect;
    public final String label;
    public final Method method;
    private final JSONField methodAnnotation;
    public final String name;
    public final char[] name_chars;
    private int ordinal;
    public final int parserFeatures;
    public final int serialzeFeatures;
    public final boolean unwrapped;

    public FieldInfo(String str, Class<?> cls, Class<?> cls2, Type type, Field field, int i, int i2, int i3) {
        this.ordinal = 0;
        i = i < 0 ? 0 : i;
        this.name = str;
        this.declaringClass = cls;
        this.fieldClass = cls2;
        this.fieldType = type;
        this.method = null;
        this.field = field;
        this.ordinal = i;
        this.serialzeFeatures = i2;
        this.parserFeatures = i3;
        this.isEnum = cls2.isEnum();
        if (field != null) {
            int modifiers = field.getModifiers();
            int i4 = modifiers & 1;
            this.fieldAccess = true;
            this.fieldTransient = Modifier.isTransient(modifiers);
        } else {
            this.fieldTransient = false;
            this.fieldAccess = false;
        }
        this.name_chars = genFieldNameChars();
        if (field != null) {
            TypeUtils.setAccessible(field);
        }
        this.label = "";
        this.fieldAnnotation = null;
        this.methodAnnotation = null;
        this.getOnly = false;
        this.jsonDirect = false;
        this.unwrapped = false;
        this.format = null;
        this.alternateNames = new String[0];
    }

    private static boolean getArgument(Type[] typeArr, TypeVariable[] typeVariableArr, Type[] typeArr2) {
        if (typeArr2 == null || typeVariableArr.length == 0) {
            return false;
        }
        boolean z = false;
        for (int i = 0; i < typeArr.length; i++) {
            Type type = typeArr[i];
            if (type instanceof ParameterizedType) {
                ParameterizedType parameterizedType = (ParameterizedType) type;
                Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
                if (getArgument(actualTypeArguments, typeVariableArr, typeArr2)) {
                    typeArr[i] = new ParameterizedTypeImpl(actualTypeArguments, parameterizedType.getOwnerType(), parameterizedType.getRawType());
                    z = true;
                }
            } else if (type instanceof TypeVariable) {
                for (int i2 = 0; i2 < typeVariableArr.length; i2++) {
                    if (type.equals(typeVariableArr[i2])) {
                        typeArr[i] = typeArr2[i2];
                        z = true;
                    }
                }
            }
        }
        return z;
    }

    public static Type getFieldType(Class<?> cls, Type type, Type type2) {
        TypeVariable<Class<?>>[] typeParameters;
        ParameterizedType parameterizedType;
        if (cls != null && type != null) {
            if (type2 instanceof GenericArrayType) {
                Type genericComponentType = ((GenericArrayType) type2).getGenericComponentType();
                Type fieldType = getFieldType(cls, type, genericComponentType);
                return genericComponentType != fieldType ? Array.newInstance(TypeUtils.getClass(fieldType), 0).getClass() : type2;
            }
            if (!TypeUtils.isGenericParamType(type)) {
                return type2;
            }
            if (type2 instanceof TypeVariable) {
                ParameterizedType parameterizedType2 = (ParameterizedType) TypeUtils.getGenericParamType(type);
                TypeVariable typeVariable = (TypeVariable) type2;
                TypeVariable<Class<?>>[] typeParameters2 = TypeUtils.getClass(parameterizedType2).getTypeParameters();
                for (int i = 0; i < typeParameters2.length; i++) {
                    if (typeParameters2[i].getName().equals(typeVariable.getName())) {
                        return parameterizedType2.getActualTypeArguments()[i];
                    }
                }
            }
            if (type2 instanceof ParameterizedType) {
                ParameterizedType parameterizedType3 = (ParameterizedType) type2;
                Type[] actualTypeArguments = parameterizedType3.getActualTypeArguments();
                if (type instanceof ParameterizedType) {
                    parameterizedType = (ParameterizedType) type;
                    typeParameters = cls.getTypeParameters();
                } else if (cls.getGenericSuperclass() instanceof ParameterizedType) {
                    parameterizedType = (ParameterizedType) cls.getGenericSuperclass();
                    typeParameters = cls.getSuperclass().getTypeParameters();
                } else {
                    typeParameters = type.getClass().getTypeParameters();
                    parameterizedType = parameterizedType3;
                }
                if (getArgument(actualTypeArguments, typeParameters, parameterizedType.getActualTypeArguments())) {
                    return new ParameterizedTypeImpl(actualTypeArguments, parameterizedType3.getOwnerType(), parameterizedType3.getRawType());
                }
            }
        }
        return type2;
    }

    private static Type getInheritGenericType(Class<?> cls, Type type, TypeVariable<?> typeVariable) {
        Type[] actualTypeArguments;
        Class<?> cls2 = typeVariable.getGenericDeclaration() instanceof Class ? (Class) typeVariable.getGenericDeclaration() : null;
        if (cls2 == cls) {
            actualTypeArguments = type instanceof ParameterizedType ? ((ParameterizedType) type).getActualTypeArguments() : null;
        } else {
            Type[] typeArr = null;
            while (cls != null && cls != Object.class && cls != cls2) {
                Type genericSuperclass = cls.getGenericSuperclass();
                if (genericSuperclass instanceof ParameterizedType) {
                    Type[] actualTypeArguments2 = ((ParameterizedType) genericSuperclass).getActualTypeArguments();
                    getArgument(actualTypeArguments2, cls.getTypeParameters(), typeArr);
                    typeArr = actualTypeArguments2;
                }
                cls = cls.getSuperclass();
            }
            actualTypeArguments = typeArr;
        }
        if (actualTypeArguments == null || cls2 == null) {
            return null;
        }
        TypeVariable<Class<?>>[] typeParameters = cls2.getTypeParameters();
        for (int i = 0; i < typeParameters.length; i++) {
            if (typeVariable.equals(typeParameters[i])) {
                return actualTypeArguments[i];
            }
        }
        return null;
    }

    public char[] genFieldNameChars() {
        int length = this.name.length();
        char[] cArr = new char[length + 3];
        String str = this.name;
        str.getChars(0, str.length(), cArr, 1);
        cArr[0] = ca2.f674do;
        cArr[length + 1] = ca2.f674do;
        cArr[length + 2] = ':';
        return cArr;
    }

    public Object get(Object obj) throws IllegalAccessException, InvocationTargetException {
        Method method = this.method;
        return method != null ? method.invoke(obj, new Object[0]) : this.field.get(obj);
    }

    public <T extends Annotation> T getAnnation(Class<T> cls) {
        Field field;
        if (cls == JSONField.class) {
            return getAnnotation();
        }
        T t = null;
        Method method = this.method;
        if (method != null) {
            t = (T) method.getAnnotation(cls);
        }
        return (t != null || (field = this.field) == null) ? t : (T) field.getAnnotation(cls);
    }

    public JSONField getAnnotation() {
        JSONField jSONField = this.fieldAnnotation;
        return jSONField != null ? jSONField : this.methodAnnotation;
    }

    public Class<?> getDeclaredClass() {
        Method method = this.method;
        if (method != null) {
            return method.getDeclaringClass();
        }
        Field field = this.field;
        if (field != null) {
            return field.getDeclaringClass();
        }
        return null;
    }

    public String getFormat() {
        return this.format;
    }

    public Member getMember() {
        Method method = this.method;
        return method != null ? method : this.field;
    }

    public void set(Object obj, Object obj2) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        Method method = this.method;
        if (method != null) {
            method.invoke(obj, obj2);
        } else {
            this.field.set(obj, obj2);
        }
    }

    public void setAccessible() throws SecurityException {
        Method method = this.method;
        if (method != null) {
            TypeUtils.setAccessible(method);
        } else {
            TypeUtils.setAccessible(this.field);
        }
    }

    public String toString() {
        return this.name;
    }

    @Override // java.lang.Comparable
    public int compareTo(FieldInfo fieldInfo) {
        int i = this.ordinal;
        int i2 = fieldInfo.ordinal;
        if (i < i2) {
            return -1;
        }
        if (i > i2) {
            return 1;
        }
        int iCompareTo = this.name.compareTo(fieldInfo.name);
        if (iCompareTo != 0) {
            return iCompareTo;
        }
        Class<?> declaredClass = getDeclaredClass();
        Class<?> declaredClass2 = fieldInfo.getDeclaredClass();
        if (declaredClass != null && declaredClass2 != null && declaredClass != declaredClass2) {
            if (declaredClass.isAssignableFrom(declaredClass2)) {
                return -1;
            }
            if (declaredClass2.isAssignableFrom(declaredClass)) {
                return 1;
            }
        }
        Field field = this.field;
        boolean z = false;
        boolean z2 = field != null && field.getType() == this.fieldClass;
        Field field2 = fieldInfo.field;
        if (field2 != null && field2.getType() == fieldInfo.fieldClass) {
            z = true;
        }
        if (z2 && !z) {
            return 1;
        }
        if (z && !z2) {
            return -1;
        }
        if (fieldInfo.fieldClass.isPrimitive() && !this.fieldClass.isPrimitive()) {
            return 1;
        }
        if (this.fieldClass.isPrimitive() && !fieldInfo.fieldClass.isPrimitive()) {
            return -1;
        }
        if (fieldInfo.fieldClass.getName().startsWith("java.") && !this.fieldClass.getName().startsWith("java.")) {
            return 1;
        }
        if (!this.fieldClass.getName().startsWith("java.") || fieldInfo.fieldClass.getName().startsWith("java.")) {
            return this.fieldClass.getName().compareTo(fieldInfo.fieldClass.getName());
        }
        return -1;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0026  */
    /* JADX WARN: Removed duplicated region for block: B:11:0x0028  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0045  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0077  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0082  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00a3  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00b4  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00b9  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00be  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x00ef  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0133  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public FieldInfo(String str, Method method, Field field, Class<?> cls, Type type, int i, int i2, int i3, JSONField jSONField, JSONField jSONField2, String str2) {
        String str3;
        String name;
        JSONField annotation;
        boolean zJsonDirect;
        Type genericType;
        boolean zIsFinal;
        Class<?> returnType;
        Type inheritGenericType;
        Type type2 = type;
        boolean z = false;
        this.ordinal = 0;
        if (field != null) {
            name = field.getName();
            str3 = str;
            if (!name.equals(str)) {
            }
            int i4 = i >= 0 ? 0 : i;
            this.name = name;
            this.method = method;
            this.field = field;
            this.ordinal = i4;
            this.serialzeFeatures = i2;
            this.parserFeatures = i3;
            this.fieldAnnotation = jSONField;
            this.methodAnnotation = jSONField2;
            if (field == null) {
                int modifiers = field.getModifiers();
                this.fieldAccess = (modifiers & 1) != 0 || method == null;
                this.fieldTransient = Modifier.isTransient(modifiers) || TypeUtils.isTransient(method);
            } else {
                this.fieldAccess = false;
                this.fieldTransient = false;
            }
            if (str2 == null && str2.length() > 0) {
                this.label = str2;
            } else {
                this.label = "";
            }
            annotation = getAnnotation();
            if (annotation == null) {
                String str4 = annotation.format();
                str = str4.trim().length() != 0 ? str4 : null;
                zJsonDirect = annotation.jsonDirect();
                this.unwrapped = annotation.unwrapped();
                this.alternateNames = annotation.alternateNames();
            } else {
                this.unwrapped = false;
                this.alternateNames = new String[0];
                zJsonDirect = false;
            }
            this.format = str;
            this.name_chars = genFieldNameChars();
            if (method != null) {
                TypeUtils.setAccessible(method);
            }
            if (field != null) {
                TypeUtils.setAccessible(field);
            }
            if (method == null) {
                Class<?>[] parameterTypes = method.getParameterTypes();
                if (parameterTypes.length == 1) {
                    returnType = parameterTypes[0];
                    genericType = method.getGenericParameterTypes()[0];
                } else if (parameterTypes.length == 2 && parameterTypes[0] == String.class && parameterTypes[1] == Object.class) {
                    returnType = parameterTypes[0];
                    genericType = returnType;
                } else {
                    returnType = method.getReturnType();
                    genericType = method.getGenericReturnType();
                    zIsFinal = true;
                    this.declaringClass = method.getDeclaringClass();
                }
                zIsFinal = false;
                this.declaringClass = method.getDeclaringClass();
            } else {
                Class<?> type3 = field.getType();
                genericType = field.getGenericType();
                this.declaringClass = field.getDeclaringClass();
                zIsFinal = Modifier.isFinal(field.getModifiers());
                returnType = type3;
            }
            this.getOnly = zIsFinal;
            if (zJsonDirect && returnType == String.class) {
                z = true;
            }
            this.jsonDirect = z;
            if (cls == null && returnType == Object.class && (genericType instanceof TypeVariable) && (inheritGenericType = getInheritGenericType(cls, type2, (TypeVariable) genericType)) != null) {
                this.fieldClass = TypeUtils.getClass(inheritGenericType);
                this.fieldType = inheritGenericType;
                this.isEnum = returnType.isEnum();
                return;
            }
            if (!(genericType instanceof Class)) {
                Type fieldType = getFieldType(cls, type2 == null ? cls : type2, genericType);
                if (fieldType != genericType && ((fieldType instanceof ParameterizedType) || (fieldType instanceof Class))) {
                    returnType = TypeUtils.getClass(fieldType);
                }
                genericType = fieldType;
            }
            this.fieldType = genericType;
            this.fieldClass = returnType;
            this.isEnum = returnType.isEnum();
        }
        str3 = str;
        name = str3;
        if (i >= 0) {
        }
        this.name = name;
        this.method = method;
        this.field = field;
        this.ordinal = i4;
        this.serialzeFeatures = i2;
        this.parserFeatures = i3;
        this.fieldAnnotation = jSONField;
        this.methodAnnotation = jSONField2;
        if (field == null) {
        }
        if (str2 == null) {
            this.label = "";
        }
        annotation = getAnnotation();
        if (annotation == null) {
        }
        this.format = str;
        this.name_chars = genFieldNameChars();
        if (method != null) {
        }
        if (field != null) {
        }
        if (method == null) {
        }
        this.getOnly = zIsFinal;
        if (zJsonDirect) {
            z = true;
        }
        this.jsonDirect = z;
        if (cls == null) {
        }
        if (!(genericType instanceof Class)) {
        }
        this.fieldType = genericType;
        this.fieldClass = returnType;
        this.isEnum = returnType.isEnum();
    }
}
