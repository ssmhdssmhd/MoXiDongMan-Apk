package rx.internal.operators;

import android.support.v4.c12;
import android.support.v4.dq;
import android.support.v4.f12;
import android.support.v4.s80;
import android.support.v4.u6;
import android.support.v4.ve1;
import android.support.v4.y22;
import android.support.v4.zz0;
import java.util.ArrayList;
import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.atomic.AtomicLong;
import rx.Observable;
import rx.Producer;
import rx.internal.util.Celse;
import rx.internal.util.unsafe.Cimplements;
import rx.internal.util.unsafe.Cswitch;

/* loaded from: classes4.dex */
public final class s0<T> implements Observable.Operator<T, Observable<? extends T>> {

    /* renamed from: do, reason: not valid java name */
    public final boolean f35314do;

    /* renamed from: if, reason: not valid java name */
    public final int f35315if;

    /* renamed from: rx.internal.operators.s0$do, reason: invalid class name */
    public static final class Cdo {

        /* renamed from: do, reason: not valid java name */
        public static final s0<Object> f35316do = new s0<>(true, Integer.MAX_VALUE);
    }

    /* renamed from: rx.internal.operators.s0$for, reason: invalid class name */
    public static final class Cfor<T> extends y22<T> {

        /* renamed from: case, reason: not valid java name */
        public static final int f35317case = rx.internal.util.Ctry.f35868new / 4;

        /* renamed from: do, reason: not valid java name */
        public final Ctry<T> f35318do;

        /* renamed from: for, reason: not valid java name */
        public volatile boolean f35319for;

        /* renamed from: if, reason: not valid java name */
        public final long f35320if;

        /* renamed from: new, reason: not valid java name */
        public volatile rx.internal.util.Ctry f35321new;

        /* renamed from: try, reason: not valid java name */
        public int f35322try;

        public Cfor(Ctry<T> ctry, long j) {
            this.f35318do = ctry;
            this.f35320if = j;
        }

        /* renamed from: do, reason: not valid java name */
        public void m38698do(long j) {
            int i = this.f35322try - ((int) j);
            if (i > f35317case) {
                this.f35322try = i;
                return;
            }
            int i2 = rx.internal.util.Ctry.f35868new;
            this.f35322try = i2;
            int i3 = i2 - i;
            if (i3 > 0) {
                request(i3);
            }
        }

        @Override // rx.Observer
        public void onCompleted() throws Throwable {
            this.f35319for = true;
            this.f35318do.m38707for();
        }

        @Override // rx.Observer
        public void onError(Throwable th) throws Throwable {
            this.f35319for = true;
            this.f35318do.m38712this().offer(th);
            this.f35318do.m38707for();
        }

        @Override // rx.Observer
        public void onNext(T t) throws Throwable {
            this.f35318do.m38715while(this, t);
        }

        @Override // android.support.v4.y22
        public void onStart() {
            int i = rx.internal.util.Ctry.f35868new;
            this.f35322try = i;
            request(i);
        }
    }

    /* renamed from: rx.internal.operators.s0$if, reason: invalid class name */
    public static final class Cif {

        /* renamed from: do, reason: not valid java name */
        public static final s0<Object> f35323do = new s0<>(false, Integer.MAX_VALUE);
    }

    /* renamed from: rx.internal.operators.s0$new, reason: invalid class name */
    public static final class Cnew<T> extends AtomicLong implements Producer {
        private static final long serialVersionUID = -1214379189873595503L;
        public final Ctry<T> subscriber;

        public Cnew(Ctry<T> ctry) {
            this.subscriber = ctry;
        }

        public long produced(int i) {
            return addAndGet(-i);
        }

        @Override // rx.Producer
        public void request(long j) throws Throwable {
            if (j <= 0) {
                if (j < 0) {
                    throw new IllegalArgumentException("n >= 0 required");
                }
            } else {
                if (get() == Long.MAX_VALUE) {
                    return;
                }
                u6.m8259if(this, j);
                this.subscriber.m38707for();
            }
        }
    }

