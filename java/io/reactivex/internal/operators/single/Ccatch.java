package io.reactivex.internal.operators.single;

import android.support.v4.jz1;
import io.reactivex.SingleObserver;
import io.reactivex.SingleSource;
import io.reactivex.disposables.Disposable;

/* renamed from: io.reactivex.internal.operators.single.catch, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Ccatch<T> extends jz1<T> {

    /* renamed from: do, reason: not valid java name */
    public final SingleSource<T> f27136do;

    /* renamed from: io.reactivex.internal.operators.single.catch$do, reason: invalid class name */
    public static final class Cdo<T> implements SingleObserver<T>, Disposable {

        /* renamed from: do, reason: not valid java name */
        public SingleObserver<? super T> f27137do;

        /* renamed from: if, reason: not valid java name */
        public Disposable f27138if;

        public Cdo(SingleObserver<? super T> singleObserver) {
            this.f27137do = singleObserver;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f27137do = null;
            this.f27138if.dispose();
            this.f27138if = io.reactivex.internal.disposables.Cdo.DISPOSED;
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f27138if.isDisposed();
        }

        @Override // io.reactivex.SingleObserver
        public void onError(Throwable th) {
            this.f27138if = io.reactivex.internal.disposables.Cdo.DISPOSED;
            SingleObserver<? super T> singleObserver = this.f27137do;
            if (singleObserver != null) {
                this.f27137do = null;
                singleObserver.onError(th);
            }
        }

        @Override // io.reactivex.SingleObserver
        public void onSubscribe(Disposable disposable) {
            if (io.reactivex.internal.disposables.Cdo.validate(this.f27138if, disposable)) {
                this.f27138if = disposable;
                this.f27137do.onSubscribe(this);
            }
        }

        @Override // io.reactivex.SingleObserver
        public void onSuccess(T t) {
            this.f27138if = io.reactivex.internal.disposables.Cdo.DISPOSED;
            SingleObserver<? super T> singleObserver = this.f27137do;
            if (singleObserver != null) {
                this.f27137do = null;
                singleObserver.onSuccess(t);
            }
        }
    }

    public Ccatch(SingleSource<T> singleSource) {
        this.f27136do = singleSource;
    }

    @Override // android.support.v4.jz1
    public void g0(SingleObserver<? super T> singleObserver) {
        this.f27136do.subscribe(new Cdo(singleObserver));
    }
}
