package io.reactivex.internal.operators.observable;

import android.support.v4.jz1;
import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.SingleObserver;
import io.reactivex.disposables.Disposable;
import java.util.NoSuchElementException;

/* loaded from: classes3.dex */
public final class z<T> extends jz1<T> {

    /* renamed from: do, reason: not valid java name */
    public final ObservableSource<T> f27010do;

    /* renamed from: if, reason: not valid java name */
    public final T f27011if;

    /* renamed from: io.reactivex.internal.operators.observable.z$do, reason: invalid class name */
    public static final class Cdo<T> implements Observer<T>, Disposable {

        /* renamed from: do, reason: not valid java name */
        public final SingleObserver<? super T> f27012do;

        /* renamed from: for, reason: not valid java name */
        public Disposable f27013for;

        /* renamed from: if, reason: not valid java name */
        public final T f27014if;

        /* renamed from: new, reason: not valid java name */
        public T f27015new;

        public Cdo(SingleObserver<? super T> singleObserver, T t) {
            this.f27012do = singleObserver;
            this.f27014if = t;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f27013for.dispose();
            this.f27013for = io.reactivex.internal.disposables.Cdo.DISPOSED;
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f27013for == io.reactivex.internal.disposables.Cdo.DISPOSED;
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            this.f27013for = io.reactivex.internal.disposables.Cdo.DISPOSED;
            T t = this.f27015new;
            if (t != null) {
                this.f27015new = null;
                this.f27012do.onSuccess(t);
                return;
            }
            T t2 = this.f27014if;
            if (t2 != null) {
                this.f27012do.onSuccess(t2);
            } else {
                this.f27012do.onError(new NoSuchElementException());
            }
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            this.f27013for = io.reactivex.internal.disposables.Cdo.DISPOSED;
            this.f27015new = null;
            this.f27012do.onError(th);
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            this.f27015new = t;
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            if (io.reactivex.internal.disposables.Cdo.validate(this.f27013for, disposable)) {
                this.f27013for = disposable;
                this.f27012do.onSubscribe(this);
            }
        }
    }

    public z(ObservableSource<T> observableSource, T t) {
        this.f27010do = observableSource;
        this.f27011if = t;
    }

    @Override // android.support.v4.jz1
    public void g0(SingleObserver<? super T> singleObserver) {
        this.f27010do.subscribe(new Cdo(singleObserver, this.f27011if));
    }
}
