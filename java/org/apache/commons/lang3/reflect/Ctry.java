package org.apache.commons.lang3.reflect;

import android.support.v4.ca2;
import android.support.v4.ee2;
import java.lang.reflect.Array;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.GenericDeclaration;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import org.apache.commons.lang3.Cgoto;
import org.apache.commons.lang3.builder.Builder;

/* renamed from: org.apache.commons.lang3.reflect.try, reason: invalid class name */
/* loaded from: classes3.dex */
public class Ctry {

    /* renamed from: do, reason: not valid java name */
    public static final WildcardType f28738do = m().m32545for(Object.class).build();

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* renamed from: org.apache.commons.lang3.reflect.try$do, reason: invalid class name */
    public static class Cdo<T> implements Typed<T> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Type f28739do;

        public Cdo(Type type) {
            this.f28739do = type;
        }

        @Override // org.apache.commons.lang3.reflect.Typed
        public Type getType() {
            return this.f28739do;
        }
    }

    /* renamed from: org.apache.commons.lang3.reflect.try$for, reason: invalid class name */
    public static final class Cfor implements ParameterizedType {

        /* renamed from: do, reason: not valid java name */
        private final Class<?> f28740do;

        /* renamed from: for, reason: not valid java name */
        private final Type[] f28741for;

        /* renamed from: if, reason: not valid java name */
        private final Type f28742if;

        public /* synthetic */ Cfor(Class cls, Type type, Type[] typeArr, Cdo cdo) {
            this(cls, type, typeArr);
        }

        public boolean equals(Object obj) {
            return obj == this || ((obj instanceof ParameterizedType) && Ctry.m32537this(this, (ParameterizedType) obj));
        }

        @Override // java.lang.reflect.ParameterizedType
        public Type[] getActualTypeArguments() {
            return (Type[]) this.f28741for.clone();
        }

        @Override // java.lang.reflect.ParameterizedType
        public Type getOwnerType() {
            return this.f28742if;
        }

        @Override // java.lang.reflect.ParameterizedType
        public Type getRawType() {
            return this.f28740do;
        }

        public int hashCode() {
            return ((((this.f28740do.hashCode() | 1136) << 4) | Cgoto.m32389native(this.f28742if)) << 8) | Arrays.hashCode(this.f28741for);
        }

        public String toString() {
            return Ctry.g(this);
        }

        private Cfor(Class<?> cls, Type type, Type[] typeArr) {
            this.f28740do = cls;
            this.f28742if = type;
            this.f28741for = typeArr;
        }
    }

    /* renamed from: org.apache.commons.lang3.reflect.try$if, reason: invalid class name */
    public static final class Cif implements GenericArrayType {

        /* renamed from: do, reason: not valid java name */
        private final Type f28743do;

        public /* synthetic */ Cif(Type type, Cdo cdo) {
            this(type);
        }

        public boolean equals(Object obj) {
            return obj == this || ((obj instanceof GenericArrayType) && Ctry.m32519goto(this, (GenericArrayType) obj));
        }

        @Override // java.lang.reflect.GenericArrayType
        public Type getGenericComponentType() {
            return this.f28743do;
        }

        public int hashCode() {
            return this.f28743do.hashCode() | 1072;
        }

        public String toString() {
            return Ctry.g(this);
        }

        private Cif(Type type) {
            this.f28743do = type;
        }
    }

    /* renamed from: org.apache.commons.lang3.reflect.try$new, reason: invalid class name */
    public static class Cnew implements Builder<WildcardType> {

        /* renamed from: do, reason: not valid java name */
        private Type[] f28744do;

        /* renamed from: if, reason: not valid java name */
        private Type[] f28745if;

        public /* synthetic */ Cnew(Cdo cdo) {
            this();
        }

        @Override // org.apache.commons.lang3.builder.Builder
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public WildcardType build() {
            return new C0390try(this.f28744do, this.f28745if, null);
        }

        /* renamed from: for, reason: not valid java name */
        public Cnew m32545for(Type... typeArr) {
            this.f28744do = typeArr;
            return this;
        }

        /* renamed from: if, reason: not valid java name */
        public Cnew m32546if(Type... typeArr) {
            this.f28745if = typeArr;
            return this;
        }

        private Cnew() {
        }
    }

    /* renamed from: org.apache.commons.lang3.reflect.try$try, reason: invalid class name and collision with other inner class name */
    public static final class C0390try implements WildcardType {

        /* renamed from: for, reason: not valid java name */
        private static final Type[] f28746for = new Type[0];

        /* renamed from: do, reason: not valid java name */
        private final Type[] f28747do;

        /* renamed from: if, reason: not valid java name */
        private final Type[] f28748if;

        public /* synthetic */ C0390try(Type[] typeArr, Type[] typeArr2, Cdo cdo) {
            this(typeArr, typeArr2);
        }

        public boolean equals(Object obj) {
            return obj == this || ((obj instanceof WildcardType) && Ctry.m32508catch(this, (WildcardType) obj));
        }

        @Override // java.lang.reflect.WildcardType
        public Type[] getLowerBounds() {
            return (Type[]) this.f28748if.clone();
        }

        @Override // java.lang.reflect.WildcardType
        public Type[] getUpperBounds() {
            return (Type[]) this.f28747do.clone();
        }

        public int hashCode() {
            return ((Arrays.hashCode(this.f28747do) | 18688) << 8) | Arrays.hashCode(this.f28748if);
        }

        public String toString() {
            return Ctry.g(this);
        }

        private C0390try(Type[] typeArr, Type[] typeArr2) {
            Type[] typeArr3 = f28746for;
            this.f28747do = (Type[]) Cgoto.m32400throw(typeArr, typeArr3);
            this.f28748if = (Type[]) Cgoto.m32400throw(typeArr2, typeArr3);
        }
    }

    public static final ParameterizedType a(Class<?> cls, Type... typeArr) {
        return c(null, cls, typeArr);
    }

    /* renamed from: abstract, reason: not valid java name */
    private static boolean m32505abstract(Type type, GenericArrayType genericArrayType, Map<TypeVariable<?>, Type> map) {
        if (type == null) {
            return true;
        }
        if (genericArrayType == null) {
            return false;
        }
        if (genericArrayType.equals(type)) {
            return true;
        }
        Type genericComponentType = genericArrayType.getGenericComponentType();
        if (type instanceof Class) {
            Class cls = (Class) type;
            return cls.isArray() && m32542volatile(cls.getComponentType(), genericComponentType, map);
        }
        if (type instanceof GenericArrayType) {
            return m32542volatile(((GenericArrayType) type).getGenericComponentType(), genericComponentType, map);
        }
        if (type instanceof WildcardType) {
            for (Type type2 : m32530public((WildcardType) type)) {
                if (m32533strictfp(type2, genericArrayType)) {
                    return true;
                }
            }
            return false;
        }
        if (!(type instanceof TypeVariable)) {
            if (type instanceof ParameterizedType) {
                return false;
            }
            throw new IllegalStateException("found an unhandled type: " + type);
        }
        for (Type type3 : m32522import((TypeVariable) type)) {
            if (m32533strictfp(type3, genericArrayType)) {
                return true;
            }
        }
        return false;
    }

    public static final ParameterizedType b(Type type, Class<?> cls, Map<TypeVariable<?>, Type> map) {
        ee2.m1832instanceof(cls, "raw class is null", new Object[0]);
        ee2.m1832instanceof(map, "typeArgMappings is null", new Object[0]);
        return c(type, cls, m32510const(map, cls.getTypeParameters()));
    }

    /* renamed from: break, reason: not valid java name */
    public static boolean m32506break(Type type, Type type2) {
        if (Cgoto.m32404while(type, type2)) {
            return true;
        }
        if (type instanceof ParameterizedType) {
            return m32537this((ParameterizedType) type, type2);
        }
        if (type instanceof GenericArrayType) {
            return m32519goto((GenericArrayType) type, type2);
        }
        if (type instanceof WildcardType) {
            return m32508catch((WildcardType) type, type2);
        }
        return false;
    }

    public static final ParameterizedType c(Type type, Class<?> cls, Type... typeArr) {
        ee2.m1832instanceof(cls, "raw class is null", new Object[0]);
        Cdo cdo = null;
        if (cls.getEnclosingClass() == null) {
            ee2.m1839public(type == null, "no owner allowed for top-level %s", cls);
            type = null;
        } else if (type == null) {
            type = cls.getEnclosingClass();
        } else {
            ee2.m1839public(m32528private(type, cls.getEnclosingClass()), "%s is invalid owner type for parameterized %s", type, cls);
        }
        ee2.m1824extends(typeArr, "null type argument at index %s", new Object[0]);
        ee2.m1839public(cls.getTypeParameters().length == typeArr.length, "invalid number of type parameters specified: expected %s, got %s", Integer.valueOf(cls.getTypeParameters().length), Integer.valueOf(typeArr.length));
        return new Cfor(cls, type, typeArr, cdo);
    }

    /* renamed from: case, reason: not valid java name */
    public static boolean m32507case(Type type) {
        if (type instanceof TypeVariable) {
            return true;
        }
        if (type instanceof Class) {
            return ((Class) type).getTypeParameters().length > 0;
        }
        if (!(type instanceof ParameterizedType)) {
            if (!(type instanceof WildcardType)) {
                return false;
            }
            WildcardType wildcardType = (WildcardType) type;
            return m32507case(m32525native(wildcardType)[0]) || m32507case(m32530public(wildcardType)[0]);
        }
        for (Type type2 : ((ParameterizedType) type).getActualTypeArguments()) {
            if (m32507case(type2)) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: catch, reason: not valid java name */
    public static boolean m32508catch(WildcardType wildcardType, Type type) {
        if (!(type instanceof WildcardType)) {
            return true;
        }
        WildcardType wildcardType2 = (WildcardType) type;
        return m32509class(wildcardType.getLowerBounds(), wildcardType2.getLowerBounds()) && m32509class(m32530public(wildcardType), m32530public(wildcardType2));
    }

    /* renamed from: class, reason: not valid java name */
    private static boolean m32509class(Type[] typeArr, Type[] typeArr2) {
        if (typeArr.length != typeArr2.length) {
            return false;
        }
        for (int i = 0; i < typeArr.length; i++) {
            if (!m32506break(typeArr[i], typeArr2[i])) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: const, reason: not valid java name */
    private static Type[] m32510const(Map<TypeVariable<?>, Type> map, TypeVariable<?>[] typeVariableArr) {
        Type[] typeArr = new Type[typeVariableArr.length];
        int length = typeVariableArr.length;
        int i = 0;
        int i2 = 0;
        while (i < length) {
            TypeVariable<?> typeVariable = typeVariableArr[i];
            ee2.m1839public(map.containsKey(typeVariable), "missing argument mapping for %s", g(typeVariable));
            typeArr[i2] = map.get(typeVariable);
            i++;
            i2++;
        }
        return typeArr;
    }

    /* renamed from: continue, reason: not valid java name */
    private static boolean m32511continue(Type type, ParameterizedType parameterizedType, Map<TypeVariable<?>, Type> map) {
        if (type == null) {
            return true;
        }
        if (parameterizedType == null) {
            return false;
        }
        if (parameterizedType.equals(type)) {
            return true;
        }
        Class<?> clsM32531return = m32531return(parameterizedType);
        Map<TypeVariable<?>, Type> mapM32517finally = m32517finally(type, clsM32531return, null);
        if (mapM32517finally == null) {
            return false;
        }
        if (mapM32517finally.isEmpty()) {
            return true;
        }
        Map<TypeVariable<?>, Type> mapM32512default = m32512default(parameterizedType, clsM32531return, map);
        for (TypeVariable<?> typeVariable : mapM32512default.keySet()) {
            Type typeK = k(typeVariable, mapM32512default);
            Type typeK2 = k(typeVariable, mapM32517finally);
            if (typeK2 != null && !typeK.equals(typeK2) && (!(typeK instanceof WildcardType) || !m32542volatile(typeK2, typeK, map))) {
                return false;
            }
        }
        return true;
    }

    private static String d(ParameterizedType parameterizedType) {
        StringBuilder sb = new StringBuilder();
        Type ownerType = parameterizedType.getOwnerType();
        Class cls = (Class) parameterizedType.getRawType();
        Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
        if (ownerType == null) {
            sb.append(cls.getName());
        } else {
            if (ownerType instanceof Class) {
                sb.append(((Class) ownerType).getName());
            } else {
                sb.append(ownerType.toString());
            }
            sb.append(org.apache.commons.lang3.Ctry.f28883do);
            sb.append(cls.getSimpleName());
        }
        sb.append(ca2.f687new);
        m32526new(sb, ", ", actualTypeArguments).append(ca2.f702try);
        return sb.toString();
    }

    /* renamed from: default, reason: not valid java name */
    private static Map<TypeVariable<?>, Type> m32512default(ParameterizedType parameterizedType, Class<?> cls, Map<TypeVariable<?>, Type> map) {
        Map<TypeVariable<?>, Type> map2;
        Class<?> clsM32531return = m32531return(parameterizedType);
        if (!m32528private(clsM32531return, cls)) {
            return null;
        }
        Type ownerType = parameterizedType.getOwnerType();
        if (ownerType instanceof ParameterizedType) {
            ParameterizedType parameterizedType2 = (ParameterizedType) ownerType;
            map2 = m32512default(parameterizedType2, m32531return(parameterizedType2), map);
        } else {
            map2 = map == null ? new HashMap<>() : new HashMap(map);
        }
        Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
        TypeVariable<Class<?>>[] typeParameters = clsM32531return.getTypeParameters();
        for (int i = 0; i < typeParameters.length; i++) {
            Type type = actualTypeArguments[i];
            TypeVariable<Class<?>> typeVariable = typeParameters[i];
            if (map2.containsKey(type)) {
                type = map2.get(type);
            }
            map2.put(typeVariable, type);
        }
        return cls.equals(clsM32531return) ? map2 : m32517finally(m32543while(clsM32531return, cls), cls, map2);
    }

    private static Type e(Type type, Map<TypeVariable<?>, Type> map) {
        if (!(type instanceof TypeVariable) || map == null) {
            return type;
        }
        Type type2 = map.get(type);
        if (type2 != null) {
            return type2;
        }
        throw new IllegalArgumentException("missing assignment type for type variable " + type);
    }

    /* renamed from: else, reason: not valid java name */
    public static Map<TypeVariable<?>, Type> m32514else(Class<?> cls, ParameterizedType parameterizedType) {
        ee2.m1832instanceof(cls, "cls is null", new Object[0]);
        ee2.m1832instanceof(parameterizedType, "superType is null", new Object[0]);
        Class<?> clsM32531return = m32531return(parameterizedType);
        if (!m32528private(cls, clsM32531return)) {
            return null;
        }
        if (cls.equals(clsM32531return)) {
            return m32512default(parameterizedType, clsM32531return, null);
        }
        Type typeM32543while = m32543while(cls, clsM32531return);
        if (typeM32543while instanceof Class) {
            return m32514else((Class) typeM32543while, parameterizedType);
        }
        ParameterizedType parameterizedType2 = (ParameterizedType) typeM32543while;
        Map<TypeVariable<?>, Type> mapM32514else = m32514else(m32531return(parameterizedType2), parameterizedType);
        m32521implements(cls, parameterizedType2, mapM32514else);
        return mapM32514else;
    }

    /* renamed from: extends, reason: not valid java name */
    public static Map<TypeVariable<?>, Type> m32515extends(Type type, Class<?> cls) {
        return m32517finally(type, cls, null);
    }

    public static String f(TypeVariable<?> typeVariable) {
        ee2.m1832instanceof(typeVariable, "var is null", new Object[0]);
        StringBuilder sb = new StringBuilder();
        GenericDeclaration genericDeclaration = typeVariable.getGenericDeclaration();
        if (genericDeclaration instanceof Class) {
            Class<?> enclosingClass = (Class) genericDeclaration;
            while (enclosingClass.getEnclosingClass() != null) {
                sb.insert(0, enclosingClass.getSimpleName()).insert(0, org.apache.commons.lang3.Ctry.f28883do);
                enclosingClass = enclosingClass.getEnclosingClass();
            }
            sb.insert(0, enclosingClass.getName());
        } else if (genericDeclaration instanceof Type) {
            sb.append(g((Type) genericDeclaration));
        } else {
            sb.append(genericDeclaration);
        }
        sb.append(':');
        sb.append(h(typeVariable));
        return sb.toString();
    }

    /* renamed from: final, reason: not valid java name */
    public static GenericArrayType m32516final(Type type) {
        return new Cif((Type) ee2.m1832instanceof(type, "componentType is null", new Object[0]), null);
    }

    /* renamed from: finally, reason: not valid java name */
    private static Map<TypeVariable<?>, Type> m32517finally(Type type, Class<?> cls, Map<TypeVariable<?>, Type> map) {
        if (type instanceof Class) {
            return m32535switch((Class) type, cls, map);
        }
        if (type instanceof ParameterizedType) {
            return m32512default((ParameterizedType) type, cls, map);
        }
        if (type instanceof GenericArrayType) {
            Type genericComponentType = ((GenericArrayType) type).getGenericComponentType();
            if (cls.isArray()) {
                cls = cls.getComponentType();
            }
            return m32517finally(genericComponentType, cls, map);
        }
        int i = 0;
        if (type instanceof WildcardType) {
            Type[] typeArrM32530public = m32530public((WildcardType) type);
            int length = typeArrM32530public.length;
            while (i < length) {
                Type type2 = typeArrM32530public[i];
                if (m32528private(type2, cls)) {
                    return m32517finally(type2, cls, map);
                }
                i++;
            }
            return null;
        }
        if (!(type instanceof TypeVariable)) {
            throw new IllegalStateException("found an unhandled type: " + type);
        }
        Type[] typeArrM32522import = m32522import((TypeVariable) type);
        int length2 = typeArrM32522import.length;
        while (i < length2) {
            Type type3 = typeArrM32522import[i];
            if (m32528private(type3, cls)) {
                return m32517finally(type3, cls, map);
            }
            i++;
        }
        return null;
    }

    public static String g(Type type) {
        ee2.m1830implements(type);
        if (type instanceof Class) {
            return m32541try((Class) type);
        }
        if (type instanceof ParameterizedType) {
            return d((ParameterizedType) type);
        }
        if (type instanceof WildcardType) {
            return n((WildcardType) type);
        }
        if (type instanceof TypeVariable) {
            return h((TypeVariable) type);
        }
        if (type instanceof GenericArrayType) {
            return m32534super((GenericArrayType) type);
        }
        throw new IllegalArgumentException(Cgoto.m32394return(type));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: goto, reason: not valid java name */
    public static boolean m32519goto(GenericArrayType genericArrayType, Type type) {
        return (type instanceof GenericArrayType) && m32506break(genericArrayType.getGenericComponentType(), ((GenericArrayType) type).getGenericComponentType());
    }

    private static String h(TypeVariable<?> typeVariable) {
        StringBuilder sb = new StringBuilder(typeVariable.getName());
        Type[] bounds = typeVariable.getBounds();
        if (bounds.length > 0 && (bounds.length != 1 || !Object.class.equals(bounds[0]))) {
            sb.append(" extends ");
            m32526new(sb, " & ", typeVariable.getBounds());
        }
        return sb.toString();
    }

    public static boolean i(Map<TypeVariable<?>, Type> map) {
        ee2.m1832instanceof(map, "typeVarAssigns is null", new Object[0]);
        for (Map.Entry<TypeVariable<?>, Type> entry : map.entrySet()) {
            TypeVariable<?> key = entry.getKey();
            Type value = entry.getValue();
            for (Type type : m32522import(key)) {
                if (!m32542volatile(value, e(type, map), map)) {
                    return false;
                }
            }
        }
        return true;
    }

    /* renamed from: implements, reason: not valid java name */
    private static <T> void m32521implements(Class<T> cls, ParameterizedType parameterizedType, Map<TypeVariable<?>, Type> map) {
        Type ownerType = parameterizedType.getOwnerType();
        if (ownerType instanceof ParameterizedType) {
            m32521implements(cls, (ParameterizedType) ownerType, map);
        }
        Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
        TypeVariable<Class<?>>[] typeParameters = m32531return(parameterizedType).getTypeParameters();
        List listAsList = Arrays.asList(cls.getTypeParameters());
        for (int i = 0; i < actualTypeArguments.length; i++) {
            TypeVariable<Class<?>> typeVariable = typeParameters[i];
            Type type = actualTypeArguments[i];
            if (listAsList.contains(type) && map.containsKey(typeVariable)) {
                map.put((TypeVariable) type, map.get(typeVariable));
            }
        }
    }

    /* renamed from: import, reason: not valid java name */
    public static Type[] m32522import(TypeVariable<?> typeVariable) {
        ee2.m1832instanceof(typeVariable, "typeVariable is null", new Object[0]);
        Type[] bounds = typeVariable.getBounds();
        return bounds.length == 0 ? new Type[]{Object.class} : m32523instanceof(bounds);
    }

    /* renamed from: instanceof, reason: not valid java name */
    public static Type[] m32523instanceof(Type[] typeArr) {
        boolean z;
        ee2.m1832instanceof(typeArr, "null value specified for bounds array", new Object[0]);
        if (typeArr.length < 2) {
            return typeArr;
        }
        HashSet hashSet = new HashSet(typeArr.length);
        for (Type type : typeArr) {
            int length = typeArr.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    z = false;
                    break;
                }
                Type type2 = typeArr[i];
                if (type != type2 && m32542volatile(type2, type, null)) {
                    z = true;
                    break;
                }
                i++;
            }
            if (!z) {
                hashSet.add(type);
            }
        }
        return (Type[]) hashSet.toArray(new Type[hashSet.size()]);
    }

    /* renamed from: interface, reason: not valid java name */
    private static boolean m32524interface(Type type, TypeVariable<?> typeVariable, Map<TypeVariable<?>, Type> map) {
        if (type == null) {
            return true;
        }
        if (typeVariable == null) {
            return false;
        }
        if (typeVariable.equals(type)) {
            return true;
        }
        if (type instanceof TypeVariable) {
            for (Type type2 : m32522import((TypeVariable) type)) {
                if (m32524interface(type2, typeVariable, map)) {
                    return true;
                }
            }
        }
        if ((type instanceof Class) || (type instanceof ParameterizedType) || (type instanceof GenericArrayType) || (type instanceof WildcardType)) {
            return false;
        }
        throw new IllegalStateException("found an unhandled type: " + type);
    }

    private static Type[] j(Map<TypeVariable<?>, Type> map, Type[] typeArr) {
        int i = 0;
        while (i < typeArr.length) {
            Type typeL = l(map, typeArr[i]);
            if (typeL == null) {
                typeArr = (Type[]) org.apache.commons.lang3.Cif.c1(typeArr, i);
                i--;
            } else {
                typeArr[i] = typeL;
            }
            i++;
        }
        return typeArr;
    }

    private static Type k(TypeVariable<?> typeVariable, Map<TypeVariable<?>, Type> map) {
        Type type;
        while (true) {
            type = map.get(typeVariable);
            if (!(type instanceof TypeVariable) || type.equals(typeVariable)) {
                break;
            }
            typeVariable = (TypeVariable) type;
        }
        return type;
    }

    public static Type l(Map<TypeVariable<?>, Type> map, Type type) {
        if (map == null) {
            map = Collections.emptyMap();
        }
        if (m32507case(type)) {
            if (type instanceof TypeVariable) {
                return l(map, map.get(type));
            }
            if (type instanceof ParameterizedType) {
                ParameterizedType parameterizedType = (ParameterizedType) type;
                if (parameterizedType.getOwnerType() != null) {
                    HashMap map2 = new HashMap(map);
                    map2.putAll(m32539throws(parameterizedType));
                    map = map2;
                }
                Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
                for (int i = 0; i < actualTypeArguments.length; i++) {
                    Type typeL = l(map, actualTypeArguments[i]);
                    if (typeL != null) {
                        actualTypeArguments[i] = typeL;
                    }
                }
                return c(parameterizedType.getOwnerType(), (Class) parameterizedType.getRawType(), actualTypeArguments);
            }
            if (type instanceof WildcardType) {
                WildcardType wildcardType = (WildcardType) type;
                return m().m32545for(j(map, wildcardType.getUpperBounds())).m32546if(j(map, wildcardType.getLowerBounds())).build();
            }
        }
        return type;
    }

    public static Cnew m() {
        return new Cnew(null);
    }

    private static String n(WildcardType wildcardType) {
        StringBuilder sb = new StringBuilder();
        sb.append('?');
        Type[] lowerBounds = wildcardType.getLowerBounds();
        Type[] upperBounds = wildcardType.getUpperBounds();
        if (lowerBounds.length > 0) {
            sb.append(" super ");
            m32526new(sb, " & ", lowerBounds);
        } else if (upperBounds.length != 1 || !Object.class.equals(upperBounds[0])) {
            sb.append(" extends ");
            m32526new(sb, " & ", upperBounds);
        }
        return sb.toString();
    }

    /* renamed from: native, reason: not valid java name */
    public static Type[] m32525native(WildcardType wildcardType) {
        ee2.m1832instanceof(wildcardType, "wildcardType is null", new Object[0]);
        Type[] lowerBounds = wildcardType.getLowerBounds();
        return lowerBounds.length == 0 ? new Type[]{null} : lowerBounds;
    }

    /* renamed from: new, reason: not valid java name */
    private static StringBuilder m32526new(StringBuilder sb, String str, Type... typeArr) {
        ee2.m1838protected(ee2.m1821default(typeArr));
        if (typeArr.length > 0) {
            sb.append(g(typeArr[0]));
            for (int i = 1; i < typeArr.length; i++) {
                sb.append(str);
                sb.append(g(typeArr[i]));
            }
        }
        return sb;
    }

    public static <T> Typed<T> o(Class<T> cls) {
        return p(cls);
    }

    public static <T> Typed<T> p(Type type) {
        return new Cdo(type);
    }

    /* renamed from: package, reason: not valid java name */
    public static boolean m32527package(Type type) {
        return (type instanceof GenericArrayType) || ((type instanceof Class) && ((Class) type).isArray());
    }

    /* renamed from: private, reason: not valid java name */
    private static boolean m32528private(Type type, Class<?> cls) {
        if (type == null) {
            return cls == null || !cls.isPrimitive();
        }
        if (cls == null) {
            return false;
        }
        if (cls.equals(type)) {
            return true;
        }
        if (type instanceof Class) {
            return org.apache.commons.lang3.Ctry.m32724package((Class) type, cls);
        }
        if (type instanceof ParameterizedType) {
            return m32528private(m32531return((ParameterizedType) type), cls);
        }
        if (type instanceof TypeVariable) {
            for (Type type2 : ((TypeVariable) type).getBounds()) {
                if (m32528private(type2, cls)) {
                    return true;
                }
            }
            return false;
        }
        if (type instanceof GenericArrayType) {
            if (cls.equals(Object.class)) {
                return true;
            }
            return cls.isArray() && m32528private(((GenericArrayType) type).getGenericComponentType(), cls.getComponentType());
        }
        if (type instanceof WildcardType) {
            return false;
        }
        throw new IllegalStateException("found an unhandled type: " + type);
    }

    /* renamed from: protected, reason: not valid java name */
    private static boolean m32529protected(Type type, WildcardType wildcardType, Map<TypeVariable<?>, Type> map) {
        if (type == null) {
            return true;
        }
        if (wildcardType == null) {
            return false;
        }
        if (wildcardType.equals(type)) {
            return true;
        }
        Type[] typeArrM32530public = m32530public(wildcardType);
        Type[] typeArrM32525native = m32525native(wildcardType);
        if (!(type instanceof WildcardType)) {
            for (Type type2 : typeArrM32530public) {
                if (!m32542volatile(type, e(type2, map), map)) {
                    return false;
                }
            }
            for (Type type3 : typeArrM32525native) {
                if (!m32542volatile(e(type3, map), type, map)) {
                    return false;
                }
            }
            return true;
        }
        WildcardType wildcardType2 = (WildcardType) type;
        Type[] typeArrM32530public2 = m32530public(wildcardType2);
        Type[] typeArrM32525native2 = m32525native(wildcardType2);
        for (Type type4 : typeArrM32530public) {
            Type typeE = e(type4, map);
            for (Type type5 : typeArrM32530public2) {
                if (!m32542volatile(type5, typeE, map)) {
                    return false;
                }
            }
        }
        for (Type type6 : typeArrM32525native) {
            Type typeE2 = e(type6, map);
            for (Type type7 : typeArrM32525native2) {
                if (!m32542volatile(typeE2, type7, map)) {
                    return false;
                }
            }
        }
        return true;
    }

    /* renamed from: public, reason: not valid java name */
    public static Type[] m32530public(WildcardType wildcardType) {
        ee2.m1832instanceof(wildcardType, "wildcardType is null", new Object[0]);
        Type[] upperBounds = wildcardType.getUpperBounds();
        return upperBounds.length == 0 ? new Type[]{Object.class} : m32523instanceof(upperBounds);
    }

    /* renamed from: return, reason: not valid java name */
    private static Class<?> m32531return(ParameterizedType parameterizedType) {
        Type rawType = parameterizedType.getRawType();
        if (rawType instanceof Class) {
            return (Class) rawType;
        }
        throw new IllegalStateException("Wait... What!? Type of rawType: " + rawType);
    }

    /* renamed from: static, reason: not valid java name */
    public static Class<?> m32532static(Type type, Type type2) {
        Map<TypeVariable<?>, Type> mapM32515extends;
        Type type3;
        if (type instanceof Class) {
            return (Class) type;
        }
        if (type instanceof ParameterizedType) {
            return m32531return((ParameterizedType) type);
        }
        if (type instanceof TypeVariable) {
            if (type2 == null) {
                return null;
            }
            GenericDeclaration genericDeclaration = ((TypeVariable) type).getGenericDeclaration();
            if (!(genericDeclaration instanceof Class) || (mapM32515extends = m32515extends(type2, (Class) genericDeclaration)) == null || (type3 = mapM32515extends.get(type)) == null) {
                return null;
            }
            return m32532static(type3, type2);
        }
        if (type instanceof GenericArrayType) {
            return Array.newInstance(m32532static(((GenericArrayType) type).getGenericComponentType(), type2), 0).getClass();
        }
        if (type instanceof WildcardType) {
            return null;
        }
        throw new IllegalArgumentException("unknown type: " + type);
    }

    /* renamed from: strictfp, reason: not valid java name */
    public static boolean m32533strictfp(Type type, Type type2) {
        return m32542volatile(type, type2, null);
    }

    /* renamed from: super, reason: not valid java name */
    private static String m32534super(GenericArrayType genericArrayType) {
        return String.format("%s[]", g(genericArrayType.getGenericComponentType()));
    }

    /* renamed from: switch, reason: not valid java name */
    private static Map<TypeVariable<?>, Type> m32535switch(Class<?> cls, Class<?> cls2, Map<TypeVariable<?>, Type> map) {
        if (!m32528private(cls, cls2)) {
            return null;
        }
        if (cls.isPrimitive()) {
            if (cls2.isPrimitive()) {
                return new HashMap();
            }
            cls = org.apache.commons.lang3.Ctry.m32726protected(cls);
        }
        HashMap map2 = map == null ? new HashMap() : new HashMap(map);
        return cls2.equals(cls) ? map2 : m32517finally(m32543while(cls, cls2), cls2, map2);
    }

    /* renamed from: synchronized, reason: not valid java name */
    public static final ParameterizedType m32536synchronized(Class<?> cls, Map<TypeVariable<?>, Type> map) {
        ee2.m1832instanceof(cls, "raw class is null", new Object[0]);
        ee2.m1832instanceof(map, "typeArgMappings is null", new Object[0]);
        return c(null, cls, m32510const(map, cls.getTypeParameters()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: this, reason: not valid java name */
    public static boolean m32537this(ParameterizedType parameterizedType, Type type) {
        if (!(type instanceof ParameterizedType)) {
            return false;
        }
        ParameterizedType parameterizedType2 = (ParameterizedType) type;
        if (m32506break(parameterizedType.getRawType(), parameterizedType2.getRawType()) && m32506break(parameterizedType.getOwnerType(), parameterizedType2.getOwnerType())) {
            return m32509class(parameterizedType.getActualTypeArguments(), parameterizedType2.getActualTypeArguments());
        }
        return false;
    }

    /* renamed from: throw, reason: not valid java name */
    public static Type m32538throw(Type type) {
        if (!(type instanceof Class)) {
            if (type instanceof GenericArrayType) {
                return ((GenericArrayType) type).getGenericComponentType();
            }
            return null;
        }
        Class cls = (Class) type;
        if (cls.isArray()) {
            return cls.getComponentType();
        }
        return null;
    }

    /* renamed from: throws, reason: not valid java name */
    public static Map<TypeVariable<?>, Type> m32539throws(ParameterizedType parameterizedType) {
        return m32512default(parameterizedType, m32531return(parameterizedType), null);
    }

    /* renamed from: transient, reason: not valid java name */
    public static boolean m32540transient(Object obj, Type type) {
        if (type == null) {
            return false;
        }
        return obj == null ? ((type instanceof Class) && ((Class) type).isPrimitive()) ? false : true : m32542volatile(obj.getClass(), type, null);
    }

    /* renamed from: try, reason: not valid java name */
    private static String m32541try(Class<?> cls) {
        StringBuilder sb = new StringBuilder();
        if (cls.getEnclosingClass() != null) {
            sb.append(m32541try(cls.getEnclosingClass()));
            sb.append(org.apache.commons.lang3.Ctry.f28883do);
            sb.append(cls.getSimpleName());
        } else {
            sb.append(cls.getName());
        }
        if (cls.getTypeParameters().length > 0) {
            sb.append(ca2.f687new);
            m32526new(sb, ", ", cls.getTypeParameters());
            sb.append(ca2.f702try);
        }
        return sb.toString();
    }

    /* renamed from: volatile, reason: not valid java name */
    private static boolean m32542volatile(Type type, Type type2, Map<TypeVariable<?>, Type> map) {
        if (type2 == null || (type2 instanceof Class)) {
            return m32528private(type, (Class) type2);
        }
        if (type2 instanceof ParameterizedType) {
            return m32511continue(type, (ParameterizedType) type2, map);
        }
        if (type2 instanceof GenericArrayType) {
            return m32505abstract(type, (GenericArrayType) type2, map);
        }
        if (type2 instanceof WildcardType) {
            return m32529protected(type, (WildcardType) type2, map);
        }
        if (type2 instanceof TypeVariable) {
            return m32524interface(type, (TypeVariable) type2, map);
        }
        throw new IllegalStateException("found an unhandled type: " + type2);
    }

    /* renamed from: while, reason: not valid java name */
    private static Type m32543while(Class<?> cls, Class<?> cls2) {
        Class<?> clsM32531return;
        if (cls2.isInterface()) {
            Type type = null;
            for (Type type2 : cls.getGenericInterfaces()) {
                if (type2 instanceof ParameterizedType) {
                    clsM32531return = m32531return((ParameterizedType) type2);
                } else {
                    if (!(type2 instanceof Class)) {
                        throw new IllegalStateException("Unexpected generic interface type found: " + type2);
                    }
                    clsM32531return = (Class) type2;
                }
                if (m32528private(clsM32531return, cls2) && m32533strictfp(type, clsM32531return)) {
                    type = type2;
                }
            }
            if (type != null) {
                return type;
            }
        }
        return cls.getGenericSuperclass();
    }
}
