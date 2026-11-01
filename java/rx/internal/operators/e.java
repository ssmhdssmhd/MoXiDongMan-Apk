package rx.internal.operators;

import android.support.v4.u6;
import android.support.v4.y22;
import android.support.v4.zz0;
import java.util.Queue;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import rx.Observable;
import rx.Observer;
import rx.Producer;
import rx.Subscription;
import rx.internal.util.atomic.Cnew;
import rx.internal.util.unsafe.Cimplements;
import rx.internal.util.unsafe.Cswitch;

/* loaded from: classes4.dex */
public final class e<T> extends AtomicInteger implements Observable.OnSubscribe<T>, Observer<T>, Subscription {
    public static final Cif<?>[] EMPTY = new Cif[0];
    public static final Cif<?>[] TERMINATED = new Cif[0];
    private static final long serialVersionUID = -3741892510772238743L;
    public final boolean delayError;
    public volatile boolean done;
    public Throwable error;
    public final Cdo<T> parent;
    public final int prefetch;
    public volatile Producer producer;
    public final Queue<T> queue;
    public volatile Cif<T>[] subscribers;

    /* renamed from: rx.internal.operators.e$do, reason: invalid class name */
    public static final class Cdo<T> extends y22<T> {

        /* renamed from: do, reason: not valid java name */
        public final e<T> f34687do;

        public Cdo(e<T> eVar) {
            this.f34687do = eVar;
        }

        @Override // rx.Observer
        public void onCompleted() {
            this.f34687do.onCompleted();
        }

        @Override // rx.Observer
        public void onError(Throwable th) {
            this.f34687do.onError(th);
        }

        @Override // rx.Observer
        public void onNext(T t) {
            this.f34687do.onNext(t);
        }

        @Override // android.support.v4.y22, rx.observers.AssertableSubscriber
        public void setProducer(Producer producer) {
            this.f34687do.setProducer(producer);
        }
    }

    /* renamed from: rx.internal.operators.e$if, reason: invalid class name */
    public static final class Cif<T> extends AtomicLong implements Producer, Subscription {
        private static final long serialVersionUID = 960704844171597367L;
        public final y22<? super T> actual;
        public final AtomicBoolean once = new AtomicBoolean();
        public final e<T> parent;

        public Cif(y22<? super T> y22Var, e<T> eVar) {
            this.actual = y22Var;
            this.parent = eVar;
        }

        @Override // rx.Subscription
        public boolean isUnsubscribed() {
            return this.once.get();
        }

        @Override // rx.Producer
        public void request(long j) {
            if (j < 0) {
                throw new IllegalArgumentException("n >= 0 required but it was " + j);
            }
            if (j != 0) {
                u6.m8259if(this, j);
                this.parent.drain();
            }
        }

