package com.bumptech.glide.load.engine;

import android.support.v4.cf1;
import android.support.v4.f81;
import android.support.v4.sv0;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.core.util.Pools;
import com.bumptech.glide.Ctry;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.Transformation;
import com.bumptech.glide.load.engine.DecodeJob;
import com.bumptech.glide.load.engine.EngineResource;
import com.bumptech.glide.load.engine.cache.DiskCache;
import com.bumptech.glide.load.engine.cache.MemoryCache;
import com.bumptech.glide.load.engine.executor.GlideExecutor;
import com.bumptech.glide.request.ResourceCallback;
import com.bumptech.glide.util.pool.FactoryPools;
import java.util.Map;
import java.util.concurrent.Executor;

/* renamed from: com.bumptech.glide.load.engine.else, reason: invalid class name */
/* loaded from: classes.dex */
public class Celse implements EngineJobListener, MemoryCache.ResourceRemovedListener, EngineResource.ResourceListener {

    /* renamed from: break, reason: not valid java name */
    private static final int f9750break = 150;

    /* renamed from: case, reason: not valid java name */
    private final Cfor f9753case;

    /* renamed from: do, reason: not valid java name */
    private final Cclass f9754do;

    /* renamed from: else, reason: not valid java name */
    private final Cdo f9755else;

    /* renamed from: for, reason: not valid java name */
    private final MemoryCache f9756for;

    /* renamed from: goto, reason: not valid java name */
    private final ActiveResources f9757goto;

    /* renamed from: if, reason: not valid java name */
    private final Cbreak f9758if;

    /* renamed from: new, reason: not valid java name */
    private final Cif f9759new;

    /* renamed from: try, reason: not valid java name */
    private final Cwhile f9760try;

    /* renamed from: this, reason: not valid java name */
    private static final String f9752this = "Engine";

    /* renamed from: catch, reason: not valid java name */
    private static final boolean f9751catch = Log.isLoggable(f9752this, 2);

    @VisibleForTesting
    /* renamed from: com.bumptech.glide.load.engine.else$do, reason: invalid class name */
    public static class Cdo {

        /* renamed from: do, reason: not valid java name */
        public final DecodeJob.DiskCacheProvider f9761do;

        /* renamed from: for, reason: not valid java name */
        private int f9762for;

        /* renamed from: if, reason: not valid java name */
        public final Pools.Pool<DecodeJob<?>> f9763if = FactoryPools.m12087try(150, new C0029do());

        /* renamed from: com.bumptech.glide.load.engine.else$do$do, reason: invalid class name and collision with other inner class name */
        public class C0029do implements FactoryPools.Factory<DecodeJob<?>> {
            public C0029do() {
            }

            @Override // com.bumptech.glide.util.pool.FactoryPools.Factory
            /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
            public DecodeJob<?> create() {
                Cdo cdo = Cdo.this;
                return new DecodeJob<>(cdo.f9761do, cdo.f9763if);
            }
        }

        public Cdo(DecodeJob.DiskCacheProvider diskCacheProvider) {
            this.f9761do = diskCacheProvider;
        }

        /* renamed from: do, reason: not valid java name */
        public <R> DecodeJob<R> m11483do(com.bumptech.glide.Cfor cfor, Object obj, Cthis cthis, Key key, int i, int i2, Class<?> cls, Class<R> cls2, Ctry ctry, Ccase ccase, Map<Class<?>, Transformation<?>> map, boolean z, boolean z2, boolean z3, f81 f81Var, DecodeJob.Callback<R> callback) {
            DecodeJob decodeJob = (DecodeJob) cf1.m900new(this.f9763if.acquire());
            int i3 = this.f9762for;
            this.f9762for = i3 + 1;
            return decodeJob.m11338break(cfor, obj, cthis, key, i, i2, cls, cls2, ctry, ccase, map, z, z2, z3, f81Var, callback, i3);
        }
    }

    /* renamed from: com.bumptech.glide.load.engine.else$for, reason: invalid class name */
    public static class Cfor implements DecodeJob.DiskCacheProvider {

        /* renamed from: do, reason: not valid java name */
        private final DiskCache.Factory f9765do;

