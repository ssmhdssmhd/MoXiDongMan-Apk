package io.reactivex.internal.operators.observable;

import android.support.v4.tw1;
import io.reactivex.Cnew;
import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes3.dex */
public final class t0<T> extends io.reactivex.internal.operators.observable.Cdo<T, T> {

    /* renamed from: if, reason: not valid java name */
    public final long f26921if;

    /* renamed from: io.reactivex.internal.operators.observable.t0$do, reason: invalid class name */
    public static final class Cdo<T> extends AtomicInteger implements Observer<T> {
        private static final long serialVersionUID = -7098360935104053232L;
        public final Observer<? super T> downstream;
        public long remaining;
        public final tw1 sd;
        public final ObservableSource<? extends T> source;

        public Cdo(Observer<? super T> observer, long j, tw1 tw1Var, ObservableSource<? extends T> observableSource) {
            this.downstream = observer;
            this.sd = tw1Var;
            this.source = observableSource;
            this.remaining = j;
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            long j = this.remaining;
            if (j != Long.MAX_VALUE) {
                this.remaining = j - 1;
            }
            if (j != 0) {
                subscribeNext();
            } else {
                this.downstream.onComplete();
            }
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            this.downstream.onError(th);
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            this.downstream.onNext(t);
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            this.sd.replace(disposable);
        }

        public void subscribeNext() {
            if (getAndIncrement() == 0) {
                int iAddAndGet = 1;
                while (!this.sd.isDisposed()) {
                    this.source.subscribe(this);
                    iAddAndGet = addAndGet(-iAddAndGet);
                    if (iAddAndGet == 0) {
                        return;
                    }
                }
            }
        }
    }

    public t0(Cnew<T> cnew, long j) {
        super(cnew);
        this.f26921if = j;
    }

    @Override // io.reactivex.Cnew
    public void subscribeActual(Observer<? super T> observer) {
        tw1 tw1Var = new tw1();
        observer.onSubscribe(tw1Var);
        long j = this.f26921if;
        new Cdo(observer, j != Long.MAX_VALUE ? j - 1 : Long.MAX_VALUE, tw1Var, this.f26500do).subscribeNext();
    }
}
