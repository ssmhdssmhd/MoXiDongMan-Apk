package io.reactivex.internal.operators.maybe;

import android.support.v4.t80;
import io.reactivex.MaybeObserver;
import io.reactivex.MaybeSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Function;
import io.reactivex.internal.functions.Cif;

/* loaded from: classes3.dex */
public final class f<T> extends io.reactivex.internal.operators.maybe.Cdo<T, T> {

    /* renamed from: if, reason: not valid java name */
    public final Function<? super Throwable, ? extends T> f26134if;

    /* renamed from: io.reactivex.internal.operators.maybe.f$do, reason: invalid class name */
    public static final class Cdo<T> implements MaybeObserver<T>, Disposable {

        /* renamed from: do, reason: not valid java name */
        public final MaybeObserver<? super T> f26135do;

        /* renamed from: for, reason: not valid java name */
        public Disposable f26136for;

        /* renamed from: if, reason: not valid java name */
        public final Function<? super Throwable, ? extends T> f26137if;

        public Cdo(MaybeObserver<? super T> maybeObserver, Function<? super Throwable, ? extends T> function) {
            this.f26135do = maybeObserver;
            this.f26137if = function;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f26136for.dispose();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f26136for.isDisposed();
        }

        @Override // io.reactivex.MaybeObserver
        public void onComplete() {
            this.f26135do.onComplete();
        }

        @Override // io.reactivex.MaybeObserver
        public void onError(Throwable th) {
            try {
                this.f26135do.onSuccess(Cif.m29468else(this.f26137if.apply(th), "The valueSupplier returned a null value"));
            } catch (Throwable th2) {
                t80.m7781if(th2);
                this.f26135do.onError(new io.reactivex.exceptions.Cdo(th, th2));
            }
        }

        @Override // io.reactivex.MaybeObserver
        public void onSubscribe(Disposable disposable) {
            if (io.reactivex.internal.disposables.Cdo.validate(this.f26136for, disposable)) {
                this.f26136for = disposable;
                this.f26135do.onSubscribe(this);
            }
        }

        @Override // io.reactivex.MaybeObserver
        public void onSuccess(T t) {
            this.f26135do.onSuccess(t);
        }
    }

    public f(MaybeSource<T> maybeSource, Function<? super Throwable, ? extends T> function) {
        super(maybeSource);
        this.f26134if = function;
    }

    @Override // android.support.v4.fy0
    public void w0(MaybeObserver<? super T> maybeObserver) {
        this.f26120do.subscribe(new Cdo(maybeObserver, this.f26134if));
    }
}
