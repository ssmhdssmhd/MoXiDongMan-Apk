package com.google.common.reflect;

import android.support.v4.af1;
import android.support.v4.b51;
import android.support.v4.ca2;
import android.support.v4.o8;
import com.google.common.base.Cfinal;
import com.google.common.base.Cthrow;
import com.google.common.collect.Maps;
import com.google.common.collect.x0;
import com.google.common.reflect.Cclass;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.util.Arrays;
import java.util.HashMap;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;

@o8
/* renamed from: com.google.common.reflect.this, reason: invalid class name */
/* loaded from: classes2.dex */
public final class Cthis {

    /* renamed from: do, reason: not valid java name */
    private final Cfor f15588do;

    /* renamed from: com.google.common.reflect.this$do, reason: invalid class name */
    public static class Cdo extends Ccatch {

        /* renamed from: for, reason: not valid java name */
        public final /* synthetic */ Type f15589for;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ Map f15590if;

        public Cdo(Map map, Type type) {
            this.f15590if = map;
            this.f15589for = type;
        }

        @Override // com.google.common.reflect.Ccatch
        /* renamed from: case */
        public void mo17802case(WildcardType wildcardType) {
            Type type = this.f15589for;
            if (type instanceof WildcardType) {
                WildcardType wildcardType2 = (WildcardType) type;
                Type[] upperBounds = wildcardType.getUpperBounds();
                Type[] upperBounds2 = wildcardType2.getUpperBounds();
                Type[] lowerBounds = wildcardType.getLowerBounds();
                Type[] lowerBounds2 = wildcardType2.getLowerBounds();
                af1.m206default(upperBounds.length == upperBounds2.length && lowerBounds.length == lowerBounds2.length, "Incompatible type: %s vs. %s", wildcardType, this.f15589for);
                for (int i = 0; i < upperBounds.length; i++) {
                    Cthis.m17916else(this.f15590if, upperBounds[i], upperBounds2[i]);
                }
                for (int i2 = 0; i2 < lowerBounds.length; i2++) {
                    Cthis.m17916else(this.f15590if, lowerBounds[i2], lowerBounds2[i2]);
                }
            }
        }

        @Override // com.google.common.reflect.Ccatch
        /* renamed from: for */
        public void mo17803for(GenericArrayType genericArrayType) {
            Type type = this.f15589for;
            if (type instanceof WildcardType) {
                return;
            }
            Type typeM17831break = Cclass.m17831break(type);
            af1.m225return(typeM17831break != null, "%s is not an array type.", this.f15589for);
            Cthis.m17916else(this.f15590if, genericArrayType.getGenericComponentType(), typeM17831break);
        }

        @Override // com.google.common.reflect.Ccatch
        /* renamed from: if */
        public void mo17806if(Class<?> cls) {
            if (this.f15589for instanceof WildcardType) {
                return;
            }
            throw new IllegalArgumentException("No type mapping from " + cls + " to " + this.f15589for);
        }

        @Override // com.google.common.reflect.Ccatch
        /* renamed from: new */
        public void mo17804new(ParameterizedType parameterizedType) {
            Type type = this.f15589for;
            if (type instanceof WildcardType) {
                return;
            }
            ParameterizedType parameterizedType2 = (ParameterizedType) Cthis.m17922try(ParameterizedType.class, type);
            if (parameterizedType.getOwnerType() != null && parameterizedType2.getOwnerType() != null) {
                Cthis.m17916else(this.f15590if, parameterizedType.getOwnerType(), parameterizedType2.getOwnerType());
            }
            af1.m206default(parameterizedType.getRawType().equals(parameterizedType2.getRawType()), "Inconsistent raw type: %s vs. %s", parameterizedType, this.f15589for);
            Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
            Type[] actualTypeArguments2 = parameterizedType2.getActualTypeArguments();
            af1.m206default(actualTypeArguments.length == actualTypeArguments2.length, "%s not compatible with %s", parameterizedType, parameterizedType2);
            for (int i = 0; i < actualTypeArguments.length; i++) {
                Cthis.m17916else(this.f15590if, actualTypeArguments[i], actualTypeArguments2[i]);
            }
        }

        @Override // com.google.common.reflect.Ccatch
        /* renamed from: try */
        public void mo17805try(TypeVariable<?> typeVariable) {
            this.f15590if.put(new Cnew(typeVariable), this.f15589for);
        }
    }

    /* renamed from: com.google.common.reflect.this$if, reason: invalid class name */
    public static final class Cif extends Ccatch {

