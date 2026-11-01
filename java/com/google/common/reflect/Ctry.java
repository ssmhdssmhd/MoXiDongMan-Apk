package com.google.common.reflect;

import android.support.v4.af1;
import android.support.v4.b51;
import android.support.v4.lf;
import android.support.v4.o8;
import android.support.v4.wb1;
import com.google.common.collect.v0;
import java.lang.annotation.Annotation;
import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Constructor;
import java.lang.reflect.GenericDeclaration;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.util.Arrays;

@o8
/* renamed from: com.google.common.reflect.try, reason: invalid class name */
/* loaded from: classes2.dex */
public abstract class Ctry<T, R> extends Cfor implements GenericDeclaration {

    /* renamed from: com.google.common.reflect.try$do, reason: invalid class name */
    public static class Cdo<T> extends Ctry<T, T> {

        /* renamed from: for, reason: not valid java name */
        public final Constructor<?> f15601for;

        public Cdo(Constructor<?> constructor) {
            super(constructor);
            this.f15601for = constructor;
        }

        /* renamed from: package, reason: not valid java name */
        private boolean m17952package() {
            Class<?> declaringClass = this.f15601for.getDeclaringClass();
            if (declaringClass.getEnclosingConstructor() != null) {
                return true;
            }
            return declaringClass.getEnclosingMethod() != null ? !Modifier.isStatic(r1.getModifiers()) : (declaringClass.getEnclosingClass() == null || Modifier.isStatic(declaringClass.getModifiers())) ? false : true;
        }

        @Override // com.google.common.reflect.Ctry
        /* renamed from: default */
        public final boolean mo17942default() {
            return this.f15601for.isVarArgs();
        }

        @Override // java.lang.reflect.GenericDeclaration
        public final TypeVariable<?>[] getTypeParameters() {
            TypeVariable<Class<? super T>>[] typeParameters = getDeclaringClass().getTypeParameters();
            TypeVariable<Constructor<?>>[] typeParameters2 = this.f15601for.getTypeParameters();
            TypeVariable<?>[] typeVariableArr = new TypeVariable[typeParameters.length + typeParameters2.length];
            System.arraycopy(typeParameters, 0, typeVariableArr, 0, typeParameters.length);
            System.arraycopy(typeParameters2, 0, typeVariableArr, typeParameters.length, typeParameters2.length);
            return typeVariableArr;
        }

        @Override // com.google.common.reflect.Ctry
        /* renamed from: import */
        public Type mo17798import() {
            Class<? super T> declaringClass = getDeclaringClass();
            TypeVariable<Class<? super T>>[] typeParameters = declaringClass.getTypeParameters();
            return typeParameters.length > 0 ? Cclass.m17835const(declaringClass, typeParameters) : declaringClass;
        }

        @Override // com.google.common.reflect.Ctry
        /* renamed from: native */
        public final Annotation[][] mo17945native() {
            return this.f15601for.getParameterAnnotations();
        }

        @Override // com.google.common.reflect.Ctry
        /* renamed from: switch */
        public final Object mo17950switch(@b51 Object obj, Object[] objArr) throws IllegalAccessException, InvocationTargetException {
            try {
                return this.f15601for.newInstance(objArr);
            } catch (InstantiationException e) {
                throw new RuntimeException(this.f15601for + " failed.", e);
            }
        }

        @Override // com.google.common.reflect.Ctry
        /* renamed from: throw */
        public Type[] mo17799throw() {
            return this.f15601for.getGenericExceptionTypes();
        }

        @Override // com.google.common.reflect.Ctry
        /* renamed from: throws */
        public final boolean mo17951throws() {
            return false;
        }

        @Override // com.google.common.reflect.Ctry
        /* renamed from: while */
        public Type[] mo17800while() {
            Type[] genericParameterTypes = this.f15601for.getGenericParameterTypes();
            if (genericParameterTypes.length <= 0 || !m17952package()) {
                return genericParameterTypes;
            }
            Class<?>[] parameterTypes = this.f15601for.getParameterTypes();
            return (genericParameterTypes.length == parameterTypes.length && parameterTypes[0] == getDeclaringClass().getEnclosingClass()) ? (Type[]) Arrays.copyOfRange(genericParameterTypes, 1, genericParameterTypes.length) : genericParameterTypes;
        }
    }

    /* renamed from: com.google.common.reflect.try$if, reason: invalid class name */
    public static class Cif<T> extends Ctry<T, Object> {

        /* renamed from: for, reason: not valid java name */
        public final Method f15602for;

        public Cif(Method method) {
            super(method);
            this.f15602for = method;
        }

        @Override // com.google.common.reflect.Ctry
        /* renamed from: default */
        public final boolean mo17942default() {
            return this.f15602for.isVarArgs();
        }

        @Override // java.lang.reflect.GenericDeclaration
        public final TypeVariable<?>[] getTypeParameters() {
            return this.f15602for.getTypeParameters();
        }

