package com.google.common.reflect;

import android.support.v4.ac2;
import android.support.v4.af1;
import android.support.v4.af2;
import android.support.v4.b51;
import android.support.v4.ca2;
import android.support.v4.em1;
import com.google.common.base.Cfinal;
import com.google.common.base.Cpublic;
import com.google.common.base.Cthrow;
import com.google.common.base.Function;
import com.google.common.collect.r1;
import com.google.common.collect.v0;
import com.google.common.collect.x0;
import java.io.Serializable;
import java.lang.reflect.AnnotatedElement;
import java.lang.reflect.Array;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.GenericDeclaration;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Proxy;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.security.AccessControlException;
import java.util.Arrays;
import java.util.Collection;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;
import okhttp3.HttpUrl;

/* renamed from: com.google.common.reflect.class, reason: invalid class name */
/* loaded from: classes2.dex */
final class Cclass {

    /* renamed from: do, reason: not valid java name */
    private static final Function<Type, String> f15561do = new Cdo();

    /* renamed from: if, reason: not valid java name */
    private static final Cfinal f15562if = Cfinal.m15071throw(", ").mo15082native("null");

    /* renamed from: com.google.common.reflect.class$break, reason: invalid class name */
    public static final class Cbreak implements WildcardType, Serializable {
        private static final long serialVersionUID = 0;
        private final v0<Type> lowerBounds;
        private final v0<Type> upperBounds;