        /* renamed from: if, reason: not valid java name */
        private volatile DiskCache f9766if;

        public Cfor(DiskCache.Factory factory) {
            this.f9765do = factory;
        }

        @VisibleForTesting
        /* renamed from: do, reason: not valid java name */
        public synchronized void m11485do() {
            if (this.f9766if == null) {
                return;
            }
            this.f9766if.clear();
        }

        @Override // com.bumptech.glide.load.engine.DecodeJob.DiskCacheProvider
        public DiskCache getDiskCache() {
            if (this.f9766if == null) {
                synchronized (this) {
                    if (this.f9766if == null) {
                        this.f9766if = this.f9765do.build();
                    }
                    if (this.f9766if == null) {
                        this.f9766if = new com.bumptech.glide.load.engine.cache.Cdo();
                    }
                }
            }
            return this.f9766if;
        }
    }

    @VisibleForTesting
    /* renamed from: com.bumptech.glide.load.engine.else$if, reason: invalid class name */
    public static class Cif {

        /* renamed from: case, reason: not valid java name */
        public final EngineResource.ResourceListener f9767case;

        /* renamed from: do, reason: not valid java name */
        public final GlideExecutor f9768do;

        /* renamed from: else, reason: not valid java name */
        public final Pools.Pool<Cgoto<?>> f9769else = FactoryPools.m12087try(150, new Cdo());

        /* renamed from: for, reason: not valid java name */
        public final GlideExecutor f9770for;

        /* renamed from: if, reason: not valid java name */
        public final GlideExecutor f9771if;

        /* renamed from: new, reason: not valid java name */
        public final GlideExecutor f9772new;

        /* renamed from: try, reason: not valid java name */
        public final EngineJobListener f9773try;

        /* renamed from: com.bumptech.glide.load.engine.else$if$do, reason: invalid class name */
        public class Cdo implements FactoryPools.Factory<Cgoto<?>> {
            public Cdo() {
            }

            @Override // com.bumptech.glide.util.pool.FactoryPools.Factory
            /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
            public Cgoto<?> create() {
                Cif cif = Cif.this;
                return new Cgoto<>(cif.f9768do, cif.f9771if, cif.f9770for, cif.f9772new, cif.f9773try, cif.f9767case, cif.f9769else);
            }
        }

        public Cif(GlideExecutor glideExecutor, GlideExecutor glideExecutor2, GlideExecutor glideExecutor3, GlideExecutor glideExecutor4, EngineJobListener engineJobListener, EngineResource.ResourceListener resourceListener) {
            this.f9768do = glideExecutor;
            this.f9771if = glideExecutor2;
            this.f9770for = glideExecutor3;
            this.f9772new = glideExecutor4;
            this.f9773try = engineJobListener;
            this.f9767case = resourceListener;
        }

        /* renamed from: do, reason: not valid java name */
        public <R> Cgoto<R> m11486do(Key key, boolean z, boolean z2, boolean z3, boolean z4) {
            return ((Cgoto) cf1.m900new(this.f9769else.acquire())).m11525goto(key, z, z2, z3, z4);
        }

        @VisibleForTesting
        /* renamed from: if, reason: not valid java name */
        public void m11487if() {
            com.bumptech.glide.util.Cnew.m12079for(this.f9768do);
            com.bumptech.glide.util.Cnew.m12079for(this.f9771if);
            com.bumptech.glide.util.Cnew.m12079for(this.f9770for);
            com.bumptech.glide.util.Cnew.m12079for(this.f9772new);
        }
    }

    /* renamed from: com.bumptech.glide.load.engine.else$new, reason: invalid class name */
    public class Cnew {

        /* renamed from: do, reason: not valid java name */
        private final Cgoto<?> f9775do;

        /* renamed from: if, reason: not valid java name */
        private final ResourceCallback f9777if;

        public Cnew(ResourceCallback resourceCallback, Cgoto<?> cgoto) {
            this.f9777if = resourceCallback;
            this.f9775do = cgoto;
        }

        /* renamed from: do, reason: not valid java name */
        public void m11489do() {
            synchronized (Celse.this) {
                this.f9775do.m11528super(this.f9777if);
            }
        }
    }

