package io.reactivex.internal.operators.completable;

import android.support.v4.cq;
import android.support.v4.jp1;
import android.support.v4.np;
import io.reactivex.CompletableObserver;
import io.reactivex.CompletableSource;
import io.reactivex.disposables.Disposable;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

/* renamed from: io.reactivex.internal.operators.completable.import, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cimport extends np {

    /* renamed from: do, reason: not valid java name */
    public final CompletableSource[] f25416do;

    /* renamed from: io.reactivex.internal.operators.completable.import$do, reason: invalid class name */
    public static final class Cdo extends AtomicInteger implements CompletableObserver {
        private static final long serialVersionUID = -8360547806504310570L;
        public final CompletableObserver downstream;
        public final AtomicBoolean once;
        public final cq set;

        public Cdo(CompletableObserver completableObserver, AtomicBoolean atomicBoolean, cq cqVar, int i) {
            this.downstream = completableObserver;
            this.once = atomicBoolean;
            this.set = cqVar;
            lazySet(i);
        }

        @Override // io.reactivex.CompletableObserver, io.reactivex.MaybeObserver
        public void onComplete() {
            if (decrementAndGet() == 0 && this.once.compareAndSet(false, true)) {
                this.downstream.onComplete();
            }
        }

        @Override // io.reactivex.CompletableObserver
        public void onError(Throwable th) {
            this.set.dispose();
            if (this.once.compareAndSet(false, true)) {
                this.downstream.onError(th);
            } else {
                jp1.l(th);
            }
        }

        @Override // io.reactivex.CompletableObserver
        public void onSubscribe(Disposable disposable) {
            this.set.add(disposable);
        }
    }

    public Cimport(CompletableSource[] completableSourceArr) {
        this.f25416do = completableSourceArr;
    }

    @Override // android.support.v4.np
    public void O(CompletableObserver completableObserver) {
        cq cqVar = new cq();
        Cdo cdo = new Cdo(completableObserver, new AtomicBoolean(), cqVar, this.f25416do.length + 1);
        completableObserver.onSubscribe(cqVar);
        for (CompletableSource completableSource : this.f25416do) {
            if (cqVar.isDisposed()) {
                return;
            }
            if (completableSource == null) {
                cqVar.dispose();
                cdo.onError(new NullPointerException("A completable source is null"));
                return;
            }
            completableSource.subscribe(cdo);
        }
        cdo.onComplete();
    }
}
