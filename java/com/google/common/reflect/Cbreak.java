package com.google.common.reflect;

import android.support.v4.ac2;
import android.support.v4.af1;
import android.support.v4.af2;
import android.support.v4.b51;
import android.support.v4.ce0;
import android.support.v4.hf1;
import android.support.v4.l01;
import android.support.v4.lf;
import android.support.v4.o8;
import com.google.common.base.Cfinal;
import com.google.common.base.Predicate;
import com.google.common.collect.Maps;
import com.google.common.collect.g1;
import com.google.common.collect.k2;
import com.google.common.collect.t;
import com.google.common.collect.v0;
import com.google.common.collect.x0;
import com.google.common.reflect.Cclass;
import com.google.common.reflect.Cthis;
import com.google.common.reflect.Ctry;
import java.io.Serializable;
import java.lang.reflect.Constructor;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

@o8
/* renamed from: com.google.common.reflect.break, reason: invalid class name */
/* loaded from: classes2.dex */
public abstract class Cbreak<T> extends com.google.common.reflect.Celse<T> implements Serializable {
    private static final long serialVersionUID = 3637540370352322684L;

    /* renamed from: do, reason: not valid java name */
    @l01
    private transient com.google.common.reflect.Cthis f15536do;

    /* renamed from: if, reason: not valid java name */
    @l01
    private transient com.google.common.reflect.Cthis f15537if;
    private final Type runtimeType;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* renamed from: com.google.common.reflect.break$break, reason: invalid class name and collision with other inner class name */
    public static abstract class EnumC0137break implements Predicate<Cbreak<?>> {
        public static final EnumC0137break IGNORE_TYPE_VARIABLE_OR_WILDCARD;
        public static final EnumC0137break INTERFACE_ONLY;

        /* renamed from: do, reason: not valid java name */
        private static final /* synthetic */ EnumC0137break[] f15538do;

        /* renamed from: com.google.common.reflect.break$break$do, reason: invalid class name */
        public enum Cdo extends EnumC0137break {
            public Cdo(String str, int i) {
                super(str, i, null);
            }

            @Override // com.google.common.base.Predicate
            public boolean apply(Cbreak<?> cbreak) {
                return ((((Cbreak) cbreak).runtimeType instanceof TypeVariable) || (((Cbreak) cbreak).runtimeType instanceof WildcardType)) ? false : true;
            }
        }

        /* renamed from: com.google.common.reflect.break$break$if, reason: invalid class name */
        public enum Cif extends EnumC0137break {
            public Cif(String str, int i) {
                super(str, i, null);
            }

            @Override // com.google.common.base.Predicate
            public boolean apply(Cbreak<?> cbreak) {
                return cbreak.getRawType().isInterface();
            }
        }

        static {
            Cdo cdo = new Cdo("IGNORE_TYPE_VARIABLE_OR_WILDCARD", 0);
            IGNORE_TYPE_VARIABLE_OR_WILDCARD = cdo;
            Cif cif = new Cif("INTERFACE_ONLY", 1);
            INTERFACE_ONLY = cif;
            f15538do = new EnumC0137break[]{cdo, cif};
        }

        private EnumC0137break(String str, int i) {
        }

        public static EnumC0137break valueOf(String str) {
            return (EnumC0137break) Enum.valueOf(EnumC0137break.class, str);
        }

        public static EnumC0137break[] values() {
            return (EnumC0137break[]) f15538do.clone();
        }

        public /* synthetic */ EnumC0137break(String str, int i, Cdo cdo) {
            this(str, i);
        }
    }

    /* renamed from: com.google.common.reflect.break$case, reason: invalid class name */
    public final class Ccase extends Cbreak<T>.Ccatch {
        private static final long serialVersionUID = 0;

        /* renamed from: if, reason: not valid java name */
        @l01
        private transient g1<Cbreak<? super T>> f15539if;

        private Ccase() {
            super();
        }

        private Object readResolve() {
            return Cbreak.this.getTypes().classes();
        }

        @Override // com.google.common.reflect.Cbreak.Ccatch
        public Cbreak<T>.Ccatch classes() {
            return this;
        }

        @Override // com.google.common.reflect.Cbreak.Ccatch
        public Cbreak<T>.Ccatch interfaces() {
            throw new UnsupportedOperationException("classes().interfaces() not supported.");
        }

        @Override // com.google.common.reflect.Cbreak.Ccatch
        public Set<Class<? super T>> rawTypes() {
            return g1.copyOf((Collection) Cthis.f15550if.m17810do().mo17812for(Cbreak.this.m17780final()));
        }

        public /* synthetic */ Ccase(Cbreak cbreak, Cdo cdo) {
            this();
        }

        @Override // com.google.common.reflect.Cbreak.Ccatch, android.support.v4.ce0, android.support.v4.qd0, android.support.v4.ae0
        public Set<Cbreak<? super T>> delegate() {
            g1<Cbreak<? super T>> g1Var = this.f15539if;
            if (g1Var != null) {
                return g1Var;
            }
            g1<Cbreak<? super T>> g1VarM16337strictfp = t.m16313import(Cthis.f15549do.m17810do().m17813new(Cbreak.this)).m16322const(EnumC0137break.IGNORE_TYPE_VARIABLE_OR_WILDCARD).m16337strictfp();
            this.f15539if = g1VarM16337strictfp;
            return g1VarM16337strictfp;
        }
    }

