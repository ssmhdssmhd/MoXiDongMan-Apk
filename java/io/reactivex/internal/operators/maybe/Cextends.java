package io.reactivex.internal.operators.maybe;

import android.support.v4.t80;
import io.reactivex.MaybeObserver;
import io.reactivex.MaybeSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Function;
import io.reactivex.internal.functions.Cif;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicReference;

/* renamed from: io.reactivex.internal.operators.maybe.extends, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cextends<T, R> extends io.reactivex.internal.operators.maybe.Cdo<T, R> {

    /* renamed from: for, reason: not valid java name */
    public final Function<? super Throwable, ? extends MaybeSource<? extends R>> f26130for;

    /* renamed from: if, reason: not valid java name */
    public final Function<? super T, ? extends MaybeSource<? extends R>> f26131if;

    /* renamed from: new, reason: not valid java name */
    public final Callable<? extends MaybeSource<? extends R>> f26132new;

    /* renamed from: io.reactivex.internal.operators.maybe.extends$do, reason: invalid class name */
    public static final class Cdo<T, R> extends AtomicReference<Disposable> implements MaybeObserver<T>, Disposable {
        private static final long serialVersionUID = 4375739915521278546L;
        public final MaybeObserver<? super R> downstream;
        public final Callable<? extends MaybeSource<? extends R>> onCompleteSupplier;
        public final Function<? super Throwable, ? extends MaybeSource<? extends R>> onErrorMapper;
        public final Function<? super T, ? extends MaybeSource<? extends R>> onSuccessMapper;
        public Disposable upstream;

        /* renamed from: io.reactivex.internal.operators.maybe.extends$do$do, reason: invalid class name and collision with other inner class name */
        public final class C0294do implements MaybeObserver<R> {
            public C0294do() {
            }

            @Override // io.reactivex.MaybeObserver
            public void onComplete() {
                Cdo.this.downstream.onComplete();
            }

            @Override // io.reactivex.MaybeObserver
            public void onError(Throwable th) {
                Cdo.this.downstream.onError(th);
            }

            @Override // io.reactivex.MaybeObserver
            public void onSubscribe(Disposable disposable) {
                io.reactivex.internal.disposables.Cdo.setOnce(Cdo.this, disposable);
            }

            @Override // io.reactivex.MaybeObserver
            public void onSuccess(R r) {
                Cdo.this.downstream.onSuccess(r);
            }
        }

        public Cdo(MaybeObserver<? super R> maybeObserver, Function<? super T, ? extends MaybeSource<? extends R>> function, Function<? super Throwable, ? extends MaybeSource<? extends R>> function2, Callable<? extends MaybeSource<? extends R>> callable) {
            this.downstream = maybeObserver;
            this.onSuccessMapper = function;
            this.onErrorMapper = function2;
            this.onCompleteSupplier = callable;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            io.reactivex.internal.disposables.Cdo.dispose(this);
            this.upstream.dispose();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return io.reactivex.internal.disposables.Cdo.isDisposed(get());
        }

        @Override // io.reactivex.MaybeObserver
        public void onComplete() {
            try {
                ((MaybeSource) Cif.m29468else(this.onCompleteSupplier.call(), "The onCompleteSupplier returned a null MaybeSource")).subscribe(new C0294do());
            } catch (Exception e) {
                t80.m7781if(e);
                this.downstream.onError(e);
            }
        }

        @Override // io.reactivex.MaybeObserver
        public void onError(Throwable th) {
            try {
                ((MaybeSource) Cif.m29468else(this.onErrorMapper.apply(th), "The onErrorMapper returned a null MaybeSource")).subscribe(new C0294do());
            } catch (Exception e) {
                t80.m7781if(e);
                this.downstream.onError(new io.reactivex.exceptions.Cdo(th, e));
            }
        }

        @Override // io.reactivex.MaybeObserver
        public void onSubscribe(Disposable disposable) {
            if (io.reactivex.internal.disposables.Cdo.validate(this.upstream, disposable)) {
                this.upstream = disposable;
                this.downstream.onSubscribe(this);
            }
        }

        @Override // io.reactivex.MaybeObserver
        public void onSuccess(T t) {
            try {
                ((MaybeSource) Cif.m29468else(this.onSuccessMapper.apply(t), "The onSuccessMapper returned a null MaybeSource")).subscribe(new C0294do());
            } catch (Exception e) {
                t80.m7781if(e);
                this.downstream.onError(e);
            }
        }
    }

    public Cextends(MaybeSource<T> maybeSource, Function<? super T, ? extends MaybeSource<? extends R>> function, Function<? super Throwable, ? extends MaybeSource<? extends R>> function2, Callable<? extends MaybeSource<? extends R>> callable) {
        super(maybeSource);
        this.f26131if = function;
        this.f26130for = function2;
        this.f26132new = callable;
    }

    @Override // android.support.v4.fy0
    public void w0(MaybeObserver<? super R> maybeObserver) {
        this.f26120do.subscribe(new Cdo(maybeObserver, this.f26131if, this.f26130for, this.f26132new));
    }
}
