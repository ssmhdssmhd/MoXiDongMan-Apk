package com.google.common.reflect;

import android.support.v4.lf;
import android.support.v4.o8;
import com.google.common.collect.x0;
import com.google.common.collect.z;
import java.util.Map;

@o8
/* renamed from: com.google.common.reflect.new, reason: invalid class name */
/* loaded from: classes2.dex */
public final class Cnew<B> extends z<Cbreak<? extends B>, B> implements TypeToInstanceMap<B> {

    /* renamed from: do, reason: not valid java name */
    private final x0<Cbreak<? extends B>, B> f15586do;

    @o8
    /* renamed from: com.google.common.reflect.new$if, reason: invalid class name */
    public static final class Cif<B> {

        /* renamed from: do, reason: not valid java name */
        private final x0.Cif<Cbreak<? extends B>, B> f15587do;

        /* renamed from: do, reason: not valid java name */
        public Cnew<B> m17909do() {
            return new Cnew<>(this.f15587do.mo15865do());
        }

        @lf
        /* renamed from: for, reason: not valid java name */
        public <T extends B> Cif<B> m17910for(Class<T> cls, T t) {
            this.f15587do.mo15869new(Cbreak.of((Class) cls), t);
            return this;
        }

        @lf
        /* renamed from: if, reason: not valid java name */
        public <T extends B> Cif<B> m17911if(Cbreak<T> cbreak, T t) {
            this.f15587do.mo15869new(cbreak.rejectTypeVariables(), t);
            return this;
        }

        private Cif() {
            this.f15587do = x0.builder();
        }
    }

    /* renamed from: do, reason: not valid java name */
    public static <B> Cif<B> m17905do() {
        return new Cif<>();
    }

    /* renamed from: if, reason: not valid java name */
    public static <B> Cnew<B> m17906if() {
        return new Cnew<>(x0.of());
    }

    /* renamed from: new, reason: not valid java name */
    private <T extends B> T m17907new(Cbreak<T> cbreak) {
        return this.f15586do.get(cbreak);
    }

    @Override // com.google.common.collect.z, java.util.Map
    @lf
    @Deprecated
    /* renamed from: for, reason: not valid java name and merged with bridge method [inline-methods] */
    public B put(Cbreak<? extends B> cbreak, B b) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.reflect.TypeToInstanceMap
    public <T extends B> T getInstance(Cbreak<T> cbreak) {
        return (T) m17907new(cbreak.rejectTypeVariables());
    }

    @Override // com.google.common.collect.z, java.util.Map
    @Deprecated
    public void putAll(Map<? extends Cbreak<? extends B>, ? extends B> map) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.reflect.TypeToInstanceMap
    @lf
    @Deprecated
    public <T extends B> T putInstance(Cbreak<T> cbreak, T t) {
        throw new UnsupportedOperationException();
    }

    private Cnew(x0<Cbreak<? extends B>, B> x0Var) {
        this.f15586do = x0Var;
    }

    @Override // com.google.common.collect.z, android.support.v4.ae0
    public Map<Cbreak<? extends B>, B> delegate() {
        return this.f15586do;
    }

    @Override // com.google.common.reflect.TypeToInstanceMap
    public <T extends B> T getInstance(Class<T> cls) {
        return (T) m17907new(Cbreak.of((Class) cls));
    }

    @Override // com.google.common.reflect.TypeToInstanceMap
    @lf
    @Deprecated
    public <T extends B> T putInstance(Class<T> cls, T t) {
        throw new UnsupportedOperationException();
    }
}
