package rx.internal.operators;

import android.R;
import android.support.v4.s80;
import android.support.v4.u6;
import android.support.v4.y22;
import java.util.Objects;
import java.util.Queue;
import java.util.concurrent.atomic.AtomicLong;
import rx.Observable;
import rx.Observer;
import rx.Producer;
import rx.functions.Func0;
import rx.functions.Func2;
import rx.internal.util.atomic.Ctry;
import rx.internal.util.unsafe.Cabstract;
import rx.internal.util.unsafe.Cimplements;

/* loaded from: classes4.dex */
public final class d1<R, T> implements Observable.Operator<R, T> {

    /* renamed from: for, reason: not valid java name */
    private static final Object f34628for = new Object();

    /* renamed from: do, reason: not valid java name */
    private final Func0<R> f34629do;

    /* renamed from: if, reason: not valid java name */
    public final Func2<R, ? super T, R> f34630if;

    /* renamed from: rx.internal.operators.d1$do, reason: invalid class name */
    public class Cdo implements Func0<R> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Object f34631do;

        public Cdo(Object obj) {
            this.f34631do = obj;
        }

        @Override // rx.functions.Func0, java.util.concurrent.Callable
        public R call() {
            return (R) this.f34631do;
        }
    }

    /* renamed from: rx.internal.operators.d1$for, reason: invalid class name */
    public class Cfor extends y22<T> {

        /* renamed from: do, reason: not valid java name */
        private R f34632do;

        /* renamed from: for, reason: not valid java name */
        public final /* synthetic */ Cnew f34633for;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ Object f34634if;

        /* JADX WARN: Multi-variable type inference failed */
        public Cfor(Object obj, Cnew cnew) {
            this.f34634if = obj;
            this.f34633for = cnew;
            this.f34632do = obj;
        }

        @Override // rx.Observer
        public void onCompleted() {
            this.f34633for.onCompleted();
        }

        @Override // rx.Observer
        public void onError(Throwable th) {
            this.f34633for.onError(th);
        }

        @Override // rx.Observer
        public void onNext(T t) {
            try {
                R rCall = d1.this.f34630if.call(this.f34632do, t);
                this.f34632do = rCall;
                this.f34633for.onNext(rCall);
            } catch (Throwable th) {
                s80.m7300this(th, this, t);
            }
        }

        @Override // android.support.v4.y22, rx.observers.AssertableSubscriber
        public void setProducer(Producer producer) {
            this.f34633for.setProducer(producer);
        }
    }

    /* renamed from: rx.internal.operators.d1$if, reason: invalid class name */
    public class Cif extends y22<T> {

        /* renamed from: do, reason: not valid java name */
        public boolean f34636do;

        /* renamed from: for, reason: not valid java name */
        public final /* synthetic */ y22 f34637for;

        /* renamed from: if, reason: not valid java name */
        public R f34638if;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Cif(y22 y22Var, y22 y22Var2) {
            super(y22Var);
            this.f34637for = y22Var2;
        }

        @Override // rx.Observer
        public void onCompleted() {
            this.f34637for.onCompleted();
        }

        @Override // rx.Observer
        public void onError(Throwable th) {
            this.f34637for.onError(th);
        }

        @Override // rx.Observer
        public void onNext(T t) {
            if (this.f34636do) {
                try {
                    t = d1.this.f34630if.call(this.f34638if, t);
                } catch (Throwable th) {
                    s80.m7300this(th, this.f34637for, t);
                    return;
                }
            } else {
                this.f34636do = true;
            }
            this.f34638if = (R) t;
            this.f34637for.onNext(t);
        }
    }

    /* renamed from: rx.internal.operators.d1$new, reason: invalid class name */
    public static final class Cnew<R> implements Producer, Observer<R> {

        /* renamed from: case, reason: not valid java name */
        public final AtomicLong f34640case;

        /* renamed from: do, reason: not valid java name */
        public final y22<? super R> f34641do;

        /* renamed from: else, reason: not valid java name */
        public volatile Producer f34642else;

        /* renamed from: for, reason: not valid java name */
        public boolean f34643for;

        /* renamed from: goto, reason: not valid java name */
        public volatile boolean f34644goto;

        /* renamed from: if, reason: not valid java name */
        public final Queue<Object> f34645if;

        /* renamed from: new, reason: not valid java name */
        public boolean f34646new;

        /* renamed from: this, reason: not valid java name */
        public Throwable f34647this;

        /* renamed from: try, reason: not valid java name */
        public long f34648try;

        public Cnew(R r, y22<? super R> y22Var) {
            this.f34641do = y22Var;
            Queue<Object> cabstract = Cimplements.m38984case() ? new Cabstract<>() : new Ctry<>();
            this.f34645if = cabstract;
            cabstract.offer(Creturn.m38682break(r));
            this.f34640case = new AtomicLong();
        }

        /* renamed from: do, reason: not valid java name */
        public boolean m38442do(boolean z, boolean z2, y22<? super R> y22Var) {
            if (y22Var.isUnsubscribed()) {
                return true;
            }
            if (!z) {
                return false;
            }
            Throwable th = this.f34647this;
            if (th != null) {
                y22Var.onError(th);
                return true;
            }
            if (!z2) {
                return false;
            }
            y22Var.onCompleted();
            return true;
        }

        /* renamed from: for, reason: not valid java name */
        public void m38443for() {
            y22<? super R> y22Var = this.f34641do;
            Queue<Object> queue = this.f34645if;
            AtomicLong atomicLong = this.f34640case;
            long jM8261this = atomicLong.get();
            while (!m38442do(this.f34644goto, queue.isEmpty(), y22Var)) {
                long j = 0;
                while (j != jM8261this) {
                    boolean z = this.f34644goto;
                    Object objPoll = queue.poll();
                    boolean z2 = objPoll == null;
                    if (m38442do(z, z2, y22Var)) {
                        return;
                    }
                    if (z2) {
                        break;
                    }
                    R.attr attrVar = (Object) Creturn.m38691try(objPoll);
                    try {
                        y22Var.onNext(attrVar);
                        j++;
                    } catch (Throwable th) {
                        s80.m7300this(th, y22Var, attrVar);
                        return;
                    }
                }
                if (j != 0 && jM8261this != Long.MAX_VALUE) {
                    jM8261this = u6.m8261this(atomicLong, j);
                }
                synchronized (this) {
                    if (!this.f34646new) {
                        this.f34643for = false;
                        return;
                    }
                    this.f34646new = false;
                }
            }
        }

        /* renamed from: if, reason: not valid java name */
        public void m38444if() {
            synchronized (this) {
                if (this.f34643for) {
                    this.f34646new = true;
                } else {
                    this.f34643for = true;
                    m38443for();
                }
            }
        }

        @Override // rx.Observer
        public void onCompleted() {
            this.f34644goto = true;
            m38444if();
        }

        @Override // rx.Observer
        public void onError(Throwable th) {
            this.f34647this = th;
            this.f34644goto = true;
            m38444if();
        }

        @Override // rx.Observer
        public void onNext(R r) {
            this.f34645if.offer(Creturn.m38682break(r));
            m38444if();
        }

        @Override // rx.Producer
        public void request(long j) {
            if (j < 0) {
                throw new IllegalArgumentException("n >= required but it was " + j);
            }
            if (j != 0) {
                u6.m8259if(this.f34640case, j);
                Producer producer = this.f34642else;
                if (producer == null) {
                    synchronized (this.f34640case) {
                        producer = this.f34642else;
                        if (producer == null) {
                            this.f34648try = u6.m8255do(this.f34648try, j);
                        }
                    }
                }
                if (producer != null) {
                    producer.request(j);
                }
                m38444if();
            }
        }

        public void setProducer(Producer producer) {
            long j;
            Objects.requireNonNull(producer);
            synchronized (this.f34640case) {
                if (this.f34642else != null) {
                    throw new IllegalStateException("Can't set more than one Producer!");
                }
                j = this.f34648try;
                if (j != Long.MAX_VALUE) {
                    j--;
                }
                this.f34648try = 0L;
                this.f34642else = producer;
            }
            if (j > 0) {
                producer.request(j);
            }
            m38444if();
        }
    }

    public d1(R r, Func2<R, ? super T, R> func2) {
        this((Func0) new Cdo(r), (Func2) func2);
    }

    @Override // rx.functions.Func1
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public y22<? super T> call(y22<? super R> y22Var) {
        R rCall = this.f34629do.call();
        if (rCall == f34628for) {
            return new Cif(y22Var, y22Var);
        }
        Cnew cnew = new Cnew(rCall, y22Var);
        Cfor cfor = new Cfor(rCall, cnew);
        y22Var.add(cfor);
        y22Var.setProducer(cnew);
        return cfor;
    }

    public d1(Func0<R> func0, Func2<R, ? super T, R> func2) {
        this.f34629do = func0;
        this.f34630if = func2;
    }

    public d1(Func2<R, ? super T, R> func2) {
        this(f34628for, func2);
    }
}
