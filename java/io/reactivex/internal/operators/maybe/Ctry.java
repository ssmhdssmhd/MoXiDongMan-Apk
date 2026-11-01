package io.reactivex.internal.operators.maybe;

import android.support.v4.h4;
import android.support.v4.jp1;
import android.support.v4.r6;
import android.support.v4.tw1;
import io.reactivex.Cfor;
import io.reactivex.MaybeObserver;
import io.reactivex.MaybeSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.util.Cbreak;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* renamed from: io.reactivex.internal.operators.maybe.try, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Ctry<T> extends Cfor<T> {

    /* renamed from: if, reason: not valid java name */
    public final MaybeSource<? extends T>[] f26250if;

    /* renamed from: io.reactivex.internal.operators.maybe.try$do, reason: invalid class name */
    public static final class Cdo<T> extends AtomicInteger implements MaybeObserver<T>, Subscription {
        private static final long serialVersionUID = 3520831347801429610L;
        public final Subscriber<? super T> downstream;
        public int index;
        public long produced;
        public final MaybeSource<? extends T>[] sources;
        public final AtomicLong requested = new AtomicLong();
        public final tw1 disposables = new tw1();
        public final AtomicReference<Object> current = new AtomicReference<>(Cbreak.COMPLETE);
        public final h4 errors = new h4();

        public Cdo(Subscriber<? super T> subscriber, MaybeSource<? extends T>[] maybeSourceArr) {
            this.downstream = subscriber;
            this.sources = maybeSourceArr;
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
                        int i = this.index;
                        MaybeSource<? extends T>[] maybeSourceArr = this.sources;
                        if (i == maybeSourceArr.length) {
                            if (this.errors.get() != null) {
                                subscriber.onError(this.errors.terminate());
                                return;
                            } else {
                                subscriber.onComplete();
                                return;
                            }
                        }
                        this.index = i + 1;
                        maybeSourceArr[i].subscribe(this);
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
            this.current.lazySet(Cbreak.COMPLETE);
            if (this.errors.addThrowable(th)) {
                drain();
            } else {
                jp1.l(th);
            }
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

    public Ctry(MaybeSource<? extends T>[] maybeSourceArr) {
        this.f26250if = maybeSourceArr;
    }

    @Override // io.reactivex.Cfor
    public void n5(Subscriber<? super T> subscriber) {
        Cdo cdo = new Cdo(subscriber, this.f26250if);
        subscriber.onSubscribe(cdo);
        cdo.drain();
    }
}
