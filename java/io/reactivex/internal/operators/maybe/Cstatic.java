package io.reactivex.internal.operators.maybe;

import android.support.v4.t80;
import io.reactivex.MaybeObserver;
import io.reactivex.MaybeSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.BiFunction;
import io.reactivex.functions.Function;
import io.reactivex.internal.functions.Cif;
import java.util.concurrent.atomic.AtomicReference;

/* renamed from: io.reactivex.internal.operators.maybe.static, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cstatic<T, U, R> extends io.reactivex.internal.operators.maybe.Cdo<T, R> {

    /* renamed from: for, reason: not valid java name */
    public final BiFunction<? super T, ? super U, ? extends R> f26228for;

    /* renamed from: if, reason: not valid java name */
    public final Function<? super T, ? extends MaybeSource<? extends U>> f26229if;

    /* renamed from: io.reactivex.internal.operators.maybe.static$do, reason: invalid class name */
    public static final class Cdo<T, U, R> implements MaybeObserver<T>, Disposable {

        /* renamed from: do, reason: not valid java name */
        public final Function<? super T, ? extends MaybeSource<? extends U>> f26230do;

        /* renamed from: if, reason: not valid java name */
        public final C0300do<T, U, R> f26231if;

        /* renamed from: io.reactivex.internal.operators.maybe.static$do$do, reason: invalid class name and collision with other inner class name */
        public static final class C0300do<T, U, R> extends AtomicReference<Disposable> implements MaybeObserver<U> {
            private static final long serialVersionUID = -2897979525538174559L;
            public final MaybeObserver<? super R> downstream;
            public final BiFunction<? super T, ? super U, ? extends R> resultSelector;
            public T value;

            public C0300do(MaybeObserver<? super R> maybeObserver, BiFunction<? super T, ? super U, ? extends R> biFunction) {
                this.downstream = maybeObserver;
                this.resultSelector = biFunction;
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
                io.reactivex.internal.disposables.Cdo.setOnce(this, disposable);
            }

            @Override // io.reactivex.MaybeObserver
            public void onSuccess(U u) {
                T t = this.value;
                this.value = null;
                try {
                    this.downstream.onSuccess(Cif.m29468else(this.resultSelector.apply(t, u), "The resultSelector returned a null value"));
                } catch (Throwable th) {
                    t80.m7781if(th);
                    this.downstream.onError(th);
                }
            }
        }

        public Cdo(MaybeObserver<? super R> maybeObserver, Function<? super T, ? extends MaybeSource<? extends U>> function, BiFunction<? super T, ? super U, ? extends R> biFunction) {
            this.f26231if = new C0300do<>(maybeObserver, biFunction);
            this.f26230do = function;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            io.reactivex.internal.disposables.Cdo.dispose(this.f26231if);
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return io.reactivex.internal.disposables.Cdo.isDisposed(this.f26231if.get());
        }

        @Override // io.reactivex.MaybeObserver
        public void onComplete() {
            this.f26231if.downstream.onComplete();
        }

        @Override // io.reactivex.MaybeObserver
        public void onError(Throwable th) {
            this.f26231if.downstream.onError(th);
        }

        @Override // io.reactivex.MaybeObserver
        public void onSubscribe(Disposable disposable) {
            if (io.reactivex.internal.disposables.Cdo.setOnce(this.f26231if, disposable)) {
                this.f26231if.downstream.onSubscribe(this);
            }
        }

        @Override // io.reactivex.MaybeObserver
        public void onSuccess(T t) {
            try {
                MaybeSource maybeSource = (MaybeSource) Cif.m29468else(this.f26230do.apply(t), "The mapper returned a null MaybeSource");
                if (io.reactivex.internal.disposables.Cdo.replace(this.f26231if, null)) {
                    C0300do<T, U, R> c0300do = this.f26231if;
                    c0300do.value = t;
                    maybeSource.subscribe(c0300do);
                }
            } catch (Throwable th) {
                t80.m7781if(th);
                this.f26231if.downstream.onError(th);
            }
        }
    }

    public Cstatic(MaybeSource<T> maybeSource, Function<? super T, ? extends MaybeSource<? extends U>> function, BiFunction<? super T, ? super U, ? extends R> biFunction) {
        super(maybeSource);
        this.f26229if = function;
        this.f26228for = biFunction;
    }

    @Override // android.support.v4.fy0
    public void w0(MaybeObserver<? super R> maybeObserver) {
        this.f26120do.subscribe(new Cdo(maybeObserver, this.f26229if, this.f26228for));
    }
}