    public Celse(MemoryCache memoryCache, DiskCache.Factory factory, GlideExecutor glideExecutor, GlideExecutor glideExecutor2, GlideExecutor glideExecutor3, GlideExecutor glideExecutor4, boolean z) {
        this(memoryCache, factory, glideExecutor, glideExecutor2, glideExecutor3, glideExecutor4, null, null, null, null, null, null, z);
    }

    /* renamed from: break, reason: not valid java name */
    private <R> Cnew m11473break(com.bumptech.glide.Cfor cfor, Object obj, Key key, int i, int i2, Class<?> cls, Class<R> cls2, Ctry ctry, Ccase ccase, Map<Class<?>, Transformation<?>> map, boolean z, boolean z2, f81 f81Var, boolean z3, boolean z4, boolean z5, boolean z6, ResourceCallback resourceCallback, Executor executor, Cthis cthis, long j) {
        Cgoto<?> cgotoM11466do = this.f9754do.m11466do(cthis, z6);
        if (cgotoM11466do != null) {
            cgotoM11466do.m11522do(resourceCallback, executor);
            if (f9751catch) {
                m11475else("Added to existing load", j, cthis);
            }
            return new Cnew(resourceCallback, cgotoM11466do);
        }
        Cgoto<R> cgotoM11486do = this.f9759new.m11486do(cthis, z3, z4, z5, z6);
        DecodeJob<R> decodeJobM11483do = this.f9755else.m11483do(cfor, obj, cthis, key, i, i2, cls, cls2, ctry, ccase, map, z, z2, z6, f81Var, cgotoM11486do);
        this.f9754do.m11468new(cthis, cgotoM11486do);
        cgotoM11486do.m11522do(resourceCallback, executor);
        cgotoM11486do.m11530throw(decodeJobM11483do);
        if (f9751catch) {
            m11475else("Started new load", j, cthis);
        }
        return new Cnew(resourceCallback, cgotoM11486do);
    }

    @Nullable
    /* renamed from: case, reason: not valid java name */
    private EngineResource<?> m11474case(Cthis cthis, boolean z, long j) {
        if (!z) {
            return null;
        }
        EngineResource<?> engineResourceM11477new = m11477new(cthis);
        if (engineResourceM11477new != null) {
            if (f9751catch) {
                m11475else("Loaded resource from active resources", j, cthis);
            }
            return engineResourceM11477new;
        }
        EngineResource<?> engineResourceM11478try = m11478try(cthis);
        if (engineResourceM11478try == null) {
            return null;
        }
        if (f9751catch) {
            m11475else("Loaded resource from cache", j, cthis);
        }
        return engineResourceM11478try;
    }

    /* renamed from: else, reason: not valid java name */
    private static void m11475else(String str, long j, Key key) {
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append(" in ");
        sb.append(sv0.m7612do(j));
        sb.append("ms, key: ");
        sb.append(key);
    }

    /* renamed from: if, reason: not valid java name */
    private EngineResource<?> m11476if(Key key) {
        Resource<?> resourceRemove = this.f9756for.remove(key);
        if (resourceRemove == null) {
            return null;
        }
        return resourceRemove instanceof EngineResource ? (EngineResource) resourceRemove : new EngineResource<>(resourceRemove, true, true, key, this);
    }

    @Nullable
    /* renamed from: new, reason: not valid java name */
    private EngineResource<?> m11477new(Key key) {
        EngineResource<?> engineResourceM11317try = this.f9757goto.m11317try(key);
        if (engineResourceM11317try != null) {
            engineResourceM11317try.m11356do();
        }
        return engineResourceM11317try;
    }

    /* renamed from: try, reason: not valid java name */
    private EngineResource<?> m11478try(Key key) {
        EngineResource<?> engineResourceM11476if = m11476if(key);
        if (engineResourceM11476if != null) {
            engineResourceM11476if.m11356do();
            this.f9757goto.m11311do(key, engineResourceM11476if);
        }
        return engineResourceM11476if;
    }

    /* renamed from: do, reason: not valid java name */
    public void m11479do() {
        this.f9753case.getDiskCache().clear();
    }

