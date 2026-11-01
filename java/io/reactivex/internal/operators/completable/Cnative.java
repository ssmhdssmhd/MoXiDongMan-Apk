package io.reactivex.internal.operators.completable;

import android.support.v4.cq;
import android.support.v4.h4;
import android.support.v4.jp1;
import android.support.v4.np;
import io.reactivex.CompletableObserver;
import io.reactivex.CompletableSource;
import io.reactivex.disposables.Disposable;
import java.util.concurrent.atomic.AtomicInteger;

/* renamed from: io.reactivex.internal.operators.completable.native, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cnative extends np {

    /* renamed from: do, reason: not valid java name */
    public final CompletableSource[] f25417do;

    /* renamed from: io.reactivex.internal.operators.completable.native$do, reason: invalid class name */
    public static final class Cdo implements CompletableObserver {

        /* renamed from: do, reason: not valid java name */
        public final CompletableObserver f25418do;

        /* renamed from: for, reason: not valid java name */
        public final h4 f25419for;

        /* renamed from: if, reason: not valid java name */
        public final cq f25420if;

        /* renamed from: new, reason: not valid java name */
        public final AtomicInteger f25421new;

        public Cdo(CompletableObserver completableObserver, cq cqVar, h4 h4Var, AtomicInteger atomicInteger) {
            this.f25418do = completableObserver;
            this.f25420if = cqVar;
            this.f25419for = h4Var;
            this.f25421new = atomicInteger;
        }

        /* renamed from: do, reason: not valid java name */
        public void m29479do() {
            if (this.f25421new.decrementAndGet() == 0) {
                Throwable thTerminate = this.f25419for.terminate();
                if (thTerminate == null) {
                    this.f25418do.onComplete();
                } else {
                    this.f25418do.onError(thTerminate);
                }
            }
        }

        @Override // io.reactivex.CompletableObserver, io.reactivex.MaybeObserver
        public void onComplete() {
            m29479do();
        }

        @Override // io.reactivex.CompletableObserver
        public void onError(Throwable th) {
            if (this.f25419for.addThrowable(th)) {
                m29479do();
            } else {
                jp1.l(th);
            }
        }

        @Override // io.reactivex.CompletableObserver
        public void onSubscribe(Disposable disposable) {
            this.f25420if.add(disposable);
        }
    }

    public Cnative(CompletableSource[] completableSourceArr) {
        this.f25417do = completableSourceArr;
    }

    @Override // android.support.v4.np
    public void O(CompletableObserver completableObserver) {
        cq cqVar = new cq();
        AtomicInteger atomicInteger = new AtomicInteger(this.f25417do.length + 1);
        h4 h4Var = new h4();
        completableObserver.onSubscribe(cqVar);
        for (CompletableSource completableSource : this.f25417do) {
            if (cqVar.isDisposed()) {
                return;
            }
            if (completableSource == null) {
                h4Var.addThrowable(new NullPointerException("A completable source is null"));
                atomicInteger.decrementAndGet();
            } else {
                completableSource.subscribe(new Cdo(completableObserver, cqVar, h4Var, atomicInteger));
            }
        }
        if (atomicInteger.decrementAndGet() == 0) {
            Throwable thTerminate = h4Var.terminate();
            if (thTerminate == null) {
                completableObserver.onComplete();
            } else {
                completableObserver.onError(thTerminate);
            }
        }
    }
}
