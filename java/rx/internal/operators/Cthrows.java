package rx.internal.operators;

import android.support.v4.d12;
import android.support.v4.u6;
import android.support.v4.y22;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Queue;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import rx.Observable;
import rx.Producer;
import rx.Subscription;
import rx.functions.FuncN;
import rx.internal.util.Ctry;

/* renamed from: rx.internal.operators.throws, reason: invalid class name */
/* loaded from: classes4.dex */
public final class Cthrows<T, R> implements Observable.OnSubscribe<R> {

    /* renamed from: do, reason: not valid java name */
    public final Observable<? extends T>[] f35432do;

    /* renamed from: for, reason: not valid java name */
    public final FuncN<? extends R> f35433for;

    /* renamed from: if, reason: not valid java name */
    public final Iterable<? extends Observable<? extends T>> f35434if;

    /* renamed from: new, reason: not valid java name */
    public final int f35435new;

    /* renamed from: try, reason: not valid java name */
    public final boolean f35436try;

    /* renamed from: rx.internal.operators.throws$do, reason: invalid class name */
    public static final class Cdo<T, R> extends y22<T> {

        /* renamed from: do, reason: not valid java name */
        public final Cif<T, R> f35437do;

        /* renamed from: for, reason: not valid java name */
        public boolean f35438for;

        /* renamed from: if, reason: not valid java name */
        public final int f35439if;

        public Cdo(Cif<T, R> cif, int i) {
            this.f35437do = cif;
            this.f35439if = i;
            request(cif.bufferSize);
        }

        /* renamed from: do, reason: not valid java name */
        public void m38752do(long j) {
            request(j);
        }

        @Override // rx.Observer
        public void onCompleted() {
            if (this.f35438for) {
                return;
            }
            this.f35438for = true;
            this.f35437do.combine(null, this.f35439if);
        }

        @Override // rx.Observer
        public void onError(Throwable th) {
            if (this.f35438for) {
                rx.plugins.Cif.m39151protected(th);
                return;
            }
            this.f35437do.onError(th);
            this.f35438for = true;
            this.f35437do.combine(null, this.f35439if);
        }

        @Override // rx.Observer
        public void onNext(T t) {
            if (this.f35438for) {
                return;
            }
            this.f35437do.combine(Creturn.m38682break(t), this.f35439if);
        }
    }

    /* renamed from: rx.internal.operators.throws$if, reason: invalid class name */
    public static final class Cif<T, R> extends AtomicInteger implements Producer, Subscription {
        public static final Object MISSING = new Object();
        private static final long serialVersionUID = 8567835998786448817L;
        public int active;
        public final y22<? super R> actual;
        public final int bufferSize;
        public volatile boolean cancelled;
        public final FuncN<? extends R> combiner;
        public int complete;
        public final boolean delayError;
        public volatile boolean done;
        public final AtomicReference<Throwable> error;
        public final Object[] latest;
        public final d12<Object> queue;
        public final AtomicLong requested;
        public final Cdo<T, R>[] subscribers;

        public Cif(y22<? super R> y22Var, FuncN<? extends R> funcN, int i, int i2, boolean z) {
            this.actual = y22Var;
            this.combiner = funcN;
            this.bufferSize = i2;
            this.delayError = z;
            Object[] objArr = new Object[i];
            this.latest = objArr;
            Arrays.fill(objArr, MISSING);
            this.subscribers = new Cdo[i];
            this.queue = new d12<>(i2);
            this.requested = new AtomicLong();
            this.error = new AtomicReference<>();
        }

        public void cancel(Queue<?> queue) {
            queue.clear();
            for (Cdo<T, R> cdo : this.subscribers) {
                cdo.unsubscribe();
            }
        }

        public boolean checkTerminated(boolean z, boolean z2, y22<?> y22Var, Queue<?> queue, boolean z3) {
            if (this.cancelled) {
                cancel(queue);
                return true;
            }
            if (!z) {
                return false;
            }
            if (z3) {
                if (!z2) {
                    return false;
                }
                Throwable th = this.error.get();
                if (th != null) {
                    y22Var.onError(th);
                } else {
                    y22Var.onCompleted();
                }
                return true;
            }
            Throwable th2 = this.error.get();
            if (th2 != null) {
                cancel(queue);
                y22Var.onError(th2);
                return true;
            }
            if (!z2) {
                return false;
            }
            y22Var.onCompleted();
            return true;
        }

