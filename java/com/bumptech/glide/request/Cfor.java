package com.bumptech.glide.request;

import android.graphics.drawable.Drawable;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.bumptech.glide.load.engine.Ccatch;
import com.bumptech.glide.request.target.SizeReadyCallback;
import com.bumptech.glide.request.target.Target;
import com.bumptech.glide.request.transition.Transition;
import com.bumptech.glide.util.Ccase;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* renamed from: com.bumptech.glide.request.for, reason: invalid class name */
/* loaded from: classes.dex */
public class Cfor<R> implements FutureTarget<R>, RequestListener<R> {

    /* renamed from: catch, reason: not valid java name */
    private static final Cdo f10348catch = new Cdo();

    /* renamed from: break, reason: not valid java name */
    @Nullable
    @GuardedBy("this")
    private Ccatch f10349break;

    /* renamed from: case, reason: not valid java name */
    @Nullable
    @GuardedBy("this")
    private Request f10350case;

    /* renamed from: do, reason: not valid java name */
    private final int f10351do;

    /* renamed from: else, reason: not valid java name */
    @GuardedBy("this")
    private boolean f10352else;

    /* renamed from: for, reason: not valid java name */
    private final boolean f10353for;

    /* renamed from: goto, reason: not valid java name */
    @GuardedBy("this")
    private boolean f10354goto;

    /* renamed from: if, reason: not valid java name */
    private final int f10355if;

    /* renamed from: new, reason: not valid java name */
    private final Cdo f10356new;

    /* renamed from: this, reason: not valid java name */
    @GuardedBy("this")
    private boolean f10357this;

    /* renamed from: try, reason: not valid java name */
    @Nullable
    @GuardedBy("this")
    private R f10358try;

    @VisibleForTesting
    /* renamed from: com.bumptech.glide.request.for$do, reason: invalid class name */
    public static class Cdo {
        /* renamed from: do, reason: not valid java name */
        public void m11954do(Object obj) {
            obj.notifyAll();
        }

        /* renamed from: if, reason: not valid java name */
        public void m11955if(Object obj, long j) throws InterruptedException {
            obj.wait(j);
        }
    }

    public Cfor(int i, int i2) {
        this(i, i2, true, f10348catch);
    }

    /* renamed from: do, reason: not valid java name */
    private synchronized R m11953do(Long l) throws ExecutionException, InterruptedException, TimeoutException {
        if (this.f10353for && !isDone()) {
            Ccase.m12043do();
        }
        if (this.f10352else) {
            throw new CancellationException();
        }
        if (this.f10357this) {
            throw new ExecutionException(this.f10349break);
        }
        if (this.f10354goto) {
            return this.f10358try;
        }
        if (l == null) {
            this.f10356new.m11955if(this, 0L);
        } else if (l.longValue() > 0) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            long jLongValue = l.longValue() + jCurrentTimeMillis;
            while (!isDone() && jCurrentTimeMillis < jLongValue) {
                this.f10356new.m11955if(this, jLongValue - jCurrentTimeMillis);
                jCurrentTimeMillis = System.currentTimeMillis();
            }
        }
        if (Thread.interrupted()) {
            throw new InterruptedException();
        }
        if (this.f10357this) {
            throw new ExecutionException(this.f10349break);
        }
        if (this.f10352else) {
            throw new CancellationException();
        }
        if (!this.f10354goto) {
            throw new TimeoutException();
        }
        return this.f10358try;
    }

    @Override // java.util.concurrent.Future
    public boolean cancel(boolean z) {
        synchronized (this) {
            if (isDone()) {
                return false;
            }
            this.f10352else = true;
            this.f10356new.m11954do(this);
            Request request = null;
            if (z) {
                Request request2 = this.f10350case;
                this.f10350case = null;
                request = request2;
            }
            if (request != null) {
                request.clear();
            }
            return true;
        }
    }

    @Override // java.util.concurrent.Future
    public R get() throws ExecutionException, InterruptedException {
        try {
            return m11953do(null);
        } catch (TimeoutException e) {
            throw new AssertionError(e);
        }
    }

    @Override // com.bumptech.glide.request.target.Target
    @Nullable
    public synchronized Request getRequest() {
        return this.f10350case;
    }

    @Override // com.bumptech.glide.request.target.Target
    public void getSize(@NonNull SizeReadyCallback sizeReadyCallback) {
        sizeReadyCallback.onSizeReady(this.f10351do, this.f10355if);
    }

    @Override // java.util.concurrent.Future
    public synchronized boolean isCancelled() {
        return this.f10352else;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0010  */
    @Override // java.util.concurrent.Future
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public synchronized boolean isDone() {
        boolean z;
        if (this.f10352else || this.f10354goto) {
            z = true;
        } else if (!this.f10357this) {
            z = false;
        }
        return z;
    }

    @Override // com.bumptech.glide.manager.LifecycleListener
    public void onDestroy() {
    }

    @Override // com.bumptech.glide.request.target.Target
    public void onLoadCleared(@Nullable Drawable drawable) {
    }

    @Override // com.bumptech.glide.request.target.Target
    public synchronized void onLoadFailed(@Nullable Drawable drawable) {
    }

    @Override // com.bumptech.glide.request.target.Target
    public void onLoadStarted(@Nullable Drawable drawable) {
    }

    @Override // com.bumptech.glide.request.target.Target
    public synchronized void onResourceReady(@NonNull R r, @Nullable Transition<? super R> transition) {
    }

    @Override // com.bumptech.glide.manager.LifecycleListener
    public void onStart() {
    }

    @Override // com.bumptech.glide.manager.LifecycleListener
    public void onStop() {
    }

    @Override // com.bumptech.glide.request.target.Target
    public void removeCallback(@NonNull SizeReadyCallback sizeReadyCallback) {
    }

    @Override // com.bumptech.glide.request.target.Target
    public synchronized void setRequest(@Nullable Request request) {
        this.f10350case = request;
    }

    public Cfor(int i, int i2, boolean z, Cdo cdo) {
        this.f10351do = i;
        this.f10355if = i2;
        this.f10353for = z;
        this.f10356new = cdo;
    }

    @Override // com.bumptech.glide.request.RequestListener
    public synchronized boolean onLoadFailed(@Nullable Ccatch ccatch, Object obj, Target<R> target, boolean z) {
        this.f10357this = true;
        this.f10349break = ccatch;
        this.f10356new.m11954do(this);
        return false;
    }

    @Override // com.bumptech.glide.request.RequestListener
    public synchronized boolean onResourceReady(R r, Object obj, Target<R> target, com.bumptech.glide.load.Cdo cdo, boolean z) {
        this.f10354goto = true;
        this.f10358try = r;
        this.f10356new.m11954do(this);
        return false;
    }

    @Override // java.util.concurrent.Future
    public R get(long j, @NonNull TimeUnit timeUnit) throws ExecutionException, InterruptedException, TimeoutException {
        return m11953do(Long.valueOf(timeUnit.toMillis(j)));
    }
}
