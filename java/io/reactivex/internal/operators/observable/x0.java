package io.reactivex.internal.operators.observable;

import android.support.v4.t80;
import android.support.v4.tw1;
import io.reactivex.Cnew;
import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Predicate;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes3.dex */
public final class x0<T> extends io.reactivex.internal.operators.observable.Cdo<T, T> {

    /* renamed from: for, reason: not valid java name */
    public final long f26995for;

    /* renamed from: if, reason: not valid java name */
    public final Predicate<? super Throwable> f26996if;

    /* renamed from: io.reactivex.internal.operators.observable.x0$do, reason: invalid class name */
    public static final class Cdo<T> extends AtomicInteger implements Observer<T> {
        private static final long serialVersionUID = -7098360935104053232L;
        public final Observer<? super T> downstream;
        public final Predicate<? super Throwable> predicate;
        public long remaining;
        public final ObservableSource<? extends T> source;
        public final tw1 upstream;

        public Cdo(Observer<? super T> observer, long j, Predicate<? super Throwable> predicate, tw1 tw1Var, ObservableSource<? extends T> observableSource) {
            this.downstream = observer;
            this.upstream = tw1Var;
            this.source = observableSource;
            this.predicate = predicate;
            this.remaining = j;
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            this.downstream.onComplete();
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            long j = this.remaining;
            if (j != Long.MAX_VALUE) {
                this.remaining = j - 1;
            }
            if (j == 0) {
                this.downstream.onError(th);
                return;
            }
            try {
                if (this.predicate.test(th)) {
                    subscribeNext();
                } else {
                    this.downstream.onError(th);
                }
            } catch (Throwable th2) {
                t80.m7781if(th2);
                this.downstream.onError(new io.reactivex.exceptions.Cdo(th, th2));
            }
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            this.downstream.onNext(t);
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            this.upstream.replace(disposable);
        }

        public void subscribeNext() {
            if (getAndIncrement() == 0) {
                int iAddAndGet = 1;
                while (!this.upstream.isDisposed()) {
                    this.source.subscribe(this);
                    iAddAndGet = addAndGet(-iAddAndGet);
                    if (iAddAndGet == 0) {
                        return;
                    }
                }
            }
        }
    }

    public x0(Cnew<T> cnew, long j, Predicate<? super Throwable> predicate) {
        super(cnew);
        this.f26996if = predicate;
        this.f26995for = j;
    }

    @Override // io.reactivex.Cnew
    public void subscribeActual(Observer<? super T> observer) {
        tw1 tw1Var = new tw1();
        observer.onSubscribe(tw1Var);
        new Cdo(observer, this.f26995for, this.f26996if, tw1Var, this.f26500do).subscribeNext();
    }
}
