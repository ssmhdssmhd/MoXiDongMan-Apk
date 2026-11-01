package io.reactivex.internal.operators.completable;

import android.support.v4.cq;
import android.support.v4.h4;
import android.support.v4.np;
import android.support.v4.t80;
import io.reactivex.CompletableObserver;
import io.reactivex.CompletableSource;
import io.reactivex.internal.functions.Cif;
import io.reactivex.internal.operators.completable.Cnative;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicInteger;

/* renamed from: io.reactivex.internal.operators.completable.public, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cpublic extends np {

    /* renamed from: do, reason: not valid java name */
    public final Iterable<? extends CompletableSource> f25440do;

    public Cpublic(Iterable<? extends CompletableSource> iterable) {
        this.f25440do = iterable;
    }

    @Override // android.support.v4.np
    public void O(CompletableObserver completableObserver) {
        cq cqVar = new cq();
        completableObserver.onSubscribe(cqVar);
        try {
            Iterator it = (Iterator) Cif.m29468else(this.f25440do.iterator(), "The source iterator returned is null");
            AtomicInteger atomicInteger = new AtomicInteger(1);
            h4 h4Var = new h4();
            while (!cqVar.isDisposed()) {
                try {
                    if (it.hasNext()) {
                        if (cqVar.isDisposed()) {
                            return;
                        }
                        try {
                            CompletableSource completableSource = (CompletableSource) Cif.m29468else(it.next(), "The iterator returned a null CompletableSource");
                            if (cqVar.isDisposed()) {
                                return;
                            }
                            atomicInteger.getAndIncrement();
                            completableSource.subscribe(new Cnative.Cdo(completableObserver, cqVar, h4Var, atomicInteger));
                        } catch (Throwable th) {
                            t80.m7781if(th);
                            h4Var.addThrowable(th);
                        }
                    }
                } catch (Throwable th2) {
                    t80.m7781if(th2);
                    h4Var.addThrowable(th2);
                }
                if (atomicInteger.decrementAndGet() == 0) {
                    Throwable thTerminate = h4Var.terminate();
                    if (thTerminate == null) {
                        completableObserver.onComplete();
                        return;
                    } else {
                        completableObserver.onError(thTerminate);
                        return;
                    }
                }
                return;
            }
        } catch (Throwable th3) {
            t80.m7781if(th3);
            completableObserver.onError(th3);
        }
    }
}
