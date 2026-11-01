package io.reactivex.internal.operators.observable;

import io.reactivex.Ctry;
import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes3.dex */
public final class o1<T> extends io.reactivex.internal.operators.observable.Cdo<T, T> {

    /* renamed from: if, reason: not valid java name */
    public final Ctry f26769if;

    /* renamed from: io.reactivex.internal.operators.observable.o1$do, reason: invalid class name */
    public static final class Cdo<T> extends AtomicReference<Disposable> implements Observer<T>, Disposable {
        private static final long serialVersionUID = 8094547886072529208L;
        public final Observer<? super T> downstream;
        public final AtomicReference<Disposable> upstream = new AtomicReference<>();

        public Cdo(Observer<? super T> observer) {
            this.downstream = observer;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            io.reactivex.internal.disposables.Cdo.dispose(this.upstream);
            io.reactivex.internal.disposables.Cdo.dispose(this);
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return io.reactivex.internal.disposables.Cdo.isDisposed(get());
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            this.downstream.onComplete();
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
            io.reactivex.internal.disposables.Cdo.setOnce(this.upstream, disposable);
        }

        public void setDisposable(Disposable disposable) {
            io.reactivex.internal.disposables.Cdo.setOnce(this, disposable);
        }
    }

    /* renamed from: io.reactivex.internal.operators.observable.o1$if, reason: invalid class name */
    public final class Cif implements Runnable {

        /* renamed from: do, reason: not valid java name */
        private final Cdo<T> f26770do;

        public Cif(Cdo<T> cdo) {
            this.f26770do = cdo;
        }

        @Override // java.lang.Runnable
        public void run() {
            o1.this.f26500do.subscribe(this.f26770do);
        }
    }

    public o1(ObservableSource<T> observableSource, Ctry ctry) {
        super(observableSource);
        this.f26769if = ctry;
    }

    @Override // io.reactivex.Cnew
    public void subscribeActual(Observer<? super T> observer) {
        Cdo cdo = new Cdo(observer);
        observer.onSubscribe(cdo);
        cdo.setDisposable(this.f26769if.mo29697new(new Cif(cdo)));
    }
}