        @Override // rx.Subscription
        public void unsubscribe() {
            if (this.once.compareAndSet(false, true)) {
                this.parent.remove(this);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public e(int i, boolean z) {
        if (i <= 0) {
            throw new IllegalArgumentException("prefetch > 0 required but it was " + i);
        }
        this.prefetch = i;
        this.delayError = z;
        if (Cimplements.m38984case()) {
            this.queue = new Cswitch(i);
        } else {
            this.queue = new Cnew(i);
        }
        this.subscribers = (Cif<T>[]) EMPTY;
        this.parent = new Cdo<>(this);
    }

    public boolean add(Cif<T> cif) {
        Cif<T>[] cifArr = this.subscribers;
        Cif<?>[] cifArr2 = TERMINATED;
        if (cifArr == cifArr2) {
            return false;
        }
        synchronized (this) {
            Cif<T>[] cifArr3 = this.subscribers;
            if (cifArr3 == cifArr2) {
                return false;
            }
            int length = cifArr3.length;
            Cif<T>[] cifArr4 = new Cif[length + 1];
            System.arraycopy(cifArr3, 0, cifArr4, 0, length);
            cifArr4[length] = cif;
            this.subscribers = cifArr4;
            return true;
        }
    }

    public boolean checkTerminated(boolean z, boolean z2) {
        int i = 0;
        if (z) {
            if (!this.delayError) {
                Throwable th = this.error;
                if (th != null) {
                    this.queue.clear();
                    Cif<T>[] cifArrTerminate = terminate();
                    int length = cifArrTerminate.length;
                    while (i < length) {
                        cifArrTerminate[i].actual.onError(th);
                        i++;
                    }
                    return true;
                }
                if (z2) {
                    Cif<T>[] cifArrTerminate2 = terminate();
                    int length2 = cifArrTerminate2.length;
                    while (i < length2) {
                        cifArrTerminate2[i].actual.onCompleted();
                        i++;
                    }
                    return true;
                }
            } else if (z2) {
                Cif<T>[] cifArrTerminate3 = terminate();
                Throwable th2 = this.error;
                if (th2 != null) {
                    int length3 = cifArrTerminate3.length;
                    while (i < length3) {
                        cifArrTerminate3[i].actual.onError(th2);
                        i++;
                    }
                } else {
                    int length4 = cifArrTerminate3.length;
                    while (i < length4) {
                        cifArrTerminate3[i].actual.onCompleted();
                        i++;
                    }
                }
                return true;
            }
        }
        return false;
    }

    public void drain() {
        if (getAndIncrement() != 0) {
            return;
        }
        Queue<T> queue = this.queue;
        int iAddAndGet = 0;
        do {
            long jMin = Long.MAX_VALUE;
            Cif<T>[] cifArr = this.subscribers;
            int length = cifArr.length;
            for (Cif<T> cif : cifArr) {
                jMin = Math.min(jMin, cif.get());
            }
            if (length != 0) {
                long j = 0;
                while (j != jMin) {
                    boolean z = this.done;
                    T tPoll = queue.poll();
                    boolean z2 = tPoll == null;
                    if (checkTerminated(z, z2)) {
                        return;
                    }
                    if (z2) {
                        break;
                    }
                    for (Cif<T> cif2 : cifArr) {
                        cif2.actual.onNext(tPoll);
                    }
                    j++;
                }
                if (j == jMin && checkTerminated(this.done, queue.isEmpty())) {
                    return;
                }
                if (j != 0) {
                    Producer producer = this.producer;
                    if (producer != null) {
                        producer.request(j);
                    }
                    for (Cif<T> cif3 : cifArr) {
                        u6.m8261this(cif3, j);
                    }
                }
            }
            iAddAndGet = addAndGet(-iAddAndGet);
        } while (iAddAndGet != 0);
    }

    @Override // rx.Subscription
    public boolean isUnsubscribed() {
        return this.parent.isUnsubscribed();
    }

    @Override // rx.Observer
    public void onCompleted() {
        this.done = true;
        drain();
    }

    @Override // rx.Observer
    public void onError(Throwable th) {
        this.error = th;
        this.done = true;
        drain();
    }

    @Override // rx.Observer
    public void onNext(T t) {
        if (!this.queue.offer(t)) {
            this.parent.unsubscribe();
            this.error = new zz0("Queue full?!");
            this.done = true;
        }
        drain();
    }

    public void remove(Cif<T> cif) {
        Cif<?>[] cifArr;
        Cif[] cifArr2;
        Cif<T>[] cifArr3 = this.subscribers;
        Cif<?>[] cifArr4 = TERMINATED;
        if (cifArr3 == cifArr4 || cifArr3 == (cifArr = EMPTY)) {
            return;
        }
        synchronized (this) {
            Cif<T>[] cifArr5 = this.subscribers;
            if (cifArr5 != cifArr4 && cifArr5 != cifArr) {
                int i = -1;
                int length = cifArr5.length;
                int i2 = 0;
                while (true) {
                    if (i2 >= length) {
                        break;
                    }
                    if (cifArr5[i2] == cif) {
                        i = i2;
                        break;
                    }
                    i2++;
                }
                if (i < 0) {
                    return;
                }
                if (length == 1) {
                    cifArr2 = EMPTY;
                } else {
                    Cif[] cifArr6 = new Cif[length - 1];
                    System.arraycopy(cifArr5, 0, cifArr6, 0, i);
                    System.arraycopy(cifArr5, i + 1, cifArr6, i, (length - i) - 1);
                    cifArr2 = cifArr6;
                }
                this.subscribers = cifArr2;
            }
        }
    }

    public void setProducer(Producer producer) {
        this.producer = producer;
        producer.request(this.prefetch);
    }

    public y22<T> subscriber() {
        return this.parent;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Cif<T>[] terminate() {
        Cif<T>[] cifArr = this.subscribers;
        Cif<T>[] cifArr2 = (Cif<T>[]) TERMINATED;
        if (cifArr != cifArr2) {
            synchronized (this) {
                cifArr = this.subscribers;
                if (cifArr != cifArr2) {
                    this.subscribers = cifArr2;
                }
            }
        }
        return cifArr;
    }

    @Override // rx.Subscription
    public void unsubscribe() {
        this.parent.unsubscribe();
    }

    @Override // rx.functions.Action1
    public void call(y22<? super T> y22Var) {
        Cif<T> cif = new Cif<>(y22Var, this);
        y22Var.add(cif);
        y22Var.setProducer(cif);
        if (add(cif)) {
            if (cif.isUnsubscribed()) {
                remove(cif);
                return;
            } else {
                drain();
                return;
            }
        }
        Throwable th = this.error;
        if (th != null) {
            y22Var.onError(th);
        } else {
            y22Var.onCompleted();
        }
    }
}
