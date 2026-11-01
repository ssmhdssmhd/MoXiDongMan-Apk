package com.bumptech.glide.load.engine;

import android.support.v4.cf1;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import androidx.core.util.Pools;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.engine.DecodeJob;
import com.bumptech.glide.load.engine.EngineResource;
import com.bumptech.glide.load.engine.executor.GlideExecutor;
import com.bumptech.glide.request.ResourceCallback;
import com.bumptech.glide.util.pool.FactoryPools;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicInteger;

/* renamed from: com.bumptech.glide.load.engine.goto, reason: invalid class name */
/* loaded from: classes.dex */
class Cgoto<R> implements DecodeJob.Callback<R>, FactoryPools.Poolable {

    /* renamed from: default, reason: not valid java name */
    private static final Cfor f9812default = new Cfor();

    /* renamed from: break, reason: not valid java name */
    private final GlideExecutor f9813break;

    /* renamed from: case, reason: not valid java name */
    private final EngineJobListener f9814case;

    /* renamed from: catch, reason: not valid java name */
    private final AtomicInteger f9815catch;

    /* renamed from: class, reason: not valid java name */
    private Key f9816class;

    /* renamed from: const, reason: not valid java name */
    private boolean f9817const;

    /* renamed from: do, reason: not valid java name */
    public final Ctry f9818do;

    /* renamed from: else, reason: not valid java name */
    private final GlideExecutor f9819else;

    /* renamed from: final, reason: not valid java name */
    private boolean f9820final;

    /* renamed from: for, reason: not valid java name */
    private final EngineResource.ResourceListener f9821for;

    /* renamed from: goto, reason: not valid java name */
    private final GlideExecutor f9822goto;

    /* renamed from: if, reason: not valid java name */
    private final com.bumptech.glide.util.pool.Cdo f9823if;

    /* renamed from: import, reason: not valid java name */
    public com.bumptech.glide.load.Cdo f9824import;

    /* renamed from: native, reason: not valid java name */
    private boolean f9825native;

    /* renamed from: new, reason: not valid java name */
    private final Pools.Pool<Cgoto<?>> f9826new;

    /* renamed from: public, reason: not valid java name */
    public Ccatch f9827public;

    /* renamed from: return, reason: not valid java name */
    private boolean f9828return;

    /* renamed from: static, reason: not valid java name */
    public EngineResource<?> f9829static;

    /* renamed from: super, reason: not valid java name */
    private boolean f9830super;

    /* renamed from: switch, reason: not valid java name */
    private DecodeJob<R> f9831switch;

    /* renamed from: this, reason: not valid java name */
    private final GlideExecutor f9832this;

    /* renamed from: throw, reason: not valid java name */
    private boolean f9833throw;

    /* renamed from: throws, reason: not valid java name */
    private volatile boolean f9834throws;

    /* renamed from: try, reason: not valid java name */
    private final Cfor f9835try;

    /* renamed from: while, reason: not valid java name */
    private Resource<?> f9836while;

    /* renamed from: com.bumptech.glide.load.engine.goto$do, reason: invalid class name */
    public class Cdo implements Runnable {

        /* renamed from: do, reason: not valid java name */
        private final ResourceCallback f9837do;

        public Cdo(ResourceCallback resourceCallback) {
            this.f9837do = resourceCallback;
        }

        @Override // java.lang.Runnable
        public void run() {
            synchronized (this.f9837do.getLock()) {
                synchronized (Cgoto.this) {
                    if (Cgoto.this.f9818do.m11536if(this.f9837do)) {
                        Cgoto.this.m11526if(this.f9837do);
                    }
                    Cgoto.this.m11531try();
                }
            }
        }
    }

    @VisibleForTesting
    /* renamed from: com.bumptech.glide.load.engine.goto$for, reason: invalid class name */
    public static class Cfor {
        /* renamed from: do, reason: not valid java name */
        public <R> EngineResource<R> m11532do(Resource<R> resource, boolean z, Key key, EngineResource.ResourceListener resourceListener) {
            return new EngineResource<>(resource, z, true, key, resourceListener);
        }
    }

