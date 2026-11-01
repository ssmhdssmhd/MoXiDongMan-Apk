package io.reactivex.internal.operators.maybe;

import android.support.v4.r6;
import android.support.v4.t80;
import android.support.v4.tw1;
import io.reactivex.Cfor;
import io.reactivex.MaybeObserver;
import io.reactivex.MaybeSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.functions.Cif;
import io.reactivex.internal.util.Cbreak;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* renamed from: io.reactivex.internal.operators.maybe.case, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Ccase<T> extends Cfor<T> {

    /* renamed from: if, reason: not valid java name */
    public final Iterable<? extends MaybeSource<? extends T>> f26094if;

    /* renamed from: io.reactivex.internal.operators.maybe.case$do, reason: invalid class name */
    public static final class Cdo<T> extends AtomicInteger implements MaybeObserver<T>, Subscription {
        private static final long serialVersionUID = 3520831347801429610L;
        public final Subscriber<? super T> downstream;
        public long produced;
        public final Iterator<? extends MaybeSource<? extends T>> sources;
        public final AtomicLong requested = new AtomicLong();
        public final tw1 disposables = new tw1();
        public final AtomicReference<Object> current = new AtomicReference<>(Cbreak.COMPLETE);

        public Cdo(Subscriber<? super T> subscriber, Iterator<? extends MaybeSource<? extends T>> it) {
            this.downstream = subscriber;
            this.sources = it;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            this.disposables.dispose();
        }

        public void drain() {
            if (getAndIncrement() != 0) {
                return;
            }
            AtomicReference<Object> atomicReference = this.current;
            Subscriber<? super T> subscriber = this.downstream;
            tw1 tw1Var = this.disposables;
            while (!tw1Var.isDisposed()) {
                Object obj = atomicReference.get();
                if (obj != null) {
                    boolean z = true;
                    if (obj != Cbreak.COMPLETE) {
                        long j = this.produced;
                        if (j != this.requested.get()) {
                            this.produced = j + 1;
                            atomicReference.lazySet(null);
                            subscriber.onNext(obj);
                        } else {
                            z = false;
                        }
                    } else {
                        atomicReference.lazySet(null);
                    }
                    if (z && !tw1Var.isDisposed()) {
                        try {
                            if (this.sources.hasNext()) {
                                try {
                                    ((MaybeSource) Cif.m29468else(this.sources.next(), "The source Iterator returned a null MaybeSource")).subscribe(this);
                                } catch (Throwable th) {
                                    t80.m7781if(th);
                                    subscriber.onError(th);
                                    return;
                                }
                            } else {
                                subscriber.onComplete();
                            }
                        } catch (Throwable th2) {
                            t80.m7781if(th2);
                            subscriber.onError(th2);
                            return;
                        }
                    }
                }
                if (decrementAndGet() == 0) {
                    return;
                }
            }
            atomicReference.lazySet(null);
        }

        @Override // io.reactivex.MaybeObserver
        public void onComplete() {
            this.current.lazySet(Cbreak.COMPLETE);
            drain();
        }

        @Override // io.reactivex.MaybeObserver
        public void onError(Throwable th) {
            this.downstream.onError(th);
        }

        @Override // io.reactivex.MaybeObserver
        public void onSubscribe(Disposable disposable) {
            this.disposables.replace(disposable);
        }

        @Override // io.reactivex.MaybeObserver
        public void onSuccess(T t) {
            this.current.lazySet(t);
            drain();
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            if (io.reactivex.internal.subscriptions.Cfor.validate(j)) {
                r6.m6775do(this.requested, j);
                drain();
            }
        }
    }

    public Ccase(Iterable<? extends MaybeSource<? extends T>> iterable) {
        this.f26094if = iterable;
    }

    @Override // io.reactivex.Cfor
    public void n5(Subscriber<? super T> subscriber) {
        try {
            Cdo cdo = new Cdo(subscriber, (Iterator) Cif.m29468else(this.f26094if.iterator(), "The sources Iterable returned a null Iterator"));
            subscriber.onSubscribe(cdo);
            cdo.drain();
        } catch (Throwable th) {
            t80.m7781if(th);
            io.reactivex.internal.subscriptions.Cdo.error(th, subscriber);
        }
    }
}
