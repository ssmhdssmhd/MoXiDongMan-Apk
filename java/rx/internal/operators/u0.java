package rx.internal.operators;

import android.support.v4.ds1;
import android.support.v4.u6;
import android.support.v4.y22;
import android.support.v4.zz0;
import java.util.Queue;
import java.util.concurrent.atomic.AtomicLong;
import rx.Cif;
import rx.Observable;
import rx.Producer;
import rx.functions.Action0;
import rx.internal.schedulers.Ccase;
import rx.internal.schedulers.Ccatch;
import rx.internal.util.Ctry;
import rx.internal.util.atomic.Cnew;
import rx.internal.util.unsafe.Cimplements;
import rx.internal.util.unsafe.Cswitch;

/* loaded from: classes4.dex */
public final class u0<T> implements Observable.Operator<T, T> {

    /* renamed from: do, reason: not valid java name */
    private final rx.Cif f35451do;

    /* renamed from: for, reason: not valid java name */
    private final int f35452for;

    /* renamed from: if, reason: not valid java name */
    private final boolean f35453if;

    /* renamed from: rx.internal.operators.u0$do, reason: invalid class name */
    public static class Cdo implements Observable.Operator<T, T> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ int f35454do;

        public Cdo(int i) {
            this.f35454do = i;
        }

        @Override // rx.functions.Func1
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public y22<? super T> call(y22<? super T> y22Var) {
            Cif cif = new Cif(ds1.m1522new(), y22Var, false, this.f35454do);
            cif.m38761if();
            return cif;
        }
    }

    /* renamed from: rx.internal.operators.u0$if, reason: invalid class name */
    public static final class Cif<T> extends y22<T> implements Action0 {

        /* renamed from: break, reason: not valid java name */
        public long f35455break;

        /* renamed from: case, reason: not valid java name */
        public volatile boolean f35456case;

        /* renamed from: do, reason: not valid java name */
        public final y22<? super T> f35457do;

        /* renamed from: for, reason: not valid java name */
        public final boolean f35459for;

        /* renamed from: if, reason: not valid java name */
        public final Cif.Cdo f35461if;

        /* renamed from: new, reason: not valid java name */
        public final Queue<Object> f35462new;

        /* renamed from: this, reason: not valid java name */
        public Throwable f35463this;

        /* renamed from: try, reason: not valid java name */
        public final int f35464try;

        /* renamed from: else, reason: not valid java name */
        public final AtomicLong f35458else = new AtomicLong();

        /* renamed from: goto, reason: not valid java name */
        public final AtomicLong f35460goto = new AtomicLong();

        /* renamed from: rx.internal.operators.u0$if$do, reason: invalid class name */
        public class Cdo implements Producer {
            public Cdo() {
            }

            @Override // rx.Producer
            public void request(long j) {
                if (j > 0) {
                    u6.m8259if(Cif.this.f35458else, j);
                    Cif.this.m38760for();
                }
            }
        }

        public Cif(rx.Cif cif, y22<? super T> y22Var, boolean z, int i) {
            this.f35457do = y22Var;
            this.f35461if = cif.mo971do();
            this.f35459for = z;
            i = i <= 0 ? Ctry.f35868new : i;
            this.f35464try = i - (i >> 2);
            if (Cimplements.m38984case()) {
                this.f35462new = new Cswitch(i);
            } else {
                this.f35462new = new Cnew(i);
            }
            request(i);
        }

        @Override // rx.functions.Action0
        public void call() {
            long j = this.f35455break;
            Queue<Object> queue = this.f35462new;
            y22<? super T> y22Var = this.f35457do;
            long jAddAndGet = 1;
            do {
                long jM8261this = this.f35458else.get();
                while (jM8261this != j) {
                    boolean z = this.f35456case;
                    Object objPoll = queue.poll();
                    boolean z2 = objPoll == null;
                    if (m38759do(z, z2, y22Var, queue)) {
                        return;
                    }
                    if (z2) {
                        break;
                    }
                    y22Var.onNext((Object) Creturn.m38691try(objPoll));
                    j++;
                    if (j == this.f35464try) {
                        jM8261this = u6.m8261this(this.f35458else, j);
                        request(j);
                        j = 0;
                    }
                }
                if (jM8261this == j && m38759do(this.f35456case, queue.isEmpty(), y22Var, queue)) {
                    return;
                }
                this.f35455break = j;
                jAddAndGet = this.f35460goto.addAndGet(-jAddAndGet);
            } while (jAddAndGet != 0);
        }

        /* renamed from: do, reason: not valid java name */
        public boolean m38759do(boolean z, boolean z2, y22<? super T> y22Var, Queue<Object> queue) {
            if (y22Var.isUnsubscribed()) {
                queue.clear();
                return true;
            }
            if (!z) {
                return false;
            }
            if (this.f35459for) {
                if (!z2) {
                    return false;
                }
                Throwable th = this.f35463this;
                try {
                    if (th != null) {
                        y22Var.onError(th);
                    } else {
                        y22Var.onCompleted();
                    }
                    return false;
                } finally {
                }
            }
            Throwable th2 = this.f35463this;
            if (th2 != null) {
                queue.clear();
                try {
                    y22Var.onError(th2);
                    return true;
                } finally {
                }
            }
            if (!z2) {
                return false;
            }
            try {
                y22Var.onCompleted();
                return true;
            } finally {
            }
        }

        /* renamed from: for, reason: not valid java name */
        public void m38760for() {
            if (this.f35460goto.getAndIncrement() == 0) {
                this.f35461if.mo38376if(this);
            }
        }

        /* renamed from: if, reason: not valid java name */
        public void m38761if() {
            y22<? super T> y22Var = this.f35457do;
            y22Var.setProducer(new Cdo());
            y22Var.add(this.f35461if);
            y22Var.add(this);
        }

        @Override // rx.Observer
        public void onCompleted() {
            if (isUnsubscribed() || this.f35456case) {
                return;
            }
            this.f35456case = true;
            m38760for();
        }

        @Override // rx.Observer
        public void onError(Throwable th) {
            if (isUnsubscribed() || this.f35456case) {
                rx.plugins.Cif.m39151protected(th);
                return;
            }
            this.f35463this = th;
            this.f35456case = true;
            m38760for();
        }

        @Override // rx.Observer
        public void onNext(T t) {
            if (isUnsubscribed() || this.f35456case) {
                return;
            }
            if (this.f35462new.offer(Creturn.m38682break(t))) {
                m38760for();
            } else {
                onError(new zz0());
            }
        }
    }

    public u0(rx.Cif cif, boolean z) {
        this(cif, z, Ctry.f35868new);
    }

    /* renamed from: if, reason: not valid java name */
    public static <T> Observable.Operator<T, T> m38756if(int i) {
        return new Cdo(i);
    }

    @Override // rx.functions.Func1
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public y22<? super T> call(y22<? super T> y22Var) {
        rx.Cif cif = this.f35451do;
        if ((cif instanceof Ccase) || (cif instanceof Ccatch)) {
            return y22Var;
        }
        Cif cif2 = new Cif(cif, y22Var, this.f35453if, this.f35452for);
        cif2.m38761if();
        return cif2;
    }

    public u0(rx.Cif cif, boolean z, int i) {
        this.f35451do = cif;
        this.f35453if = z;
        this.f35452for = i <= 0 ? Ctry.f35868new : i;
    }
}