    /* renamed from: com.bumptech.glide.load.engine.goto$if, reason: invalid class name */
    public class Cif implements Runnable {

        /* renamed from: do, reason: not valid java name */
        private final ResourceCallback f9839do;

        public Cif(ResourceCallback resourceCallback) {
            this.f9839do = resourceCallback;
        }

        @Override // java.lang.Runnable
        public void run() {
            synchronized (this.f9839do.getLock()) {
                synchronized (Cgoto.this) {
                    if (Cgoto.this.f9818do.m11536if(this.f9839do)) {
                        Cgoto.this.f9829static.m11356do();
                        Cgoto.this.m11524for(this.f9839do);
                        Cgoto.this.m11528super(this.f9839do);
                    }
                    Cgoto.this.m11531try();
                }
            }
        }
    }

    /* renamed from: com.bumptech.glide.load.engine.goto$new, reason: invalid class name */
    public static final class Cnew {

        /* renamed from: do, reason: not valid java name */
        public final ResourceCallback f9841do;

        /* renamed from: if, reason: not valid java name */
        public final Executor f9842if;

        public Cnew(ResourceCallback resourceCallback, Executor executor) {
            this.f9841do = resourceCallback;
            this.f9842if = executor;
        }

        public boolean equals(Object obj) {
            if (obj instanceof Cnew) {
                return this.f9841do.equals(((Cnew) obj).f9841do);
            }
            return false;
        }

        public int hashCode() {
            return this.f9841do.hashCode();
        }
    }

    /* renamed from: com.bumptech.glide.load.engine.goto$try, reason: invalid class name */
    public static final class Ctry implements Iterable<Cnew> {

        /* renamed from: do, reason: not valid java name */
        private final List<Cnew> f9843do;

        public Ctry() {
            this(new ArrayList(2));
        }

        /* renamed from: new, reason: not valid java name */
        private static Cnew m11533new(ResourceCallback resourceCallback) {
            return new Cnew(resourceCallback, com.bumptech.glide.util.Cnew.m12078do());
        }

        public void clear() {
            this.f9843do.clear();
        }

        /* renamed from: do, reason: not valid java name */
        public void m11534do(ResourceCallback resourceCallback, Executor executor) {
            this.f9843do.add(new Cnew(resourceCallback, executor));
        }

        /* renamed from: for, reason: not valid java name */
        public Ctry m11535for() {
            return new Ctry(new ArrayList(this.f9843do));
        }

        /* renamed from: if, reason: not valid java name */
        public boolean m11536if(ResourceCallback resourceCallback) {
            return this.f9843do.contains(m11533new(resourceCallback));
        }

        public boolean isEmpty() {
            return this.f9843do.isEmpty();
        }

        @Override // java.lang.Iterable
        @NonNull
        public Iterator<Cnew> iterator() {
            return this.f9843do.iterator();
        }

        public int size() {
            return this.f9843do.size();
        }

        /* renamed from: try, reason: not valid java name */
        public void m11537try(ResourceCallback resourceCallback) {
            this.f9843do.remove(m11533new(resourceCallback));
        }

        public Ctry(List<Cnew> list) {
            this.f9843do = list;
        }
    }

    public Cgoto(GlideExecutor glideExecutor, GlideExecutor glideExecutor2, GlideExecutor glideExecutor3, GlideExecutor glideExecutor4, EngineJobListener engineJobListener, EngineResource.ResourceListener resourceListener, Pools.Pool<Cgoto<?>> pool) {
        this(glideExecutor, glideExecutor2, glideExecutor3, glideExecutor4, engineJobListener, resourceListener, pool, f9812default);
    }

    /* renamed from: break, reason: not valid java name */
    private boolean m11516break() {
        return this.f9828return || this.f9825native || this.f9834throws;
    }

    /* renamed from: case, reason: not valid java name */
    private GlideExecutor m11517case() {
        return this.f9820final ? this.f9832this : this.f9830super ? this.f9813break : this.f9822goto;
    }

