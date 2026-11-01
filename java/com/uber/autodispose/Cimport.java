package com.uber.autodispose;

import android.support.v4.k10;
import com.uber.autodispose.observers.AutoDisposingSubscriber;
import io.reactivex.CompletableSource;
import io.reactivex.disposables.Disposable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* renamed from: com.uber.autodispose.import, reason: invalid class name */
/* loaded from: classes2.dex */
final class Cimport<T> extends AtomicInteger implements AutoDisposingSubscriber<T> {
    private final Subscriber<? super T> delegate;
    private final CompletableSource scope;
    public final AtomicReference<Subscription> mainSubscription = new AtomicReference<>();
    public final AtomicReference<Disposable> scopeDisposable = new AtomicReference<>();
    private final com.uber.autodispose.Cdo error = new com.uber.autodispose.Cdo();
    private final AtomicReference<Subscription> ref = new AtomicReference<>();
    private final AtomicLong requested = new AtomicLong();

    /* renamed from: com.uber.autodispose.import$do, reason: invalid class name */
    public class Cdo extends k10 {
        public Cdo() {
        }

        @Override // io.reactivex.CompletableObserver, io.reactivex.MaybeObserver
        public void onComplete() {
            Cimport.this.scopeDisposable.lazySet(Cif.DISPOSED);
            Cnative.cancel(Cimport.this.mainSubscription);
        }

        @Override // io.reactivex.CompletableObserver
        public void onError(Throwable th) {
            Cimport.this.scopeDisposable.lazySet(Cif.DISPOSED);
            Cimport.this.onError(th);
        }
    }

    public Cimport(CompletableSource completableSource, Subscriber<? super T> subscriber) {
        this.scope = completableSource;
        this.delegate = subscriber;
    }

    @Override // org.reactivestreams.Subscription
    public void cancel() {
        Cif.dispose(this.scopeDisposable);
        Cnative.cancel(this.mainSubscription);
    }

    @Override // com.uber.autodispose.observers.AutoDisposingSubscriber
    public Subscriber<? super T> delegateSubscriber() {
        return this.delegate;
    }

    @Override // io.reactivex.disposables.Disposable
    public void dispose() {
        cancel();
    }

    @Override // io.reactivex.disposables.Disposable
    public boolean isDisposed() {
        return this.mainSubscription.get() == Cnative.CANCELLED;
    }

    @Override // org.reactivestreams.Subscriber
    public void onComplete() {
        if (isDisposed()) {
            return;
        }
        this.mainSubscription.lazySet(Cnative.CANCELLED);
        Cif.dispose(this.scopeDisposable);
        Creturn.m24645if(this.delegate, this, this.error);
    }

    @Override // org.reactivestreams.Subscriber
    public void onError(Throwable th) {
        if (isDisposed()) {
            return;
        }
        this.mainSubscription.lazySet(Cnative.CANCELLED);
        Cif.dispose(this.scopeDisposable);
        Creturn.m24646new(this.delegate, th, this, this.error);
    }

    @Override // org.reactivestreams.Subscriber
    public void onNext(T t) {
        if (isDisposed() || !Creturn.m24642case(this.delegate, t, this, this.error)) {
            return;
        }
        this.mainSubscription.lazySet(Cnative.CANCELLED);
        Cif.dispose(this.scopeDisposable);
    }

    @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
    public void onSubscribe(Subscription subscription) {
        Cdo cdo = new Cdo();
        if (Celse.m24612for(this.scopeDisposable, cdo, Cimport.class)) {
            this.delegate.onSubscribe(this);
            this.scope.subscribe(cdo);
            if (Celse.m24614new(this.mainSubscription, subscription, Cimport.class)) {
                Cnative.deferredSetOnce(this.ref, this.requested, subscription);
            }
        }
    }

    @Override // org.reactivestreams.Subscription
    public void request(long j) {
        Cnative.deferredRequest(this.ref, this.requested, j);
    }
}
