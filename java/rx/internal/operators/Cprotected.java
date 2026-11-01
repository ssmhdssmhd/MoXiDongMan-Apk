package rx.internal.operators;

import android.support.v4.d12;
import android.support.v4.s80;
import android.support.v4.u6;
import android.support.v4.y22;
import android.support.v4.zz0;
import java.util.Iterator;
import java.util.Queue;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import rx.Observable;
import rx.Producer;
import rx.functions.Func1;
import rx.internal.operators.Cimplements;
import rx.internal.util.Celse;
import rx.internal.util.Ctry;
import rx.internal.util.atomic.Cnew;
import rx.internal.util.unsafe.Cswitch;

/* renamed from: rx.internal.operators.protected, reason: invalid class name */
/* loaded from: classes4.dex */
public final class Cprotected<T, R> implements Observable.OnSubscribe<R> {

    /* renamed from: do, reason: not valid java name */
    public final Observable<? extends T> f35232do;

    /* renamed from: for, reason: not valid java name */
    public final int f35233for;

    /* renamed from: if, reason: not valid java name */
    public final Func1<? super T, ? extends Iterable<? extends R>> f35234if;

    /* renamed from: rx.internal.operators.protected$do, reason: invalid class name */
    public class Cdo implements Producer {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Cif f35235do;

        public Cdo(Cif cif) {
            this.f35235do = cif;
        }

        @Override // rx.Producer
        public void request(long j) {
            this.f35235do.m38659for(j);
        }
    }

    /* renamed from: rx.internal.operators.protected$for, reason: invalid class name */
    public static final class Cfor<T, R> implements Observable.OnSubscribe<R> {

        /* renamed from: do, reason: not valid java name */
        public final T f35237do;

        /* renamed from: if, reason: not valid java name */
        public final Func1<? super T, ? extends Iterable<? extends R>> f35238if;

        public Cfor(T t, Func1<? super T, ? extends Iterable<? extends R>> func1) {
            this.f35237do = t;
            this.f35238if = func1;
        }

        @Override // rx.functions.Action1
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void call(y22<? super R> y22Var) {
            try {
                Iterator<? extends R> it = this.f35238if.call(this.f35237do).iterator();
                if (it.hasNext()) {
                    y22Var.setProducer(new Cimplements.Cdo(y22Var, it));
                } else {
                    y22Var.onCompleted();
                }
            } catch (Throwable th) {
                s80.m7300this(th, y22Var, this.f35237do);
            }
        }
    }

    /* renamed from: rx.internal.operators.protected$if, reason: invalid class name */
    public static final class Cif<T, R> extends y22<T> {

        /* renamed from: break, reason: not valid java name */
        public Iterator<? extends R> f35239break;

        /* renamed from: do, reason: not valid java name */
        public final y22<? super R> f35241do;

        /* renamed from: for, reason: not valid java name */
        public final long f35243for;

        /* renamed from: goto, reason: not valid java name */
        public volatile boolean f35244goto;

        /* renamed from: if, reason: not valid java name */
        public final Func1<? super T, ? extends Iterable<? extends R>> f35245if;

        /* renamed from: new, reason: not valid java name */
        public final Queue<Object> f35246new;

        /* renamed from: this, reason: not valid java name */
        public long f35247this;

        /* renamed from: try, reason: not valid java name */
        public final AtomicReference<Throwable> f35248try = new AtomicReference<>();

        /* renamed from: else, reason: not valid java name */
        public final AtomicInteger f35242else = new AtomicInteger();

        /* renamed from: case, reason: not valid java name */
        public final AtomicLong f35240case = new AtomicLong();

        public Cif(y22<? super R> y22Var, Func1<? super T, ? extends Iterable<? extends R>> func1, int i) {
            this.f35241do = y22Var;
            this.f35245if = func1;
            if (i == Integer.MAX_VALUE) {
                this.f35243for = Long.MAX_VALUE;
                this.f35246new = new d12(Ctry.f35868new);
            } else {
                this.f35243for = i - (i >> 2);
                if (rx.internal.util.unsafe.Cimplements.m38984case()) {
                    this.f35246new = new Cswitch(i);
                } else {
                    this.f35246new = new Cnew(i);
                }
            }
            request(i);
        }

        /* renamed from: do, reason: not valid java name */
        public boolean m38658do(boolean z, boolean z2, y22<?> y22Var, Queue<?> queue) {
            if (y22Var.isUnsubscribed()) {
                queue.clear();
                this.f35239break = null;
                return true;
            }
            if (!z) {
                return false;
            }
            if (this.f35248try.get() == null) {
                if (!z2) {
                    return false;
                }
                y22Var.onCompleted();
                return true;
            }
            Throwable thTerminate = rx.internal.util.Cdo.terminate(this.f35248try);
            unsubscribe();
            queue.clear();
            this.f35239break = null;
            y22Var.onError(thTerminate);
            return true;
        }

