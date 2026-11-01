package io.reactivex.internal.operators.maybe;

import android.support.v4.fy0;
import android.support.v4.t80;
import io.reactivex.MaybeObserver;
import io.reactivex.SingleObserver;
import io.reactivex.SingleSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Predicate;

/* renamed from: io.reactivex.internal.operators.maybe.return, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Creturn<T> extends fy0<T> {

    /* renamed from: do, reason: not valid java name */
    public final SingleSource<T> f26218do;

    /* renamed from: if, reason: not valid java name */
    public final Predicate<? super T> f26219if;

    /* renamed from: io.reactivex.internal.operators.maybe.return$do, reason: invalid class name */
    public static final class Cdo<T> implements SingleObserver<T>, Disposable {

        /* renamed from: do, reason: not valid java name */
        public final MaybeObserver<? super T> f26220do;

        /* renamed from: for, reason: not valid java name */
        public Disposable f26221for;

        /* renamed from: if, reason: not valid java name */
        public final Predicate<? super T> f26222if;

        public Cdo(MaybeObserver<? super T> maybeObserver, Predicate<? super T> predicate) {
            this.f26220do = maybeObserver;
            this.f26222if = predicate;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            Disposable disposable = this.f26221for;
            this.f26221for = io.reactivex.internal.disposables.Cdo.DISPOSED;
            disposable.dispose();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f26221for.isDisposed();
        }

        @Override // io.reactivex.SingleObserver
        public void onError(Throwable th) {
            this.f26220do.onError(th);
        }

        @Override // io.reactivex.SingleObserver
        public void onSubscribe(Disposable disposable) {
            if (io.reactivex.internal.disposables.Cdo.validate(this.f26221for, disposable)) {
                this.f26221for = disposable;
                this.f26220do.onSubscribe(this);
            }
        }

        @Override // io.reactivex.SingleObserver
        public void onSuccess(T t) {
            try {
                if (this.f26222if.test(t)) {
                    this.f26220do.onSuccess(t);
                } else {
                    this.f26220do.onComplete();
                }
            } catch (Throwable th) {
                t80.m7781if(th);
                this.f26220do.onError(th);
            }
        }
    }

    public Creturn(SingleSource<T> singleSource, Predicate<? super T> predicate) {
        this.f26218do = singleSource;
        this.f26219if = predicate;
    }

    @Override // android.support.v4.fy0
    public void w0(MaybeObserver<? super T> maybeObserver) {
        this.f26218do.subscribe(new Cdo(maybeObserver, this.f26219if));
    }
}
