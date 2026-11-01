package rx.internal.operators;

import android.support.v4.s80;
import android.support.v4.u6;
import android.support.v4.y22;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Queue;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import rx.Observable;
import rx.Producer;
import rx.Subscription;
import rx.functions.Action0;
import rx.functions.Func1;
import rx.internal.util.atomic.Cnew;
import rx.internal.util.unsafe.Cimplements;
import rx.internal.util.unsafe.Cswitch;

/* loaded from: classes4.dex */
public final class l0<T, R> implements Observable.Operator<R, T> {

    /* renamed from: do, reason: not valid java name */
    public final Func1<? super T, ? extends Observable<? extends R>> f35038do;

    /* renamed from: for, reason: not valid java name */
    private final int f35039for;

    /* renamed from: if, reason: not valid java name */
    public final int f35040if;

    /* renamed from: rx.internal.operators.l0$do, reason: invalid class name */
    public static final class Cdo<T> extends y22<T> {

        /* renamed from: do, reason: not valid java name */
        public final Cfor<?, T> f35041do;

        /* renamed from: for, reason: not valid java name */
        public volatile boolean f35042for;

        /* renamed from: if, reason: not valid java name */
        public final Queue<Object> f35043if;

        /* renamed from: new, reason: not valid java name */
        public Throwable f35044new;

        public Cdo(Cfor<?, T> cfor, int i) {
            this.f35041do = cfor;
            this.f35043if = Cimplements.m38984case() ? new Cswitch<>(i) : new Cnew<>(i);
            request(i);
        }

        /* renamed from: do, reason: not valid java name */
        public void m38599do(long j) {
            request(j);
        }

        @Override // rx.Observer
        public void onCompleted() {
            this.f35042for = true;
            this.f35041do.m38602if();
        }

        @Override // rx.Observer
        public void onError(Throwable th) {
            this.f35044new = th;
            this.f35042for = true;
            this.f35041do.m38602if();
        }

        @Override // rx.Observer
        public void onNext(T t) {
            this.f35043if.offer(Creturn.m38682break(t));
            this.f35041do.m38602if();
        }
    }

    /* renamed from: rx.internal.operators.l0$for, reason: invalid class name */
    public static final class Cfor<T, R> extends y22<T> {

        /* renamed from: case, reason: not valid java name */
        public Throwable f35045case;

        /* renamed from: do, reason: not valid java name */
        public final Func1<? super T, ? extends Observable<? extends R>> f35046do;

        /* renamed from: else, reason: not valid java name */
        public volatile boolean f35047else;

        /* renamed from: for, reason: not valid java name */
        public final y22<? super R> f35048for;

        /* renamed from: if, reason: not valid java name */
        public final int f35050if;

        /* renamed from: this, reason: not valid java name */
        private Cif f35052this;

        /* renamed from: try, reason: not valid java name */
        public volatile boolean f35053try;

        /* renamed from: new, reason: not valid java name */
        public final Queue<Cdo<R>> f35051new = new LinkedList();

        /* renamed from: goto, reason: not valid java name */
        public final AtomicInteger f35049goto = new AtomicInteger();

        /* renamed from: rx.internal.operators.l0$for$do, reason: invalid class name */
        public class Cdo implements Action0 {
            public Cdo() {
            }

            @Override // rx.functions.Action0
            public void call() {
                Cfor.this.f35047else = true;
                if (Cfor.this.f35049goto.getAndIncrement() == 0) {
                    Cfor.this.m38600do();
                }
            }
        }

        public Cfor(Func1<? super T, ? extends Observable<? extends R>> func1, int i, int i2, y22<? super R> y22Var) {
            this.f35046do = func1;
            this.f35050if = i;
            this.f35048for = y22Var;
            request(i2 == Integer.MAX_VALUE ? Long.MAX_VALUE : i2);
        }

        /* renamed from: do, reason: not valid java name */
        public void m38600do() {
            ArrayList arrayList;
            synchronized (this.f35051new) {
                arrayList = new ArrayList(this.f35051new);
                this.f35051new.clear();
            }
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                ((Subscription) it.next()).unsubscribe();
            }
        }

        /* renamed from: for, reason: not valid java name */
        public void m38601for() {
            this.f35052this = new Cif(this);
            add(rx.subscriptions.Cfor.m39225do(new Cdo()));
            this.f35048for.add(this);
            this.f35048for.setProducer(this.f35052this);
        }

