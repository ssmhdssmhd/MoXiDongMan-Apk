package io.reactivex.internal.operators.observable;

import android.support.v4.t80;
import android.support.v4.tw1;
import io.reactivex.Cnew;
import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.BooleanSupplier;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes3.dex */
public final class u0<T> extends io.reactivex.internal.operators.observable.Cdo<T, T> {

    /* renamed from: if, reason: not valid java name */
    public final BooleanSupplier f26960if;

    /* renamed from: io.reactivex.internal.operators.observable.u0$do, reason: invalid class name */
    public static final class Cdo<T> extends AtomicInteger implements Observer<T> {
        private static final long serialVersionUID = -7098360935104053232L;
        public final Observer<? super T> downstream;
        public final ObservableSource<? extends T> source;
        public final BooleanSupplier stop;
        public final tw1 upstream;

        public Cdo(Observer<? super T> observer, BooleanSupplier booleanSupplier, tw1 tw1Var, ObservableSource<? extends T> observableSource) {
            this.downstream = observer;
            this.upstream = tw1Var;
            this.source = observableSource;
            this.stop = booleanSupplier;
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            try {
                if (this.stop.getAsBoolean()) {
                    this.downstream.onComplete();
                } else {
                    subscribeNext();
                }
            } catch (Throwable th) {
                t80.m7781if(th);
                this.downstream.onError(th);
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
            this.upstream.replace(disposable);
        }

        public void subscribeNext() {
            if (getAndIncrement() == 0) {
                int iAddAndGet = 1;
                do {
                    this.source.subscribe(this);
                    iAddAndGet = addAndGet(-iAddAndGet);
                } while (iAddAndGet != 0);
            }
        }
    }

    public u0(Cnew<T> cnew, BooleanSupplier booleanSupplier) {
        super(cnew);
        this.f26960if = booleanSupplier;
    }

    @Override // io.reactivex.Cnew
    public void subscribeActual(Observer<? super T> observer) {
        tw1 tw1Var = new tw1();
        observer.onSubscribe(tw1Var);
        new Cdo(observer, this.f26960if, tw1Var, this.f26500do).subscribeNext();
    }
}
