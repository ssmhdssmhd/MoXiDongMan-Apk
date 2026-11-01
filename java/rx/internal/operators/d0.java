package rx.internal.operators;

import android.support.v4.ax1;
import android.support.v4.s80;
import android.support.v4.ww1;
import android.support.v4.y22;
import java.util.concurrent.TimeUnit;
import rx.Cif;
import rx.Observable;
import rx.functions.Action0;

/* loaded from: classes4.dex */
public final class d0<T> implements Observable.Operator<T, T> {

    /* renamed from: do, reason: not valid java name */
    public final long f34612do;

    /* renamed from: for, reason: not valid java name */
    public final rx.Cif f34613for;

    /* renamed from: if, reason: not valid java name */
    public final TimeUnit f34614if;

    /* renamed from: rx.internal.operators.d0$do, reason: invalid class name */
    public class Cdo extends y22<T> {

        /* renamed from: do, reason: not valid java name */
        public final Cif<T> f34616do;

        /* renamed from: for, reason: not valid java name */
        public final /* synthetic */ ww1 f34617for;

        /* renamed from: if, reason: not valid java name */
        public final y22<?> f34618if;

        /* renamed from: new, reason: not valid java name */
        public final /* synthetic */ Cif.Cdo f34619new;

        /* renamed from: try, reason: not valid java name */
        public final /* synthetic */ ax1 f34620try;

        /* renamed from: rx.internal.operators.d0$do$do, reason: invalid class name and collision with other inner class name */
        public class C0519do implements Action0 {

            /* renamed from: do, reason: not valid java name */
            public final /* synthetic */ int f34621do;

            public C0519do(int i) {
                this.f34621do = i;
            }

            @Override // rx.functions.Action0
            public void call() {
                Cdo cdo = Cdo.this;
                cdo.f34616do.m38439if(this.f34621do, cdo.f34620try, cdo.f34618if);
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Cdo(y22 y22Var, ww1 ww1Var, Cif.Cdo cdo, ax1 ax1Var) {
            super(y22Var);
            this.f34617for = ww1Var;
            this.f34619new = cdo;
            this.f34620try = ax1Var;
            this.f34616do = new Cif<>();
            this.f34618if = this;
        }

        @Override // rx.Observer
        public void onCompleted() {
            this.f34616do.m38438for(this.f34620try, this);
        }

        @Override // rx.Observer
        public void onError(Throwable th) {
            this.f34620try.onError(th);
            unsubscribe();
            this.f34616do.m38437do();
        }

        @Override // rx.Observer
        public void onNext(T t) {
            int iM38440new = this.f34616do.m38440new(t);
            ww1 ww1Var = this.f34617for;
            Cif.Cdo cdo = this.f34619new;
            C0519do c0519do = new C0519do(iM38440new);
            d0 d0Var = d0.this;
            ww1Var.m9298if(cdo.mo38375for(c0519do, d0Var.f34612do, d0Var.f34614if));
        }

        @Override // android.support.v4.y22
        public void onStart() {
            request(Long.MAX_VALUE);
        }
    }

    /* renamed from: rx.internal.operators.d0$if, reason: invalid class name */
    public static final class Cif<T> {

        /* renamed from: do, reason: not valid java name */
        public int f34623do;

        /* renamed from: for, reason: not valid java name */
        public boolean f34624for;

        /* renamed from: if, reason: not valid java name */
        public T f34625if;

        /* renamed from: new, reason: not valid java name */
        public boolean f34626new;

        /* renamed from: try, reason: not valid java name */
        public boolean f34627try;

        /* renamed from: do, reason: not valid java name */
        public synchronized void m38437do() {
            this.f34623do++;
            this.f34625if = null;
            this.f34624for = false;
        }

        /* renamed from: for, reason: not valid java name */
        public void m38438for(y22<T> y22Var, y22<?> y22Var2) {
            synchronized (this) {
                if (this.f34627try) {
                    this.f34626new = true;
                    return;
                }
                T t = this.f34625if;
                boolean z = this.f34624for;
                this.f34625if = null;
                this.f34624for = false;
                this.f34627try = true;
                if (z) {
                    try {
                        y22Var.onNext(t);
                    } catch (Throwable th) {
                        s80.m7300this(th, y22Var2, t);
                        return;
                    }
                }
                y22Var.onCompleted();
            }
        }

        /* renamed from: if, reason: not valid java name */
        public void m38439if(int i, y22<T> y22Var, y22<?> y22Var2) {
            synchronized (this) {
                if (!this.f34627try && this.f34624for && i == this.f34623do) {
                    T t = this.f34625if;
                    this.f34625if = null;
                    this.f34624for = false;
                    this.f34627try = true;
                    try {
                        y22Var.onNext(t);
                        synchronized (this) {
                            if (this.f34626new) {
                                y22Var.onCompleted();
                            } else {
                                this.f34627try = false;
                            }
                        }
                    } catch (Throwable th) {
                        s80.m7300this(th, y22Var2, t);
                    }
                }
            }
        }

        /* renamed from: new, reason: not valid java name */
        public synchronized int m38440new(T t) {
            int i;
            this.f34625if = t;
            this.f34624for = true;
            i = this.f34623do + 1;
            this.f34623do = i;
            return i;
        }
    }

    public d0(long j, TimeUnit timeUnit, rx.Cif cif) {
        this.f34612do = j;
        this.f34614if = timeUnit;
        this.f34613for = cif;
    }

    @Override // rx.functions.Func1
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public y22<? super T> call(y22<? super T> y22Var) {
        Cif.Cdo cdoMo971do = this.f34613for.mo971do();
        ax1 ax1Var = new ax1(y22Var);
        ww1 ww1Var = new ww1();
        ax1Var.add(cdoMo971do);
        ax1Var.add(ww1Var);
        return new Cdo(y22Var, ww1Var, cdoMo971do, ax1Var);
    }
}
