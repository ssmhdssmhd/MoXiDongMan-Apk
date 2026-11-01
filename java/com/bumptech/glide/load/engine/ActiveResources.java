package com.bumptech.glide.load.engine;

import android.os.Process;
import android.support.v4.cf1;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.engine.EngineResource;
import com.bumptech.glide.util.Cnew;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;

/* loaded from: classes.dex */
final class ActiveResources {

    /* renamed from: case, reason: not valid java name */
    private volatile boolean f9549case;

    /* renamed from: do, reason: not valid java name */
    private final boolean f9550do;

    /* renamed from: else, reason: not valid java name */
    @Nullable
    private volatile DequeuedResourceCallback f9551else;

    /* renamed from: for, reason: not valid java name */
    @VisibleForTesting
    public final Map<Key, Cfor> f9552for;

    /* renamed from: if, reason: not valid java name */
    private final Executor f9553if;

    /* renamed from: new, reason: not valid java name */
    private final ReferenceQueue<EngineResource<?>> f9554new;

    /* renamed from: try, reason: not valid java name */
    private EngineResource.ResourceListener f9555try;

    @VisibleForTesting
    public interface DequeuedResourceCallback {
        void onResourceDequeued();
    }

    /* renamed from: com.bumptech.glide.load.engine.ActiveResources$do, reason: invalid class name */
    public class Cdo implements ThreadFactory {

        /* renamed from: com.bumptech.glide.load.engine.ActiveResources$do$do, reason: invalid class name and collision with other inner class name */
        public class RunnableC0025do implements Runnable {

            /* renamed from: do, reason: not valid java name */
            public final /* synthetic */ Runnable f9556do;

            public RunnableC0025do(Runnable runnable) {
                this.f9556do = runnable;
            }

            @Override // java.lang.Runnable
            public void run() throws SecurityException, IllegalArgumentException {
                Process.setThreadPriority(10);
                this.f9556do.run();
            }
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(@NonNull Runnable runnable) {
            return new Thread(new RunnableC0025do(runnable), "glide-active-resources");
        }
    }

    @VisibleForTesting
    /* renamed from: com.bumptech.glide.load.engine.ActiveResources$for, reason: invalid class name */
    public static final class Cfor extends WeakReference<EngineResource<?>> {

        /* renamed from: do, reason: not valid java name */
        public final Key f9558do;

        /* renamed from: for, reason: not valid java name */
        @Nullable
        public Resource<?> f9559for;

        /* renamed from: if, reason: not valid java name */
        public final boolean f9560if;

        public Cfor(@NonNull Key key, @NonNull EngineResource<?> engineResource, @NonNull ReferenceQueue<? super EngineResource<?>> referenceQueue, boolean z) {
            super(engineResource, referenceQueue);
            this.f9558do = (Key) cf1.m900new(key);
            this.f9559for = (engineResource.m11357for() && z) ? (Resource) cf1.m900new(engineResource.m11358if()) : null;
            this.f9560if = engineResource.m11357for();
        }

        /* renamed from: do, reason: not valid java name */
        public void m11318do() {
            this.f9559for = null;
            clear();
        }
    }

    /* renamed from: com.bumptech.glide.load.engine.ActiveResources$if, reason: invalid class name */
    public class Cif implements Runnable {
        public Cif() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ActiveResources.this.m11315if();
        }
    }

    public ActiveResources(boolean z) {
        this(z, Executors.newSingleThreadExecutor(new Cdo()));
    }

    @VisibleForTesting
    /* renamed from: case, reason: not valid java name */
    public void m11310case(DequeuedResourceCallback dequeuedResourceCallback) {
        this.f9551else = dequeuedResourceCallback;
    }

    /* renamed from: do, reason: not valid java name */
    public synchronized void m11311do(Key key, EngineResource<?> engineResource) {
        Cfor cforPut = this.f9552for.put(key, new Cfor(key, engineResource, this.f9554new, this.f9550do));
        if (cforPut != null) {
            cforPut.m11318do();
        }
    }

    /* renamed from: else, reason: not valid java name */
    public void m11312else(EngineResource.ResourceListener resourceListener) {
        synchronized (resourceListener) {
            synchronized (this) {
                this.f9555try = resourceListener;
            }
        }
    }

    /* renamed from: for, reason: not valid java name */
    public void m11313for(@NonNull Cfor cfor) {
        Resource<?> resource;
        synchronized (this) {
            this.f9552for.remove(cfor.f9558do);
            if (cfor.f9560if && (resource = cfor.f9559for) != null) {
                this.f9555try.onResourceReleased(cfor.f9558do, new EngineResource<>(resource, true, false, cfor.f9558do, this.f9555try));
            }
        }
    }

    @VisibleForTesting
    /* renamed from: goto, reason: not valid java name */
    public void m11314goto() {
        this.f9549case = true;
        Executor executor = this.f9553if;
        if (executor instanceof ExecutorService) {
            Cnew.m12079for((ExecutorService) executor);
        }
    }

    /* renamed from: if, reason: not valid java name */
    public void m11315if() {
        while (!this.f9549case) {
            try {
                m11313for((Cfor) this.f9554new.remove());
                DequeuedResourceCallback dequeuedResourceCallback = this.f9551else;
                if (dequeuedResourceCallback != null) {
                    dequeuedResourceCallback.onResourceDequeued();
                }
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
            }
        }
    }

    /* renamed from: new, reason: not valid java name */
    public synchronized void m11316new(Key key) {
        Cfor cforRemove = this.f9552for.remove(key);
        if (cforRemove != null) {
            cforRemove.m11318do();
        }
    }

    @Nullable
    /* renamed from: try, reason: not valid java name */
    public synchronized EngineResource<?> m11317try(Key key) {
        Cfor cfor = this.f9552for.get(key);
        if (cfor == null) {
            return null;
        }
        EngineResource<?> engineResource = cfor.get();
        if (engineResource == null) {
            m11313for(cfor);
        }
        return engineResource;
    }

    @VisibleForTesting
    public ActiveResources(boolean z, Executor executor) {
        this.f9552for = new HashMap();
        this.f9554new = new ReferenceQueue<>();
        this.f9550do = z;
        this.f9553if = executor;
        executor.execute(new Cif());
    }
}
