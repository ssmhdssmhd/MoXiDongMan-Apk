package io.reactivex.internal.operators.completable;

import android.support.v4.jp1;
import android.support.v4.np;
import android.support.v4.t80;
import io.reactivex.CompletableObserver;
import io.reactivex.CompletableSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Action;
import java.util.concurrent.atomic.AtomicInteger;

/* renamed from: io.reactivex.internal.operators.completable.catch, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Ccatch extends np {

    /* renamed from: do, reason: not valid java name */
    public final CompletableSource f25372do;

    /* renamed from: if, reason: not valid java name */
    public final Action f25373if;

    /* renamed from: io.reactivex.internal.operators.completable.catch$do, reason: invalid class name */
    public static final class Cdo extends AtomicInteger implements CompletableObserver, Disposable {
        private static final long serialVersionUID = 4109457741734051389L;
        public final CompletableObserver downstream;
        public final Action onFinally;
        public Disposable upstream;

        public Cdo(CompletableObserver completableObserver, Action action) {
            this.downstream = completableObserver;
            this.onFinally = action;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.upstream.dispose();
            runFinally();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.upstream.isDisposed();
        }

        @Override // io.reactivex.CompletableObserver, io.reactivex.MaybeObserver
        public void onComplete() {
            this.downstream.onComplete();
            runFinally();
        }

        @Override // io.reactivex.CompletableObserver
        public void onError(Throwable th) {
            this.downstream.onError(th);
            runFinally();
        }

        @Override // io.reactivex.CompletableObserver
        public void onSubscribe(Disposable disposable) {
            if (io.reactivex.internal.disposables.Cdo.validate(this.upstream, disposable)) {
                this.upstream = disposable;
                this.downstream.onSubscribe(this);
            }
        }

        public void runFinally() {
            if (compareAndSet(0, 1)) {
                try {
                    this.onFinally.run();
                } catch (Throwable th) {
                    t80.m7781if(th);
                    jp1.l(th);
                }
            }
        }
    }

    public Ccatch(CompletableSource completableSource, Action action) {
        this.f25372do = completableSource;
        this.f25373if = action;
    }

    @Override // android.support.v4.np
    public void O(CompletableObserver completableObserver) {
        this.f25372do.subscribe(new Cdo(completableObserver, this.f25373if));
    }
}
