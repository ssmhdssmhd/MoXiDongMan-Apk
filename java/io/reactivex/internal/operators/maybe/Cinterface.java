package io.reactivex.internal.operators.maybe;

import android.support.v4.fy0;
import io.reactivex.MaybeObserver;
import io.reactivex.SingleObserver;
import io.reactivex.SingleSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.fuseable.HasUpstreamSingleSource;

/* renamed from: io.reactivex.internal.operators.maybe.interface, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cinterface<T> extends fy0<T> implements HasUpstreamSingleSource<T> {

    /* renamed from: do, reason: not valid java name */
    public final SingleSource<T> f26183do;

    /* renamed from: io.reactivex.internal.operators.maybe.interface$do, reason: invalid class name */
    public static final class Cdo<T> implements SingleObserver<T>, Disposable {

        /* renamed from: do, reason: not valid java name */
        public final MaybeObserver<? super T> f26184do;

        /* renamed from: if, reason: not valid java name */
        public Disposable f26185if;

        public Cdo(MaybeObserver<? super T> maybeObserver) {
            this.f26184do = maybeObserver;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f26185if.dispose();
            this.f26185if = io.reactivex.internal.disposables.Cdo.DISPOSED;
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f26185if.isDisposed();
        }

        @Override // io.reactivex.SingleObserver
        public void onError(Throwable th) {
            this.f26185if = io.reactivex.internal.disposables.Cdo.DISPOSED;
            this.f26184do.onError(th);
        }

        @Override // io.reactivex.SingleObserver
        public void onSubscribe(Disposable disposable) {
            if (io.reactivex.internal.disposables.Cdo.validate(this.f26185if, disposable)) {
                this.f26185if = disposable;
                this.f26184do.onSubscribe(this);
            }
        }

        @Override // io.reactivex.SingleObserver
        public void onSuccess(T t) {
            this.f26185if = io.reactivex.internal.disposables.Cdo.DISPOSED;
            this.f26184do.onSuccess(t);
        }
    }

    public Cinterface(SingleSource<T> singleSource) {
        this.f26183do = singleSource;
    }

    @Override // io.reactivex.internal.fuseable.HasUpstreamSingleSource
    public SingleSource<T> source() {
        return this.f26183do;
    }

    @Override // android.support.v4.fy0
    public void w0(MaybeObserver<? super T> maybeObserver) {
        this.f26183do.subscribe(new Cdo(maybeObserver));
    }
}
