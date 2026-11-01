package io.reactivex.internal.operators.completable;

import android.support.v4.cq;
import android.support.v4.jp1;
import android.support.v4.np;
import android.support.v4.t80;
import io.reactivex.CompletableObserver;
import io.reactivex.CompletableSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.functions.Cif;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

/* renamed from: io.reactivex.internal.operators.completable.return, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Creturn extends np {

    /* renamed from: do, reason: not valid java name */
    public final Iterable<? extends CompletableSource> f25441do;

    /* renamed from: io.reactivex.internal.operators.completable.return$do, reason: invalid class name */
    public static final class Cdo extends AtomicBoolean implements CompletableObserver {
        private static final long serialVersionUID = -7730517613164279224L;
        public final CompletableObserver downstream;
        public final cq set;
        public final AtomicInteger wip;

        public Cdo(CompletableObserver completableObserver, cq cqVar, AtomicInteger atomicInteger) {
            this.downstream = completableObserver;
            this.set = cqVar;
            this.wip = atomicInteger;
        }

        @Override // io.reactivex.CompletableObserver, io.reactivex.MaybeObserver
        public void onComplete() {
            if (this.wip.decrementAndGet() == 0 && compareAndSet(false, true)) {
                this.downstream.onComplete();
            }
        }

        @Override // io.reactivex.CompletableObserver
        public void onError(Throwable th) {
            this.set.dispose();
            if (compareAndSet(false, true)) {
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

    public Creturn(Iterable<? extends CompletableSource> iterable) {
        this.f25441do = iterable;
    }

    @Override // android.support.v4.np
    public void O(CompletableObserver completableObserver) {
        cq cqVar = new cq();
        completableObserver.onSubscribe(cqVar);
        try {
            Iterator it = (Iterator) Cif.m29468else(this.f25441do.iterator(), "The source iterator returned is null");
            AtomicInteger atomicInteger = new AtomicInteger(1);
            Cdo cdo = new Cdo(completableObserver, cqVar, atomicInteger);
            while (!cqVar.isDisposed()) {
                try {
                    if (!it.hasNext()) {
                        cdo.onComplete();
                        return;
                    }
                    if (cqVar.isDisposed()) {
                        return;
                    }
                    try {
                        CompletableSource completableSource = (CompletableSource) Cif.m29468else(it.next(), "The iterator returned a null CompletableSource");
                        if (cqVar.isDisposed()) {
                            return;
                        }
                        atomicInteger.getAndIncrement();
                        completableSource.subscribe(cdo);
                    } catch (Throwable th) {
                        t80.m7781if(th);
                        cqVar.dispose();
                        cdo.onError(th);
                        return;
                    }
                } catch (Throwable th2) {
                    t80.m7781if(th2);
                    cqVar.dispose();
                    cdo.onError(th2);
                    return;
                }
            }
        } catch (Throwable th3) {
            t80.m7781if(th3);
            completableObserver.onError(th3);
        }
    }
}
