package io.reactivex.internal.operators.maybe;

import android.support.v4.jz1;
import io.reactivex.MaybeObserver;
import io.reactivex.MaybeSource;
import io.reactivex.SingleObserver;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.functions.Cif;
import io.reactivex.internal.fuseable.HasUpstreamMaybeSource;

/* renamed from: io.reactivex.internal.operators.maybe.else, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Celse<T> extends jz1<Boolean> implements HasUpstreamMaybeSource<T> {

    /* renamed from: do, reason: not valid java name */
    public final MaybeSource<T> f26125do;

    /* renamed from: if, reason: not valid java name */
    public final Object f26126if;

    /* renamed from: io.reactivex.internal.operators.maybe.else$do, reason: invalid class name */
    public static final class Cdo implements MaybeObserver<Object>, Disposable {

        /* renamed from: do, reason: not valid java name */
        public final SingleObserver<? super Boolean> f26127do;

        /* renamed from: for, reason: not valid java name */
        public Disposable f26128for;

        /* renamed from: if, reason: not valid java name */
        public final Object f26129if;

        public Cdo(SingleObserver<? super Boolean> singleObserver, Object obj) {
            this.f26127do = singleObserver;
            this.f26129if = obj;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f26128for.dispose();
            this.f26128for = io.reactivex.internal.disposables.Cdo.DISPOSED;
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f26128for.isDisposed();
        }

        @Override // io.reactivex.MaybeObserver
        public void onComplete() {
            this.f26128for = io.reactivex.internal.disposables.Cdo.DISPOSED;
            this.f26127do.onSuccess(Boolean.FALSE);
        }

        @Override // io.reactivex.MaybeObserver
        public void onError(Throwable th) {
            this.f26128for = io.reactivex.internal.disposables.Cdo.DISPOSED;
            this.f26127do.onError(th);
        }

        @Override // io.reactivex.MaybeObserver
        public void onSubscribe(Disposable disposable) {
            if (io.reactivex.internal.disposables.Cdo.validate(this.f26128for, disposable)) {
                this.f26128for = disposable;
                this.f26127do.onSubscribe(this);
            }
        }

        @Override // io.reactivex.MaybeObserver
        public void onSuccess(Object obj) {
            this.f26128for = io.reactivex.internal.disposables.Cdo.DISPOSED;
            this.f26127do.onSuccess(Boolean.valueOf(Cif.m29469for(obj, this.f26129if)));
        }
    }

    public Celse(MaybeSource<T> maybeSource, Object obj) {
        this.f26125do = maybeSource;
        this.f26126if = obj;
    }

    @Override // android.support.v4.jz1
    public void g0(SingleObserver<? super Boolean> singleObserver) {
        this.f26125do.subscribe(new Cdo(singleObserver, this.f26126if));
    }

    @Override // io.reactivex.internal.fuseable.HasUpstreamMaybeSource
    public MaybeSource<T> source() {
        return this.f26125do;
    }
}