        public Cbreak(Type[] typeArr, Type[] typeArr2) {
            Cclass.m17837else(typeArr, "lower bound for wildcard");
            Cclass.m17837else(typeArr2, "upper bound for wildcard");
            Ctry ctry = Ctry.CURRENT;
            this.lowerBounds = ctry.usedInGenericType(typeArr);
            this.upperBounds = ctry.usedInGenericType(typeArr2);
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof WildcardType)) {
                return false;
            }
            WildcardType wildcardType = (WildcardType) obj;
            return this.lowerBounds.equals(Arrays.asList(wildcardType.getLowerBounds())) && this.upperBounds.equals(Arrays.asList(wildcardType.getUpperBounds()));
        }

        @Override // java.lang.reflect.WildcardType
        public Type[] getLowerBounds() {
            return Cclass.m17843native(this.lowerBounds);
        }

        @Override // java.lang.reflect.WildcardType
        public Type[] getUpperBounds() {
            return Cclass.m17843native(this.upperBounds);
        }

        public int hashCode() {
            return this.lowerBounds.hashCode() ^ this.upperBounds.hashCode();
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("?");
            ac2<Type> it = this.lowerBounds.iterator();
            while (it.hasNext()) {
                Type next = it.next();
                sb.append(" super ");
                sb.append(Ctry.CURRENT.typeName(next));
            }
            for (Type type : Cclass.m17840goto(this.upperBounds)) {
                sb.append(" extends ");
                sb.append(Ctry.CURRENT.typeName(type));
            }
            return sb.toString();
        }
    }

    /* renamed from: com.google.common.reflect.class$case, reason: invalid class name */
    public static final class Ccase<X> {

        /* renamed from: do, reason: not valid java name */
        public static final boolean f15563do = !Ccase.class.getTypeParameters()[0].equals(Cclass.m17834class(Ccase.class, "X", new Type[0]));
    }

    /* renamed from: com.google.common.reflect.class$do, reason: invalid class name */
    public static class Cdo implements Function<Type, String> {
        @Override // com.google.common.base.Function
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public String apply(Type type) {
            return Ctry.CURRENT.typeName(type);
        }
    }

    /* renamed from: com.google.common.reflect.class$else, reason: invalid class name */
    public static final class Celse implements ParameterizedType, Serializable {
        private static final long serialVersionUID = 0;
        private final v0<Type> argumentsList;

        @b51
        private final Type ownerType;
        private final Class<?> rawType;

        public Celse(@b51 Type type, Class<?> cls, Type[] typeArr) {
            af1.m205continue(cls);
            af1.m220new(typeArr.length == cls.getTypeParameters().length);
            Cclass.m17837else(typeArr, "type parameter");
            this.ownerType = type;
            this.rawType = cls;
            this.argumentsList = Ctry.CURRENT.usedInGenericType(typeArr);
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof ParameterizedType)) {
                return false;
            }
            ParameterizedType parameterizedType = (ParameterizedType) obj;
            return getRawType().equals(parameterizedType.getRawType()) && Cthrow.m15205do(getOwnerType(), parameterizedType.getOwnerType()) && Arrays.equals(getActualTypeArguments(), parameterizedType.getActualTypeArguments());
        }

        @Override // java.lang.reflect.ParameterizedType
        public Type[] getActualTypeArguments() {
            return Cclass.m17843native(this.argumentsList);
        }

        @Override // java.lang.reflect.ParameterizedType
        public Type getOwnerType() {
            return this.ownerType;
        }

        @Override // java.lang.reflect.ParameterizedType
        public Type getRawType() {
            return this.rawType;
        }

        public int hashCode() {
            Type type = this.ownerType;
            return ((type == null ? 0 : type.hashCode()) ^ this.argumentsList.hashCode()) ^ this.rawType.hashCode();
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            if (this.ownerType != null) {
                Ctry ctry = Ctry.CURRENT;
                if (ctry.jdkTypeDuplicatesOwnerName()) {
                    sb.append(ctry.typeName(this.ownerType));
                    sb.append(org.apache.commons.lang3.Ctry.f28883do);
                }
            }
            sb.append(this.rawType.getName());
            sb.append(ca2.f687new);
            sb.append(Cclass.f15562if.m15073catch(r1.h(this.argumentsList, Cclass.f15561do)));
            sb.append(ca2.f702try);
            return sb.toString();
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* renamed from: com.google.common.reflect.class$for, reason: invalid class name */
    public static abstract class Cfor {
        public static final Cfor JVM_BEHAVIOR;
        public static final Cfor LOCAL_CLASS_HAS_NO_OWNER;
        public static final Cfor OWNED_BY_ENCLOSING_CLASS;

        /* renamed from: do, reason: not valid java name */
        private static final /* synthetic */ Cfor[] f15564do;

        /* renamed from: com.google.common.reflect.class$for$do, reason: invalid class name */
        public enum Cdo extends Cfor {
            public Cdo(String str, int i) {
                super(str, i, null);
            }

            @Override // com.google.common.reflect.Cclass.Cfor
            @b51
            public Class<?> getOwnerType(Class<?> cls) {
                return cls.getEnclosingClass();
            }
        }

        /* renamed from: com.google.common.reflect.class$for$for, reason: invalid class name and collision with other inner class name */
        public enum C0139for extends Cfor {
            public C0139for(String str, int i) {
                super(str, i, null);
            }

            @Override // com.google.common.reflect.Cclass.Cfor
            @b51
            public Class<?> getOwnerType(Class<?> cls) {
                if (cls.isLocalClass()) {
                    return null;
                }
                return cls.getEnclosingClass();
            }
        }

        /* renamed from: com.google.common.reflect.class$for$if, reason: invalid class name */
        public class Cif<T> {
        }

        /* renamed from: com.google.common.reflect.class$for$new, reason: invalid class name */
        public static class Cnew extends Cif<String> {
        }

        static {
            Cdo cdo = new Cdo("OWNED_BY_ENCLOSING_CLASS", 0);
            OWNED_BY_ENCLOSING_CLASS = cdo;
            C0139for c0139for = new C0139for("LOCAL_CLASS_HAS_NO_OWNER", 1);
            LOCAL_CLASS_HAS_NO_OWNER = c0139for;
            f15564do = new Cfor[]{cdo, c0139for};
            JVM_BEHAVIOR = m17852do();
        }

        private Cfor(String str, int i) {
        }

        /* renamed from: do, reason: not valid java name */
        private static Cfor m17852do() {
            new Cnew();
            ParameterizedType parameterizedType = (ParameterizedType) Cnew.class.getGenericSuperclass();
            for (Cfor cfor : values()) {
                if (cfor.getOwnerType(Cif.class) == parameterizedType.getOwnerType()) {
                    return cfor;
                }
            }
            throw new AssertionError();
        }

        public static Cfor valueOf(String str) {
            return (Cfor) Enum.valueOf(Cfor.class, str);
        }

        public static Cfor[] values() {
            return (Cfor[]) f15564do.clone();
        }

        @b51
        public abstract Class<?> getOwnerType(Class<?> cls);

        public /* synthetic */ Cfor(String str, int i, Cdo cdo) {
            this(str, i);
        }
    }

    /* renamed from: com.google.common.reflect.class$goto, reason: invalid class name */
    public static final class Cgoto<D extends GenericDeclaration> {

        /* renamed from: do, reason: not valid java name */
        private final D f15565do;

        /* renamed from: for, reason: not valid java name */
        private final v0<Type> f15566for;

        /* renamed from: if, reason: not valid java name */
        private final String f15567if;

        public Cgoto(D d, String str, Type[] typeArr) {
            Cclass.m17837else(typeArr, "bound for type variable");
            this.f15565do = (D) af1.m205continue(d);
            this.f15567if = (String) af1.m205continue(str);
            this.f15566for = v0.copyOf(typeArr);
        }

        /* renamed from: do, reason: not valid java name */
        public Type[] m17853do() {
            return Cclass.m17843native(this.f15566for);
        }

        public boolean equals(Object obj) {
            if (!Ccase.f15563do) {
                if (!(obj instanceof TypeVariable)) {
                    return false;
                }
                TypeVariable typeVariable = (TypeVariable) obj;
                return this.f15567if.equals(typeVariable.getName()) && this.f15565do.equals(typeVariable.getGenericDeclaration());
            }
            if (obj == null || !Proxy.isProxyClass(obj.getClass()) || !(Proxy.getInvocationHandler(obj) instanceof Cthis)) {
                return false;
            }
            Cgoto cgoto = ((Cthis) Proxy.getInvocationHandler(obj)).f15570do;
            return this.f15567if.equals(cgoto.m17854for()) && this.f15565do.equals(cgoto.m17855if()) && this.f15566for.equals(cgoto.f15566for);
        }

        /* renamed from: for, reason: not valid java name */
        public String m17854for() {
            return this.f15567if;
        }

        public int hashCode() {
            return this.f15565do.hashCode() ^ this.f15567if.hashCode();
        }

        /* renamed from: if, reason: not valid java name */
        public D m17855if() {
            return this.f15565do;
        }

        /* renamed from: new, reason: not valid java name */
        public String m17856new() {
            return this.f15567if;
        }

        public String toString() {
            return this.f15567if;
        }
    }

    /* renamed from: com.google.common.reflect.class$if, reason: invalid class name */
    public static class Cif extends Ccatch {

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ AtomicReference f15568if;

        public Cif(AtomicReference atomicReference) {
            this.f15568if = atomicReference;
        }

        @Override // com.google.common.reflect.Ccatch
        /* renamed from: case */
        public void mo17802case(WildcardType wildcardType) {
            this.f15568if.set(Cclass.m17850while(wildcardType.getUpperBounds()));
        }

        @Override // com.google.common.reflect.Ccatch
        /* renamed from: for */
        public void mo17803for(GenericArrayType genericArrayType) {
            this.f15568if.set(genericArrayType.getGenericComponentType());
        }

        @Override // com.google.common.reflect.Ccatch
        /* renamed from: if */
        public void mo17806if(Class<?> cls) {
            this.f15568if.set(cls.getComponentType());
        }

        @Override // com.google.common.reflect.Ccatch
        /* renamed from: try */
        public void mo17805try(TypeVariable<?> typeVariable) {
            this.f15568if.set(Cclass.m17850while(typeVariable.getBounds()));
        }
    }

    /* renamed from: com.google.common.reflect.class$new, reason: invalid class name */
    public static final class Cnew implements GenericArrayType, Serializable {
        private static final long serialVersionUID = 0;
        private final Type componentType;

        public Cnew(Type type) {
            this.componentType = Ctry.CURRENT.usedInGenericType(type);
        }

        public boolean equals(Object obj) {
            if (obj instanceof GenericArrayType) {
                return Cthrow.m15205do(getGenericComponentType(), ((GenericArrayType) obj).getGenericComponentType());
            }
            return false;
        }

        @Override // java.lang.reflect.GenericArrayType
        public Type getGenericComponentType() {
            return this.componentType;
        }

        public int hashCode() {
            return this.componentType.hashCode();
        }

        public String toString() {
            return Cclass.m17845public(this.componentType) + HttpUrl.PATH_SEGMENT_ENCODE_SET_URI;
        }
    }

    /* renamed from: com.google.common.reflect.class$this, reason: invalid class name */
    public static final class Cthis implements InvocationHandler {

        /* renamed from: if, reason: not valid java name */
        private static final x0<String, Method> f15569if;

        /* renamed from: do, reason: not valid java name */
        private final Cgoto<?> f15570do;

        static {
            x0.Cif cifBuilder = x0.builder();
            for (Method method : Cgoto.class.getMethods()) {
                if (method.getDeclaringClass().equals(Cgoto.class)) {
                    try {
                        method.setAccessible(true);
                    } catch (AccessControlException unused) {
                    }
                    cifBuilder.mo15869new(method.getName(), method);
                }
            }
            f15569if = cifBuilder.mo15865do();
        }

        public Cthis(Cgoto<?> cgoto) {
            this.f15570do = cgoto;
        }

        @Override // java.lang.reflect.InvocationHandler
        public Object invoke(Object obj, Method method, Object[] objArr) throws Throwable {
            String name = method.getName();
            Method method2 = f15569if.get(name);
            if (method2 == null) {
                throw new UnsupportedOperationException(name);
            }
            try {
                return method2.invoke(this.f15570do, objArr);
            } catch (InvocationTargetException e) {
                throw e.getCause();
            }
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* renamed from: com.google.common.reflect.class$try, reason: invalid class name */
    public static abstract class Ctry {
        public static final Ctry CURRENT;
        public static final Ctry JAVA6;
        public static final Ctry JAVA7;
        public static final Ctry JAVA8;
        public static final Ctry JAVA9;

        /* renamed from: do, reason: not valid java name */
        private static final /* synthetic */ Ctry[] f15571do;

        /* renamed from: com.google.common.reflect.class$try$case, reason: invalid class name */
        public static class Ccase extends com.google.common.reflect.Celse<int[]> {
        }

        /* renamed from: com.google.common.reflect.class$try$do, reason: invalid class name */
        public enum Cdo extends Ctry {
            public Cdo(String str, int i) {
                super(str, i, null);
            }

            @Override // com.google.common.reflect.Cclass.Ctry
            public Type usedInGenericType(Type type) {
                af1.m205continue(type);
                if (!(type instanceof Class)) {
                    return type;
                }
                Class cls = (Class) type;
                return cls.isArray() ? new Cnew(cls.getComponentType()) : type;
            }

            @Override // com.google.common.reflect.Cclass.Ctry
            public GenericArrayType newArrayType(Type type) {
                return new Cnew(type);
            }
        }

        /* renamed from: com.google.common.reflect.class$try$for, reason: invalid class name */
        public enum Cfor extends Ctry {
            public Cfor(String str, int i) {
                super(str, i, null);
            }

            @Override // com.google.common.reflect.Cclass.Ctry
            public Type newArrayType(Type type) {
                return Ctry.JAVA7.newArrayType(type);
            }

            @Override // com.google.common.reflect.Cclass.Ctry
            public String typeName(Type type) {
                try {
                    return (String) Type.class.getMethod("getTypeName", new Class[0]).invoke(type, new Object[0]);
                } catch (IllegalAccessException e) {
                    throw new RuntimeException(e);
                } catch (NoSuchMethodException unused) {
                    throw new AssertionError("Type.getTypeName should be available in Java 8");
                } catch (InvocationTargetException e2) {
                    throw new RuntimeException(e2);
                }
            }

            @Override // com.google.common.reflect.Cclass.Ctry
            public Type usedInGenericType(Type type) {
                return Ctry.JAVA7.usedInGenericType(type);
            }
        }

        /* renamed from: com.google.common.reflect.class$try$if, reason: invalid class name */
        public enum Cif extends Ctry {
            public Cif(String str, int i) {
                super(str, i, null);
            }

            @Override // com.google.common.reflect.Cclass.Ctry
            public Type newArrayType(Type type) {
                return type instanceof Class ? Cclass.m17847this((Class) type) : new Cnew(type);
            }

            @Override // com.google.common.reflect.Cclass.Ctry
            public Type usedInGenericType(Type type) {
                return (Type) af1.m205continue(type);
            }
        }

        /* renamed from: com.google.common.reflect.class$try$new, reason: invalid class name */
        public enum Cnew extends Ctry {
            public Cnew(String str, int i) {
                super(str, i, null);
            }

            @Override // com.google.common.reflect.Cclass.Ctry
            public boolean jdkTypeDuplicatesOwnerName() {
                return false;
            }

            @Override // com.google.common.reflect.Cclass.Ctry
            public Type newArrayType(Type type) {
                return Ctry.JAVA8.newArrayType(type);
            }

            @Override // com.google.common.reflect.Cclass.Ctry
            public String typeName(Type type) {
                return Ctry.JAVA8.typeName(type);
            }

            @Override // com.google.common.reflect.Cclass.Ctry
            public Type usedInGenericType(Type type) {
                return Ctry.JAVA8.usedInGenericType(type);
            }
        }

        /* renamed from: com.google.common.reflect.class$try$try, reason: invalid class name and collision with other inner class name */
        public static class C0140try extends com.google.common.reflect.Celse<Map.Entry<String, int[][]>> {
        }

        static {
            Cdo cdo = new Cdo("JAVA6", 0);
            JAVA6 = cdo;
            Cif cif = new Cif("JAVA7", 1);
            JAVA7 = cif;
            Cfor cfor = new Cfor("JAVA8", 2);
            JAVA8 = cfor;
            Cnew cnew = new Cnew("JAVA9", 3);
            JAVA9 = cnew;
            f15571do = new Ctry[]{cdo, cif, cfor, cnew};
            if (AnnotatedElement.class.isAssignableFrom(TypeVariable.class)) {
                if (new C0140try().capture().toString().contains("java.util.Map.java.util.Map")) {
                    CURRENT = cfor;
                    return;
                } else {
                    CURRENT = cnew;
                    return;
                }
            }
            if (new Ccase().capture() instanceof Class) {
                CURRENT = cif;
            } else {
                CURRENT = cdo;
            }
        }

        private Ctry(String str, int i) {
        }

        public static Ctry valueOf(String str) {
            return (Ctry) Enum.valueOf(Ctry.class, str);
        }

        public static Ctry[] values() {
            return (Ctry[]) f15571do.clone();
        }

        public boolean jdkTypeDuplicatesOwnerName() {
            return true;
        }

        public abstract Type newArrayType(Type type);

        public String typeName(Type type) {
            return Cclass.m17845public(type);
        }

        public final v0<Type> usedInGenericType(Type[] typeArr) {
            v0.Cdo cdoBuilder = v0.builder();
            for (Type type : typeArr) {
                cdoBuilder.mo15635do(usedInGenericType(type));
            }
            return cdoBuilder.mo15642try();
        }

        public abstract Type usedInGenericType(Type type);

        public /* synthetic */ Ctry(String str, int i, Cdo cdo) {
            this(str, i);
        }
    }

    private Cclass() {
    }

    @b51
    /* renamed from: break, reason: not valid java name */
    public static Type m17831break(Type type) {
        af1.m205continue(type);
        AtomicReference atomicReference = new AtomicReference();
        new Cif(atomicReference).m17830do(type);
        return (Type) atomicReference.get();
    }

    /* renamed from: catch, reason: not valid java name */
    public static Type m17833catch(Type type) {
        if (!(type instanceof WildcardType)) {
            return Ctry.CURRENT.newArrayType(type);
        }
        WildcardType wildcardType = (WildcardType) type;
        Type[] lowerBounds = wildcardType.getLowerBounds();
        af1.m235try(lowerBounds.length <= 1, "Wildcard cannot have more than one lower bounds.");
        if (lowerBounds.length == 1) {
            return m17842import(m17833catch(lowerBounds[0]));
        }
        Type[] upperBounds = wildcardType.getUpperBounds();
        af1.m235try(upperBounds.length == 1, "Wildcard should have only one upper bound.");
        return m17848throw(m17833catch(upperBounds[0]));
    }

    /* renamed from: class, reason: not valid java name */
    public static <D extends GenericDeclaration> TypeVariable<D> m17834class(D d, String str, Type... typeArr) {
        if (typeArr.length == 0) {
            typeArr = new Type[]{Object.class};
        }
        return m17846super(d, str, typeArr);
    }

    /* renamed from: const, reason: not valid java name */
    public static ParameterizedType m17835const(Class<?> cls, Type... typeArr) {
        return new Celse(Cfor.JVM_BEHAVIOR.getOwnerType(cls), cls, typeArr);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: else, reason: not valid java name */
    public static void m17837else(Type[] typeArr, String str) {
        for (Type type : typeArr) {
            if (type instanceof Class) {
                af1.m206default(!r2.isPrimitive(), "Primitive type '%s' used as %s", (Class) type, str);
            }
        }
    }

    /* renamed from: final, reason: not valid java name */
    public static ParameterizedType m17838final(@b51 Type type, Class<?> cls, Type... typeArr) {
        if (type == null) {
            return m17835const(cls, typeArr);
        }
        af1.m205continue(typeArr);
        af1.m225return(cls.getEnclosingClass() != null, "Owner type for unenclosed %s", cls);
        return new Celse(type, cls, typeArr);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: goto, reason: not valid java name */
    public static Iterable<Type> m17840goto(Iterable<Type> iterable) {
        return r1.m16203super(iterable, Cpublic.m15182while(Cpublic.m15164const(Object.class)));
    }

    @af2
    /* renamed from: import, reason: not valid java name */
    public static WildcardType m17842import(Type type) {
        return new Cbreak(new Type[]{type}, new Type[]{Object.class});
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: native, reason: not valid java name */
    public static Type[] m17843native(Collection<Type> collection) {
        return (Type[]) collection.toArray(new Type[0]);
    }

    /* renamed from: public, reason: not valid java name */
    public static String m17845public(Type type) {
        return type instanceof Class ? ((Class) type).getName() : type.toString();
    }

    /* renamed from: super, reason: not valid java name */
    private static <D extends GenericDeclaration> TypeVariable<D> m17846super(D d, String str, Type[] typeArr) {
        return (TypeVariable) em1.m1960new(TypeVariable.class, new Cthis(new Cgoto(d, str, typeArr)));
    }

    /* renamed from: this, reason: not valid java name */
    public static Class<?> m17847this(Class<?> cls) {
        return Array.newInstance(cls, 0).getClass();
    }

    @af2
    /* renamed from: throw, reason: not valid java name */
    public static WildcardType m17848throw(Type type) {
        return new Cbreak(new Type[0], new Type[]{type});
    }

    /* JADX INFO: Access modifiers changed from: private */
    @b51
    /* renamed from: while, reason: not valid java name */
    public static Type m17850while(Type[] typeArr) {
        for (Type type : typeArr) {
            Type typeM17831break = m17831break(type);
            if (typeM17831break != null) {
                if (typeM17831break instanceof Class) {
                    Class cls = (Class) typeM17831break;
                    if (cls.isPrimitive()) {
                        return cls;
                    }
                }
                return m17848throw(typeM17831break);
            }
        }
        return null;
    }
}
