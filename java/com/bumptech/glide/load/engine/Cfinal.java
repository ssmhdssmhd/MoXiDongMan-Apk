package com.bumptech.glide.load.engine;

import android.support.v4.cf1;
import androidx.annotation.NonNull;
import androidx.core.util.Pools;
import com.bumptech.glide.util.pool.FactoryPools;

/* renamed from: com.bumptech.glide.load.engine.final, reason: invalid class name */
/* loaded from: classes.dex */
final class Cfinal<Z> implements Resource<Z>, FactoryPools.Poolable {

    /* renamed from: try, reason: not valid java name */
    private static final Pools.Pool<Cfinal<?>> f9805try = FactoryPools.m12087try(20, new Cdo());

    /* renamed from: do, reason: not valid java name */
    private final com.bumptech.glide.util.pool.Cdo f9806do = com.bumptech.glide.util.pool.Cdo.m12090do();

    /* renamed from: for, reason: not valid java name */
    private boolean f9807for;

    /* renamed from: if, reason: not valid java name */
    private Resource<Z> f9808if;

    /* renamed from: new, reason: not valid java name */
    private boolean f9809new;

    /* renamed from: com.bumptech.glide.load.engine.final$do, reason: invalid class name */
    public class Cdo implements FactoryPools.Factory<Cfinal<?>> {
        @Override // com.bumptech.glide.util.pool.FactoryPools.Factory
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cfinal<?> create() {
            return new Cfinal<>();
        }
    }

    /* renamed from: do, reason: not valid java name */
    private void m11510do(Resource<Z> resource) {
        this.f9809new = false;
        this.f9807for = true;
        this.f9808if = resource;
    }

    /* renamed from: for, reason: not valid java name */
    private void m11511for() {
        this.f9808if = null;
        f9805try.release(this);
    }

    @NonNull
    /* renamed from: if, reason: not valid java name */
    public static <Z> Cfinal<Z> m11512if(Resource<Z> resource) {
        Cfinal<Z> cfinal = (Cfinal) cf1.m900new(f9805try.acquire());
        cfinal.m11510do(resource);
        return cfinal;
    }

    @Override // com.bumptech.glide.load.engine.Resource
    @NonNull
    public Z get() {
        return this.f9808if.get();
    }

    @Override // com.bumptech.glide.load.engine.Resource
    @NonNull
    public Class<Z> getResourceClass() {
        return this.f9808if.getResourceClass();
    }

    @Override // com.bumptech.glide.load.engine.Resource
    public int getSize() {
        return this.f9808if.getSize();
    }

    @Override // com.bumptech.glide.util.pool.FactoryPools.Poolable
    @NonNull
    public com.bumptech.glide.util.pool.Cdo getVerifier() {
        return this.f9806do;
    }

    /* renamed from: new, reason: not valid java name */
    public synchronized void m11513new() {
        this.f9806do.mo12091for();
        if (!this.f9807for) {
            throw new IllegalStateException("Already unlocked");
        }
        this.f9807for = false;
        if (this.f9809new) {
            recycle();
        }
    }

    @Override // com.bumptech.glide.load.engine.Resource
    public synchronized void recycle() {
        this.f9806do.mo12091for();
        this.f9809new = true;
        if (!this.f9807for) {
            this.f9808if.recycle();
            m11511for();
        }
    }
}