        /* renamed from: if, reason: not valid java name */
        private final Map<Cnew, Type> f15595if = Maps.l();

        private Cif() {
        }

        /* renamed from: else, reason: not valid java name */
        public static x0<Cnew, Type> m17930else(Type type) {
            af1.m205continue(type);
            Cif cif = new Cif();
            cif.m17830do(type);
            return x0.copyOf((Map) cif.f15595if);
        }

        /* renamed from: goto, reason: not valid java name */
        private void m17931goto(Cnew cnew, Type type) {
            if (this.f15595if.containsKey(cnew)) {
                return;
            }
            Type type2 = type;
            while (type2 != null) {
                if (cnew.m17934do(type2)) {
                    while (type != null) {
                        type = this.f15595if.remove(Cnew.m17932for(type));
                    }
                    return;
                }
                type2 = this.f15595if.get(Cnew.m17932for(type2));
            }
            this.f15595if.put(cnew, type);
        }

        @Override // com.google.common.reflect.Ccatch
        /* renamed from: case */
        public void mo17802case(WildcardType wildcardType) {
            m17830do(wildcardType.getUpperBounds());
        }

        @Override // com.google.common.reflect.Ccatch
        /* renamed from: if */
        public void mo17806if(Class<?> cls) {
            m17830do(cls.getGenericSuperclass());
            m17830do(cls.getGenericInterfaces());
        }

        @Override // com.google.common.reflect.Ccatch
        /* renamed from: new */
        public void mo17804new(ParameterizedType parameterizedType) {
            Class cls = (Class) parameterizedType.getRawType();
            TypeVariable[] typeParameters = cls.getTypeParameters();
            Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
            af1.t(typeParameters.length == actualTypeArguments.length);
            for (int i = 0; i < typeParameters.length; i++) {
                m17931goto(new Cnew(typeParameters[i]), actualTypeArguments[i]);
            }
            m17830do(cls);
            m17830do(parameterizedType.getOwnerType());
        }

        @Override // com.google.common.reflect.Ccatch
        /* renamed from: try */
        public void mo17805try(TypeVariable<?> typeVariable) {
            m17830do(typeVariable.getBounds());
        }
    }

    /* renamed from: com.google.common.reflect.this$new, reason: invalid class name */
    public static final class Cnew {

        /* renamed from: do, reason: not valid java name */
        private final TypeVariable<?> f15596do;

        public Cnew(TypeVariable<?> typeVariable) {
            this.f15596do = (TypeVariable) af1.m205continue(typeVariable);
        }

        /* renamed from: for, reason: not valid java name */
        public static Cnew m17932for(Type type) {
            if (type instanceof TypeVariable) {
                return new Cnew((TypeVariable) type);
            }
            return null;
        }

        /* renamed from: if, reason: not valid java name */
        private boolean m17933if(TypeVariable<?> typeVariable) {
            return this.f15596do.getGenericDeclaration().equals(typeVariable.getGenericDeclaration()) && this.f15596do.getName().equals(typeVariable.getName());
        }

        /* renamed from: do, reason: not valid java name */
        public boolean m17934do(Type type) {
            if (type instanceof TypeVariable) {
                return m17933if((TypeVariable) type);
            }
            return false;
        }

        public boolean equals(Object obj) {
            if (obj instanceof Cnew) {
                return m17933if(((Cnew) obj).f15596do);
            }
            return false;
        }

        public int hashCode() {
            return Cthrow.m15206if(this.f15596do.getGenericDeclaration(), this.f15596do.getName());
        }

        public String toString() {
            return this.f15596do.toString();
        }
    }

    /* renamed from: com.google.common.reflect.this$try, reason: invalid class name */
    public static class Ctry {

        /* renamed from: if, reason: not valid java name */
        public static final Ctry f15597if = new Ctry();

        /* renamed from: do, reason: not valid java name */
        private final AtomicInteger f15598do;

        /* renamed from: com.google.common.reflect.this$try$do, reason: invalid class name */
        public class Cdo extends Ctry {

            /* renamed from: for, reason: not valid java name */
            public final /* synthetic */ TypeVariable f15599for;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public Cdo(AtomicInteger atomicInteger, TypeVariable typeVariable) {
                super(atomicInteger, null);
                this.f15599for = typeVariable;
            }

