package rx.internal.operators;

import android.support.v4.s80;
import android.support.v4.y22;
import android.support.v4.zz0;
import java.util.Objects;
import java.util.Queue;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import rx.Observable;
import rx.Producer;
import rx.Subscription;
import rx.functions.Action0;
import rx.functions.Action1;
import rx.functions.Func1;
import rx.internal.util.Ctry;
import rx.internal.util.unsafe.Cimplements;
import rx.internal.util.unsafe.Cswitch;

/* loaded from: classes4.dex */
public final class z0<T> extends rx.observables.Cfor<T> {

    /* renamed from: for, reason: not valid java name */
    public final AtomicReference<Cnew<T>> f35636for;

    /* renamed from: if, reason: not valid java name */
    public final Observable<? extends T> f35637if;

    /* renamed from: rx.internal.operators.z0$do, reason: invalid class name */
    public static class Cdo implements Observable.OnSubscribe<T> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ AtomicReference f35638do;

        public Cdo(AtomicReference atomicReference) {
            this.f35638do = atomicReference;
        }

        @Override // rx.functions.Action1
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void call(y22<? super T> y22Var) {
            while (true) {
                Cnew cnew = (Cnew) this.f35638do.get();
                if (cnew == null || cnew.isUnsubscribed()) {
                    Cnew cnew2 = new Cnew(this.f35638do);
                    cnew2.m38824new();
                    if (this.f35638do.compareAndSet(cnew, cnew2)) {
                        cnew = cnew2;
                    } else {
                        continue;
                    }
                }
                Cfor<T> cfor = new Cfor<>(cnew, y22Var);
                if (cnew.m38821do(cfor)) {
                    y22Var.add(cfor);
                    y22Var.setProducer(cfor);
                    return;
                }
            }
        }
    }

    /* renamed from: rx.internal.operators.z0$for, reason: invalid class name */
    public static final class Cfor<T> extends AtomicLong implements Producer, Subscription {
        public static final long NOT_REQUESTED = -4611686018427387904L;
        public static final long UNSUBSCRIBED = Long.MIN_VALUE;
        private static final long serialVersionUID = -4453897557930727610L;
        public final y22<? super T> child;
        public final Cnew<T> parent;

        public Cfor(Cnew<T> cnew, y22<? super T> y22Var) {
            this.parent = cnew;
            this.child = y22Var;
            lazySet(-4611686018427387904L);
        }

        @Override // rx.Subscription
        public boolean isUnsubscribed() {
            return get() == Long.MIN_VALUE;
        }

        public long produced(long j) {
            long j2;
            long j3;
            if (j <= 0) {
                throw new IllegalArgumentException("Cant produce zero or less");
            }
            do {
                j2 = get();
                if (j2 == -4611686018427387904L) {
                    throw new IllegalStateException("Produced without request");
                }
                if (j2 == Long.MIN_VALUE) {
                    return Long.MIN_VALUE;
                }
                j3 = j2 - j;
                if (j3 < 0) {
                    throw new IllegalStateException("More produced (" + j + ") than requested (" + j2 + ")");
                }
            } while (!compareAndSet(j2, j3));
            return j3;
        }

        @Override // rx.Producer
        public void request(long j) throws Throwable {
            long j2;
            long j3;
            if (j < 0) {
                return;
            }
            do {
                j2 = get();
                if (j2 == Long.MIN_VALUE) {
                    return;
                }
                if (j2 >= 0 && j == 0) {
                    return;
                }
                if (j2 == -4611686018427387904L) {
                    j3 = j;
                } else {
                    j3 = j2 + j;
                    if (j3 < 0) {
                        j3 = Long.MAX_VALUE;
                    }
                }
            } while (!compareAndSet(j2, j3));
            this.parent.m38822for();
        }

        @Override // rx.Subscription
        public void unsubscribe() throws Throwable {
            if (get() == Long.MIN_VALUE || getAndSet(Long.MIN_VALUE) == Long.MIN_VALUE) {
                return;
            }
            this.parent.m38825try(this);
            this.parent.m38822for();
        }
    }

    /* JADX INFO: Add missing generic type declarations: [R] */
    /* renamed from: rx.internal.operators.z0$if, reason: invalid class name */
    public static class Cif<R> implements Observable.OnSubscribe<R> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ boolean f35639do;

        /* renamed from: for, reason: not valid java name */
        public final /* synthetic */ Observable f35640for;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ Func1 f35641if;

        /* renamed from: rx.internal.operators.z0$if$do, reason: invalid class name */
        public class Cdo extends y22<R> {

            /* renamed from: do, reason: not valid java name */
            public final /* synthetic */ y22 f35642do;

            /* renamed from: if, reason: not valid java name */
            public final /* synthetic */ e f35644if;

            public Cdo(y22 y22Var, e eVar) {
                this.f35642do = y22Var;
                this.f35644if = eVar;
            }

            @Override // rx.Observer
            public void onCompleted() {
                this.f35644if.unsubscribe();
                this.f35642do.onCompleted();
            }

            @Override // rx.Observer
            public void onError(Throwable th) {
                this.f35644if.unsubscribe();
                this.f35642do.onError(th);
            }

            @Override // rx.Observer
            public void onNext(R r) {
                this.f35642do.onNext(r);
            }

            @Override // android.support.v4.y22, rx.observers.AssertableSubscriber
            public void setProducer(Producer producer) {
                this.f35642do.setProducer(producer);
            }
        }

        public Cif(boolean z, Func1 func1, Observable observable) {
            this.f35639do = z;
            this.f35641if = func1;
            this.f35640for = observable;
        }

        @Override // rx.functions.Action1
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void call(y22<? super R> y22Var) {
            e eVar = new e(Ctry.f35868new, this.f35639do);
            Cdo cdo = new Cdo(y22Var, eVar);
            y22Var.add(eVar);
            y22Var.add(cdo);
            ((Observable) this.f35641if.call(Observable.q5(eVar))).r5(cdo);
            this.f35640for.r5(eVar.subscriber());
        }
    }

    /* renamed from: rx.internal.operators.z0$new, reason: invalid class name */
    public static final class Cnew<T> extends y22<T> implements Subscription {

        /* renamed from: goto, reason: not valid java name */
        public static final Cfor[] f35645goto = new Cfor[0];

        /* renamed from: this, reason: not valid java name */
        public static final Cfor[] f35646this = new Cfor[0];

        /* renamed from: case, reason: not valid java name */
        public boolean f35647case;

        /* renamed from: do, reason: not valid java name */
        public final Queue<Object> f35648do;

        /* renamed from: else, reason: not valid java name */
        public boolean f35649else;

        /* renamed from: for, reason: not valid java name */
        public volatile Object f35650for;

        /* renamed from: if, reason: not valid java name */
        public final AtomicReference<Cnew<T>> f35651if;

        /* renamed from: new, reason: not valid java name */
        public final AtomicReference<Cfor[]> f35652new;

        /* renamed from: try, reason: not valid java name */
        public final AtomicBoolean f35653try;

        /* renamed from: rx.internal.operators.z0$new$do, reason: invalid class name */
        public class Cdo implements Action0 {
            public Cdo() {
            }

            @Override // rx.functions.Action0
            public void call() {
                Cnew.this.f35652new.getAndSet(Cnew.f35646this);
                Cnew<T> cnew = Cnew.this;
                cnew.f35651if.compareAndSet(cnew, null);
            }
        }

        public Cnew(AtomicReference<Cnew<T>> atomicReference) {
            this.f35648do = Cimplements.m38984case() ? new Cswitch<>(Ctry.f35868new) : new rx.internal.util.atomic.Cnew<>(Ctry.f35868new);
            this.f35652new = new AtomicReference<>(f35645goto);
            this.f35651if = atomicReference;
            this.f35653try = new AtomicBoolean();
        }

        /* renamed from: do, reason: not valid java name */
        public boolean m38821do(Cfor<T> cfor) {
            Cfor[] cforArr;
            Cfor[] cforArr2;
            Objects.requireNonNull(cfor);
            do {
                cforArr = this.f35652new.get();
                if (cforArr == f35646this) {
                    return false;
                }
                int length = cforArr.length;
                cforArr2 = new Cfor[length + 1];
                System.arraycopy(cforArr, 0, cforArr2, 0, length);
                cforArr2[length] = cfor;
            } while (!this.f35652new.compareAndSet(cforArr, cforArr2));
            return true;
        }

        /* renamed from: for, reason: not valid java name */
        public void m38822for() throws Throwable {
            boolean z;
            long j;
            synchronized (this) {
                if (this.f35647case) {
                    this.f35649else = true;
                    return;
                }
                this.f35647case = true;
                this.f35649else = false;
                while (true) {
                    try {
                        Object obj = this.f35650for;
                        boolean zIsEmpty = this.f35648do.isEmpty();
                        if (m38823if(obj, zIsEmpty)) {
                            return;
                        }
                        if (!zIsEmpty) {
                            Cfor[] cforArr = this.f35652new.get();
                            int length = cforArr.length;
                            long jMin = Long.MAX_VALUE;
                            int i = 0;
                            for (Cfor cfor : cforArr) {
                                long j2 = cfor.get();
                                if (j2 >= 0) {
                                    jMin = Math.min(jMin, j2);
                                } else if (j2 == Long.MIN_VALUE) {
                                    i++;
                                }
                            }
                            if (length != i) {
                                int i2 = 0;
                                while (true) {
                                    j = i2;
                                    if (j >= jMin) {
                                        break;
                                    }
                                    Object obj2 = this.f35650for;
                                    Object objPoll = this.f35648do.poll();
                                    boolean z2 = objPoll == null;
                                    if (m38823if(obj2, z2)) {
                                        return;
                                    }
                                    if (z2) {
                                        zIsEmpty = z2;
                                        break;
                                    }
                                    Object objM38691try = Creturn.m38691try(objPoll);
                                    for (Cfor cfor2 : cforArr) {
                                        if (cfor2.get() > 0) {
                                            try {
                                                cfor2.child.onNext(objM38691try);
                                                cfor2.produced(1L);
                                            } catch (Throwable th) {
                                                cfor2.unsubscribe();
                                                s80.m7300this(th, cfor2.child, objM38691try);
                                            }
                                        }
                                    }
                                    i2++;
                                    zIsEmpty = z2;
                                }
                                if (i2 > 0) {
                                    request(j);
                                }
                                if (jMin == 0 || zIsEmpty) {
                                }
                            } else if (m38823if(this.f35650for, this.f35648do.poll() == null)) {
                                return;
                            } else {
                                request(1L);
                            }
                        }
                        synchronized (this) {
                            try {
                                if (this.f35649else) {
                                    this.f35649else = false;
                                } else {
                                    this.f35647case = false;
                                    try {
                                        return;
                                    } catch (Throwable th2) {
                                        th = th2;
                                        z = true;
                                        while (true) {
                                            try {
                                                throw th;
                                            } catch (Throwable th3) {
                                                th = th3;
                                            }
                                        }
                                    }
                                }
                            } catch (Throwable th4) {
                                th = th4;
                                z = false;
                            }
                        }
                        try {
                            throw th;
                        } catch (Throwable th5) {
                            th = th5;
                            if (!z) {
                                synchronized (this) {
                                    this.f35647case = false;
                                }
                            }
                            throw th;
                        }
                    } catch (Throwable th6) {
                        th = th6;
                        z = false;
                    }
                }
            }
        }

        /* renamed from: if, reason: not valid java name */
        public boolean m38823if(Object obj, boolean z) {
            int i = 0;
            if (obj != null) {
                if (!Creturn.m38683case(obj)) {
                    Throwable thM38689new = Creturn.m38689new(obj);
                    this.f35651if.compareAndSet(this, null);
                    try {
                        Cfor[] andSet = this.f35652new.getAndSet(f35646this);
                        int length = andSet.length;
                        while (i < length) {
                            andSet[i].child.onError(thM38689new);
                            i++;
                        }
                        return true;
                    } finally {
                    }
                }
                if (z) {
                    this.f35651if.compareAndSet(this, null);
                    try {
                        Cfor[] andSet2 = this.f35652new.getAndSet(f35646this);
                        int length2 = andSet2.length;
                        while (i < length2) {
                            andSet2[i].child.onCompleted();
                            i++;
                        }
                        return true;
                    } finally {
                    }
                }
            }
            return false;
        }

        /* renamed from: new, reason: not valid java name */
        public void m38824new() {
            add(rx.subscriptions.Cfor.m39225do(new Cdo()));
        }

        @Override // rx.Observer
        public void onCompleted() throws Throwable {
            if (this.f35650for == null) {
                this.f35650for = Creturn.m38688if();
                m38822for();
            }
        }

        @Override // rx.Observer
        public void onError(Throwable th) throws Throwable {
            if (this.f35650for == null) {
                this.f35650for = Creturn.m38686for(th);
                m38822for();
            }
        }

        @Override // rx.Observer
        public void onNext(T t) throws Throwable {
            if (this.f35648do.offer(Creturn.m38682break(t))) {
                m38822for();
            } else {
                onError(new zz0());
            }
        }

        @Override // android.support.v4.y22
        public void onStart() {
            request(Ctry.f35868new);
        }

        /* renamed from: try, reason: not valid java name */
        public void m38825try(Cfor<T> cfor) {
            Cfor[] cforArr;
            Cfor[] cforArr2;
            do {
                cforArr = this.f35652new.get();
                if (cforArr == f35645goto || cforArr == f35646this) {
                    return;
                }
                int i = -1;
                int length = cforArr.length;
                int i2 = 0;
                while (true) {
                    if (i2 >= length) {
                        break;
                    }
                    if (cforArr[i2].equals(cfor)) {
                        i = i2;
                        break;
                    }
                    i2++;
                }
                if (i < 0) {
                    return;
                }
                if (length == 1) {
                    cforArr2 = f35645goto;
                } else {
                    Cfor[] cforArr3 = new Cfor[length - 1];
                    System.arraycopy(cforArr, 0, cforArr3, 0, i);
                    System.arraycopy(cforArr, i + 1, cforArr3, i, (length - i) - 1);
                    cforArr2 = cforArr3;
                }
            } while (!this.f35652new.compareAndSet(cforArr, cforArr2));
        }
    }

    private z0(Observable.OnSubscribe<T> onSubscribe, Observable<? extends T> observable, AtomicReference<Cnew<T>> atomicReference) {
        super(onSubscribe);
        this.f35637if = observable;
        this.f35636for = atomicReference;
    }

    public static <T, R> Observable<R> k6(Observable<? extends T> observable, Func1<? super Observable<T>, ? extends Observable<R>> func1) {
        return l6(observable, func1, false);
    }

    public static <T, R> Observable<R> l6(Observable<? extends T> observable, Func1<? super Observable<T>, ? extends Observable<R>> func1, boolean z) {
        return Observable.q5(new Cif(z, func1, observable));
    }

    public static <T> rx.observables.Cfor<T> m6(Observable<? extends T> observable) {
        AtomicReference atomicReference = new AtomicReference();
        return new z0(new Cdo(atomicReference), observable, atomicReference);
    }

    @Override // rx.observables.Cfor
    public void i6(Action1<? super Subscription> action1) {
        Cnew<T> cnew;
        while (true) {
            cnew = this.f35636for.get();
            if (cnew != null && !cnew.isUnsubscribed()) {
                break;
            }
            Cnew<T> cnew2 = new Cnew<>(this.f35636for);
            cnew2.m38824new();
            if (this.f35636for.compareAndSet(cnew, cnew2)) {
                cnew = cnew2;
                break;
            }
        }
        boolean z = !cnew.f35653try.get() && cnew.f35653try.compareAndSet(false, true);
        action1.call(cnew);
        if (z) {
            this.f35637if.r5(cnew);
        }
    }
}