    /* renamed from: final, reason: not valid java name */
    private synchronized void m11518final() {
        if (this.f9816class == null) {
            throw new IllegalArgumentException();
        }
        this.f9818do.clear();
        this.f9816class = null;
        this.f9829static = null;
        this.f9836while = null;
        this.f9828return = false;
        this.f9834throws = false;
        this.f9825native = false;
        this.f9831switch.m11343native(false);
        this.f9831switch = null;
        this.f9827public = null;
        this.f9824import = null;
        this.f9826new.release(this);
    }

    /* renamed from: catch, reason: not valid java name */
    public void m11519catch() {
        synchronized (this) {
            this.f9823if.mo12091for();
            if (this.f9834throws) {
                m11518final();
                return;
            }
            if (this.f9818do.isEmpty()) {
                throw new IllegalStateException("Received an exception without any callbacks to notify");
            }
            if (this.f9828return) {
                throw new IllegalStateException("Already failed once");
            }
            this.f9828return = true;
            Key key = this.f9816class;
            Ctry ctryM11535for = this.f9818do.m11535for();
            m11523else(ctryM11535for.size() + 1);
            this.f9814case.onEngineJobComplete(this, key, null);
            Iterator<Cnew> it = ctryM11535for.iterator();
            while (it.hasNext()) {
                Cnew next = it.next();
                next.f9842if.execute(new Cdo(next.f9841do));
            }
            m11531try();
        }
    }

    /* renamed from: class, reason: not valid java name */
    public void m11520class() {
        synchronized (this) {
            this.f9823if.mo12091for();
            if (this.f9834throws) {
                this.f9836while.recycle();
                m11518final();
                return;
            }
            if (this.f9818do.isEmpty()) {
                throw new IllegalStateException("Received a resource without any callbacks to notify");
            }
            if (this.f9825native) {
                throw new IllegalStateException("Already have resource");
            }
            this.f9829static = this.f9835try.m11532do(this.f9836while, this.f9817const, this.f9816class, this.f9821for);
            this.f9825native = true;
            Ctry ctryM11535for = this.f9818do.m11535for();
            m11523else(ctryM11535for.size() + 1);
            this.f9814case.onEngineJobComplete(this, this.f9816class, this.f9829static);
            Iterator<Cnew> it = ctryM11535for.iterator();
            while (it.hasNext()) {
                Cnew next = it.next();
                next.f9842if.execute(new Cif(next.f9841do));
            }
            m11531try();
        }
    }

    /* renamed from: const, reason: not valid java name */
    public boolean m11521const() {
        return this.f9833throw;
    }

    /* renamed from: do, reason: not valid java name */
    public synchronized void m11522do(ResourceCallback resourceCallback, Executor executor) {
        this.f9823if.mo12091for();
        this.f9818do.m11534do(resourceCallback, executor);
        boolean z = true;
        if (this.f9825native) {
            m11523else(1);
            executor.execute(new Cif(resourceCallback));
        } else if (this.f9828return) {
            m11523else(1);
            executor.execute(new Cdo(resourceCallback));
        } else {
            if (this.f9834throws) {
                z = false;
            }
            cf1.m897do(z, "Cannot add callbacks to a cancelled EngineJob");
        }
    }

    /* renamed from: else, reason: not valid java name */
    public synchronized void m11523else(int i) {
        EngineResource<?> engineResource;
        cf1.m897do(m11516break(), "Not yet complete!");
        if (this.f9815catch.getAndAdd(i) == 0 && (engineResource = this.f9829static) != null) {
            engineResource.m11356do();
        }
    }

    @GuardedBy("this")
    /* renamed from: for, reason: not valid java name */
    public void m11524for(ResourceCallback resourceCallback) {
        try {
            resourceCallback.onResourceReady(this.f9829static, this.f9824import);
        } catch (Throwable th) {
            throw new com.bumptech.glide.load.engine.Cdo(th);
        }
    }

    @Override // com.bumptech.glide.util.pool.FactoryPools.Poolable
    @NonNull
    public com.bumptech.glide.util.pool.Cdo getVerifier() {
        return this.f9823if;
    }