    /* renamed from: rx.internal.operators.s0$try, reason: invalid class name */
    public static final class Ctry<T> extends y22<Observable<? extends T>> {

        /* renamed from: import, reason: not valid java name */
        public static final Cfor<?>[] f35324import = new Cfor[0];

        /* renamed from: break, reason: not valid java name */
        public boolean f35325break;

        /* renamed from: case, reason: not valid java name */
        public volatile dq f35326case;

        /* renamed from: catch, reason: not valid java name */
        public final Object f35327catch = new Object();

        /* renamed from: class, reason: not valid java name */
        public volatile Cfor<?>[] f35328class = f35324import;

        /* renamed from: const, reason: not valid java name */
        public long f35329const;

        /* renamed from: do, reason: not valid java name */
        public final y22<? super T> f35330do;

        /* renamed from: else, reason: not valid java name */
        public volatile ConcurrentLinkedQueue<Throwable> f35331else;

        /* renamed from: final, reason: not valid java name */
        public long f35332final;

        /* renamed from: for, reason: not valid java name */
        public final int f35333for;

        /* renamed from: goto, reason: not valid java name */
        public volatile boolean f35334goto;

        /* renamed from: if, reason: not valid java name */
        public final boolean f35335if;

        /* renamed from: new, reason: not valid java name */
        public Cnew<T> f35336new;

        /* renamed from: super, reason: not valid java name */
        public int f35337super;

        /* renamed from: this, reason: not valid java name */
        public boolean f35338this;

        /* renamed from: throw, reason: not valid java name */
        public final int f35339throw;

        /* renamed from: try, reason: not valid java name */
        public volatile Queue<Object> f35340try;

        /* renamed from: while, reason: not valid java name */
        public int f35341while;

        public Ctry(y22<? super T> y22Var, boolean z, int i) {
            this.f35330do = y22Var;
            this.f35335if = z;
            this.f35333for = i;
            if (i == Integer.MAX_VALUE) {
                this.f35339throw = Integer.MAX_VALUE;
                request(Long.MAX_VALUE);
            } else {
                this.f35339throw = Math.max(1, i >> 1);
                request(i);
            }
        }

