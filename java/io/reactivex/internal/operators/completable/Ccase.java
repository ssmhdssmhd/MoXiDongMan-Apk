package io.reactivex.internal.operators.completable;

import android.support.v4.np;
import android.support.v4.t80;
import android.support.v4.tw1;
import io.reactivex.CompletableObserver;
import io.reactivex.CompletableSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.functions.Cif;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicInteger;

/* renamed from: io.reactivex.internal.operators.completable.case, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Ccase extends np {

    /* renamed from: do, reason: not valid java name */
    public final Iterable<? extends CompletableSource> f25371do;

    /* renamed from: io.reactivex.internal.operators.completable.case$do, reason: invalid class name */
    public static final class Cdo extends AtomicInteger implements CompletableObserver {
        private static final long serialVersionUID = -7965400327305809232L;
        public final CompletableObserver downstream;
        public final tw1 sd = new tw1();
        public final Iterator<? extends CompletableSource> sources;

        public Cdo(CompletableObserver completableObserver, Iterator<? extends CompletableSource> it) {
            this.downstream = completableObserver;
            this.sources = it;
        }

        public void next() {
            if (!this.sd.isDisposed() && getAndIncrement() == 0) {
                Iterator<? extends CompletableSource> it = this.sources;
                while (!this.sd.isDisposed()) {
                    try {
                        if (!it.hasNext()) {
                            this.downstream.onComplete();
                            return;
                        }
                        try {
                            ((CompletableSource) Cif.m29468else(it.next(), "The CompletableSource returned is null")).subscribe(this);
                            if (decrementAndGet() == 0) {
                                return;
                            }
                        } catch (Throwable th) {
                            t80.m7781if(th);
                            this.downstream.onError(th);
                            return;
                        }
                    } catch (Throwable th2) {
                        t80.m7781if(th2);
                        this.downstream.onError(th2);
                        return;
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

    public Ccase(Iterable<? extends CompletableSource> iterable) {
        this.f25371do = iterable;
    }

    @Override // android.support.v4.np
    public void O(CompletableObserver completableObserver) {
        try {
            Cdo cdo = new Cdo(completableObserver, (Iterator) Cif.m29468else(this.f25371do.iterator(), "The iterator returned is null"));
            completableObserver.onSubscribe(cdo.sd);
            cdo.next();
        } catch (Throwable th) {
            t80.m7781if(th);
            io.reactivex.internal.disposables.Cif.error(th, completableObserver);
        }
    }
}