    @VisibleForTesting
    /* renamed from: goto, reason: not valid java name */
    public synchronized Cgoto<R> m11525goto(Key key, boolean z, boolean z2, boolean z3, boolean z4) {
        this.f9816class = key;
        this.f9817const = z;
        this.f9820final = z2;
        this.f9830super = z3;
        this.f9833throw = z4;
        return this;
    }

    @GuardedBy("this")
    /* renamed from: if, reason: not valid java name */
    public void m11526if(ResourceCallback resourceCallback) {
        try {
            resourceCallback.onLoadFailed(this.f9827public);
        } catch (Throwable th) {
            throw new com.bumptech.glide.load.engine.Cdo(th);
        }
    }

    /* renamed from: new, reason: not valid java name */
    public void m11527new() {
        if (m11516break()) {
            return;
        }
        this.f9834throws = true;
        this.f9831switch.m11340do();
        this.f9814case.onEngineJobCancelled(this, this.f9816class);
    }

    @Override // com.bumptech.glide.load.engine.DecodeJob.Callback
    public void onLoadFailed(Ccatch ccatch) {
        synchronized (this) {
            this.f9827public = ccatch;
        }
        m11519catch();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.bumptech.glide.load.engine.DecodeJob.Callback
    public void onResourceReady(Resource<R> resource, com.bumptech.glide.load.Cdo cdo) {
        synchronized (this) {
            this.f9836while = resource;
            this.f9824import = cdo;
        }
        m11520class();
    }

    @Override // com.bumptech.glide.load.engine.DecodeJob.Callback
    public void reschedule(DecodeJob<?> decodeJob) {
        m11517case().execute(decodeJob);
    }

    /* renamed from: super, reason: not valid java name */
    public synchronized void m11528super(ResourceCallback resourceCallback) {
        this.f9823if.mo12091for();
        this.f9818do.m11537try(resourceCallback);
        if (this.f9818do.isEmpty()) {
            m11527new();
            if ((this.f9825native || this.f9828return) && this.f9815catch.get() == 0) {
                m11518final();
            }
        }
    }

    /* renamed from: this, reason: not valid java name */
    public synchronized boolean m11529this() {
        return this.f9834throws;
    }

    /* renamed from: throw, reason: not valid java name */
    public synchronized void m11530throw(DecodeJob<R> decodeJob) {
        this.f9831switch = decodeJob;
        (decodeJob.m11339default() ? this.f9819else : m11517case()).execute(decodeJob);
    }

    /* renamed from: try, reason: not valid java name */
    public void m11531try() {
        EngineResource<?> engineResource;
        synchronized (this) {
            this.f9823if.mo12091for();
            cf1.m897do(m11516break(), "Not yet complete!");
            int iDecrementAndGet = this.f9815catch.decrementAndGet();
            cf1.m897do(iDecrementAndGet >= 0, "Can't decrement below 0");
            if (iDecrementAndGet == 0) {
                engineResource = this.f9829static;
                m11518final();
            } else {
                engineResource = null;
            }
        }
        if (engineResource != null) {
            engineResource.m11359new();
        }
    }

    @VisibleForTesting
    public Cgoto(GlideExecutor glideExecutor, GlideExecutor glideExecutor2, GlideExecutor glideExecutor3, GlideExecutor glideExecutor4, EngineJobListener engineJobListener, EngineResource.ResourceListener resourceListener, Pools.Pool<Cgoto<?>> pool, Cfor cfor) {
        this.f9818do = new Ctry();
        this.f9823if = com.bumptech.glide.util.pool.Cdo.m12090do();
        this.f9815catch = new AtomicInteger();
        this.f9819else = glideExecutor;
        this.f9822goto = glideExecutor2;
        this.f9832this = glideExecutor3;
        this.f9813break = glideExecutor4;
        this.f9814case = engineJobListener;
        this.f9821for = resourceListener;
        this.f9826new = pool;
        this.f9835try = cfor;
    }
}
