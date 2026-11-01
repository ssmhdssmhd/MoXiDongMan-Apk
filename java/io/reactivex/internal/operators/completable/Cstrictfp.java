package io.reactivex.internal.operators.completable;

import android.support.v4.jp1;
import android.support.v4.np;
import android.support.v4.t80;
import io.reactivex.CompletableObserver;
import io.reactivex.CompletableSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.Function;
import io.reactivex.internal.functions.Cif;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicReference;

/* renamed from: io.reactivex.internal.operators.completable.strictfp, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cstrictfp<R> extends np {

    /* renamed from: do, reason: not valid java name */
    public final Callable<R> f25444do;

    /* renamed from: for, reason: not valid java name */
    public final Consumer<? super R> f25445for;

    /* renamed from: if, reason: not valid java name */
    public final Function<? super R, ? extends CompletableSource> f25446if;

    /* renamed from: new, reason: not valid java name */
    public final boolean f25447new;

    /* renamed from: io.reactivex.internal.operators.completable.strictfp$do, reason: invalid class name */
    public static final class Cdo<R> extends AtomicReference<Object> implements CompletableObserver, Disposable {
        private static final long serialVersionUID = -674404550052917487L;
        public final Consumer<? super R> disposer;
        public final CompletableObserver downstream;
        public final boolean eager;
        public Disposable upstream;

        public Cdo(CompletableObserver completableObserver, R r, Consumer<? super R> consumer, boolean z) {
            super(r);
            this.downstream = completableObserver;
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

        @Override // io.reactivex.CompletableObserver, io.reactivex.MaybeObserver
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

        @Override // io.reactivex.CompletableObserver
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

        @Override // io.reactivex.CompletableObserver
        public void onSubscribe(Disposable disposable) {
            if (io.reactivex.internal.disposables.Cdo.validate(this.upstream, disposable)) {
                this.upstream = disposable;
                this.downstream.onSubscribe(this);
            }
        }
    }

    public Cstrictfp(Callable<R> callable, Function<? super R, ? extends CompletableSource> function, Consumer<? super R> consumer, boolean z) {
        this.f25444do = callable;
        this.f25446if = function;
        this.f25445for = consumer;
        this.f25447new = z;
    }

    @Override // android.support.v4.np
    public void O(CompletableObserver completableObserver) {
        try {
            R rCall = this.f25444do.call();
            try {
                ((CompletableSource) Cif.m29468else(this.f25446if.apply(rCall), "The completableFunction returned a null CompletableSource")).subscribe(new Cdo(completableObserver, rCall, this.f25445for, this.f25447new));
            } catch (Throwable th) {
                t80.m7781if(th);
                if (this.f25447new) {
                    try {
                        this.f25445for.accept(rCall);
                    } catch (Throwable th2) {
                        t80.m7781if(th2);
                        io.reactivex.internal.disposables.Cif.error(new io.reactivex.exceptions.Cdo(th, th2), completableObserver);
                        return;
                    }
                }
                io.reactivex.internal.disposables.Cif.error(th, completableObserver);
                if (this.f25447new) {
                    return;
                }
                try {
                    this.f25445for.accept(rCall);
                } catch (Throwable th3) {
                    t80.m7781if(th3);
                    jp1.l(th3);
                }
            }
        } catch (Throwable th4) {
            t80.m7781if(th4);
            io.reactivex.internal.disposables.Cif.error(th4, completableObserver);
        }
    }
}
