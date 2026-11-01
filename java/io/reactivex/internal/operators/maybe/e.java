package io.reactivex.internal.operators.maybe;

import android.support.v4.t80;
import io.reactivex.MaybeObserver;
import io.reactivex.MaybeSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Function;
import io.reactivex.internal.functions.Cif;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes3.dex */
public final class e<T> extends io.reactivex.internal.operators.maybe.Cdo<T, T> {

    /* renamed from: for, reason: not valid java name */
    public final boolean f26121for;

    /* renamed from: if, reason: not valid java name */
    public final Function<? super Throwable, ? extends MaybeSource<? extends T>> f26122if;

    /* renamed from: io.reactivex.internal.operators.maybe.e$do, reason: invalid class name */
    public static final class Cdo<T> extends AtomicReference<Disposable> implements MaybeObserver<T>, Disposable {
        private static final long serialVersionUID = 2026620218879969836L;
        public final boolean allowFatal;
        public final MaybeObserver<? super T> downstream;
        public final Function<? super Throwable, ? extends MaybeSource<? extends T>> resumeFunction;

        /* renamed from: io.reactivex.internal.operators.maybe.e$do$do, reason: invalid class name and collision with other inner class name */
        public static final class C0293do<T> implements MaybeObserver<T> {

            /* renamed from: do, reason: not valid java name */
            public final MaybeObserver<? super T> f26123do;

            /* renamed from: if, reason: not valid java name */
            public final AtomicReference<Disposable> f26124if;

            public C0293do(MaybeObserver<? super T> maybeObserver, AtomicReference<Disposable> atomicReference) {
                this.f26123do = maybeObserver;
                this.f26124if = atomicReference;
            }

            @Override // io.reactivex.MaybeObserver
            public void onComplete() {
                this.f26123do.onComplete();
            }

            @Override // io.reactivex.MaybeObserver
            public void onError(Throwable th) {
                this.f26123do.onError(th);
            }

            @Override // io.reactivex.MaybeObserver
            public void onSubscribe(Disposable disposable) {
                io.reactivex.internal.disposables.Cdo.setOnce(this.f26124if, disposable);
            }

            @Override // io.reactivex.MaybeObserver
            public void onSuccess(T t) {
                this.f26123do.onSuccess(t);
            }
        }

        public Cdo(MaybeObserver<? super T> maybeObserver, Function<? super Throwable, ? extends MaybeSource<? extends T>> function, boolean z) {
            this.downstream = maybeObserver;
            this.resumeFunction = function;
            this.allowFatal = z;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            io.reactivex.internal.disposables.Cdo.dispose(this);
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return io.reactivex.internal.disposables.Cdo.isDisposed(get());
        }

        @Override // io.reactivex.MaybeObserver
        public void onComplete() {
            this.downstream.onComplete();
        }

        @Override // io.reactivex.MaybeObserver
        public void onError(Throwable th) {
            if (!this.allowFatal && !(th instanceof Exception)) {
                this.downstream.onError(th);
                return;
            }
            try {
                MaybeSource maybeSource = (MaybeSource) Cif.m29468else(this.resumeFunction.apply(th), "The resumeFunction returned a null MaybeSource");
                io.reactivex.internal.disposables.Cdo.replace(this, null);
                maybeSource.subscribe(new C0293do(this.downstream, this));
            } catch (Throwable th2) {
                t80.m7781if(th2);
                this.downstream.onError(new io.reactivex.exceptions.Cdo(th, th2));
            }
        }

        @Override // io.reactivex.MaybeObserver
        public void onSubscribe(Disposable disposable) {
            if (io.reactivex.internal.disposables.Cdo.setOnce(this, disposable)) {
                this.downstream.onSubscribe(this);
            }
        }

        @Override // io.reactivex.MaybeObserver
        public void onSuccess(T t) {
            this.downstream.onSuccess(t);
        }
    }

    public e(MaybeSource<T> maybeSource, Function<? super Throwable, ? extends MaybeSource<? extends T>> function, boolean z) {
        super(maybeSource);
        this.f26122if = function;
        this.f26121for = z;
    }

    @Override // android.support.v4.fy0
    public void w0(MaybeObserver<? super T> maybeObserver) {
        this.f26120do.subscribe(new Cdo(maybeObserver, this.f26122if, this.f26121for));
    }
}