        @Override // com.google.common.reflect.Ctry
        /* renamed from: import */
        public Type mo17798import() {
            return this.f15602for.getGenericReturnType();
        }

        @Override // com.google.common.reflect.Ctry
        /* renamed from: native */
        public final Annotation[][] mo17945native() {
            return this.f15602for.getParameterAnnotations();
        }

        @Override // com.google.common.reflect.Ctry
        /* renamed from: switch */
        public final Object mo17950switch(@b51 Object obj, Object[] objArr) throws IllegalAccessException, InvocationTargetException {
            return this.f15602for.invoke(obj, objArr);
        }

        @Override // com.google.common.reflect.Ctry
        /* renamed from: throw */
        public Type[] mo17799throw() {
            return this.f15602for.getGenericExceptionTypes();
        }

        @Override // com.google.common.reflect.Ctry
        /* renamed from: throws */
        public final boolean mo17951throws() {
            return (m17865for() || m17861case() || m17869this() || Modifier.isFinal(getDeclaringClass().getModifiers())) ? false : true;
        }

        @Override // com.google.common.reflect.Ctry
        /* renamed from: while */
        public Type[] mo17800while() {
            return this.f15602for.getGenericParameterTypes();
        }
    }

    public <M extends AccessibleObject & Member> Ctry(M m) {
        super(m);
    }

    /* renamed from: const, reason: not valid java name */
    public static <T> Ctry<T, T> m17940const(Constructor<T> constructor) {
        return new Cdo(constructor);
    }

    /* renamed from: final, reason: not valid java name */
    public static Ctry<?, Object> m17941final(Method method) {
        return new Cif(method);
    }

    /* renamed from: default, reason: not valid java name */
    public abstract boolean mo17942default();

    @Override // com.google.common.reflect.Cfor
    /* renamed from: do */
    public Cbreak<T> mo17797do() {
        return Cbreak.of((Class) getDeclaringClass());
    }

    @Override // com.google.common.reflect.Cfor
    public /* bridge */ /* synthetic */ boolean equals(@b51 Object obj) {
        return super.equals(obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: extends, reason: not valid java name */
    public final <R1 extends R> Ctry<T, R1> m17943extends(Cbreak<R1> cbreak) {
        if (cbreak.isSupertypeOf(m17947return())) {
            return this;
        }
        throw new IllegalArgumentException("Invokable is known to return " + m17947return() + ", not " + cbreak);
    }

    /* renamed from: finally, reason: not valid java name */
    public final <R1 extends R> Ctry<T, R1> m17944finally(Class<R1> cls) {
        return m17943extends(Cbreak.of((Class) cls));
    }

    @Override // com.google.common.reflect.Cfor, java.lang.reflect.Member
    public final Class<? super T> getDeclaringClass() {
        return (Class<? super T>) super.getDeclaringClass();
    }

    @Override // com.google.common.reflect.Cfor
    public /* bridge */ /* synthetic */ int hashCode() {
        return super.hashCode();
    }

    /* renamed from: import */
    public abstract Type mo17798import();

    /* renamed from: native, reason: not valid java name */
    public abstract Annotation[][] mo17945native();

    /* renamed from: public, reason: not valid java name */
    public final v0<wb1> m17946public() {
        Type[] typeArrMo17800while = mo17800while();
        Annotation[][] annotationArrMo17945native = mo17945native();
        v0.Cdo cdoBuilder = v0.builder();
        for (int i = 0; i < typeArrMo17800while.length; i++) {
            cdoBuilder.mo15635do(new wb1(this, i, Cbreak.of(typeArrMo17800while[i]), annotationArrMo17945native[i]));
        }
        return cdoBuilder.mo15642try();
    }

    /* renamed from: return, reason: not valid java name */
    public final Cbreak<? extends R> m17947return() {
        return (Cbreak<? extends R>) Cbreak.of(mo17798import());
    }

    @lf
    /* renamed from: static, reason: not valid java name */
    public final R m17948static(@b51 T t, Object... objArr) throws IllegalAccessException, InvocationTargetException {
        return (R) mo17950switch(t, (Object[]) af1.m205continue(objArr));
    }

    /* renamed from: super, reason: not valid java name */
    public final v0<Cbreak<? extends Throwable>> m17949super() {
        v0.Cdo cdoBuilder = v0.builder();
        for (Type type : mo17799throw()) {
            cdoBuilder.mo15635do(Cbreak.of(type));
        }
        return cdoBuilder.mo15642try();
    }

    /* renamed from: switch, reason: not valid java name */
    public abstract Object mo17950switch(@b51 Object obj, Object[] objArr) throws IllegalAccessException, InvocationTargetException;

    /* renamed from: throw */
    public abstract Type[] mo17799throw();

    /* renamed from: throws, reason: not valid java name */
    public abstract boolean mo17951throws();

    @Override // com.google.common.reflect.Cfor
    public /* bridge */ /* synthetic */ String toString() {
        return super.toString();
    }

    /* renamed from: while */
    public abstract Type[] mo17800while();
}
