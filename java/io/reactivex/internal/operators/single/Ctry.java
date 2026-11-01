package io.reactivex.internal.operators.single;

import android.support.v4.jz1;
import android.support.v4.tw1;
import io.reactivex.SingleObserver;
import io.reactivex.SingleSource;
import io.reactivex.disposables.Disposable;
import java.util.concurrent.TimeUnit;

/* renamed from: io.reactivex.internal.operators.single.try, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Ctry<T> extends jz1<T> {

    /* renamed from: do, reason: not valid java name */
    public final SingleSource<? extends T> f27254do;

    /* renamed from: for, reason: not valid java name */
    public final TimeUnit f27255for;

    /* renamed from: if, reason: not valid java name */
    public final long f27256if;

    /* renamed from: new, reason: not valid java name */
    public final io.reactivex.Ctry f27257new;

    /* renamed from: try, reason: not valid java name */
    public final boolean f27258try;

    /* renamed from: io.reactivex.internal.operators.single.try$do, reason: invalid class name */
    public final class Cdo implements SingleObserver<T> {

        /* renamed from: do, reason: not valid java name */
        private final tw1 f27259do;

        /* renamed from: if, reason: not valid java name */
        public final SingleObserver<? super T> f27261if;

        /* renamed from: io.reactivex.internal.operators.single.try$do$do, reason: invalid class name and collision with other inner class name */
        public final class RunnableC0340do implements Runnable {

            /* renamed from: do, reason: not valid java name */
            private final Throwable f27262do;

            public RunnableC0340do(Throwable th) {
                this.f27262do = th;
            }

            @Override // java.lang.Runnable
            public void run() {
                Cdo.this.f27261if.onError(this.f27262do);
            }
        }

        /* renamed from: io.reactivex.internal.operators.single.try$do$if, reason: invalid class name */
        public final class Cif implements Runnable {

            /* renamed from: do, reason: not valid java name */
            private final T f27264do;

            public Cif(T t) {
                this.f27264do = t;
            }

            @Override // java.lang.Runnable
            public void run() {
                Cdo.this.f27261if.onSuccess(this.f27264do);
            }
        }

        public Cdo(tw1 tw1Var, SingleObserver<? super T> singleObserver) {
            this.f27259do = tw1Var;
            this.f27261if = singleObserver;
        }

        @Override // io.reactivex.SingleObserver
        public void onError(Throwable th) {
            tw1 tw1Var = this.f27259do;
            io.reactivex.Ctry ctry = Ctry.this.f27257new;
            RunnableC0340do runnableC0340do = new RunnableC0340do(th);
            Ctry ctry2 = Ctry.this;
            tw1Var.replace(ctry.mo29361try(runnableC0340do, ctry2.f27258try ? ctry2.f27256if : 0L, ctry2.f27255for));
        }

        @Override // io.reactivex.SingleObserver
        public void onSubscribe(Disposable disposable) {
            this.f27259do.replace(disposable);
        }

        @Override // io.reactivex.SingleObserver
        public void onSuccess(T t) {
            tw1 tw1Var = this.f27259do;
            io.reactivex.Ctry ctry = Ctry.this.f27257new;
            Cif cif = new Cif(t);
            Ctry ctry2 = Ctry.this;
            tw1Var.replace(ctry.mo29361try(cif, ctry2.f27256if, ctry2.f27255for));
        }
    }

    public Ctry(SingleSource<? extends T> singleSource, long j, TimeUnit timeUnit, io.reactivex.Ctry ctry, boolean z) {
        this.f27254do = singleSource;
        this.f27256if = j;
        this.f27255for = timeUnit;
        this.f27257new = ctry;
        this.f27258try = z;
    }

    @Override // android.support.v4.jz1
    public void g0(SingleObserver<? super T> singleObserver) {
        tw1 tw1Var = new tw1();
        singleObserver.onSubscribe(tw1Var);
        this.f27254do.subscribe(new Cdo(tw1Var, singleObserver));
    }
}