    /* renamed from: for, reason: not valid java name */
    public <R> Cnew m11480for(com.bumptech.glide.Cfor cfor, Object obj, Key key, int i, int i2, Class<?> cls, Class<R> cls2, Ctry ctry, Ccase ccase, Map<Class<?>, Transformation<?>> map, boolean z, boolean z2, f81 f81Var, boolean z3, boolean z4, boolean z5, boolean z6, ResourceCallback resourceCallback, Executor executor) {
        long jM7613if = f9751catch ? sv0.m7613if() : 0L;
        Cthis cthisM11426do = this.f9758if.m11426do(obj, key, i, i2, map, cls, cls2, f81Var);
        synchronized (this) {
            EngineResource<?> engineResourceM11474case = m11474case(cthisM11426do, z3, jM7613if);
            if (engineResourceM11474case == null) {
                return m11473break(cfor, obj, key, i, i2, cls, cls2, ctry, ccase, map, z, z2, f81Var, z3, z4, z5, z6, resourceCallback, executor, cthisM11426do, jM7613if);
            }
            resourceCallback.onResourceReady(engineResourceM11474case, com.bumptech.glide.load.Cdo.MEMORY_CACHE);
            return null;
        }
    }

    /* renamed from: goto, reason: not valid java name */
    public void m11481goto(Resource<?> resource) {
        if (!(resource instanceof EngineResource)) {
            throw new IllegalArgumentException("Cannot release anything but an EngineResource");
        }
        ((EngineResource) resource).m11359new();
    }

    @Override // com.bumptech.glide.load.engine.EngineJobListener
    public synchronized void onEngineJobCancelled(Cgoto<?> cgoto, Key key) {
        this.f9754do.m11469try(key, cgoto);
    }

    @Override // com.bumptech.glide.load.engine.EngineJobListener
    public synchronized void onEngineJobComplete(Cgoto<?> cgoto, Key key, EngineResource<?> engineResource) {
        if (engineResource != null) {
            if (engineResource.m11357for()) {
                this.f9757goto.m11311do(key, engineResource);
            }
            this.f9754do.m11469try(key, cgoto);
        } else {
            this.f9754do.m11469try(key, cgoto);
        }
    }

    @Override // com.bumptech.glide.load.engine.EngineResource.ResourceListener
    public void onResourceReleased(Key key, EngineResource<?> engineResource) {
        this.f9757goto.m11316new(key);
        if (engineResource.m11357for()) {
            this.f9756for.put(key, engineResource);
        } else {
            this.f9760try.m11591do(engineResource, false);
        }
    }

    @Override // com.bumptech.glide.load.engine.cache.MemoryCache.ResourceRemovedListener
    public void onResourceRemoved(@NonNull Resource<?> resource) {
        this.f9760try.m11591do(resource, true);
    }

    @VisibleForTesting
    /* renamed from: this, reason: not valid java name */
    public void m11482this() {
        this.f9759new.m11487if();
        this.f9753case.m11485do();
        this.f9757goto.m11314goto();
    }

    @VisibleForTesting
    public Celse(MemoryCache memoryCache, DiskCache.Factory factory, GlideExecutor glideExecutor, GlideExecutor glideExecutor2, GlideExecutor glideExecutor3, GlideExecutor glideExecutor4, Cclass cclass, Cbreak cbreak, ActiveResources activeResources, Cif cif, Cdo cdo, Cwhile cwhile, boolean z) {
        this.f9756for = memoryCache;
        Cfor cfor = new Cfor(factory);
        this.f9753case = cfor;
        ActiveResources activeResources2 = activeResources == null ? new ActiveResources(z) : activeResources;
        this.f9757goto = activeResources2;
        activeResources2.m11312else(this);
        this.f9758if = cbreak == null ? new Cbreak() : cbreak;
        this.f9754do = cclass == null ? new Cclass() : cclass;
        this.f9759new = cif == null ? new Cif(glideExecutor, glideExecutor2, glideExecutor3, glideExecutor4, this, this) : cif;
        this.f9755else = cdo == null ? new Cdo(cfor) : cdo;
        this.f9760try = cwhile == null ? new Cwhile() : cwhile;
        memoryCache.setResourceRemovedListener(this);
    }
}
