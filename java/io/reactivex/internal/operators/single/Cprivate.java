package io.reactivex.internal.operators.single;

import android.support.v4.jz1;
import io.reactivex.SingleObserver;
import io.reactivex.SingleSource;
import io.reactivex.disposables.Disposable;

/* renamed from: io.reactivex.internal.operators.single.private, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cprivate<T> extends jz1<T> {

    /* renamed from: do, reason: not valid java name */
    public final SingleSource<? extends T> f27217do;

    /* renamed from: io.reactivex.internal.operators.single.private$do, reason: invalid class name */
    public static final class Cdo<T> implements SingleObserver<T>, Disposable {

        /* renamed from: do, reason: not valid java name */
        public final SingleObserver<? super T> f27218do;

        /* renamed from: if, reason: not valid java name */
        public Disposable f27219if;

        public Cdo(SingleObserver<? super T> singleObserver) {
            this.f27218do = singleObserver;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f27219if.dispose();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f27219if.isDisposed();
        }

        @Override // io.reactivex.SingleObserver
        public void onError(Throwable th) {
            this.f27218do.onError(th);
        }

        @Override // io.reactivex.SingleObserver
        public void onSubscribe(Disposable disposable) {
            if (io.reactivex.internal.disposables.Cdo.validate(this.f27219if, disposable)) {
                this.f27219if = disposable;
                this.f27218do.onSubscribe(this);
            }
        }

        @Override // io.reactivex.SingleObserver
        public void onSuccess(T t) {
            this.f27218do.onSuccess(t);
        }
    }

    public Cprivate(SingleSource<? extends T> singleSource) {
        this.f27217do = singleSource;
    }

    @Override // android.support.v4.jz1
    public void g0(SingleObserver<? super T> singleObserver) {
        this.f27217do.subscribe(new Cdo(singleObserver));
    }
}