    /* renamed from: com.google.common.reflect.break$do, reason: invalid class name */
    public class Cdo extends Ctry.Cif<T> {
        public Cdo(Method method) {
            super(method);
        }

        @Override // com.google.common.reflect.Ctry, com.google.common.reflect.Cfor
        /* renamed from: do, reason: not valid java name */
        public Cbreak<T> mo17797do() {
            return Cbreak.this;
        }

        @Override // com.google.common.reflect.Ctry.Cif, com.google.common.reflect.Ctry
        /* renamed from: import, reason: not valid java name */
        public Type mo17798import() {
            return Cbreak.this.m17773catch().m17923break(super.mo17798import());
        }

        @Override // com.google.common.reflect.Ctry.Cif, com.google.common.reflect.Ctry
        /* renamed from: throw, reason: not valid java name */
        public Type[] mo17799throw() {
            return Cbreak.this.m17773catch().m17924class(super.mo17799throw());
        }

        @Override // com.google.common.reflect.Ctry, com.google.common.reflect.Cfor
        public String toString() {
            return mo17797do() + "." + super.toString();
        }

        @Override // com.google.common.reflect.Ctry.Cif, com.google.common.reflect.Ctry
        /* renamed from: while, reason: not valid java name */
        public Type[] mo17800while() {
            return Cbreak.this.m17774class().m17924class(super.mo17800while());
        }
    }

    /* renamed from: com.google.common.reflect.break$for, reason: invalid class name */
    public class Cfor extends com.google.common.reflect.Ccatch {
        public Cfor() {
        }

        @Override // com.google.common.reflect.Ccatch
        /* renamed from: case, reason: not valid java name */
        public void mo17802case(WildcardType wildcardType) {
            m17830do(wildcardType.getLowerBounds());
            m17830do(wildcardType.getUpperBounds());
        }

        @Override // com.google.common.reflect.Ccatch
        /* renamed from: for, reason: not valid java name */
        public void mo17803for(GenericArrayType genericArrayType) {
            m17830do(genericArrayType.getGenericComponentType());
        }

        @Override // com.google.common.reflect.Ccatch
        /* renamed from: new, reason: not valid java name */
        public void mo17804new(ParameterizedType parameterizedType) {
            m17830do(parameterizedType.getActualTypeArguments());
            m17830do(parameterizedType.getOwnerType());
        }

        @Override // com.google.common.reflect.Ccatch
        /* renamed from: try, reason: not valid java name */
        public void mo17805try(TypeVariable<?> typeVariable) {
            throw new IllegalArgumentException(Cbreak.this.runtimeType + "contains a type variable and is not safe for the operation");
        }
    }

    /* renamed from: com.google.common.reflect.break$goto, reason: invalid class name */
    public static final class Cgoto<T> extends Cbreak<T> {
        private static final long serialVersionUID = 0;

        public Cgoto(Type type) {
            super(type, null);
        }
    }

    /* renamed from: com.google.common.reflect.break$if, reason: invalid class name */
    public class Cif extends Ctry.Cdo<T> {
        public Cif(Constructor constructor) {
            super(constructor);
        }

        @Override // com.google.common.reflect.Ctry, com.google.common.reflect.Cfor
        /* renamed from: do */
        public Cbreak<T> mo17797do() {
            return Cbreak.this;
        }

        @Override // com.google.common.reflect.Ctry.Cdo, com.google.common.reflect.Ctry
        /* renamed from: import */
        public Type mo17798import() {
            return Cbreak.this.m17773catch().m17923break(super.mo17798import());
        }

        @Override // com.google.common.reflect.Ctry.Cdo, com.google.common.reflect.Ctry
        /* renamed from: throw */
        public Type[] mo17799throw() {
            return Cbreak.this.m17773catch().m17924class(super.mo17799throw());
        }

        @Override // com.google.common.reflect.Ctry, com.google.common.reflect.Cfor
        public String toString() {
            return mo17797do() + "(" + Cfinal.m15071throw(", ").m15077final(mo17800while()) + ")";
        }

        @Override // com.google.common.reflect.Ctry.Cdo, com.google.common.reflect.Ctry
        /* renamed from: while */
        public Type[] mo17800while() {
            return Cbreak.this.m17774class().m17924class(super.mo17800while());
        }
    }

    /* renamed from: com.google.common.reflect.break$new, reason: invalid class name */
    public class Cnew extends com.google.common.reflect.Ccatch {

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ g1.Cdo f15548if;

        public Cnew(g1.Cdo cdo) {
            this.f15548if = cdo;
        }

        @Override // com.google.common.reflect.Ccatch
        /* renamed from: case */
        public void mo17802case(WildcardType wildcardType) {
            m17830do(wildcardType.getUpperBounds());
        }

        @Override // com.google.common.reflect.Ccatch
        /* renamed from: for */
        public void mo17803for(GenericArrayType genericArrayType) {
            this.f15548if.mo15812else(Cclass.m17847this(Cbreak.of(genericArrayType.getGenericComponentType()).getRawType()));
        }

