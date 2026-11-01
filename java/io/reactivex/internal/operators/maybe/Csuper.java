package io.reactivex.internal.operators.maybe;

import android.support.v4.jp1;
import android.support.v4.t80;
import io.reactivex.MaybeObserver;
import io.reactivex.MaybeSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;

/* renamed from: io.reactivex.internal.operators.maybe.super, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Csuper<T> extends io.reactivex.internal.operators.maybe.Cdo<T, T> {

    /* renamed from: if, reason: not valid java name */
    public final Consumer<? super T> f26235if;

    /* renamed from: io.reactivex.internal.operators.maybe.super$do, reason: invalid class name */
    public static final class Cdo<T> implements MaybeObserver<T>, Disposable {

        /* renamed from: do, reason: not valid java name */
        public final MaybeObserver<? super T> f26236do;

        /* renamed from: for, reason: not valid java name */
        public Disposable f26237for;

        /* renamed from: if, reason: not valid java name */
        public final Consumer<? super T> f26238if;

        public Cdo(MaybeObserver<? super T> maybeObserver, Consumer<? super T> consumer) {
            this.f26236do = maybeObserver;
            this.f26238if = consumer;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f26237for.dispose();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f26237for.isDisposed();
        }

        @Override // io.reactivex.MaybeObserver
        public void onComplete() {
            this.f26236do.onComplete();
        }

        @Override // io.reactivex.MaybeObserver
        public void onError(Throwable th) {
            this.f26236do.onError(th);
        }

        @Override // io.reactivex.MaybeObserver
        public void onSubscribe(Disposable disposable) {
            if (io.reactivex.internal.disposables.Cdo.validate(this.f26237for, disposable)) {
                this.f26237for = disposable;
                this.f26236do.onSubscribe(this);
            }
        }

        @Override // io.reactivex.MaybeObserver
        public void onSuccess(T t) {
            this.f26236do.onSuccess(t);
            try {
                this.f26238if.accept(t);
            } catch (Throwable th) {
                t80.m7781if(th);
                jp1.l(th);
            }
        }
    }

    public Csuper(MaybeSource<T> maybeSource, Consumer<? super T> consumer) {
        super(maybeSource);
        this.f26235if = consumer;
    }

    @Override // android.support.v4.fy0
    public void w0(MaybeObserver<? super T> maybeObserver) {
        this.f26120do.subscribe(new Cdo(maybeObserver, this.f26235if));
    }
}
