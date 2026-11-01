package rx.subjects;

import android.support.v4.ds1;
import android.support.v4.s80;
import android.support.v4.u22;
import android.support.v4.u6;
import android.support.v4.y22;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import rx.Observable;
import rx.Observer;
import rx.Producer;
import rx.Subscription;

/* loaded from: classes4.dex */
public final class ReplaySubject<T> extends u22<T, T> {

    /* renamed from: for, reason: not valid java name */
    private static final Object[] f36171for = new Object[0];

    /* renamed from: if, reason: not valid java name */
    public final Cnew<T> f36172if;

    public interface ReplayBuffer<T> {
        void complete();

        void drain(Cdo<T> cdo);

        Throwable error();

        void error(Throwable th);

        boolean isComplete();

        boolean isEmpty();

        T last();

        void next(T t);

        int size();

        T[] toArray(T[] tArr);
    }

    /* renamed from: rx.subjects.ReplaySubject$do, reason: invalid class name */
    public static final class Cdo<T> extends AtomicInteger implements Producer, Subscription {
        private static final long serialVersionUID = -5006209596735204567L;
        public final y22<? super T> actual;
        public int index;
        public Object node;
        public final AtomicLong requested = new AtomicLong();
        public final Cnew<T> state;
        public int tailIndex;

        public Cdo(y22<? super T> y22Var, Cnew<T> cnew) {
            this.actual = y22Var;
            this.state = cnew;
        }

        @Override // rx.Subscription
        public boolean isUnsubscribed() {
            return this.actual.isUnsubscribed();
        }

        @Override // rx.Producer
        public void request(long j) {
            if (j > 0) {
                u6.m8259if(this.requested, j);
                this.state.buffer.drain(this);
            } else {
                if (j >= 0) {
                    return;
                }
                throw new IllegalArgumentException("n >= required but it was " + j);
            }
        }

        @Override // rx.Subscription
        public void unsubscribe() {
            this.state.remove(this);
        }
    }

    /* renamed from: rx.subjects.ReplaySubject$new, reason: invalid class name */
    public static final class Cnew<T> extends AtomicReference<Cdo<T>[]> implements Observable.OnSubscribe<T>, Observer<T> {
        public static final Cdo[] EMPTY = new Cdo[0];
        public static final Cdo[] TERMINATED = new Cdo[0];
        private static final long serialVersionUID = 5952362471246910544L;
        public final ReplayBuffer<T> buffer;

        public Cnew(ReplayBuffer<T> replayBuffer) {
            this.buffer = replayBuffer;
            lazySet(EMPTY);
        }

        public boolean add(Cdo<T> cdo) {
            Cdo<T>[] cdoArr;
            Cdo[] cdoArr2;
            do {
                cdoArr = get();
                if (cdoArr == TERMINATED) {
                    return false;
                }
                int length = cdoArr.length;
                cdoArr2 = new Cdo[length + 1];
                System.arraycopy(cdoArr, 0, cdoArr2, 0, length);
                cdoArr2[length] = cdo;
            } while (!compareAndSet(cdoArr, cdoArr2));
            return true;
        }

        public boolean isTerminated() {
            return get() == TERMINATED;
        }

        @Override // rx.Observer
        public void onCompleted() {
            ReplayBuffer<T> replayBuffer = this.buffer;
            replayBuffer.complete();
            for (Cdo<T> cdo : getAndSet(TERMINATED)) {
                replayBuffer.drain(cdo);
            }
        }

        @Override // rx.Observer
        public void onError(Throwable th) {
            ReplayBuffer<T> replayBuffer = this.buffer;
            replayBuffer.error(th);
            ArrayList arrayList = null;
            for (Cdo<T> cdo : getAndSet(TERMINATED)) {
                try {
                    replayBuffer.drain(cdo);
                } catch (Throwable th2) {
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.add(th2);
                }
            }
            s80.m7299new(arrayList);
        }

        @Override // rx.Observer
        public void onNext(T t) {
            ReplayBuffer<T> replayBuffer = this.buffer;
            replayBuffer.next(t);
            for (Cdo<T> cdo : get()) {
                replayBuffer.drain(cdo);
            }
        }