        @Override // com.google.common.reflect.Ccatch
        /* renamed from: if, reason: not valid java name */
        public void mo17806if(Class<?> cls) {
            this.f15548if.mo15812else(cls);
        }

        @Override // com.google.common.reflect.Ccatch
        /* renamed from: new */
        public void mo17804new(ParameterizedType parameterizedType) {
            this.f15548if.mo15812else((Class) parameterizedType.getRawType());
        }

        @Override // com.google.common.reflect.Ccatch
        /* renamed from: try */
        public void mo17805try(TypeVariable<?> typeVariable) {
            m17830do(typeVariable.getBounds());
        }
    }

    /* renamed from: com.google.common.reflect.break$this, reason: invalid class name */
    public static abstract class Cthis<K> {

        /* renamed from: do, reason: not valid java name */
        public static final Cthis<Cbreak<?>> f15549do = new Cdo();

        /* renamed from: if, reason: not valid java name */
        public static final Cthis<Class<?>> f15550if = new Cif();

        /* renamed from: com.google.common.reflect.break$this$do, reason: invalid class name */
        public static class Cdo extends Cthis<Cbreak<?>> {
            public Cdo() {
                super(null);
            }

            @Override // com.google.common.reflect.Cbreak.Cthis
            /* renamed from: break, reason: not valid java name and merged with bridge method [inline-methods] */
            public Class<?> mo17809case(Cbreak<?> cbreak) {
                return cbreak.getRawType();
            }

            @Override // com.google.common.reflect.Cbreak.Cthis
            @b51
            /* renamed from: catch, reason: not valid java name and merged with bridge method [inline-methods] */
            public Cbreak<?> mo17811else(Cbreak<?> cbreak) {
                return cbreak.getGenericSuperclass();
            }

            @Override // com.google.common.reflect.Cbreak.Cthis
            /* renamed from: this, reason: not valid java name and merged with bridge method [inline-methods] */
            public Iterable<? extends Cbreak<?>> mo17814try(Cbreak<?> cbreak) {
                return cbreak.getGenericInterfaces();
            }
        }

        /* renamed from: com.google.common.reflect.break$this$for, reason: invalid class name */
        public class Cfor extends Ctry<K> {
            public Cfor(Cthis cthis) {
                super(cthis);
            }

            @Override // com.google.common.reflect.Cbreak.Cthis
            /* renamed from: for */
            public v0<K> mo17812for(Iterable<? extends K> iterable) {
                v0.Cdo cdoBuilder = v0.builder();
                for (K k : iterable) {
                    if (!mo17809case(k).isInterface()) {
                        cdoBuilder.mo15635do(k);
                    }
                }
                return super.mo17812for(cdoBuilder.mo15642try());
            }

            @Override // com.google.common.reflect.Cbreak.Cthis.Ctry, com.google.common.reflect.Cbreak.Cthis
            /* renamed from: try */
            public Iterable<? extends K> mo17814try(K k) {
                return g1.of();
            }
        }

        /* renamed from: com.google.common.reflect.break$this$if, reason: invalid class name */
        public static class Cif extends Cthis<Class<?>> {
            public Cif() {
                super(null);
            }

            @Override // com.google.common.reflect.Cbreak.Cthis
            /* renamed from: break, reason: not valid java name and merged with bridge method [inline-methods] */
            public Class<?> mo17809case(Class<?> cls) {
                return cls;
            }

            @Override // com.google.common.reflect.Cbreak.Cthis
            @b51
            /* renamed from: catch, reason: not valid java name and merged with bridge method [inline-methods] */
            public Class<?> mo17811else(Class<?> cls) {
                return cls.getSuperclass();
            }

            @Override // com.google.common.reflect.Cbreak.Cthis
            /* renamed from: this, reason: not valid java name and merged with bridge method [inline-methods] */
            public Iterable<? extends Class<?>> mo17814try(Class<?> cls) {
                return Arrays.asList(cls.getInterfaces());
            }
        }

        /* renamed from: com.google.common.reflect.break$this$new, reason: invalid class name */
        public static class Cnew extends k2<K> {

            /* renamed from: do, reason: not valid java name */
            public final /* synthetic */ Comparator f15552do;

            /* renamed from: if, reason: not valid java name */
            public final /* synthetic */ Map f15553if;

            public Cnew(Comparator comparator, Map map) {
                this.f15552do = comparator;
                this.f15553if = map;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.common.collect.k2, java.util.Comparator
            public int compare(K k, K k2) {
                return this.f15552do.compare(this.f15553if.get(k), this.f15553if.get(k2));
            }
        }

        /* renamed from: com.google.common.reflect.break$this$try, reason: invalid class name */
        public static class Ctry<K> extends Cthis<K> {

            /* renamed from: for, reason: not valid java name */
            private final Cthis<K> f15554for;

            public Ctry(Cthis<K> cthis) {
                super(null);
                this.f15554for = cthis;
            }

            @Override // com.google.common.reflect.Cbreak.Cthis
            /* renamed from: case */
            public Class<?> mo17809case(K k) {
                return this.f15554for.mo17809case(k);
            }