        /* JADX WARN: Removed duplicated region for block: B:47:0x007e  */
        /* renamed from: if, reason: not valid java name */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void m38602if() {
            Cdo<R> cdoPeek;
            int i;
            if (this.f35049goto.getAndIncrement() != 0) {
                return;
            }
            Cif cif = this.f35052this;
            y22<? super R> y22Var = this.f35048for;
            int iAddAndGet = 1;
            while (!this.f35047else) {
                boolean z = this.f35053try;
                synchronized (this.f35051new) {
                    cdoPeek = this.f35051new.peek();
                }
                boolean z2 = false;
                boolean z3 = cdoPeek == null;
                if (z) {
                    Throwable th = this.f35045case;
                    if (th != null) {
                        m38600do();
                        y22Var.onError(th);
                        return;
                    } else if (z3) {
                        y22Var.onCompleted();
                        return;
                    }
                }
                if (z3) {
                    i = iAddAndGet;
                } else {
                    long j = cif.get();
                    Queue<Object> queue = cdoPeek.f35043if;
                    long j2 = 0;
                    while (true) {
                        boolean z4 = cdoPeek.f35042for;
                        Object objPeek = queue.peek();
                        i = iAddAndGet;
                        boolean z5 = objPeek == null;
                        if (!z4) {
                            if (z5 || j == j2) {
                                break;
                            }
                            queue.poll();
                            try {
                                y22Var.onNext((Object) Creturn.m38691try(objPeek));
                                j2++;
                                iAddAndGet = i;
                            } catch (Throwable th2) {
                                s80.m7300this(th2, y22Var, objPeek);
                                return;
                            }
                        } else {
                            Throwable th3 = cdoPeek.f35044new;
                            if (th3 != null) {
                                m38600do();
                                y22Var.onError(th3);
                                return;
                            } else if (z5) {
                                synchronized (this.f35051new) {
                                    this.f35051new.poll();
                                }
                                cdoPeek.unsubscribe();
                                request(1L);
                                z2 = true;
                                break;
                            }
                        }
                    }
                    if (j2 != 0) {
                        if (j != Long.MAX_VALUE) {
                            u6.m8261this(cif, j2);
                        }
                        if (!z2) {
                            cdoPeek.m38599do(j2);
                        }
                    }
                    if (z2) {
                        iAddAndGet = i;
                    }
                }
                iAddAndGet = this.f35049goto.addAndGet(-i);
                if (iAddAndGet == 0) {
                    return;
                }
            }
            m38600do();
        }

        @Override // rx.Observer
        public void onCompleted() {
            this.f35053try = true;
            m38602if();
        }

        @Override // rx.Observer
        public void onError(Throwable th) {
            this.f35045case = th;
            this.f35053try = true;
            m38602if();
        }

        @Override // rx.Observer
        public void onNext(T t) {
            try {
                Observable<? extends R> observableCall = this.f35046do.call(t);
                if (this.f35047else) {
                    return;
                }
                Cdo<R> cdo = new Cdo<>(this, this.f35050if);
                synchronized (this.f35051new) {
                    if (this.f35047else) {
                        return;
                    }
                    this.f35051new.add(cdo);
                    if (this.f35047else) {
                        return;
                    }
                    observableCall.r5(cdo);
                    m38602if();
                }
            } catch (Throwable th) {
                s80.m7300this(th, this.f35048for, t);
            }
        }
    }

    /* renamed from: rx.internal.operators.l0$if, reason: invalid class name */
    public static final class Cif extends AtomicLong implements Producer {
        private static final long serialVersionUID = -657299606803478389L;
        public final Cfor<?, ?> parent;

        public Cif(Cfor<?, ?> cfor) {
            this.parent = cfor;
        }

        @Override // rx.Producer
        public void request(long j) {
            if (j < 0) {
                throw new IllegalStateException("n >= 0 required but it was " + j);
            }
            if (j > 0) {
                u6.m8259if(this, j);
                this.parent.m38602if();
            }
        }
    }

    public l0(Func1<? super T, ? extends Observable<? extends R>> func1, int i, int i2) {
        this.f35038do = func1;
        this.f35040if = i;
        this.f35039for = i2;
    }

    @Override // rx.functions.Func1
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public y22<? super T> call(y22<? super R> y22Var) {
        Cfor cfor = new Cfor(this.f35038do, this.f35040if, this.f35039for, y22Var);
        cfor.m38601for();
        return cfor;
    }
}
