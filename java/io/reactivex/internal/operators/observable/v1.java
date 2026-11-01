package io.reactivex.internal.operators.observable;

import android.support.v4.h4;
import android.support.v4.si0;
import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes3.dex */
public final class v1<T, U> extends io.reactivex.internal.operators.observable.Cdo<T, T> {

    /* renamed from: if, reason: not valid java name */
    public final ObservableSource<? extends U> f26974if;

    /* renamed from: io.reactivex.internal.operators.observable.v1$do, reason: invalid class name */
    public static final class Cdo<T, U> extends AtomicInteger implements Observer<T>, Disposable {
        private static final long serialVersionUID = 1418547743690811973L;
        public final Observer<? super T> downstream;
        public final AtomicReference<Disposable> upstream = new AtomicReference<>();
        public final Cdo<T, U>.C0330do otherObserver = new C0330do();
        public final h4 error = new h4();

        /* renamed from: io.reactivex.internal.operators.observable.v1$do$do, reason: invalid class name and collision with other inner class name */
        public final class C0330do extends AtomicReference<Disposable> implements Observer<U> {
            private static final long serialVersionUID = -8693423678067375039L;

            public C0330do() {
            }

            @Override // io.reactivex.Observer
            public void onComplete() {
                Cdo.this.otherComplete();
            }

            @Override // io.reactivex.Observer
            public void onError(Throwable th) {
                Cdo.this.otherError(th);
            }

            @Override // io.reactivex.Observer
            public void onNext(U u) {
                io.reactivex.internal.disposables.Cdo.dispose(this);
                Cdo.this.otherComplete();
            }

            @Override // io.reactivex.Observer
            public void onSubscribe(Disposable disposable) {
                io.reactivex.internal.disposables.Cdo.setOnce(this, disposable);
            }
        }

        public Cdo(Observer<? super T> observer) {
            this.downstream = observer;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            io.reactivex.internal.disposables.Cdo.dispose(this.upstream);
            io.reactivex.internal.disposables.Cdo.dispose(this.otherObserver);
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return io.reactivex.internal.disposables.Cdo.isDisposed(this.upstream.get());
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            io.reactivex.internal.disposables.Cdo.dispose(this.otherObserver);
            si0.m7411do(this.downstream, this, this.error);
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            io.reactivex.internal.disposables.Cdo.dispose(this.otherObserver);
            si0.m7412for(this.downstream, th, this, this.error);
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            si0.m7415try(this.downstream, t, this, this.error);
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            io.reactivex.internal.disposables.Cdo.setOnce(this.upstream, disposable);
        }

        public void otherComplete() {
            io.reactivex.internal.disposables.Cdo.dispose(this.upstream);
            si0.m7411do(this.downstream, this, this.error);
        }

        public void otherError(Throwable th) {
            io.reactivex.internal.disposables.Cdo.dispose(this.upstream);
            si0.m7412for(this.downstream, th, this, this.error);
        }
    }

    public v1(ObservableSource<T> observableSource, ObservableSource<? extends U> observableSource2) {
        super(observableSource);
        this.f26974if = observableSource2;
    }

    @Override // io.reactivex.Cnew
    public void subscribeActual(Observer<? super T> observer) {
        Cdo cdo = new Cdo(observer);
        observer.onSubscribe(cdo);
        this.f26974if.subscribe(cdo.otherObserver);
        this.f26500do.subscribe(cdo);
    }
}