            @Override // com.google.common.reflect.Cbreak.Cthis
            /* renamed from: else */
            public K mo17811else(K k) {
                return this.f15554for.mo17811else(k);
            }

            @Override // com.google.common.reflect.Cbreak.Cthis
            /* renamed from: try */
            public Iterable<? extends K> mo17814try(K k) {
                return this.f15554for.mo17814try(k);
            }
        }

        private Cthis() {
        }

        /* renamed from: goto, reason: not valid java name */
        private static <K, V> v0<K> m17807goto(Map<K, V> map, Comparator<? super V> comparator) {
            return (v0<K>) new Cnew(comparator, map).immutableSortedCopy(map.keySet());
        }

        /* JADX WARN: Multi-variable type inference failed */
        @lf
        /* renamed from: if, reason: not valid java name */
        private int m17808if(K k, Map<? super K, Integer> map) {
            Integer num = map.get(k);
            if (num != null) {
                return num.intValue();
            }
            boolean zIsInterface = mo17809case(k).isInterface();
            Iterator<? extends K> it = mo17814try(k).iterator();
            int iMax = zIsInterface;
            while (it.hasNext()) {
                iMax = Math.max(iMax, m17808if(it.next(), map));
            }
            K kMo17811else = mo17811else(k);
            int iMax2 = iMax;
            if (kMo17811else != null) {
                iMax2 = Math.max(iMax, m17808if(kMo17811else, map));
            }
            int i = iMax2 + 1;
            map.put(k, Integer.valueOf(i));
            return i;
        }

        /* renamed from: case, reason: not valid java name */
        public abstract Class<?> mo17809case(K k);

        /* renamed from: do, reason: not valid java name */
        public final Cthis<K> m17810do() {
            return new Cfor(this);
        }

        @b51
        /* renamed from: else, reason: not valid java name */
        public abstract K mo17811else(K k);

        /* renamed from: for, reason: not valid java name */
        public v0<K> mo17812for(Iterable<? extends K> iterable) {
            HashMap mapL = Maps.l();
            Iterator<? extends K> it = iterable.iterator();
            while (it.hasNext()) {
                m17808if(it.next(), mapL);
            }
            return m17807goto(mapL, k2.natural().reverse());
        }

        /* renamed from: new, reason: not valid java name */
        public final v0<K> m17813new(K k) {
            return mo17812for(v0.of(k));
        }

        /* renamed from: try, reason: not valid java name */
        public abstract Iterable<? extends K> mo17814try(K k);

        public /* synthetic */ Cthis(Cdo cdo) {
            this();
        }
    }

    /* renamed from: com.google.common.reflect.break$try, reason: invalid class name */
    public static class Ctry {

        /* renamed from: do, reason: not valid java name */
        private final Type[] f15555do;

        /* renamed from: if, reason: not valid java name */
        private final boolean f15556if;

        public Ctry(Type[] typeArr, boolean z) {
            this.f15555do = typeArr;
            this.f15556if = z;
        }

        /* renamed from: do, reason: not valid java name */
        public boolean m17821do(Type type) {
            for (Type type2 : this.f15555do) {
                boolean zIsSubtypeOf = Cbreak.of(type2).isSubtypeOf(type);
                boolean z = this.f15556if;
                if (zIsSubtypeOf == z) {
                    return z;
                }
            }
            return !this.f15556if;
        }

        /* renamed from: if, reason: not valid java name */
        public boolean m17822if(Type type) {
            Cbreak<?> cbreakOf = Cbreak.of(type);
            for (Type type2 : this.f15555do) {
                boolean zIsSubtypeOf = cbreakOf.isSubtypeOf(type2);
                boolean z = this.f15556if;
                if (zIsSubtypeOf == z) {
                    return z;
                }
            }
            return !this.f15556if;
        }
    }

