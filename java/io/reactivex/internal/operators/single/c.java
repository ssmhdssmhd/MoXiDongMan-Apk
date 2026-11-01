package io.reactivex.internal.operators.single;

import android.support.v4.jp1;
import android.support.v4.jz1;
import android.support.v4.t80;
import io.reactivex.SingleObserver;
import io.reactivex.SingleSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.Function;
import io.reactivex.internal.functions.Cif;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes3.dex */
public final class c<T, U> extends jz1<T> {

    /* renamed from: do, reason: not valid java name */
    public final Callable<U> f27130do;

    /* renamed from: for, reason: not valid java name */
    public final Consumer<? super U> f27131for;

    /* renamed from: if, reason: not valid java name */
    public final Function<? super U, ? extends SingleSource<? extends T>> f27132if;

    /* renamed from: new, reason: not valid java name */
    public final boolean f27133new;

    /* renamed from: io.reactivex.internal.operators.single.c$do, reason: invalid class name */
    public static final class Cdo<T, U> extends AtomicReference<Object> implements SingleObserver<T>, Disposable {
        private static final long serialVersionUID = -5331524057054083935L;
        public final Consumer<? super U> disposer;
        public final SingleObserver<? super T> downstream;
        public final boolean eager;
        public Disposable upstream;

        public Cdo(SingleObserver<? super T> singleObserver, U u, boolean z, Consumer<? super U> consumer) {
            super(u);
            this.downstream = singleObserver;
            this.eager = z;
            this.disposer = consumer;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.upstream.dispose();
            this.upstream = io.reactivex.internal.disposables.Cdo.DISPOSED;
            disposeAfter();
        }

        public void disposeAfter() {
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

        @Override // io.reactivex.SingleObserver
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
            disposeAfter();
        }

        @Override // io.reactivex.SingleObserver
        public void onSubscribe(Disposable disposable) {
            if (io.reactivex.internal.disposables.Cdo.validate(this.upstream, disposable)) {
                this.upstream = disposable;
                this.downstream.onSubscribe(this);
            }
        }

        @Override // io.reactivex.SingleObserver
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
            disposeAfter();
        }
    }

    public c(Callable<U> callable, Function<? super U, ? extends SingleSource<? extends T>> function, Consumer<? super U> consumer, boolean z) {
        this.f27130do = callable;
        this.f27132if = function;
        this.f27131for = consumer;
        this.f27133new = z;
    }

    @Override // android.support.v4.jz1
    public void g0(SingleObserver<? super T> singleObserver) {
        try {
            U uCall = this.f27130do.call();
            try {
                ((SingleSource) Cif.m29468else(this.f27132if.apply(uCall), "The singleFunction returned a null SingleSource")).subscribe(new Cdo(singleObserver, uCall, this.f27133new, this.f27131for));
            } catch (Throwable th) {
                th = th;
                t80.m7781if(th);
                if (this.f27133new) {
                    try {
                        this.f27131for.accept(uCall);
                    } catch (Throwable th2) {
                        t80.m7781if(th2);
                        th = new io.reactivex.exceptions.Cdo(th, th2);
                    }
                }
                io.reactivex.internal.disposables.Cif.error(th, singleObserver);
                if (this.f27133new) {
                    return;
                }
                try {
                    this.f27131for.accept(uCall);
                } catch (Throwable th3) {
                    t80.m7781if(th3);
                    jp1.l(th3);
                }
            }
        } catch (Throwable th4) {
            t80.m7781if(th4);
            io.reactivex.internal.disposables.Cif.error(th4, singleObserver);
        }
    }
}