        public void remove(Cdo<T> cdo) {
            Cdo<T>[] cdoArr;
            Cdo[] cdoArr2;
            do {
                cdoArr = get();
                if (cdoArr == TERMINATED || cdoArr == EMPTY) {
                    return;
                }
                int length = cdoArr.length;
                int i = -1;
                int i2 = 0;
                while (true) {
                    if (i2 >= length) {
                        break;
                    }
                    if (cdoArr[i2] == cdo) {
                        i = i2;
                        break;
                    }
                    i2++;
                }
                if (i < 0) {
                    return;
                }
                if (length == 1) {
                    cdoArr2 = EMPTY;
                } else {
                    Cdo[] cdoArr3 = new Cdo[length - 1];
                    System.arraycopy(cdoArr, 0, cdoArr3, 0, i);
                    System.arraycopy(cdoArr, i + 1, cdoArr3, i, (length - i) - 1);
                    cdoArr2 = cdoArr3;
                }
            } while (!compareAndSet(cdoArr, cdoArr2));
        }

        @Override // rx.functions.Action1
        public void call(y22<? super T> y22Var) {
            Cdo<T> cdo = new Cdo<>(y22Var, this);
            y22Var.add(cdo);
            y22Var.setProducer(cdo);
            if (add(cdo) && cdo.isUnsubscribed()) {
                remove(cdo);
            } else {
                this.buffer.drain(cdo);
            }
        }
    }

    public ReplaySubject(Cnew<T> cnew) {
        super(cnew);
        this.f36172if = cnew;
    }

    public static <T> ReplaySubject<T> g6() {
        return h6(16);
    }

    public static <T> ReplaySubject<T> h6(int i) {
        if (i > 0) {
            return new ReplaySubject<>(new Cnew(new Ctry(i)));
        }
        throw new IllegalArgumentException("capacity > 0 required but it was " + i);
    }

    public static <T> ReplaySubject<T> i6() {
        return new ReplaySubject<>(new Cnew(new Cfor(Integer.MAX_VALUE)));
    }

    public static <T> ReplaySubject<T> j6() {
        return new ReplaySubject<>(new Cnew(new Cif(Integer.MAX_VALUE, Long.MAX_VALUE, ds1.m1522new())));
    }

    public static <T> ReplaySubject<T> k6(int i) {
        return new ReplaySubject<>(new Cnew(new Cfor(i)));
    }

    public static <T> ReplaySubject<T> l6(long j, TimeUnit timeUnit, rx.Cif cif) {
        return m6(j, timeUnit, Integer.MAX_VALUE, cif);
    }

    public static <T> ReplaySubject<T> m6(long j, TimeUnit timeUnit, int i, rx.Cif cif) {
        return new ReplaySubject<>(new Cnew(new Cif(i, timeUnit.toMillis(j), cif)));
    }

    @Override // android.support.v4.u22
    public boolean e6() {
        return this.f36172if.get().length != 0;
    }

    public Throwable n6() {
        if (this.f36172if.isTerminated()) {
            return this.f36172if.buffer.error();
        }
        return null;
    }

    public T o6() {
        return this.f36172if.buffer.last();
    }

    @Override // rx.Observer
    public void onCompleted() {
        this.f36172if.onCompleted();
    }

    @Override // rx.Observer
    public void onError(Throwable th) {
        this.f36172if.onError(th);
    }

