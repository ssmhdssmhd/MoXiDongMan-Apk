package io.reactivex.internal.operators.completable;

import android.support.v4.np;
import android.support.v4.tw1;
import io.reactivex.CompletableObserver;
import io.reactivex.CompletableSource;
import io.reactivex.disposables.Disposable;
import java.util.concurrent.atomic.AtomicInteger;

/* renamed from: io.reactivex.internal.operators.completable.try, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Ctry extends np {

    /* renamed from: do, reason: not valid java name */
    public final CompletableSource[] f25470do;

    /* renamed from: io.reactivex.internal.operators.completable.try$do, reason: invalid class name */
    public static final class Cdo extends AtomicInteger implements CompletableObserver {
        private static final long serialVersionUID = -7965400327305809232L;
        public final CompletableObserver downstream;
        public int index;
        public final tw1 sd = new tw1();
        public final CompletableSource[] sources;

        public Cdo(CompletableObserver completableObserver, CompletableSource[] completableSourceArr) {
            this.downstream = completableObserver;
            this.sources = completableSourceArr;
        }

        public void next() {
            if (!this.sd.isDisposed() && getAndIncrement() == 0) {
                CompletableSource[] completableSourceArr = this.sources;
                while (!this.sd.isDisposed()) {
                    int i = this.index;
                    this.index = i + 1;
                    if (i == completableSourceArr.length) {
                        this.downstream.onComplete();
                        return;
                    } else {
                        completableSourceArr[i].subscribe(this);
                        if (decrementAndGet() == 0) {
                            return;
                        }
                    }
                }
            }
        }

        @Override // io.reactivex.CompletableObserver, io.reactivex.MaybeObserver
        public void onComplete() {
            next();
        }

        @Override // io.reactivex.CompletableObserver
        public void onError(Throwable th) {
            this.downstream.onError(th);
        }

        @Override // io.reactivex.CompletableObserver
        public void onSubscribe(Disposable disposable) {
            this.sd.replace(disposable);
        }
    }

    public Ctry(CompletableSource[] completableSourceArr) {
        this.f25470do = completableSourceArr;
    }

    @Override // android.support.v4.np
    public void O(CompletableObserver completableObserver) {
        Cdo cdo = new Cdo(completableObserver, this.f25470do);
        completableObserver.onSubscribe(cdo.sd);
        cdo.next();
    }
}
