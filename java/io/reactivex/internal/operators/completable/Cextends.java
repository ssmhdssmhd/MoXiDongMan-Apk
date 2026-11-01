package io.reactivex.internal.operators.completable;

import android.support.v4.np;
import android.support.v4.tw1;
import io.reactivex.CompletableObserver;
import io.reactivex.CompletableSource;
import io.reactivex.Ctry;
import io.reactivex.disposables.Disposable;
import java.util.concurrent.atomic.AtomicReference;

/* renamed from: io.reactivex.internal.operators.completable.extends, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cextends extends np {

    /* renamed from: do, reason: not valid java name */
    public final CompletableSource f25394do;

    /* renamed from: if, reason: not valid java name */
    public final Ctry f25395if;

    /* renamed from: io.reactivex.internal.operators.completable.extends$do, reason: invalid class name */
    public static final class Cdo extends AtomicReference<Disposable> implements CompletableObserver, Disposable, Runnable {
        private static final long serialVersionUID = 7000911171163930287L;
        public final CompletableObserver downstream;
        public final CompletableSource source;
        public final tw1 task = new tw1();

        public Cdo(CompletableObserver completableObserver, CompletableSource completableSource) {
            this.downstream = completableObserver;
            this.source = completableSource;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            io.reactivex.internal.disposables.Cdo.dispose(this);
            this.task.dispose();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return io.reactivex.internal.disposables.Cdo.isDisposed(get());
        }

        @Override // io.reactivex.CompletableObserver, io.reactivex.MaybeObserver
        public void onComplete() {
            this.downstream.onComplete();
        }

        @Override // io.reactivex.CompletableObserver
        public void onError(Throwable th) {
            this.downstream.onError(th);
        }

        @Override // io.reactivex.CompletableObserver
        public void onSubscribe(Disposable disposable) {
            io.reactivex.internal.disposables.Cdo.setOnce(this, disposable);
        }

        @Override // java.lang.Runnable
        public void run() {
            this.source.subscribe(this);
        }
    }

    public Cextends(CompletableSource completableSource, Ctry ctry) {
        this.f25394do = completableSource;
        this.f25395if = ctry;
    }

    @Override // android.support.v4.np
    public void O(CompletableObserver completableObserver) {
        Cdo cdo = new Cdo(completableObserver, this.f25394do);
        completableObserver.onSubscribe(cdo);
        cdo.task.replace(this.f25395if.mo29697new(cdo));
    }
}