    @Override // rx.Observer
    public void onNext(T t) {
        this.f36172if.onNext(t);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Object[] p6() {
        Object[] objArr = f36171for;
        Object[] objArrQ6 = q6(objArr);
        return objArrQ6 == objArr ? new Object[0] : objArrQ6;
    }

    public T[] q6(T[] tArr) {
        return this.f36172if.buffer.toArray(tArr);
    }

    public boolean r6() {
        return !this.f36172if.buffer.isEmpty();
    }

    public boolean s6() {
        return this.f36172if.isTerminated() && this.f36172if.buffer.error() == null;
    }

    public boolean t6() {
        return this.f36172if.isTerminated() && this.f36172if.buffer.error() != null;
    }

    public boolean u6() {
        return r6();
    }

    public int v6() {
        return this.f36172if.buffer.size();
    }

    public int w6() {
        return this.f36172if.get().length;
    }

    /* renamed from: rx.subjects.ReplaySubject$for, reason: invalid class name */
    public static final class Cfor<T> implements ReplayBuffer<T> {

        /* renamed from: case, reason: not valid java name */
        public Throwable f36173case;

        /* renamed from: do, reason: not valid java name */
        public final int f36174do;

        /* renamed from: for, reason: not valid java name */
        public Cdo<T> f36175for;

        /* renamed from: if, reason: not valid java name */
        public volatile Cdo<T> f36176if;

        /* renamed from: new, reason: not valid java name */
        public int f36177new;

        /* renamed from: try, reason: not valid java name */
        public volatile boolean f36178try;

        /* renamed from: rx.subjects.ReplaySubject$for$do, reason: invalid class name */
        public static final class Cdo<T> extends AtomicReference<Cdo<T>> {
            private static final long serialVersionUID = 3713592843205853725L;
            public final T value;

            public Cdo(T t) {
                this.value = t;
            }
        }

        public Cfor(int i) {
            this.f36174do = i;
            Cdo<T> cdo = new Cdo<>(null);
            this.f36175for = cdo;
            this.f36176if = cdo;
        }

        @Override // rx.subjects.ReplaySubject.ReplayBuffer
        public void complete() {
            this.f36178try = true;
        }

        /* JADX WARN: Code restructure failed: missing block: B:31:0x005f, code lost:
        
            if (r10 != r5) goto L46;
         */
        /* JADX WARN: Code restructure failed: missing block: B:33:0x0065, code lost:
        
            if (r2.isUnsubscribed() == false) goto L36;
         */
        /* JADX WARN: Code restructure failed: missing block: B:34:0x0067, code lost:
        
            r18.node = null;
         */
        /* JADX WARN: Code restructure failed: missing block: B:35:0x0069, code lost:
        
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:36:0x006a, code lost:
        
            r14 = r17.f36178try;
         */
        /* JADX WARN: Code restructure failed: missing block: B:37:0x0070, code lost:
        
            if (r7.get() != null) goto L39;
         */
        /* JADX WARN: Code restructure failed: missing block: B:38:0x0072, code lost:
        
            r12 = true;
         */
        /* JADX WARN: Code restructure failed: missing block: B:39:0x0073, code lost:
        
            if (r14 == false) goto L46;
         */
        /* JADX WARN: Code restructure failed: missing block: B:40:0x0075, code lost:
        
            if (r12 == false) goto L46;
         */
        /* JADX WARN: Code restructure failed: missing block: B:41:0x0077, code lost:
        
            r18.node = null;
            r1 = r17.f36173case;
         */
        /* JADX WARN: Code restructure failed: missing block: B:42:0x007b, code lost:
        
            if (r1 == null) goto L44;
         */
        /* JADX WARN: Code restructure failed: missing block: B:43:0x007d, code lost:
        
            r2.onError(r1);
         */
        /* JADX WARN: Code restructure failed: missing block: B:44:0x0081, code lost:
        
            r2.onCompleted();
         */
        /* JADX WARN: Code restructure failed: missing block: B:45:0x0084, code lost:
        
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:47:0x0087, code lost:
        
            if (r10 == 0) goto L51;
         */
        /* JADX WARN: Code restructure failed: missing block: B:49:0x0090, code lost:
        
            if (r5 == Long.MAX_VALUE) goto L51;
         */
        /* JADX WARN: Code restructure failed: missing block: B:50:0x0092, code lost:
        
            android.support.v4.u6.m8261this(r18.requested, r10);
         */
        /* JADX WARN: Code restructure failed: missing block: B:51:0x0097, code lost:
        
            r18.node = r7;
            r4 = r18.addAndGet(-r4);
         */
        /* JADX WARN: Code restructure failed: missing block: B:63:?, code lost:
        
            return;
         */
        @Override // rx.subjects.ReplaySubject.ReplayBuffer
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void drain(Cdo<T> cdo) {
            if (cdo.getAndIncrement() != 0) {
                return;
            }
            y22<? super T> y22Var = cdo.actual;
            int iAddAndGet = 1;
            do {
                long j = cdo.requested.get();
                Cdo<T> cdo2 = (Cdo) cdo.node;
                if (cdo2 == null) {
                    cdo2 = this.f36176if;
                }
                long j2 = 0;
                while (true) {
                    boolean z = false;
                    if (j2 == j) {
                        break;
                    }
                    if (y22Var.isUnsubscribed()) {
                        cdo.node = null;
                        return;
                    }
                    boolean z2 = this.f36178try;
                    Cdo<T> cdo3 = cdo2.get();
                    boolean z3 = cdo3 == null;
                    if (z2 && z3) {
                        cdo.node = null;
                        Throwable th = this.f36173case;
                        if (th != null) {
                            y22Var.onError(th);
                            return;
                        } else {
                            y22Var.onCompleted();
                            return;
                        }
                    }
                    if (z3) {
                        break;
                    }
                    y22Var.onNext(cdo3.value);
                    j2++;
                    cdo2 = cdo3;
                }
            } while (iAddAndGet != 0);
        }

        @Override // rx.subjects.ReplaySubject.ReplayBuffer
        public void error(Throwable th) {
            this.f36173case = th;
            this.f36178try = true;
        }

        @Override // rx.subjects.ReplaySubject.ReplayBuffer
        public boolean isComplete() {
            return this.f36178try;
        }

        @Override // rx.subjects.ReplaySubject.ReplayBuffer
        public boolean isEmpty() {
            return this.f36176if.get() == null;
        }

        @Override // rx.subjects.ReplaySubject.ReplayBuffer
        public T last() {
            Cdo<T> cdo = this.f36176if;
            while (true) {
                Cdo<T> cdo2 = cdo.get();
                if (cdo2 == null) {
                    return cdo.value;
                }
                cdo = cdo2;
            }
        }

        @Override // rx.subjects.ReplaySubject.ReplayBuffer
        public void next(T t) {
            Cdo<T> cdo = new Cdo<>(t);
            this.f36175for.set(cdo);
            this.f36175for = cdo;
            int i = this.f36177new;
            if (i == this.f36174do) {
                this.f36176if = this.f36176if.get();
            } else {
                this.f36177new = i + 1;
            }
        }

        @Override // rx.subjects.ReplaySubject.ReplayBuffer
        public int size() {
            Cdo<T> cdo = this.f36176if.get();
            int i = 0;
            while (cdo != null && i != Integer.MAX_VALUE) {
                cdo = cdo.get();
                i++;
            }
            return i;
        }

        @Override // rx.subjects.ReplaySubject.ReplayBuffer
        public T[] toArray(T[] tArr) {
            ArrayList arrayList = new ArrayList();
            for (Cdo<T> cdo = this.f36176if.get(); cdo != null; cdo = cdo.get()) {
                arrayList.add(cdo.value);
            }
            return (T[]) arrayList.toArray(tArr);
        }

        @Override // rx.subjects.ReplaySubject.ReplayBuffer
        public Throwable error() {
            return this.f36173case;
        }
    }

    /* renamed from: rx.subjects.ReplaySubject$if, reason: invalid class name */
    public static final class Cif<T> implements ReplayBuffer<T> {

        /* renamed from: case, reason: not valid java name */
        public int f36179case;

        /* renamed from: do, reason: not valid java name */
        public final int f36180do;

        /* renamed from: else, reason: not valid java name */
        public volatile boolean f36181else;

        /* renamed from: for, reason: not valid java name */
        public final rx.Cif f36182for;

        /* renamed from: goto, reason: not valid java name */
        public Throwable f36183goto;

        /* renamed from: if, reason: not valid java name */
        public final long f36184if;

        /* renamed from: new, reason: not valid java name */
        public volatile Cdo<T> f36185new;

        /* renamed from: try, reason: not valid java name */
        public Cdo<T> f36186try;

        /* renamed from: rx.subjects.ReplaySubject$if$do, reason: invalid class name */
        public static final class Cdo<T> extends AtomicReference<Cdo<T>> {
            private static final long serialVersionUID = 3713592843205853725L;
            public final long timestamp;
            public final T value;

            public Cdo(T t, long j) {
                this.value = t;
                this.timestamp = j;
            }
        }

        public Cif(int i, long j, rx.Cif cif) {
            this.f36180do = i;
            Cdo<T> cdo = new Cdo<>(null, 0L);
            this.f36186try = cdo;
            this.f36185new = cdo;
            this.f36184if = j;
            this.f36182for = cif;
        }

        @Override // rx.subjects.ReplaySubject.ReplayBuffer
        public void complete() {
            m39208do();
            this.f36181else = true;
        }

        /* renamed from: do, reason: not valid java name */
        public void m39208do() {
            long jMo38373if = this.f36182for.mo38373if() - this.f36184if;
            Cdo<T> cdo = this.f36185new;
            Cdo<T> cdo2 = cdo;
            while (true) {
                Cdo<T> cdo3 = cdo2.get();
                if (cdo3 == null || cdo3.timestamp > jMo38373if) {
                    break;
                } else {
                    cdo2 = cdo3;
                }
            }
            if (cdo != cdo2) {
                this.f36185new = cdo2;
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:31:0x0061, code lost:
        
            if (r10 != r5) goto L46;
         */
        /* JADX WARN: Code restructure failed: missing block: B:33:0x0067, code lost:
        
            if (r2.isUnsubscribed() == false) goto L36;
         */
        /* JADX WARN: Code restructure failed: missing block: B:34:0x0069, code lost:
        
            r18.node = null;
         */
        /* JADX WARN: Code restructure failed: missing block: B:35:0x006b, code lost:
        
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:36:0x006c, code lost:
        
            r14 = r17.f36181else;
         */
        /* JADX WARN: Code restructure failed: missing block: B:37:0x0072, code lost:
        
            if (r7.get() != null) goto L39;
         */
        /* JADX WARN: Code restructure failed: missing block: B:38:0x0074, code lost:
        
            r12 = true;
         */
        /* JADX WARN: Code restructure failed: missing block: B:39:0x0075, code lost:
        
            if (r14 == false) goto L46;
         */
        /* JADX WARN: Code restructure failed: missing block: B:40:0x0077, code lost:
        
            if (r12 == false) goto L46;
         */
        /* JADX WARN: Code restructure failed: missing block: B:41:0x0079, code lost:
        
            r18.node = null;
            r1 = r17.f36183goto;
         */
        /* JADX WARN: Code restructure failed: missing block: B:42:0x007d, code lost:
        
            if (r1 == null) goto L44;
         */
        /* JADX WARN: Code restructure failed: missing block: B:43:0x007f, code lost:
        
            r2.onError(r1);
         */
        /* JADX WARN: Code restructure failed: missing block: B:44:0x0083, code lost:
        
            r2.onCompleted();
         */
        /* JADX WARN: Code restructure failed: missing block: B:45:0x0086, code lost:
        
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:47:0x0089, code lost:
        
            if (r10 == 0) goto L51;
         */
        /* JADX WARN: Code restructure failed: missing block: B:49:0x0092, code lost:
        
            if (r5 == Long.MAX_VALUE) goto L51;
         */
        /* JADX WARN: Code restructure failed: missing block: B:50:0x0094, code lost:
        
            android.support.v4.u6.m8261this(r18.requested, r10);
         */
        /* JADX WARN: Code restructure failed: missing block: B:51:0x0099, code lost:
        
            r18.node = r7;
            r4 = r18.addAndGet(-r4);
         */
        /* JADX WARN: Code restructure failed: missing block: B:63:?, code lost:
        
            return;
         */
        @Override // rx.subjects.ReplaySubject.ReplayBuffer
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void drain(Cdo<T> cdo) {
            if (cdo.getAndIncrement() != 0) {
                return;
            }
            y22<? super T> y22Var = cdo.actual;
            int iAddAndGet = 1;
            do {
                long j = cdo.requested.get();
                Cdo<T> cdoM39209if = (Cdo) cdo.node;
                if (cdoM39209if == null) {
                    cdoM39209if = m39209if();
                }
                long j2 = 0;
                while (true) {
                    boolean z = false;
                    if (j2 == j) {
                        break;
                    }
                    if (y22Var.isUnsubscribed()) {
                        cdo.node = null;
                        return;
                    }
                    boolean z2 = this.f36181else;
                    Cdo<T> cdo2 = cdoM39209if.get();
                    boolean z3 = cdo2 == null;
                    if (z2 && z3) {
                        cdo.node = null;
                        Throwable th = this.f36183goto;
                        if (th != null) {
                            y22Var.onError(th);
                            return;
                        } else {
                            y22Var.onCompleted();
                            return;
                        }
                    }
                    if (z3) {
                        break;
                    }
                    y22Var.onNext(cdo2.value);
                    j2++;
                    cdoM39209if = cdo2;
                }
            } while (iAddAndGet != 0);
        }

        @Override // rx.subjects.ReplaySubject.ReplayBuffer
        public void error(Throwable th) {
            m39208do();
            this.f36183goto = th;
            this.f36181else = true;
        }

        /* renamed from: if, reason: not valid java name */
        public Cdo<T> m39209if() {
            long jMo38373if = this.f36182for.mo38373if() - this.f36184if;
            Cdo<T> cdo = this.f36185new;
            while (true) {
                Cdo<T> cdo2 = cdo.get();
                if (cdo2 == null || cdo2.timestamp > jMo38373if) {
                    break;
                }
                cdo = cdo2;
            }
            return cdo;
        }

        @Override // rx.subjects.ReplaySubject.ReplayBuffer
        public boolean isComplete() {
            return this.f36181else;
        }

        @Override // rx.subjects.ReplaySubject.ReplayBuffer
        public boolean isEmpty() {
            return m39209if().get() == null;
        }

        @Override // rx.subjects.ReplaySubject.ReplayBuffer
        public T last() {
            Cdo<T> cdoM39209if = m39209if();
            while (true) {
                Cdo<T> cdo = cdoM39209if.get();
                if (cdo == null) {
                    return cdoM39209if.value;
                }
                cdoM39209if = cdo;
            }
        }

        @Override // rx.subjects.ReplaySubject.ReplayBuffer
        public void next(T t) {
            Cdo<T> cdo;
            long jMo38373if = this.f36182for.mo38373if();
            Cdo<T> cdo2 = new Cdo<>(t, jMo38373if);
            this.f36186try.set(cdo2);
            this.f36186try = cdo2;
            long j = jMo38373if - this.f36184if;
            int i = this.f36179case;
            Cdo<T> cdo3 = this.f36185new;
            if (i == this.f36180do) {
                cdo = cdo3.get();
            } else {
                i++;
                cdo = cdo3;
            }
            while (true) {
                Cdo<T> cdo4 = cdo.get();
                if (cdo4 == null || cdo4.timestamp > j) {
                    break;
                }
                i--;
                cdo = cdo4;
            }
            this.f36179case = i;
            if (cdo != cdo3) {
                this.f36185new = cdo;
            }
        }

        @Override // rx.subjects.ReplaySubject.ReplayBuffer
        public int size() {
            Cdo<T> cdo = m39209if().get();
            int i = 0;
            while (cdo != null && i != Integer.MAX_VALUE) {
                cdo = cdo.get();
                i++;
            }
            return i;
        }

        @Override // rx.subjects.ReplaySubject.ReplayBuffer
        public T[] toArray(T[] tArr) {
            ArrayList arrayList = new ArrayList();
            for (Cdo<T> cdo = m39209if().get(); cdo != null; cdo = cdo.get()) {
                arrayList.add(cdo.value);
            }
            return (T[]) arrayList.toArray(tArr);
        }

        @Override // rx.subjects.ReplaySubject.ReplayBuffer
        public Throwable error() {
            return this.f36183goto;
        }
    }

    /* renamed from: rx.subjects.ReplaySubject$try, reason: invalid class name */
    public static final class Ctry<T> implements ReplayBuffer<T> {

        /* renamed from: case, reason: not valid java name */
        public volatile boolean f36187case;

        /* renamed from: do, reason: not valid java name */
        public final int f36188do;

        /* renamed from: else, reason: not valid java name */
        public Throwable f36189else;

        /* renamed from: for, reason: not valid java name */
        public final Object[] f36190for;

        /* renamed from: if, reason: not valid java name */
        public volatile int f36191if;

        /* renamed from: new, reason: not valid java name */
        public Object[] f36192new;

        /* renamed from: try, reason: not valid java name */
        public int f36193try;

        public Ctry(int i) {
            this.f36188do = i;
            Object[] objArr = new Object[i + 1];
            this.f36190for = objArr;
            this.f36192new = objArr;
        }

        @Override // rx.subjects.ReplaySubject.ReplayBuffer
        public void complete() {
            this.f36187case = true;
        }

        @Override // rx.subjects.ReplaySubject.ReplayBuffer
        public void drain(Cdo<T> cdo) {
            if (cdo.getAndIncrement() != 0) {
                return;
            }
            y22<? super T> y22Var = cdo.actual;
            int i = this.f36188do;
            int iAddAndGet = 1;
            do {
                long j = cdo.requested.get();
                Object[] objArr = (Object[]) cdo.node;
                if (objArr == null) {
                    objArr = this.f36190for;
                }
                int i2 = cdo.tailIndex;
                int i3 = cdo.index;
                long j2 = 0;
                while (j2 != j) {
                    if (y22Var.isUnsubscribed()) {
                        cdo.node = null;
                        return;
                    }
                    boolean z = this.f36187case;
                    boolean z2 = i3 == this.f36191if;
                    if (z && z2) {
                        cdo.node = null;
                        Throwable th = this.f36189else;
                        if (th != null) {
                            y22Var.onError(th);
                            return;
                        } else {
                            y22Var.onCompleted();
                            return;
                        }
                    }
                    if (z2) {
                        break;
                    }
                    if (i2 == i) {
                        objArr = (Object[]) objArr[i2];
                        i2 = 0;
                    }
                    y22Var.onNext(objArr[i2]);
                    j2++;
                    i2++;
                    i3++;
                }
                if (j2 == j) {
                    if (y22Var.isUnsubscribed()) {
                        cdo.node = null;
                        return;
                    }
                    boolean z3 = this.f36187case;
                    boolean z4 = i3 == this.f36191if;
                    if (z3 && z4) {
                        cdo.node = null;
                        Throwable th2 = this.f36189else;
                        if (th2 != null) {
                            y22Var.onError(th2);
                            return;
                        } else {
                            y22Var.onCompleted();
                            return;
                        }
                    }
                }
                if (j2 != 0 && j != Long.MAX_VALUE) {
                    u6.m8261this(cdo.requested, j2);
                }
                cdo.index = i3;
                cdo.tailIndex = i2;
                cdo.node = objArr;
                iAddAndGet = cdo.addAndGet(-iAddAndGet);
            } while (iAddAndGet != 0);
        }

        @Override // rx.subjects.ReplaySubject.ReplayBuffer
        public void error(Throwable th) {
            if (this.f36187case) {
                rx.plugins.Cif.m39151protected(th);
            } else {
                this.f36189else = th;
                this.f36187case = true;
            }
        }

        @Override // rx.subjects.ReplaySubject.ReplayBuffer
        public boolean isComplete() {
            return this.f36187case;
        }

        @Override // rx.subjects.ReplaySubject.ReplayBuffer
        public boolean isEmpty() {
            return this.f36191if == 0;
        }

        @Override // rx.subjects.ReplaySubject.ReplayBuffer
        public T last() {
            int i = this.f36191if;
            if (i == 0) {
                return null;
            }
            Object[] objArr = this.f36190for;
            int i2 = this.f36188do;
            while (i >= i2) {
                objArr = (Object[]) objArr[i2];
                i -= i2;
            }
            return (T) objArr[i - 1];
        }

        @Override // rx.subjects.ReplaySubject.ReplayBuffer
        public void next(T t) {
            if (this.f36187case) {
                return;
            }
            int i = this.f36193try;
            Object[] objArr = this.f36192new;
            if (i == objArr.length - 1) {
                Object[] objArr2 = new Object[objArr.length];
                objArr2[0] = t;
                this.f36193try = 1;
                objArr[i] = objArr2;
                this.f36192new = objArr2;
            } else {
                objArr[i] = t;
                this.f36193try = i + 1;
            }
            this.f36191if++;
        }

        @Override // rx.subjects.ReplaySubject.ReplayBuffer
        public int size() {
            return this.f36191if;
        }

        @Override // rx.subjects.ReplaySubject.ReplayBuffer
        public T[] toArray(T[] tArr) {
            int i = this.f36191if;
            if (tArr.length < i) {
                tArr = (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), i));
            }
            Object[] objArr = this.f36190for;
            int i2 = this.f36188do;
            int i3 = 0;
            while (true) {
                int i4 = i3 + i2;
                if (i4 >= i) {
                    break;
                }
                System.arraycopy(objArr, 0, tArr, i3, i2);
                objArr = objArr[i2];
                i3 = i4;
            }
            System.arraycopy(objArr, 0, tArr, i3, i - i3);
            if (tArr.length > i) {
                tArr[i] = null;
            }
            return tArr;
        }

        @Override // rx.subjects.ReplaySubject.ReplayBuffer
        public Throwable error() {
            return this.f36189else;
        }
    }
}
