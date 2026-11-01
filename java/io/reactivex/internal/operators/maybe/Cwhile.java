package io.reactivex.internal.operators.maybe;

import android.support.v4.t80;
import io.reactivex.MaybeObserver;
import io.reactivex.MaybeSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.BiConsumer;

/* renamed from: io.reactivex.internal.operators.maybe.while, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cwhile<T> extends io.reactivex.internal.operators.maybe.Cdo<T, T> {

    /* renamed from: if, reason: not valid java name */
    public final BiConsumer<? super T, ? super Throwable> f26260if;

    /* renamed from: io.reactivex.internal.operators.maybe.while$do, reason: invalid class name */
    public static final class Cdo<T> implements MaybeObserver<T>, Disposable {

        /* renamed from: do, reason: not valid java name */
        public final MaybeObserver<? super T> f26261do;

        /* renamed from: for, reason: not valid java name */
        public Disposable f26262for;

        /* renamed from: if, reason: not valid java name */
        public final BiConsumer<? super T, ? super Throwable> f26263if;

        public Cdo(MaybeObserver<? super T> maybeObserver, BiConsumer<? super T, ? super Throwable> biConsumer) {
            this.f26261do = maybeObserver;
            this.f26263if = biConsumer;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f26262for.dispose();
            this.f26262for = io.reactivex.internal.disposables.Cdo.DISPOSED;
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f26262for.isDisposed();
        }

        @Override // io.reactivex.MaybeObserver
        public void onComplete() {
            this.f26262for = io.reactivex.internal.disposables.Cdo.DISPOSED;
            try {
                this.f26263if.accept(null, null);
                this.f26261do.onComplete();
            } catch (Throwable th) {
                t80.m7781if(th);
                this.f26261do.onError(th);
            }
        }

        @Override // io.reactivex.MaybeObserver
        public void onError(Throwable th) {
            this.f26262for = io.reactivex.internal.disposables.Cdo.DISPOSED;
            try {
                this.f26263if.accept(null, th);
            } catch (Throwable th2) {
                t80.m7781if(th2);
                th = new io.reactivex.exceptions.Cdo(th, th2);
            }
            this.f26261do.onError(th);
        }

        @Override // io.reactivex.MaybeObserver
        public void onSubscribe(Disposable disposable) {
            if (io.reactivex.internal.disposables.Cdo.validate(this.f26262for, disposable)) {
                this.f26262for = disposable;
                this.f26261do.onSubscribe(this);
            }
        }

        @Override // io.reactivex.MaybeObserver
        public void onSuccess(T t) {
            this.f26262for = io.reactivex.internal.disposables.Cdo.DISPOSED;
            try {
                this.f26263if.accept(t, null);
                this.f26261do.onSuccess(t);
            } catch (Throwable th) {
                t80.m7781if(th);
                this.f26261do.onError(th);
            }
        }
    }

    public Cwhile(MaybeSource<T> maybeSource, BiConsumer<? super T, ? super Throwable> biConsumer) {
        super(maybeSource);
        this.f26260if = biConsumer;
    }

    @Override // android.support.v4.fy0
    public void w0(MaybeObserver<? super T> maybeObserver) {
        this.f26120do.subscribe(new Cdo(maybeObserver, this.f26260if));
    }
}
