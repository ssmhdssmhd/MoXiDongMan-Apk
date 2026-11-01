package io.reactivex.internal.operators.maybe;

import io.reactivex.MaybeObserver;
import io.reactivex.MaybeSource;
import io.reactivex.disposables.Disposable;

/* renamed from: io.reactivex.internal.operators.maybe.final, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cfinal<T> extends io.reactivex.internal.operators.maybe.Cdo<T, T> {

    /* renamed from: io.reactivex.internal.operators.maybe.final$do, reason: invalid class name */
    public static final class Cdo<T> implements MaybeObserver<T>, Disposable {

        /* renamed from: do, reason: not valid java name */
        public MaybeObserver<? super T> f26138do;

        /* renamed from: if, reason: not valid java name */
        public Disposable f26139if;

        public Cdo(MaybeObserver<? super T> maybeObserver) {
            this.f26138do = maybeObserver;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f26138do = null;
            this.f26139if.dispose();
            this.f26139if = io.reactivex.internal.disposables.Cdo.DISPOSED;
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f26139if.isDisposed();
        }

        @Override // io.reactivex.MaybeObserver
        public void onComplete() {
            this.f26139if = io.reactivex.internal.disposables.Cdo.DISPOSED;
            MaybeObserver<? super T> maybeObserver = this.f26138do;
            if (maybeObserver != null) {
                this.f26138do = null;
                maybeObserver.onComplete();
            }
        }

        @Override // io.reactivex.MaybeObserver
        public void onError(Throwable th) {
            this.f26139if = io.reactivex.internal.disposables.Cdo.DISPOSED;
            MaybeObserver<? super T> maybeObserver = this.f26138do;
            if (maybeObserver != null) {
                this.f26138do = null;
                maybeObserver.onError(th);
            }
        }

        @Override // io.reactivex.MaybeObserver
        public void onSubscribe(Disposable disposable) {
            if (io.reactivex.internal.disposables.Cdo.validate(this.f26139if, disposable)) {
                this.f26139if = disposable;
                this.f26138do.onSubscribe(this);
            }
        }

        @Override // io.reactivex.MaybeObserver
        public void onSuccess(T t) {
            this.f26139if = io.reactivex.internal.disposables.Cdo.DISPOSED;
            MaybeObserver<? super T> maybeObserver = this.f26138do;
            if (maybeObserver != null) {
                this.f26138do = null;
                maybeObserver.onSuccess(t);
            }
        }
    }

    public Cfinal(MaybeSource<T> maybeSource) {
        super(maybeSource);
    }

    @Override // android.support.v4.fy0
    public void w0(MaybeObserver<? super T> maybeObserver) {
        this.f26120do.subscribe(new Cdo(maybeObserver));
    }
}