        /* renamed from: for, reason: not valid java name */
        public void m38659for(long j) {
            if (j > 0) {
                u6.m8259if(this.f35240case, j);
                m38660if();
            } else {
                if (j >= 0) {
                    return;
                }
                throw new IllegalStateException("n >= 0 required but it was " + j);
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:26:0x0063  */
        /* renamed from: if, reason: not valid java name */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void m38660if() {
            int i;
            if (this.f35242else.getAndIncrement() != 0) {
                return;
            }
            y22<? super R> y22Var = this.f35241do;
            Queue<?> queue = this.f35246new;
            int iAddAndGet = 1;
            while (true) {
                Iterator<? extends R> it = this.f35239break;
                boolean z = false;
                if (it == null) {
                    boolean z2 = this.f35244goto;
                    Object objPoll = queue.poll();
                    boolean z3 = objPoll == null;
                    if (m38658do(z2, z3, y22Var, queue)) {
                        return;
                    }
                    if (z3) {
                        i = iAddAndGet;
                    } else {
                        long j = this.f35247this + 1;
                        i = iAddAndGet;
                        if (j == this.f35243for) {
                            this.f35247this = 0L;
                            request(j);
                        } else {
                            this.f35247this = j;
                        }
                        try {
                            it = this.f35245if.call((Object) Creturn.m38691try(objPoll)).iterator();
                        } catch (Throwable th) {
                            s80.m7301try(th);
                            onError(th);
                        }
                        if (it.hasNext()) {
                            this.f35239break = it;
                        } else {
                            iAddAndGet = i;
                        }
                    }
                    if (it != null) {
                        long j2 = this.f35240case.get();
                        long j3 = 0;
                        while (j3 != j2) {
                            if (m38658do(this.f35244goto, false, y22Var, queue)) {
                                return;
                            }
                            try {
                                y22Var.onNext(it.next());
                            } catch (Throwable th2) {
                                s80.m7301try(th2);
                                this.f35239break = null;
                                onError(th2);
                            }
                            if (m38658do(this.f35244goto, false, y22Var, queue)) {
                                return;
                            }
                            j3++;
                            try {
                            } catch (Throwable th3) {
                                s80.m7301try(th3);
                                this.f35239break = null;
                                onError(th3);
                            }
                            if (!it.hasNext()) {
                                this.f35239break = null;
                                it = null;
                                break;
                            }
                        }
                        if (j3 == j2) {
                            boolean z4 = this.f35244goto;
                            if (queue.isEmpty() && it == null) {
                                z = true;
                            }
                            if (m38658do(z4, z, y22Var, queue)) {
                                return;
                            }
                        }
                        if (j3 != 0) {
                            u6.m8261this(this.f35240case, j3);
                        }
                        if (it == null) {
                            iAddAndGet = i;
                        }
                    }
                    iAddAndGet = this.f35242else.addAndGet(-i);
                    if (iAddAndGet == 0) {
                        return;
                    }
                }
            }
        }

        @Override // rx.Observer
        public void onCompleted() {
            this.f35244goto = true;
            m38660if();
        }

        @Override // rx.Observer
        public void onError(Throwable th) {
            if (!rx.internal.util.Cdo.addThrowable(this.f35248try, th)) {
                rx.plugins.Cif.m39151protected(th);
            } else {
                this.f35244goto = true;
                m38660if();
            }
        }

        @Override // rx.Observer
        public void onNext(T t) {
            if (this.f35246new.offer(Creturn.m38682break(t))) {
                m38660if();
            } else {
                unsubscribe();
                onError(new zz0());
            }
        }
    }

    public Cprotected(Observable<? extends T> observable, Func1<? super T, ? extends Iterable<? extends R>> func1, int i) {
        this.f35232do = observable;
        this.f35234if = func1;
        this.f35233for = i;
    }

    /* renamed from: if, reason: not valid java name */
    public static <T, R> Observable<R> m38655if(Observable<? extends T> observable, Func1<? super T, ? extends Iterable<? extends R>> func1, int i) {
        return observable instanceof Celse ? Observable.q5(new Cfor(((Celse) observable).g6(), func1)) : Observable.q5(new Cprotected(observable, func1, i));
    }

    @Override // rx.functions.Action1
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public void call(y22<? super R> y22Var) {
        Cif cif = new Cif(y22Var, this.f35234if, this.f35233for);
        y22Var.add(cif);
        y22Var.setProducer(new Cdo(cif));
        this.f35232do.r5(cif);
    }
}