        /* renamed from: final, reason: not valid java name */
        private void m38699final() {
            ArrayList arrayList = new ArrayList(this.f35331else);
            if (arrayList.size() == 1) {
                this.f35330do.onError((Throwable) arrayList.get(0));
            } else {
                this.f35330do.onError(new rx.exceptions.Cdo(arrayList));
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // rx.Observer
        /* renamed from: break, reason: not valid java name and merged with bridge method [inline-methods] */
        public void onNext(Observable<? extends T> observable) throws Throwable {
            if (observable == null) {
                return;
            }
            if (observable == Observable.B0()) {
                m38710new();
                return;
            }
            if (observable instanceof Celse) {
                m38713throw(((Celse) observable).g6());
                return;
            }
            long j = this.f35329const;
            this.f35329const = 1 + j;
            Cfor cfor = new Cfor(this, j);
            m38705do(cfor);
            observable.r5(cfor);
            m38707for();
        }

        /* renamed from: case, reason: not valid java name */
        public void m38701case(T t, long j) throws Throwable {
            boolean z = true;
            try {
                try {
                    try {
                        this.f35330do.onNext(t);
                    } catch (Throwable th) {
                        th = th;
                        z = false;
                        if (!z) {
                            synchronized (this) {
                                this.f35338this = false;
                            }
                        }
                        throw th;
                    }
                } catch (Throwable th2) {
                    if (!this.f35335if) {
                        s80.m7301try(th2);
                        unsubscribe();
                        onError(th2);
                        return;
                    }
                    m38712this().offer(th2);
                }
                if (j != Long.MAX_VALUE) {
                    this.f35336new.produced(1);
                }
                int i = this.f35341while + 1;
                if (i == this.f35339throw) {
                    this.f35341while = 0;
                    m38711super(i);
                } else {
                    this.f35341while = i;
                }
                synchronized (this) {
                    if (!this.f35325break) {
                        this.f35338this = false;
                    } else {
                        this.f35325break = false;
                        m38714try();
                    }
                }
            } catch (Throwable th3) {
                th = th3;
            }
        }

        /* renamed from: catch, reason: not valid java name */
        public void m38702catch(T t) throws Throwable {
            Queue<Object> cswitch = this.f35340try;
            if (cswitch == null) {
                int i = this.f35333for;
                if (i == Integer.MAX_VALUE) {
                    cswitch = new f12<>(rx.internal.util.Ctry.f35868new);
                } else {
                    cswitch = ve1.m8841do(i) ? Cimplements.m38984case() ? new Cswitch<>(i) : new rx.internal.util.atomic.Cnew<>(i) : new c12<>(i);
                }
                this.f35340try = cswitch;
            }
            if (cswitch.offer(Creturn.m38682break(t))) {
                return;
            }
            unsubscribe();
            onError(rx.exceptions.Cif.addValueAsLastCause(new zz0(), t));
        }

        /* renamed from: class, reason: not valid java name */
        public void m38703class(Cfor<T> cfor, T t) throws Throwable {
            rx.internal.util.Ctry ctryM38932else = cfor.f35321new;
            if (ctryM38932else == null) {
                ctryM38932else = rx.internal.util.Ctry.m38932else();
                cfor.add(ctryM38932else);
                cfor.f35321new = ctryM38932else;
            }
            try {
                ctryM38932else.m38938final(Creturn.m38682break(t));
            } catch (zz0 e) {
                cfor.unsubscribe();
                cfor.onError(e);
            } catch (IllegalStateException e2) {
                if (cfor.isUnsubscribed()) {
                    return;
                }
                cfor.unsubscribe();
                cfor.onError(e2);
            }
        }

        /* renamed from: const, reason: not valid java name */
        public void m38704const(Cfor<T> cfor) {
            rx.internal.util.Ctry ctry = cfor.f35321new;
            if (ctry != null) {
                ctry.m38947while();
            }
            this.f35326case.m1492try(cfor);
            synchronized (this.f35327catch) {
                Cfor<?>[] cforArr = this.f35328class;
                int length = cforArr.length;
                int i = -1;
                int i2 = 0;
                while (true) {
                    if (i2 >= length) {
                        break;
                    }
                    if (cfor.equals(cforArr[i2])) {
                        i = i2;
                        break;
                    }
                    i2++;
                }
                if (i < 0) {
                    return;
                }
                if (length == 1) {
                    this.f35328class = f35324import;
                    return;
                }
                Cfor<?>[] cforArr2 = new Cfor[length - 1];
                System.arraycopy(cforArr, 0, cforArr2, 0, i);
                System.arraycopy(cforArr, i + 1, cforArr2, i, (length - i) - 1);
                this.f35328class = cforArr2;
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* renamed from: do, reason: not valid java name */
        public void m38705do(Cfor<T> cfor) {
            m38708goto().m1488do(cfor);
            synchronized (this.f35327catch) {
                Cfor<?>[] cforArr = this.f35328class;
                int length = cforArr.length;
                Cfor<?>[] cforArr2 = new Cfor[length + 1];
                System.arraycopy(cforArr, 0, cforArr2, 0, length);
                cforArr2[length] = cfor;
                this.f35328class = cforArr2;
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:34:0x004a  */
        /* renamed from: else, reason: not valid java name */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void m38706else(Cfor<T> cfor, T t, long j) throws Throwable {
            boolean z = true;
            try {
                try {
                    try {
                        this.f35330do.onNext(t);
                    } catch (Throwable th) {
                        th = th;
                        z = false;
                        if (!z) {
                            synchronized (this) {
                                this.f35338this = false;
                            }
                        }
                        throw th;
                    }
                } catch (Throwable th2) {
                    if (!this.f35335if) {
                        s80.m7301try(th2);
                        cfor.unsubscribe();
                        cfor.onError(th2);
                        return;
                    }
                    m38712this().offer(th2);
                }
                if (j != Long.MAX_VALUE) {
                    this.f35336new.produced(1);
                }
                cfor.m38698do(1L);
                synchronized (this) {
                    if (!this.f35325break) {
                        this.f35338this = false;
                    } else {
                        this.f35325break = false;
                        m38714try();
                    }
                }
            } catch (Throwable th3) {
                th = th3;
                if (!z) {
                }
                throw th;
            }
        }

        /* renamed from: for, reason: not valid java name */
        public void m38707for() throws Throwable {
            synchronized (this) {
                if (this.f35338this) {
                    this.f35325break = true;
                } else {
                    this.f35338this = true;
                    m38714try();
                }
            }
        }

        /* renamed from: goto, reason: not valid java name */
        public dq m38708goto() {
            dq dqVar;
            dq dqVar2 = this.f35326case;
            if (dqVar2 != null) {
                return dqVar2;
            }
            boolean z = false;
            synchronized (this) {
                dqVar = this.f35326case;
                if (dqVar == null) {
                    dq dqVar3 = new dq();
                    this.f35326case = dqVar3;
                    dqVar = dqVar3;
                    z = true;
                }
            }
            if (z) {
                add(dqVar);
            }
            return dqVar;
        }

        /* renamed from: if, reason: not valid java name */
        public boolean m38709if() {
            if (this.f35330do.isUnsubscribed()) {
                return true;
            }
            ConcurrentLinkedQueue<Throwable> concurrentLinkedQueue = this.f35331else;
            if (this.f35335if || concurrentLinkedQueue == null || concurrentLinkedQueue.isEmpty()) {
                return false;
            }
            try {
                m38699final();
                return true;
            } finally {
                unsubscribe();
            }
        }

        /* renamed from: new, reason: not valid java name */
        public void m38710new() {
            int i = this.f35341while + 1;
            if (i != this.f35339throw) {
                this.f35341while = i;
            } else {
                this.f35341while = 0;
                m38711super(i);
            }
        }

        @Override // rx.Observer
        public void onCompleted() throws Throwable {
            this.f35334goto = true;
            m38707for();
        }

        @Override // rx.Observer
        public void onError(Throwable th) throws Throwable {
            m38712this().offer(th);
            this.f35334goto = true;
            m38707for();
        }

        /* renamed from: super, reason: not valid java name */
        public void m38711super(long j) {
            request(j);
        }

        /* renamed from: this, reason: not valid java name */
        public Queue<Throwable> m38712this() {
            ConcurrentLinkedQueue<Throwable> concurrentLinkedQueue = this.f35331else;
            if (concurrentLinkedQueue == null) {
                synchronized (this) {
                    concurrentLinkedQueue = this.f35331else;
                    if (concurrentLinkedQueue == null) {
                        concurrentLinkedQueue = new ConcurrentLinkedQueue<>();
                        this.f35331else = concurrentLinkedQueue;
                    }
                }
            }
            return concurrentLinkedQueue;
        }

        /* renamed from: throw, reason: not valid java name */
        public void m38713throw(T t) throws Throwable {
            long j = this.f35336new.get();
            boolean z = false;
            if (j != 0) {
                synchronized (this) {
                    j = this.f35336new.get();
                    if (!this.f35338this && j != 0) {
                        this.f35338this = true;
                        z = true;
                    }
                }
            }
            if (!z) {
                m38702catch(t);
                m38707for();
                return;
            }
            Queue<Object> queue = this.f35340try;
            if (queue == null || queue.isEmpty()) {
                m38701case(t, j);
            } else {
                m38702catch(t);
                m38714try();
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:37:0x0071, code lost:
        
            if (r7 <= 0) goto L41;
         */
        /* JADX WARN: Code restructure failed: missing block: B:38:0x0073, code lost:
        
            if (r10 == false) goto L40;
         */
        /* JADX WARN: Code restructure failed: missing block: B:39:0x0075, code lost:
        
            r16 = Long.MAX_VALUE;
         */
        /* JADX WARN: Code restructure failed: missing block: B:40:0x0078, code lost:
        
            r16 = r22.f35336new.produced(r7);
         */
        /* JADX WARN: Code restructure failed: missing block: B:42:0x0080, code lost:
        
            if (r16 == 0) goto L199;
         */
        /* JADX WARN: Code restructure failed: missing block: B:43:0x0082, code lost:
        
            if (r0 != null) goto L45;
         */
        /* JADX WARN: Removed duplicated region for block: B:160:0x019d  */
        /* renamed from: try, reason: not valid java name */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void m38714try() throws Throwable {
            boolean z;
            long jProduced;
            int i;
            boolean z2;
            try {
                y22<? super T> y22Var = this.f35330do;
                while (!m38709if()) {
                    Queue<Object> queue = this.f35340try;
                    long j = this.f35336new.get();
                    boolean z3 = j == Long.MAX_VALUE;
                    if (queue != null) {
                        int i2 = 0;
                        while (true) {
                            jProduced = j;
                            int i3 = 0;
                            i = i2;
                            Object obj = null;
                            while (true) {
                                if (jProduced <= 0) {
                                    break;
                                }
                                Object objPoll = queue.poll();
                                if (m38709if()) {
                                    return;
                                }
                                if (objPoll == null) {
                                    obj = objPoll;
                                    break;
                                }
                                try {
                                    y22Var.onNext((Object) Creturn.m38691try(objPoll));
                                } catch (Throwable th) {
                                    if (!this.f35335if) {
                                        s80.m7301try(th);
                                        unsubscribe();
                                        y22Var.onError(th);
                                        return;
                                    }
                                    m38712this().offer(th);
                                }
                                i++;
                                i3++;
                                jProduced--;
                                obj = objPoll;
                            }
                            i2 = i;
                            j = jProduced;
                        }
                    } else {
                        jProduced = j;
                        i = 0;
                    }
                    boolean z4 = this.f35334goto;
                    Queue<Object> queue2 = this.f35340try;
                    Cfor<?>[] cforArr = this.f35328class;
                    int length = cforArr.length;
                    if (z4 && ((queue2 == null || queue2.isEmpty()) && length == 0)) {
                        ConcurrentLinkedQueue<Throwable> concurrentLinkedQueue = this.f35331else;
                        if (concurrentLinkedQueue != null && !concurrentLinkedQueue.isEmpty()) {
                            m38699final();
                            return;
                        }
                        y22Var.onCompleted();
                        return;
                    }
                    if (length > 0) {
                        long j2 = this.f35332final;
                        int i4 = this.f35337super;
                        if (length <= i4 || cforArr[i4].f35320if != j2) {
                            if (length <= i4) {
                                i4 = 0;
                            }
                            for (int i5 = 0; i5 < length && cforArr[i4].f35320if != j2; i5++) {
                                i4++;
                                if (i4 == length) {
                                    i4 = 0;
                                }
                            }
                            this.f35337super = i4;
                            this.f35332final = cforArr[i4].f35320if;
                        }
                        z2 = false;
                        for (int i6 = 0; i6 < length; i6++) {
                            if (m38709if()) {
                                return;
                            }
                            Cfor<?> cfor = cforArr[i4];
                            Object objM38945throw = null;
                            do {
                                int i7 = 0;
                                while (jProduced > 0) {
                                    if (m38709if()) {
                                        return;
                                    }
                                    rx.internal.util.Ctry ctry = cfor.f35321new;
                                    if (ctry == null || (objM38945throw = ctry.m38945throw()) == null) {
                                        break;
                                    }
                                    try {
                                        try {
                                            y22Var.onNext((Object) Creturn.m38691try(objM38945throw));
                                            jProduced--;
                                            i7++;
                                        } catch (Throwable th2) {
                                            s80.m7301try(th2);
                                            try {
                                                y22Var.onError(th2);
                                                return;
                                            } finally {
                                                unsubscribe();
                                            }
                                        }
                                    } catch (Throwable th3) {
                                        th = th3;
                                        z = true;
                                        if (!z) {
                                        }
                                        throw th;
                                    }
                                }
                                if (i7 > 0) {
                                    jProduced = !z3 ? this.f35336new.produced(i7) : Long.MAX_VALUE;
                                    cfor.m38698do(i7);
                                }
                                if (jProduced == 0) {
                                    break;
                                }
                            } while (objM38945throw != null);
                            boolean z5 = cfor.f35319for;
                            rx.internal.util.Ctry ctry2 = cfor.f35321new;
                            if (z5 && (ctry2 == null || ctry2.m38933break())) {
                                m38704const(cfor);
                                if (m38709if()) {
                                    return;
                                }
                                i++;
                                z2 = true;
                            }
                            if (jProduced == 0) {
                                break;
                            }
                            i4++;
                            if (i4 == length) {
                                i4 = 0;
                            }
                        }
                        this.f35337super = i4;
                        this.f35332final = cforArr[i4].f35320if;
                    } else {
                        z2 = false;
                    }
                    if (i > 0) {
                        request(i);
                    }
                    if (!z2) {
                        synchronized (this) {
                            try {
                                if (!this.f35325break) {
                                    try {
                                        this.f35338this = false;
                                        return;
                                    } catch (Throwable th4) {
                                        th = th4;
                                        z = true;
                                        while (true) {
                                            try {
                                                break;
                                            } catch (Throwable th5) {
                                                th = th5;
                                            }
                                        }
                                        throw th;
                                    }
                                }
                                this.f35325break = false;
                            } catch (Throwable th6) {
                                th = th6;
                                z = false;
                            }
                        }
                        try {
                            break;
                            throw th;
                        } catch (Throwable th7) {
                            th = th7;
                            if (!z) {
                                synchronized (this) {
                                    this.f35338this = false;
                                }
                            }
                            throw th;
                        }
                    }
                }
            } catch (Throwable th8) {
                th = th8;
                z = false;
                if (!z) {
                }
                throw th;
            }
        }

        /* renamed from: while, reason: not valid java name */
        public void m38715while(Cfor<T> cfor, T t) throws Throwable {
            long j = this.f35336new.get();
            boolean z = false;
            if (j != 0) {
                synchronized (this) {
                    j = this.f35336new.get();
                    if (!this.f35338this && j != 0) {
                        this.f35338this = true;
                        z = true;
                    }
                }
            }
            if (!z) {
                m38703class(cfor, t);
                m38707for();
                return;
            }
            rx.internal.util.Ctry ctry = cfor.f35321new;
            if (ctry == null || ctry.m38933break()) {
                m38706else(cfor, t, j);
            } else {
                m38703class(cfor, t);
                m38714try();
            }
        }
    }

    public s0(boolean z, int i) {
        this.f35314do = z;
        this.f35315if = i;
    }

    /* renamed from: for, reason: not valid java name */
    public static <T> s0<T> m38695for(boolean z, int i) {
        if (i > 0) {
            return i == Integer.MAX_VALUE ? m38696if(z) : new s0<>(z, i);
        }
        throw new IllegalArgumentException("maxConcurrent > 0 required but it was " + i);
    }

    /* renamed from: if, reason: not valid java name */
    public static <T> s0<T> m38696if(boolean z) {
        return z ? (s0<T>) Cdo.f35316do : (s0<T>) Cif.f35323do;
    }

    @Override // rx.functions.Func1
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public y22<Observable<? extends T>> call(y22<? super T> y22Var) {
        Ctry ctry = new Ctry(y22Var, this.f35314do, this.f35315if);
        Cnew<T> cnew = new Cnew<>(ctry);
        ctry.f35336new = cnew;
        y22Var.add(ctry);
        y22Var.setProducer(cnew);
        return ctry;
    }
}
