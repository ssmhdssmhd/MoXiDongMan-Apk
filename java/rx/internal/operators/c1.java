package rx.internal.operators;

import android.support.v4.ax1;
import android.support.v4.s80;
import android.support.v4.y22;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
import rx.Cif;
import rx.Observable;
import rx.functions.Action0;

/* loaded from: classes4.dex */
public final class c1<T> implements Observable.Operator<T, T> {

    /* renamed from: do, reason: not valid java name */
    public final long f34552do;

    /* renamed from: for, reason: not valid java name */
    public final Cif f34553for;

    /* renamed from: if, reason: not valid java name */
    public final TimeUnit f34554if;

    /* renamed from: rx.internal.operators.c1$do, reason: invalid class name */
    public static final class Cdo<T> extends y22<T> implements Action0 {

        /* renamed from: for, reason: not valid java name */
        private static final Object f34555for = new Object();

        /* renamed from: do, reason: not valid java name */
        private final y22<? super T> f34556do;

        /* renamed from: if, reason: not valid java name */
        public final AtomicReference<Object> f34557if = new AtomicReference<>(f34555for);

        public Cdo(y22<? super T> y22Var) {
            this.f34556do = y22Var;
        }

        /* renamed from: do, reason: not valid java name */
        private void m38418do() {
            AtomicReference<Object> atomicReference = this.f34557if;
            Object obj = f34555for;
            Object andSet = atomicReference.getAndSet(obj);
            if (andSet != obj) {
                try {
                    this.f34556do.onNext(andSet);
                } catch (Throwable th) {
                    s80.m7297goto(th, this);
                }
            }
        }

        @Override // rx.functions.Action0
        public void call() {
            m38418do();
        }

        @Override // rx.Observer
        public void onCompleted() {
            m38418do();
            this.f34556do.onCompleted();
            unsubscribe();
        }

        @Override // rx.Observer
        public void onError(Throwable th) {
            this.f34556do.onError(th);
            unsubscribe();
        }

        @Override // rx.Observer
        public void onNext(T t) {
            this.f34557if.set(t);
        }

        @Override // android.support.v4.y22
        public void onStart() {
            request(Long.MAX_VALUE);
        }
    }

    public c1(long j, TimeUnit timeUnit, Cif cif) {
        this.f34552do = j;
        this.f34554if = timeUnit;
        this.f34553for = cif;
    }

    @Override // rx.functions.Func1
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public y22<? super T> call(y22<? super T> y22Var) {
        ax1 ax1Var = new ax1(y22Var);
        Cif.Cdo cdoMo971do = this.f34553for.mo971do();
        y22Var.add(cdoMo971do);
        Cdo cdo = new Cdo(ax1Var);
        y22Var.add(cdo);
        long j = this.f34552do;
        cdoMo971do.mo38377new(cdo, j, j, this.f34554if);
        return cdo;
    }
}
