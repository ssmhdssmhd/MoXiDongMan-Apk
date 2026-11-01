package io.reactivex.internal.operators.single;

import android.support.v4.jz1;
import io.reactivex.Ctry;
import io.reactivex.SingleObserver;
import io.reactivex.disposables.Disposable;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

/* renamed from: io.reactivex.internal.operators.single.instanceof, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cinstanceof extends jz1<Long> {

    /* renamed from: do, reason: not valid java name */
    public final long f27201do;

    /* renamed from: for, reason: not valid java name */
    public final Ctry f27202for;

    /* renamed from: if, reason: not valid java name */
    public final TimeUnit f27203if;

    /* renamed from: io.reactivex.internal.operators.single.instanceof$do, reason: invalid class name */
    public static final class Cdo extends AtomicReference<Disposable> implements Disposable, Runnable {
        private static final long serialVersionUID = 8465401857522493082L;
        public final SingleObserver<? super Long> downstream;

        public Cdo(SingleObserver<? super Long> singleObserver) {
            this.downstream = singleObserver;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            io.reactivex.internal.disposables.Cdo.dispose(this);
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return io.reactivex.internal.disposables.Cdo.isDisposed(get());
        }

        @Override // java.lang.Runnable
        public void run() {
            this.downstream.onSuccess(0L);
        }

        public void setFuture(Disposable disposable) {
            io.reactivex.internal.disposables.Cdo.replace(this, disposable);
        }
    }

    public Cinstanceof(long j, TimeUnit timeUnit, Ctry ctry) {
        this.f27201do = j;
        this.f27203if = timeUnit;
        this.f27202for = ctry;
    }

    @Override // android.support.v4.jz1
    public void g0(SingleObserver<? super Long> singleObserver) {
        Cdo cdo = new Cdo(singleObserver);
        singleObserver.onSubscribe(cdo);
        cdo.setFuture(this.f27202for.mo29361try(cdo, this.f27201do, this.f27203if));
    }
}