            @Override // com.google.common.reflect.Cthis.Ctry
            /* renamed from: if */
            public TypeVariable<?> mo17939if(Type[] typeArr) {
                LinkedHashSet linkedHashSet = new LinkedHashSet(Arrays.asList(typeArr));
                linkedHashSet.addAll(Arrays.asList(this.f15599for.getBounds()));
                if (linkedHashSet.size() > 1) {
                    linkedHashSet.remove(Object.class);
                }
                return super.mo17939if((Type[]) linkedHashSet.toArray(new Type[0]));
            }
        }

        public /* synthetic */ Ctry(AtomicInteger atomicInteger, Cdo cdo) {
            this(atomicInteger);
        }

        /* renamed from: for, reason: not valid java name */
        private Type m17935for(@b51 Type type) {
            if (type == null) {
                return null;
            }
            return m17938do(type);
        }

        /* renamed from: new, reason: not valid java name */
        private Ctry m17936new(TypeVariable<?> typeVariable) {
            return new Cdo(this.f15598do, typeVariable);
        }

        /* renamed from: try, reason: not valid java name */
        private Ctry m17937try() {
            return new Ctry(this.f15598do);
        }

        /* renamed from: do, reason: not valid java name */
        public final Type m17938do(Type type) {
            af1.m205continue(type);
            if ((type instanceof Class) || (type instanceof TypeVariable)) {
                return type;
            }
            if (type instanceof GenericArrayType) {
                return Cclass.m17833catch(m17937try().m17938do(((GenericArrayType) type).getGenericComponentType()));
            }
            if (!(type instanceof ParameterizedType)) {
                if (!(type instanceof WildcardType)) {
                    throw new AssertionError("must have been one of the known types");
                }
                WildcardType wildcardType = (WildcardType) type;
                return wildcardType.getLowerBounds().length == 0 ? mo17939if(wildcardType.getUpperBounds()) : type;
            }
            ParameterizedType parameterizedType = (ParameterizedType) type;
            Class cls = (Class) parameterizedType.getRawType();
            TypeVariable<?>[] typeParameters = cls.getTypeParameters();
            Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
            for (int i = 0; i < actualTypeArguments.length; i++) {
                actualTypeArguments[i] = m17936new(typeParameters[i]).m17938do(actualTypeArguments[i]);
            }
            return Cclass.m17838final(m17937try().m17935for(parameterizedType.getOwnerType()), cls, actualTypeArguments);
        }

        /* renamed from: if, reason: not valid java name */
        public TypeVariable<?> mo17939if(Type[] typeArr) {
            return Cclass.m17834class(Ctry.class, "capture#" + this.f15598do.incrementAndGet() + "-of ? extends " + Cfinal.m15070super(ca2.f679for).m15077final(typeArr), typeArr);
        }

        private Ctry() {
            this(new AtomicInteger());
        }

        private Ctry(AtomicInteger atomicInteger) {
            this.f15598do = atomicInteger;
        }
    }

    public /* synthetic */ Cthis(Cfor cfor, Cdo cdo) {
        this(cfor);
    }