    public /* synthetic */ Cbreak(Type type, Cdo cdo) {
        this(type);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: break, reason: not valid java name */
    private Cbreak<? super T> m17771break(Class<? super T> cls) {
        return (Cbreak<? super T>) of(m17791switch(((Cbreak) af1.m(getComponentType(), "%s isn't a super type of %s", cls, this)).getSupertype(cls.getComponentType()).runtimeType));
    }

    /* renamed from: case, reason: not valid java name */
    private static ParameterizedType m17772case(ParameterizedType parameterizedType) {
        Class cls = (Class) parameterizedType.getRawType();
        TypeVariable<Class<T>>[] typeParameters = cls.getTypeParameters();
        Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
        for (int i = 0; i < actualTypeArguments.length; i++) {
            actualTypeArguments[i] = m17786new(typeParameters[i], actualTypeArguments[i]);
        }
        return Cclass.m17838final(parameterizedType.getOwnerType(), cls, actualTypeArguments);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: catch, reason: not valid java name */
    public com.google.common.reflect.Cthis m17773catch() {
        com.google.common.reflect.Cthis cthis = this.f15537if;
        if (cthis != null) {
            return cthis;
        }
        com.google.common.reflect.Cthis cthisM17920new = com.google.common.reflect.Cthis.m17920new(this.runtimeType);
        this.f15537if = cthisM17920new;
        return cthisM17920new;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: class, reason: not valid java name */
    public com.google.common.reflect.Cthis m17774class() {
        com.google.common.reflect.Cthis cthis = this.f15536do;
        if (cthis != null) {
            return cthis;
        }
        com.google.common.reflect.Cthis cthisM17912case = com.google.common.reflect.Cthis.m17912case(this.runtimeType);
        this.f15536do = cthisM17912case;
        return cthisM17912case;
    }

    @b51
    /* renamed from: const, reason: not valid java name */
    private Type m17775const() {
        Type type = this.runtimeType;
        if (type instanceof ParameterizedType) {
            return ((ParameterizedType) type).getOwnerType();
        }
        if (type instanceof Class) {
            return ((Class) type).getEnclosingClass();
        }
        return null;
    }

    /* renamed from: default, reason: not valid java name */
    private Type m17776default(Class<?> cls) {
        if ((this.runtimeType instanceof Class) && (cls.getTypeParameters().length == 0 || getRawType().getTypeParameters().length != 0)) {
            return cls;
        }
        Cbreak genericType = toGenericType(cls);
        return new com.google.common.reflect.Cthis().m17925final(genericType.getSupertype(getRawType()).runtimeType, this.runtimeType).m17923break(genericType.runtimeType);
    }

    /* renamed from: do, reason: not valid java name */
    private static Ctry m17777do(Type[] typeArr) {
        return new Ctry(typeArr, true);
    }

    /* renamed from: else, reason: not valid java name */
    private static Type m17778else(Type type) {
        return type instanceof ParameterizedType ? m17772case((ParameterizedType) type) : type instanceof GenericArrayType ? Cclass.m17833catch(m17778else(((GenericArrayType) type).getGenericComponentType())) : type;
    }

    /* renamed from: extends, reason: not valid java name */
    private boolean m17779extends(Class<?> cls) {
        ac2<Class<? super T>> it = m17780final().iterator();
        while (it.hasNext()) {
            if (cls.isAssignableFrom(it.next())) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: final, reason: not valid java name */
    public g1<Class<? super T>> m17780final() {
        g1.Cdo cdoBuilder = g1.builder();
        new Cnew(cdoBuilder).m17830do(this.runtimeType);
        return cdoBuilder.mo15642try();
    }

    /* renamed from: for, reason: not valid java name */
    private v0<Cbreak<? super T>> m17781for(Type[] typeArr) {
        v0.Cdo cdoBuilder = v0.builder();
        for (Type type : typeArr) {
            Cbreak<?> cbreakOf = of(type);
            if (cbreakOf.getRawType().isInterface()) {
                cdoBuilder.mo15635do(cbreakOf);
            }
        }
        return cdoBuilder.mo15642try();
    }

    /* renamed from: goto, reason: not valid java name */
    private static Ctry m17782goto(Type[] typeArr) {
        return new Ctry(typeArr, false);
    }

    @b51
    /* renamed from: if, reason: not valid java name */
    private Cbreak<? super T> m17783if(Type type) {
        Cbreak<? super T> cbreak = (Cbreak<? super T>) of(type);
        if (cbreak.getRawType().isInterface()) {
            return null;
        }
        return cbreak;
    }

    /* renamed from: import, reason: not valid java name */
    private boolean m17784import(Type type) {
        Iterator<Cbreak<? super T>> it = getTypes().iterator();
        while (it.hasNext()) {
            Type typeM17775const = it.next().m17775const();
            if (typeM17775const != null && of(typeM17775const).isSubtypeOf(type)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: native, reason: not valid java name */
    private boolean m17785native(GenericArrayType genericArrayType) {
        Type type = this.runtimeType;
        if (!(type instanceof Class)) {
            if (type instanceof GenericArrayType) {
                return of(((GenericArrayType) type).getGenericComponentType()).isSubtypeOf(genericArrayType.getGenericComponentType());
            }
            return false;
        }
        Class cls = (Class) type;
        if (cls.isArray()) {
            return of((Class) cls.getComponentType()).isSubtypeOf(genericArrayType.getGenericComponentType());
        }
        return false;
    }

    /* renamed from: new, reason: not valid java name */
    private static Type m17786new(TypeVariable<?> typeVariable, Type type) {
        return type instanceof WildcardType ? m17795try(typeVariable, (WildcardType) type) : m17778else(type);
    }

    public static <T> Cbreak<T> of(Class<T> cls) {
        return new Cgoto(cls);
    }

    /* renamed from: public, reason: not valid java name */
    private boolean m17787public(ParameterizedType parameterizedType) {
        Class<? super Object> rawType = of(parameterizedType).getRawType();
        if (!m17779extends(rawType)) {
            return false;
        }
        TypeVariable<Class<? super Object>>[] typeParameters = rawType.getTypeParameters();
        Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
        for (int i = 0; i < typeParameters.length; i++) {
            if (!of(m17773catch().m17923break(typeParameters[i])).m17796while(actualTypeArguments[i], typeParameters[i])) {
                return false;
            }
        }
        return Modifier.isStatic(((Class) parameterizedType.getRawType()).getModifiers()) || parameterizedType.getOwnerType() == null || m17784import(parameterizedType.getOwnerType());
    }

    /* renamed from: return, reason: not valid java name */
    private boolean m17788return(GenericArrayType genericArrayType) {
        Type type = this.runtimeType;
        if (type instanceof Class) {
            Class cls = (Class) type;
            return !cls.isArray() ? cls.isAssignableFrom(Object[].class) : of(genericArrayType.getGenericComponentType()).isSubtypeOf(cls.getComponentType());
        }
        if (type instanceof GenericArrayType) {
            return of(genericArrayType.getGenericComponentType()).isSubtypeOf(((GenericArrayType) this.runtimeType).getGenericComponentType());
        }
        return false;
    }

    /* renamed from: static, reason: not valid java name */
    private boolean m17789static() {
        return hf1.m3012for().contains(this.runtimeType);
    }

    /* renamed from: super, reason: not valid java name */
    private Cbreak<? extends T> m17790super(Class<?> cls, Type[] typeArr) {
        if (typeArr.length > 0) {
            return (Cbreak<? extends T>) of(typeArr[0]).getSubtype(cls);
        }
        throw new IllegalArgumentException(cls + " isn't a subclass of " + this);
    }

    /* renamed from: switch, reason: not valid java name */
    private static Type m17791switch(Type type) {
        return Cclass.Ctry.JAVA7.newArrayType(type);
    }

    /* renamed from: this, reason: not valid java name */
    private Cbreak<? extends T> m17792this(Class<?> cls) {
        return (Cbreak<? extends T>) of(m17791switch(getComponentType().getSubtype(cls.getComponentType()).runtimeType));
    }

    /* renamed from: throw, reason: not valid java name */
    private Cbreak<? super T> m17793throw(Class<? super T> cls, Type[] typeArr) {
        for (Type type : typeArr) {
            Cbreak<?> cbreakOf = of(type);
            if (cbreakOf.isSubtypeOf(cls)) {
                return (Cbreak<? super T>) cbreakOf.getSupertype(cls);
            }
        }
        throw new IllegalArgumentException(cls + " isn't a super type of " + this);
    }

    /* renamed from: throws, reason: not valid java name */
    private Cbreak<?> m17794throws(Type type) {
        Cbreak<?> cbreakOf = of(m17773catch().m17923break(type));
        cbreakOf.f15537if = this.f15537if;
        cbreakOf.f15536do = this.f15536do;
        return cbreakOf;
    }

    @af2
    public static <T> Cbreak<? extends T> toGenericType(Class<T> cls) {
        if (cls.isArray()) {
            return (Cbreak<? extends T>) of(Cclass.m17833catch(toGenericType(cls.getComponentType()).runtimeType));
        }
        TypeVariable<Class<T>>[] typeParameters = cls.getTypeParameters();
        Type type = (!cls.isMemberClass() || Modifier.isStatic(cls.getModifiers())) ? null : toGenericType(cls.getEnclosingClass()).runtimeType;
        return (typeParameters.length > 0 || !(type == null || type == cls.getEnclosingClass())) ? (Cbreak<? extends T>) of(Cclass.m17838final(type, cls, typeParameters)) : of((Class) cls);
    }

    /* renamed from: try, reason: not valid java name */
    private static WildcardType m17795try(TypeVariable<?> typeVariable, WildcardType wildcardType) {
        Type[] bounds = typeVariable.getBounds();
        ArrayList arrayList = new ArrayList();
        for (Type type : wildcardType.getUpperBounds()) {
            if (!m17777do(bounds).m17821do(type)) {
                arrayList.add(m17778else(type));
            }
        }
        return new Cclass.Cbreak(wildcardType.getLowerBounds(), (Type[]) arrayList.toArray(new Type[0]));
    }

    /* renamed from: while, reason: not valid java name */
    private boolean m17796while(Type type, TypeVariable<?> typeVariable) {
        if (this.runtimeType.equals(type)) {
            return true;
        }
        if (!(type instanceof WildcardType)) {
            return m17778else(this.runtimeType).equals(m17778else(type));
        }
        WildcardType wildcardTypeM17795try = m17795try(typeVariable, (WildcardType) type);
        return m17782goto(wildcardTypeM17795try.getUpperBounds()).m17822if(this.runtimeType) && m17782goto(wildcardTypeM17795try.getLowerBounds()).m17821do(this.runtimeType);
    }

    public final com.google.common.reflect.Ctry<T, T> constructor(Constructor<?> constructor) {
        af1.m206default(constructor.getDeclaringClass() == getRawType(), "%s not declared by %s", constructor, getRawType());
        return new Cif(constructor);
    }

    public boolean equals(@b51 Object obj) {
        if (obj instanceof Cbreak) {
            return this.runtimeType.equals(((Cbreak) obj).runtimeType);
        }
        return false;
    }

    @b51
    public final Cbreak<?> getComponentType() {
        Type typeM17831break = Cclass.m17831break(this.runtimeType);
        if (typeM17831break == null) {
            return null;
        }
        return of(typeM17831break);
    }

    public final v0<Cbreak<? super T>> getGenericInterfaces() {
        Type type = this.runtimeType;
        if (type instanceof TypeVariable) {
            return m17781for(((TypeVariable) type).getBounds());
        }
        if (type instanceof WildcardType) {
            return m17781for(((WildcardType) type).getUpperBounds());
        }
        v0.Cdo cdoBuilder = v0.builder();
        for (Type type2 : getRawType().getGenericInterfaces()) {
            cdoBuilder.mo15635do(m17794throws(type2));
        }
        return cdoBuilder.mo15642try();
    }

    @b51
    public final Cbreak<? super T> getGenericSuperclass() {
        Type type = this.runtimeType;
        if (type instanceof TypeVariable) {
            return m17783if(((TypeVariable) type).getBounds()[0]);
        }
        if (type instanceof WildcardType) {
            return m17783if(((WildcardType) type).getUpperBounds()[0]);
        }
        Type genericSuperclass = getRawType().getGenericSuperclass();
        if (genericSuperclass == null) {
            return null;
        }
        return (Cbreak<? super T>) m17794throws(genericSuperclass);
    }

    public final Class<? super T> getRawType() {
        return m17780final().iterator().next();
    }

    public final Cbreak<? extends T> getSubtype(Class<?> cls) {
        af1.m225return(!(this.runtimeType instanceof TypeVariable), "Cannot get subtype of type variable <%s>", this);
        Type type = this.runtimeType;
        if (type instanceof WildcardType) {
            return m17790super(cls, ((WildcardType) type).getLowerBounds());
        }
        if (isArray()) {
            return m17792this(cls);
        }
        af1.m206default(getRawType().isAssignableFrom(cls), "%s isn't a subclass of %s", cls, this);
        Cbreak<? extends T> cbreak = (Cbreak<? extends T>) of(m17776default(cls));
        af1.m206default(cbreak.isSubtypeOf((Cbreak<?>) this), "%s does not appear to be a subtype of %s", cbreak, this);
        return cbreak;
    }

    public final Cbreak<? super T> getSupertype(Class<? super T> cls) {
        af1.m206default(m17779extends(cls), "%s is not a super class of %s", cls, this);
        Type type = this.runtimeType;
        return type instanceof TypeVariable ? m17793throw(cls, ((TypeVariable) type).getBounds()) : type instanceof WildcardType ? m17793throw(cls, ((WildcardType) type).getUpperBounds()) : cls.isArray() ? m17771break(cls) : (Cbreak<? super T>) m17794throws(toGenericType(cls).runtimeType);
    }

    public final Type getType() {
        return this.runtimeType;
    }

    public final Cbreak<T>.Ccatch getTypes() {
        return new Ccatch();
    }

    public int hashCode() {
        return this.runtimeType.hashCode();
    }

    public final boolean isArray() {
        return getComponentType() != null;
    }

    public final boolean isPrimitive() {
        Type type = this.runtimeType;
        return (type instanceof Class) && ((Class) type).isPrimitive();
    }

    public final boolean isSubtypeOf(Cbreak<?> cbreak) {
        return isSubtypeOf(cbreak.getType());
    }

    public final boolean isSupertypeOf(Cbreak<?> cbreak) {
        return cbreak.isSubtypeOf(getType());
    }

    public final com.google.common.reflect.Ctry<T, Object> method(Method method) {
        af1.m206default(m17779extends(method.getDeclaringClass()), "%s not declared by %s", method, this);
        return new Cdo(method);
    }

    @lf
    public final Cbreak<T> rejectTypeVariables() {
        new Cfor().m17830do(this.runtimeType);
        return this;
    }

    public final Cbreak<?> resolveType(Type type) {
        af1.m205continue(type);
        return of(m17774class().m17923break(type));
    }

    public String toString() {
        return Cclass.m17845public(this.runtimeType);
    }

    public final Cbreak<T> unwrap() {
        return m17789static() ? of(hf1.m3015try((Class) this.runtimeType)) : this;
    }

    public final <X> Cbreak<T> where(com.google.common.reflect.Cgoto<X> cgoto, Cbreak<X> cbreak) {
        return new Cgoto(new com.google.common.reflect.Cthis().m17926super(x0.of(new Cthis.Cnew(cgoto.f15575do), cbreak.runtimeType)).m17923break(this.runtimeType));
    }

    public final Cbreak<T> wrap() {
        return isPrimitive() ? of(hf1.m3010case((Class) this.runtimeType)) : this;
    }

    public Object writeReplace() {
        return of(new com.google.common.reflect.Cthis().m17923break(this.runtimeType));
    }

    /* renamed from: com.google.common.reflect.break$catch, reason: invalid class name */
    public class Ccatch extends ce0<Cbreak<? super T>> implements Serializable {
        private static final long serialVersionUID = 0;

        /* renamed from: do, reason: not valid java name */
        @l01
        private transient g1<Cbreak<? super T>> f15540do;

        public Ccatch() {
        }

        public Cbreak<T>.Ccatch classes() {
            return new Ccase(Cbreak.this, null);
        }

        public Cbreak<T>.Ccatch interfaces() {
            return new Celse(this);
        }

        public Set<Class<? super T>> rawTypes() {
            return g1.copyOf((Collection) Cthis.f15550if.mo17812for(Cbreak.this.m17780final()));
        }

        @Override // android.support.v4.ce0, android.support.v4.qd0, android.support.v4.ae0
        public Set<Cbreak<? super T>> delegate() {
            g1<Cbreak<? super T>> g1Var = this.f15540do;
            if (g1Var != null) {
                return g1Var;
            }
            g1<Cbreak<? super T>> g1VarM16337strictfp = t.m16313import(Cthis.f15549do.m17813new(Cbreak.this)).m16322const(EnumC0137break.IGNORE_TYPE_VARIABLE_OR_WILDCARD).m16337strictfp();
            this.f15540do = g1VarM16337strictfp;
            return g1VarM16337strictfp;
        }
    }

    /* renamed from: com.google.common.reflect.break$else, reason: invalid class name */
    public final class Celse extends Cbreak<T>.Ccatch {
        private static final long serialVersionUID = 0;

        /* renamed from: for, reason: not valid java name */
        @l01
        private transient g1<Cbreak<? super T>> f15542for;

        /* renamed from: if, reason: not valid java name */
        private final transient Cbreak<T>.Ccatch f15543if;

        /* renamed from: com.google.common.reflect.break$else$do, reason: invalid class name */
        public class Cdo implements Predicate<Class<?>> {
            public Cdo() {
            }

            @Override // com.google.common.base.Predicate
            /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
            public boolean apply(Class<?> cls) {
                return cls.isInterface();
            }
        }

        public Celse(Cbreak<T>.Ccatch ccatch) {
            super();
            this.f15543if = ccatch;
        }

        private Object readResolve() {
            return Cbreak.this.getTypes().interfaces();
        }

        @Override // com.google.common.reflect.Cbreak.Ccatch
        public Cbreak<T>.Ccatch classes() {
            throw new UnsupportedOperationException("interfaces().classes() not supported.");
        }

        @Override // com.google.common.reflect.Cbreak.Ccatch
        public Cbreak<T>.Ccatch interfaces() {
            return this;
        }

        @Override // com.google.common.reflect.Cbreak.Ccatch
        public Set<Class<? super T>> rawTypes() {
            return t.m16313import(Cthis.f15550if.mo17812for(Cbreak.this.m17780final())).m16322const(new Cdo()).m16337strictfp();
        }

        @Override // com.google.common.reflect.Cbreak.Ccatch, android.support.v4.ce0, android.support.v4.qd0, android.support.v4.ae0
        public Set<Cbreak<? super T>> delegate() {
            g1<Cbreak<? super T>> g1Var = this.f15542for;
            if (g1Var != null) {
                return g1Var;
            }
            g1<Cbreak<? super T>> g1VarM16337strictfp = t.m16313import(this.f15543if).m16322const(EnumC0137break.INTERFACE_ONLY).m16337strictfp();
            this.f15542for = g1VarM16337strictfp;
            return g1VarM16337strictfp;
        }
    }

    public Cbreak() {
        Type typeCapture = capture();
        this.runtimeType = typeCapture;
        af1.K(!(typeCapture instanceof TypeVariable), "Cannot construct a TypeToken for a type variable.\nYou probably meant to call new TypeToken<%s>(getClass()) that can resolve the type variable for you.\nIf you do need to create a TypeToken of a type variable, please use TypeToken.of() instead.", typeCapture);
    }

    public static Cbreak<?> of(Type type) {
        return new Cgoto(type);
    }

    public final boolean isSubtypeOf(Type type) {
        af1.m205continue(type);
        if (type instanceof WildcardType) {
            return m17777do(((WildcardType) type).getLowerBounds()).m17822if(this.runtimeType);
        }
        Type type2 = this.runtimeType;
        if (type2 instanceof WildcardType) {
            return m17777do(((WildcardType) type2).getUpperBounds()).m17821do(type);
        }
        if (type2 instanceof TypeVariable) {
            return type2.equals(type) || m17777do(((TypeVariable) this.runtimeType).getBounds()).m17821do(type);
        }
        if (type2 instanceof GenericArrayType) {
            return of(type).m17788return((GenericArrayType) this.runtimeType);
        }
        if (type instanceof Class) {
            return m17779extends((Class) type);
        }
        if (type instanceof ParameterizedType) {
            return m17787public((ParameterizedType) type);
        }
        if (type instanceof GenericArrayType) {
            return m17785native((GenericArrayType) type);
        }
        return false;
    }

    public final boolean isSupertypeOf(Type type) {
        return of(type).isSubtypeOf(getType());
    }

    public Cbreak(Class<?> cls) {
        Type typeCapture = super.capture();
        if (typeCapture instanceof Class) {
            this.runtimeType = typeCapture;
        } else {
            this.runtimeType = com.google.common.reflect.Cthis.m17920new(cls).m17923break(typeCapture);
        }
    }

    public final <X> Cbreak<T> where(com.google.common.reflect.Cgoto<X> cgoto, Class<X> cls) {
        return where(cgoto, of((Class) cls));
    }

    private Cbreak(Type type) {
        this.runtimeType = (Type) af1.m205continue(type);
    }
}
