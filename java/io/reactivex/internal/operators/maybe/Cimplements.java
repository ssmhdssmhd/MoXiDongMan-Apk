package io.reactivex.internal.operators.maybe;

import android.support.v4.fy0;
import android.support.v4.jp1;
import android.support.v4.np;
import io.reactivex.CompletableObserver;
import io.reactivex.MaybeObserver;
import io.reactivex.MaybeSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.fuseable.FuseToMaybe;

/* renamed from: io.reactivex.internal.operators.maybe.implements, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cimplements<T> extends np implements FuseToMaybe<T> {

    /* renamed from: do, reason: not valid java name */
    public final MaybeSource<T> f26174do;

    /* renamed from: io.reactivex.internal.operators.maybe.implements$do, reason: invalid class name */
    public static final class Cdo<T> implements MaybeObserver<T>, Disposable {

        /* renamed from: do, reason: not valid java name */
        public final CompletableObserver f26175do;

        /* renamed from: if, reason: not valid java name */
        public Disposable f26176if;

        public Cdo(CompletableObserver completableObserver) {
            this.f26175do = completableObserver;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f26176if.dispose();
            this.f26176if = io.reactivex.internal.disposables.Cdo.DISPOSED;
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f26176if.isDisposed();
        }

        @Override // io.reactivex.MaybeObserver
        public void onComplete() {
            this.f26176if = io.reactivex.internal.disposables.Cdo.DISPOSED;
            this.f26175do.onComplete();
        }

        @Override // io.reactivex.MaybeObserver
        public void onError(Throwable th) {
            this.f26176if = io.reactivex.internal.disposables.Cdo.DISPOSED;
            this.f26175do.onError(th);
        }

        @Override // io.reactivex.MaybeObserver
        public void onSubscribe(Disposable disposable) {
            if (io.reactivex.internal.disposables.Cdo.validate(this.f26176if, disposable)) {
                this.f26176if = disposable;
                this.f26175do.onSubscribe(this);
            }
        }

        @Override // io.reactivex.MaybeObserver
        public void onSuccess(T t) {
            this.f26176if = io.reactivex.internal.disposables.Cdo.DISPOSED;
            this.f26175do.onComplete();
        }
    }

    public Cimplements(MaybeSource<T> maybeSource) {
        this.f26174do = maybeSource;
    }

    @Override // android.support.v4.np
    public void O(CompletableObserver completableObserver) {
        this.f26174do.subscribe(new Cdo(completableObserver));
    }

    @Override // io.reactivex.internal.fuseable.FuseToMaybe
    public fy0<T> fuseToMaybe() {
        return jp1.e(new Ctransient(this.f26174do));
    }
}