    /* renamed from: case, reason: not valid java name */
    public static Cthis m17912case(Type type) {
        return new Cthis().m17926super(Cif.m17930else(Ctry.f15597if.m17938do(type)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: catch, reason: not valid java name */
    public Type[] m17913catch(Type[] typeArr) {
        Type[] typeArr2 = new Type[typeArr.length];
        for (int i = 0; i < typeArr.length; i++) {
            typeArr2[i] = m17923break(typeArr[i]);
        }
        return typeArr2;
    }

    /* renamed from: const, reason: not valid java name */
    private WildcardType m17914const(WildcardType wildcardType) {
        return new Cclass.Cbreak(m17913catch(wildcardType.getLowerBounds()), m17913catch(wildcardType.getUpperBounds()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: else, reason: not valid java name */
    public static void m17916else(Map<Cnew, Type> map, Type type, Type type2) {
        if (type.equals(type2)) {
            return;
        }
        new Cdo(map, type2).m17830do(type);
    }

    /* renamed from: goto, reason: not valid java name */
    private Type m17918goto(GenericArrayType genericArrayType) {
        return Cclass.m17833catch(m17923break(genericArrayType.getGenericComponentType()));
    }

    /* renamed from: new, reason: not valid java name */
    public static Cthis m17920new(Type type) {
        return new Cthis().m17926super(Cif.m17930else(type));
    }

    /* renamed from: this, reason: not valid java name */
    private ParameterizedType m17921this(ParameterizedType parameterizedType) {
        Type ownerType = parameterizedType.getOwnerType();
        return Cclass.m17838final(ownerType == null ? null : m17923break(ownerType), (Class) m17923break(parameterizedType.getRawType()), m17913catch(parameterizedType.getActualTypeArguments()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: try, reason: not valid java name */
    public static <T> T m17922try(Class<T> cls, Object obj) {
        try {
            return cls.cast(obj);
        } catch (ClassCastException unused) {
            throw new IllegalArgumentException(obj + " is not a " + cls.getSimpleName());
        }
    }

    /* renamed from: break, reason: not valid java name */
    public Type m17923break(Type type) {
        af1.m205continue(type);
        return type instanceof TypeVariable ? this.f15588do.m17927do((TypeVariable) type) : type instanceof ParameterizedType ? m17921this((ParameterizedType) type) : type instanceof GenericArrayType ? m17918goto((GenericArrayType) type) : type instanceof WildcardType ? m17914const((WildcardType) type) : type;
    }

    /* renamed from: class, reason: not valid java name */
    public Type[] m17924class(Type[] typeArr) {
        for (int i = 0; i < typeArr.length; i++) {
            typeArr[i] = m17923break(typeArr[i]);
        }
        return typeArr;
    }

    /* renamed from: final, reason: not valid java name */
    public Cthis m17925final(Type type, Type type2) {
        HashMap mapL = Maps.l();
        m17916else(mapL, (Type) af1.m205continue(type), (Type) af1.m205continue(type2));
        return m17926super(mapL);
    }

    /* renamed from: super, reason: not valid java name */
    public Cthis m17926super(Map<Cnew, ? extends Type> map) {
        return new Cthis(this.f15588do.m17928for(map));
    }

    /* renamed from: com.google.common.reflect.this$for, reason: invalid class name */
    public static class Cfor {

        /* renamed from: do, reason: not valid java name */
        private final x0<Cnew, Type> f15591do;

        /* renamed from: com.google.common.reflect.this$for$do, reason: invalid class name */
        public class Cdo extends Cfor {

            /* renamed from: for, reason: not valid java name */
            public final /* synthetic */ Cfor f15592for;

            /* renamed from: if, reason: not valid java name */
            public final /* synthetic */ TypeVariable f15593if;

            public Cdo(TypeVariable typeVariable, Cfor cfor) {
                this.f15593if = typeVariable;
                this.f15592for = cfor;
            }

            @Override // com.google.common.reflect.Cthis.Cfor
            /* renamed from: if */
            public Type mo17929if(TypeVariable<?> typeVariable, Cfor cfor) {
                return typeVariable.getGenericDeclaration().equals(this.f15593if.getGenericDeclaration()) ? typeVariable : this.f15592for.mo17929if(typeVariable, cfor);
            }
        }

        public Cfor() {
            this.f15591do = x0.of();
        }

        /* renamed from: do, reason: not valid java name */
        public final Type m17927do(TypeVariable<?> typeVariable) {
            return mo17929if(typeVariable, new Cdo(typeVariable, this));
        }

        /* renamed from: for, reason: not valid java name */
        public final Cfor m17928for(Map<Cnew, ? extends Type> map) {
            x0.Cif cifBuilder = x0.builder();
            cifBuilder.mo15866else(this.f15591do);
            for (Map.Entry<Cnew, ? extends Type> entry : map.entrySet()) {
                Cnew key = entry.getKey();
                Type value = entry.getValue();
                af1.m225return(!key.m17934do(value), "Type variable %s bound to itself", key);
                cifBuilder.mo15869new(key, value);
            }
            return new Cfor(cifBuilder.mo15865do());
        }

        /* renamed from: if, reason: not valid java name */
        public Type mo17929if(TypeVariable<?> typeVariable, Cfor cfor) {
            Type type = this.f15591do.get(new Cnew(typeVariable));
            Cdo cdo = null;
            if (type != null) {
                return new Cthis(cfor, cdo).m17923break(type);
            }
            Type[] bounds = typeVariable.getBounds();
            if (bounds.length == 0) {
                return typeVariable;
            }
            Type[] typeArrM17913catch = new Cthis(cfor, cdo).m17913catch(bounds);
            return (Cclass.Ccase.f15563do && Arrays.equals(bounds, typeArrM17913catch)) ? typeVariable : Cclass.m17834class(typeVariable.getGenericDeclaration(), typeVariable.getName(), typeArrM17913catch);
        }

        private Cfor(x0<Cnew, Type> x0Var) {
            this.f15591do = x0Var;
        }
    }

    public Cthis() {
        this.f15588do = new Cfor();
    }

    private Cthis(Cfor cfor) {
        this.f15588do = cfor;
    }
}
