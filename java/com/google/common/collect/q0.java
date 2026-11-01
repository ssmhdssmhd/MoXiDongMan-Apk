package com.google.common.collect;

import android.support.v4.af1;
import android.support.v4.b51;
import android.support.v4.fm0;
import android.support.v4.hf1;
import android.support.v4.lf;
import android.support.v4.li0;
import com.google.common.collect.x0;
import java.io.Serializable;
import java.util.Map;

@fm0(containerOf = {"B"})
@li0
/* loaded from: classes2.dex */
public final class q0<B> extends z<Class<? extends B>, B> implements ClassToInstanceMap<B>, Serializable {

    /* renamed from: do, reason: not valid java name */
    private static final q0<Object> f14539do = new q0<>(x0.of());
    private final x0<Class<? extends B>, B> delegate;

    /* renamed from: com.google.common.collect.q0$if, reason: invalid class name */
    public static final class Cif<B> {

        /* renamed from: do, reason: not valid java name */
        private final x0.Cif<Class<? extends B>, B> f14540do = x0.builder();

        /* renamed from: if, reason: not valid java name */
        private static <B, T extends B> T m16152if(Class<T> cls, B b) {
            return (T) hf1.m3010case(cls).cast(b);
        }

        /* renamed from: do, reason: not valid java name */
        public q0<B> m16153do() {
            x0<Class<? extends B>, B> x0VarMo15865do = this.f14540do.mo15865do();
            return x0VarMo15865do.isEmpty() ? q0.of() : new q0<>(x0VarMo15865do);
        }

        @lf
        /* renamed from: for, reason: not valid java name */
        public <T extends B> Cif<B> m16154for(Class<T> cls, T t) {
            this.f14540do.mo15869new(cls, t);
            return this;
        }

        @lf
        /* renamed from: new, reason: not valid java name */
        public <T extends B> Cif<B> m16155new(Map<? extends Class<? extends T>, ? extends T> map) {
            for (Map.Entry<? extends Class<? extends T>, ? extends T> entry : map.entrySet()) {
                Class<? extends T> key = entry.getKey();
                this.f14540do.mo15869new(key, m16152if(key, entry.getValue()));
            }
            return this;
        }
    }

    public static <B> Cif<B> builder() {
        return new Cif<>();
    }

    public static <B, S extends B> q0<B> copyOf(Map<? extends Class<? extends S>, ? extends S> map) {
        return map instanceof q0 ? (q0) map : new Cif().m16155new(map).m16153do();
    }

    public static <B> q0<B> of() {
        return (q0<B>) f14539do;
    }

    @Override // com.google.common.collect.ClassToInstanceMap
    @b51
    public <T extends B> T getInstance(Class<T> cls) {
        return this.delegate.get(af1.m205continue(cls));
    }

    @Override // com.google.common.collect.ClassToInstanceMap
    @lf
    @Deprecated
    public <T extends B> T putInstance(Class<T> cls, T t) {
        throw new UnsupportedOperationException();
    }

    public Object readResolve() {
        return isEmpty() ? of() : this;
    }

    private q0(x0<Class<? extends B>, B> x0Var) {
        this.delegate = x0Var;
    }

    public static <B, T extends B> q0<B> of(Class<T> cls, T t) {
        return new q0<>(x0.of(cls, t));
    }

    @Override // com.google.common.collect.z, android.support.v4.ae0
    public Map<Class<? extends B>, B> delegate() {
        return this.delegate;
    }
}