        public void combine(Object obj, int i) {
            boolean z;
            Cdo<T, R> cdo = this.subscribers[i];
            synchronized (this) {
                Object[] objArr = this.latest;
                int length = objArr.length;
                Object obj2 = objArr[i];
                int i2 = this.active;
                Object obj3 = MISSING;
                if (obj2 == obj3) {
                    i2++;
                    this.active = i2;
                }
                int i3 = this.complete;
                if (obj == null) {
                    i3++;
                    this.complete = i3;
                } else {
                    objArr[i] = Creturn.m38691try(obj);
                }
                boolean z2 = false;
                z = i2 == length;
                if (i3 == length || (obj == null && obj2 == obj3)) {
                    z2 = true;
                }
                if (z2) {
                    this.done = true;
                } else if (obj != null && z) {
                    this.queue.m1118class(cdo, this.latest.clone());
                } else if (obj == null && this.error.get() != null && (obj2 == obj3 || !this.delayError)) {
                    this.done = true;
                }
            }
            if (z || obj == null) {
                drain();
            } else {
                cdo.m38752do(1L);
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:32:0x0093, code lost:
        
            if (r3 == 0) goto L36;
         */
        /* JADX WARN: Code restructure failed: missing block: B:34:0x009c, code lost:
        
            if (r13 == Long.MAX_VALUE) goto L36;
         */
        /* JADX WARN: Code restructure failed: missing block: B:35:0x009e, code lost:
        
            android.support.v4.u6.m8261this(r10, r3);
         */
        /* JADX WARN: Code restructure failed: missing block: B:36:0x00a1, code lost:
        
            r12 = addAndGet(-r12);
         */
        /* JADX WARN: Code restructure failed: missing block: B:37:0x00a6, code lost:
        
            if (r12 != 0) goto L45;
         */
        /* JADX WARN: Code restructure failed: missing block: B:38:0x00a8, code lost:
        
            return;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void drain() {
            long j;
            if (getAndIncrement() != 0) {
                return;
            }
            d12<Object> d12Var = this.queue;
            y22<? super R> y22Var = this.actual;
            boolean z = this.delayError;
            AtomicLong atomicLong = this.requested;
            int iAddAndGet = 1;
            while (!checkTerminated(this.done, d12Var.isEmpty(), y22Var, d12Var, z)) {
                long j2 = atomicLong.get();
                long j3 = 0;
                while (true) {
                    if (j3 == j2) {
                        j = j3;
                        break;
                    }
                    boolean z2 = this.done;
                    Cdo cdo = (Cdo) d12Var.peek();
                    boolean z3 = cdo == null;
                    long j4 = j3;
                    if (checkTerminated(z2, z3, y22Var, d12Var, z)) {
                        return;
                    }
                    if (z3) {
                        j = j4;
                        break;
                    }
                    d12Var.poll();
                    Object[] objArr = (Object[]) d12Var.poll();
                    if (objArr == null) {
                        this.cancelled = true;
                        cancel(d12Var);
                        y22Var.onError(new IllegalStateException("Broken queue?! Sender received but not the array."));
                        return;
                    }
                    try {
                        y22Var.onNext(this.combiner.call(objArr));
                        cdo.m38752do(1L);
                        j3 = j4 + 1;
                    } catch (Throwable th) {
                        this.cancelled = true;
                        cancel(d12Var);
                        y22Var.onError(th);
                        return;
                    }
                }
            }
        }

        @Override // rx.Subscription
        public boolean isUnsubscribed() {
            return this.cancelled;
        }

        public void onError(Throwable th) {
            Throwable th2;
            Throwable cdo;
            AtomicReference<Throwable> atomicReference = this.error;
            do {
                th2 = atomicReference.get();
                if (th2 == null) {
                    cdo = th;
                } else if (th2 instanceof rx.exceptions.Cdo) {
                    ArrayList arrayList = new ArrayList(((rx.exceptions.Cdo) th2).getExceptions());
                    arrayList.add(th);
                    cdo = new rx.exceptions.Cdo(arrayList);
                } else {
                    cdo = new rx.exceptions.Cdo(Arrays.asList(th2, th));
                }
            } while (!atomicReference.compareAndSet(th2, cdo));
        }

        @Override // rx.Producer
        public void request(long j) {
            if (j < 0) {
                throw new IllegalArgumentException("n >= required but it was " + j);
            }
            if (j != 0) {
                u6.m8259if(this.requested, j);
                drain();
            }
        }

        public void subscribe(Observable<? extends T>[] observableArr) {
            Cdo<T, R>[] cdoArr = this.subscribers;
            int length = cdoArr.length;
            for (int i = 0; i < length; i++) {
                cdoArr[i] = new Cdo<>(this, i);
            }
            lazySet(0);
            this.actual.add(this);
            this.actual.setProducer(this);
            for (int i2 = 0; i2 < length && !this.cancelled; i2++) {
                observableArr[i2].Y3(cdoArr[i2]);
            }
        }

        @Override // rx.Subscription
        public void unsubscribe() {
            if (this.cancelled) {
                return;
            }
            this.cancelled = true;
            if (getAndIncrement() == 0) {
                cancel(this.queue);
            }
        }
    }

    public Cthrows(Iterable<? extends Observable<? extends T>> iterable, FuncN<? extends R> funcN) {
        this(null, iterable, funcN, Ctry.f35868new, false);
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0049  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x004d  */
    @Override // rx.functions.Action1
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void call(y22<? super R> y22Var) {
        int length;
        int i;
        Observable<? extends T>[] observableArr = this.f35432do;
        if (observableArr == null) {
            Iterable<? extends Observable<? extends T>> iterable = this.f35434if;
            if (!(iterable instanceof List)) {
                Observable<? extends T>[] observableArr2 = new Observable[8];
                int i2 = 0;
                for (Observable<? extends T> observable : iterable) {
                    if (i2 == observableArr2.length) {
                        Observable<? extends T>[] observableArr3 = new Observable[(i2 >> 2) + i2];
                        System.arraycopy(observableArr2, 0, observableArr3, 0, i2);
                        observableArr2 = observableArr3;
                    }
                    observableArr2[i2] = observable;
                    i2++;
                }
                observableArr = observableArr2;
                i = i2;
                if (i != 0) {
                    y22Var.onCompleted();
                    return;
                } else {
                    new Cif(y22Var, this.f35433for, i, this.f35435new, this.f35436try).subscribe(observableArr);
                    return;
                }
            }
            List list = (List) iterable;
            observableArr = (Observable[]) list.toArray(new Observable[list.size()]);
            length = observableArr.length;
        } else {
            length = observableArr.length;
        }
        i = length;
        if (i != 0) {
        }
    }

    public Cthrows(Observable<? extends T>[] observableArr, Iterable<? extends Observable<? extends T>> iterable, FuncN<? extends R> funcN, int i, boolean z) {
        this.f35432do = observableArr;
        this.f35434if = iterable;
        this.f35433for = funcN;
        this.f35435new = i;
        this.f35436try = z;
    }
}
