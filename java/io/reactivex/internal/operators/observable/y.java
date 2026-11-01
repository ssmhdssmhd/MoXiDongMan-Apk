package io.reactivex.internal.operators.observable;

import android.support.v4.fy0;
import io.reactivex.MaybeObserver;
import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;

/* loaded from: classes3.dex */
public final class y<T> extends fy0<T> {

    /* renamed from: do, reason: not valid java name */
    public final ObservableSource<T> f27002do;

    /* renamed from: io.reactivex.internal.operators.observable.y$do, reason: invalid class name */
    public static final class Cdo<T> implements Observer<T>, Disposable {

        /* renamed from: do, reason: not valid java name */
        public final MaybeObserver<? super T> f27003do;

        /* renamed from: for, reason: not valid java name */
        public T f27004for;

        /* renamed from: if, reason: not valid java name */
        public Disposable f27005if;

        public Cdo(MaybeObserver<? super T> maybeObserver) {
            this.f27003do = maybeObserver;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f27005if.dispose();
            this.f27005if = io.reactivex.internal.disposables.Cdo.DISPOSED;
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f27005if == io.reactivex.internal.disposables.Cdo.DISPOSED;
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            this.f27005if = io.reactivex.internal.disposables.Cdo.DISPOSED;
            T t = this.f27004for;
            if (t == null) {
                this.f27003do.onComplete();
            } else {
                this.f27004for = null;
                this.f27003do.onSuccess(t);
            }
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            this.f27005if = io.reactivex.internal.disposables.Cdo.DISPOSED;
            this.f27004for = null;
            this.f27003do.onError(th);
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            this.f27004for = t;
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            if (io.reactivex.internal.disposables.Cdo.validate(this.f27005if, disposable)) {
                this.f27005if = disposable;
                this.f27003do.onSubscribe(this);
            }
        }
    }

    public y(ObservableSource<T> observableSource) {
        this.f27002do = observableSource;
    }

    @Override // android.support.v4.fy0
    public void w0(MaybeObserver<? super T> maybeObserver) {
        this.f27002do.subscribe(new Cdo(maybeObserver));
    }
}
