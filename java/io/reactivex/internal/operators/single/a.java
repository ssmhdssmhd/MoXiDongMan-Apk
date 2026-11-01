package io.reactivex.internal.operators.single;

import io.reactivex.Cnew;
import io.reactivex.Observer;
import io.reactivex.SingleObserver;
import io.reactivex.SingleSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.observers.Cif;

/* loaded from: classes3.dex */
public final class a<T> extends Cnew<T> {

    /* renamed from: do, reason: not valid java name */
    public final SingleSource<? extends T> f27117do;

    /* renamed from: io.reactivex.internal.operators.single.a$do, reason: invalid class name */
    public static final class Cdo<T> extends Cif<T> implements SingleObserver<T> {
        private static final long serialVersionUID = 3786543492451018833L;
        public Disposable upstream;

        public Cdo(Observer<? super T> observer) {
            super(observer);
        }

        @Override // io.reactivex.internal.observers.Cif, io.reactivex.disposables.Disposable
        public void dispose() {
            super.dispose();
            this.upstream.dispose();
        }

        @Override // io.reactivex.SingleObserver
        public void onError(Throwable th) {
            error(th);
        }

        @Override // io.reactivex.SingleObserver
        public void onSubscribe(Disposable disposable) {
            if (io.reactivex.internal.disposables.Cdo.validate(this.upstream, disposable)) {
                this.upstream = disposable;
                this.downstream.onSubscribe(this);
            }
        }

        @Override // io.reactivex.SingleObserver
        public void onSuccess(T t) {
            complete(t);
        }
    }

    public a(SingleSource<? extends T> singleSource) {
        this.f27117do = singleSource;
    }

    /* renamed from: do, reason: not valid java name */
    public static <T> SingleObserver<T> m29653do(Observer<? super T> observer) {
        return new Cdo(observer);
    }

    @Override // io.reactivex.Cnew
    public void subscribeActual(Observer<? super T> observer) {
        this.f27117do.subscribe(m29653do(observer));
    }
}
