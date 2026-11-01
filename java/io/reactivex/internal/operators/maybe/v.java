package io.reactivex.internal.operators.maybe;

import android.support.v4.fy0;
import android.support.v4.jp1;
import android.support.v4.t80;
import io.reactivex.MaybeObserver;
import io.reactivex.MaybeSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.Function;
import io.reactivex.internal.functions.Cif;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes3.dex */
public final class v<T, D> extends fy0<T> {

    /* renamed from: do, reason: not valid java name */
    public final Callable<? extends D> f26252do;

    /* renamed from: for, reason: not valid java name */
    public final Consumer<? super D> f26253for;

    /* renamed from: if, reason: not valid java name */
    public final Function<? super D, ? extends MaybeSource<? extends T>> f26254if;

    /* renamed from: new, reason: not valid java name */
    public final boolean f26255new;

    /* renamed from: io.reactivex.internal.operators.maybe.v$do, reason: invalid class name */
    public static final class Cdo<T, D> extends AtomicReference<Object> implements MaybeObserver<T>, Disposable {
        private static final long serialVersionUID = -674404550052917487L;
        public final Consumer<? super D> disposer;
        public final MaybeObserver<? super T> downstream;
        public final boolean eager;
        public Disposable upstream;

        public Cdo(MaybeObserver<? super T> maybeObserver, D d, Consumer<? super D> consumer, boolean z) {
            super(d);
            this.downstream = maybeObserver;
            this.disposer = consumer;
            this.eager = z;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.upstream.dispose();
            this.upstream = io.reactivex.internal.disposables.Cdo.DISPOSED;
            disposeResourceAfter();
        }

        public void disposeResourceAfter() {
            Object andSet = getAndSet(this);
            if (andSet != this) {
                try {
                    this.disposer.accept(andSet);
                } catch (Throwable th) {
                    t80.m7781if(th);
                    jp1.l(th);
                }
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.upstream.isDisposed();
        }

        @Override // io.reactivex.MaybeObserver
        public void onComplete() {
            this.upstream = io.reactivex.internal.disposables.Cdo.DISPOSED;
            if (this.eager) {
                Object andSet = getAndSet(this);
                if (andSet == this) {
                    return;
                }
                try {
                    this.disposer.accept(andSet);
                } catch (Throwable th) {
                    t80.m7781if(th);
                    this.downstream.onError(th);
                    return;
                }
            }
            this.downstream.onComplete();
            if (this.eager) {
                return;
            }
            disposeResourceAfter();
        }

        @Override // io.reactivex.MaybeObserver
        public void onError(Throwable th) {
            this.upstream = io.reactivex.internal.disposables.Cdo.DISPOSED;
            if (this.eager) {
                Object andSet = getAndSet(this);
                if (andSet == this) {
                    return;
                }
                try {
                    this.disposer.accept(andSet);
                } catch (Throwable th2) {
                    t80.m7781if(th2);
                    th = new io.reactivex.exceptions.Cdo(th, th2);
                }
            }
            this.downstream.onError(th);
            if (this.eager) {
                return;
            }
            disposeResourceAfter();
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
            this.upstream = io.reactivex.internal.disposables.Cdo.DISPOSED;
            if (this.eager) {
                Object andSet = getAndSet(this);
                if (andSet == this) {
                    return;
                }
                try {
                    this.disposer.accept(andSet);
                } catch (Throwable th) {
                    t80.m7781if(th);
                    this.downstream.onError(th);
                    return;
                }
            }
            this.downstream.onSuccess(t);
            if (this.eager) {
                return;
            }
            disposeResourceAfter();
        }
    }

    public v(Callable<? extends D> callable, Function<? super D, ? extends MaybeSource<? extends T>> function, Consumer<? super D> consumer, boolean z) {
        this.f26252do = callable;
        this.f26254if = function;
        this.f26253for = consumer;
        this.f26255new = z;
    }

    @Override // android.support.v4.fy0
    public void w0(MaybeObserver<? super T> maybeObserver) {
        try {
            D dCall = this.f26252do.call();
            try {
                ((MaybeSource) Cif.m29468else(this.f26254if.apply(dCall), "The sourceSupplier returned a null MaybeSource")).subscribe(new Cdo(maybeObserver, dCall, this.f26253for, this.f26255new));
            } catch (Throwable th) {
                t80.m7781if(th);
                if (this.f26255new) {
                    try {
                        this.f26253for.accept(dCall);
                    } catch (Throwable th2) {
                        t80.m7781if(th2);
                        io.reactivex.internal.disposables.Cif.error(new io.reactivex.exceptions.Cdo(th, th2), maybeObserver);
                        return;
                    }
                }
                io.reactivex.internal.disposables.Cif.error(th, maybeObserver);
                if (this.f26255new) {
                    return;
                }
                try {
                    this.f26253for.accept(dCall);
                } catch (Throwable th3) {
                    t80.m7781if(th3);
                    jp1.l(th3);
                }
            }
        } catch (Throwable th4) {
            t80.m7781if(th4);
            io.reactivex.internal.disposables.Cif.error(th4, maybeObserver);
        }
    }
}
