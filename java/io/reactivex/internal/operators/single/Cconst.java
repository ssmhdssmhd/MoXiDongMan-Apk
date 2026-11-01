package io.reactivex.internal.operators.single;

import android.support.v4.jp1;
import android.support.v4.jz1;
import android.support.v4.t80;
import io.reactivex.SingleObserver;
import io.reactivex.SingleSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Action;

/* renamed from: io.reactivex.internal.operators.single.const, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cconst<T> extends jz1<T> {

    /* renamed from: do, reason: not valid java name */
    public final SingleSource<T> f27144do;

    /* renamed from: if, reason: not valid java name */
    public final Action f27145if;

    /* renamed from: io.reactivex.internal.operators.single.const$do, reason: invalid class name */
    public static final class Cdo<T> implements SingleObserver<T>, Disposable {

        /* renamed from: do, reason: not valid java name */
        public final SingleObserver<? super T> f27146do;

        /* renamed from: for, reason: not valid java name */
        public Disposable f27147for;

        /* renamed from: if, reason: not valid java name */
        public final Action f27148if;

        public Cdo(SingleObserver<? super T> singleObserver, Action action) {
            this.f27146do = singleObserver;
            this.f27148if = action;
        }

        /* renamed from: do, reason: not valid java name */
        private void m29659do() {
            try {
                this.f27148if.run();
            } catch (Throwable th) {
                t80.m7781if(th);
                jp1.l(th);
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f27147for.dispose();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f27147for.isDisposed();
        }

        @Override // io.reactivex.SingleObserver
        public void onError(Throwable th) {
            this.f27146do.onError(th);
            m29659do();
        }

        @Override // io.reactivex.SingleObserver
        public void onSubscribe(Disposable disposable) {
            if (io.reactivex.internal.disposables.Cdo.validate(this.f27147for, disposable)) {
                this.f27147for = disposable;
                this.f27146do.onSubscribe(this);
            }
        }

        @Override // io.reactivex.SingleObserver
        public void onSuccess(T t) {
            this.f27146do.onSuccess(t);
            m29659do();
        }
    }

    public Cconst(SingleSource<T> singleSource, Action action) {
        this.f27144do = singleSource;
        this.f27145if = action;
    }

    @Override // android.support.v4.jz1
    public void g0(SingleObserver<? super T> singleObserver) {
        this.f27144do.subscribe(new Cdo(singleObserver, this.f27145if));
    }
}
