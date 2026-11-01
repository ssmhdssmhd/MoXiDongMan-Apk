package io.reactivex.internal.operators.maybe;

import android.support.v4.t80;
import io.reactivex.MaybeObserver;
import io.reactivex.MaybeSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Function;
import io.reactivex.internal.functions.Cif;
import java.util.concurrent.atomic.AtomicReference;

/* renamed from: io.reactivex.internal.operators.maybe.private, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cprivate<T, R> extends io.reactivex.internal.operators.maybe.Cdo<T, R> {

    /* renamed from: if, reason: not valid java name */
    public final Function<? super T, ? extends MaybeSource<? extends R>> f26208if;

    /* renamed from: io.reactivex.internal.operators.maybe.private$do, reason: invalid class name */
    public static final class Cdo<T, R> extends AtomicReference<Disposable> implements MaybeObserver<T>, Disposable {
        private static final long serialVersionUID = 4375739915521278546L;
        public final MaybeObserver<? super R> downstream;
        public final Function<? super T, ? extends MaybeSource<? extends R>> mapper;
        public Disposable upstream;

        /* renamed from: io.reactivex.internal.operators.maybe.private$do$do, reason: invalid class name and collision with other inner class name */
        public final class C0299do implements MaybeObserver<R> {
            public C0299do() {
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

        public Cdo(MaybeObserver<? super R> maybeObserver, Function<? super T, ? extends MaybeSource<? extends R>> function) {
            this.downstream = maybeObserver;
            this.mapper = function;
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
            this.downstream.onComplete();
        }

        @Override // io.reactivex.MaybeObserver
        public void onError(Throwable th) {
            this.downstream.onError(th);
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
                MaybeSource maybeSource = (MaybeSource) Cif.m29468else(this.mapper.apply(t), "The mapper returned a null MaybeSource");
                if (isDisposed()) {
                    return;
                }
                maybeSource.subscribe(new C0299do());
            } catch (Exception e) {
                t80.m7781if(e);
                this.downstream.onError(e);
            }
        }
    }

    public Cprivate(MaybeSource<T> maybeSource, Function<? super T, ? extends MaybeSource<? extends R>> function) {
        super(maybeSource);
        this.f26208if = function;
    }

    @Override // android.support.v4.fy0
    public void w0(MaybeObserver<? super R> maybeObserver) {
        this.f26120do.subscribe(new Cdo(maybeObserver, this.f26208if));
    }
}
