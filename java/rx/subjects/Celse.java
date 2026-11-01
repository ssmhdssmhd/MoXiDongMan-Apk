package rx.subjects;

import android.R;
import android.support.v4.f12;
import android.support.v4.s80;
import android.support.v4.u22;
import android.support.v4.u6;
import android.support.v4.y22;
import java.util.Queue;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import rx.Observable;
import rx.Observer;
import rx.Producer;
import rx.Subscription;
import rx.exceptions.Cif;
import rx.functions.Action0;
import rx.internal.operators.Creturn;
import rx.internal.util.atomic.Ctry;
import rx.internal.util.unsafe.Cabstract;
import rx.internal.util.unsafe.Ccontinue;
import rx.internal.util.unsafe.Cimplements;

/* renamed from: rx.subjects.else, reason: invalid class name */
/* loaded from: classes4.dex */
public final class Celse<T> extends u22<T, T> {

    /* renamed from: if, reason: not valid java name */
    public final Cdo<T> f36205if;

    /* renamed from: rx.subjects.else$do, reason: invalid class name */
    public static final class Cdo<T> extends AtomicLong implements Producer, Observer<T>, Observable.OnSubscribe<T>, Subscription {
        private static final long serialVersionUID = -9044104859202255786L;
        public volatile boolean caughtUp;
        public final boolean delayError;
        public volatile boolean done;
        public boolean emitting;
        public Throwable error;
        public boolean missed;
        public final Queue<Object> queue;
        public final AtomicReference<y22<? super T>> subscriber = new AtomicReference<>();
        public final AtomicReference<Action0> terminateOnce;

        public Cdo(int i, boolean z, Action0 action0) {
            Queue<Object> cabstract;
            this.terminateOnce = action0 != null ? new AtomicReference<>(action0) : null;
            this.delayError = z;
            if (i > 1) {
                cabstract = Cimplements.m38984case() ? new Ccontinue<>(i) : new f12<>(i);
            } else {
                cabstract = Cimplements.m38984case() ? new Cabstract<>() : new Ctry<>();
            }
            this.queue = cabstract;
        }

        public boolean checkTerminated(boolean z, boolean z2, boolean z3, y22<? super T> y22Var) {
            if (y22Var.isUnsubscribed()) {
                this.queue.clear();
                return true;
            }
            if (!z) {
                return false;
            }
            Throwable th = this.error;
            if (th != null && !z3) {
                this.queue.clear();
                y22Var.onError(th);
                return true;
            }
            if (!z2) {
                return false;
            }
            if (th != null) {
                y22Var.onError(th);
            } else {
                y22Var.onCompleted();
            }
            return true;
        }

        public void doTerminate() {
            Action0 action0;
            AtomicReference<Action0> atomicReference = this.terminateOnce;
            if (atomicReference == null || (action0 = atomicReference.get()) == null || !atomicReference.compareAndSet(action0, null)) {
                return;
            }
            action0.call();
        }

        @Override // rx.Subscription
        public boolean isUnsubscribed() {
            return this.done;
        }

        @Override // rx.Observer
        public void onCompleted() {
            if (this.done) {
                return;
            }
            doTerminate();
            boolean z = true;
            this.done = true;
            if (!this.caughtUp) {
                synchronized (this) {
                    if (this.caughtUp) {
                        z = false;
                    }
                }
                if (z) {
                    replay();
                    return;
                }
            }
            this.subscriber.get().onCompleted();
        }

        @Override // rx.Observer
        public void onError(Throwable th) {
            if (this.done) {
                return;
            }
            doTerminate();
            this.error = th;
            boolean z = true;
            this.done = true;
            if (!this.caughtUp) {
                synchronized (this) {
                    if (this.caughtUp) {
                        z = false;
                    }
                }
                if (z) {
                    replay();
                    return;
                }
            }
            this.subscriber.get().onError(th);
        }

        @Override // rx.Observer
        public void onNext(T t) {
            if (this.done) {
                return;
            }
            if (!this.caughtUp) {
                boolean z = false;
                synchronized (this) {
                    if (!this.caughtUp) {
                        this.queue.offer(Creturn.m38682break(t));
                        z = true;
                    }
                }
                if (z) {
                    replay();
                    return;
                }
            }
            y22<? super T> y22Var = this.subscriber.get();
            try {
                y22Var.onNext(t);
            } catch (Throwable th) {
                s80.m7300this(th, y22Var, t);
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:46:0x0081, code lost:
        
            if (r7 == false) goto L50;
         */
        /* JADX WARN: Code restructure failed: missing block: B:48:0x0087, code lost:
        
            if (r0.isEmpty() == false) goto L50;
         */
        /* JADX WARN: Code restructure failed: missing block: B:49:0x0089, code lost:
        
            r15.caughtUp = true;
         */
        /* JADX WARN: Code restructure failed: missing block: B:50:0x008b, code lost:
        
            r15.emitting = false;
         */
        /* JADX WARN: Code restructure failed: missing block: B:52:0x008e, code lost:
        
            return;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void replay() {
            boolean z;
            synchronized (this) {
                if (this.emitting) {
                    this.missed = true;
                    return;
                }
                this.emitting = true;
                Queue<Object> queue = this.queue;
                boolean z2 = this.delayError;
                while (true) {
                    y22<? super T> y22Var = this.subscriber.get();
                    if (y22Var == null) {
                        z = false;
                    } else {
                        if (checkTerminated(this.done, queue.isEmpty(), z2, y22Var)) {
                            return;
                        }
                        long j = get();
                        z = j == Long.MAX_VALUE;
                        long j2 = 0;
                        while (j != 0) {
                            boolean z3 = this.done;
                            Object objPoll = queue.poll();
                            boolean z4 = objPoll == null;
                            if (checkTerminated(z3, z4, z2, y22Var)) {
                                return;
                            }
                            if (z4) {
                                break;
                            }
                            R.attr attrVar = (Object) Creturn.m38691try(objPoll);
                            try {
                                y22Var.onNext(attrVar);
                                j--;
                                j2++;
                            } catch (Throwable th) {
                                queue.clear();
                                s80.m7301try(th);
                                y22Var.onError(Cif.addValueAsLastCause(th, attrVar));
                                return;
                            }
                        }
                        if (!z && j2 != 0) {
                            addAndGet(-j2);
                        }
                    }
                    synchronized (this) {
                        if (!this.missed) {
                            break;
                        } else {
                            this.missed = false;
                        }
                    }
                }
            }
        }

        @Override // rx.Producer
        public void request(long j) {
            if (j < 0) {
                throw new IllegalArgumentException("n >= 0 required");
            }
            if (j > 0) {
                u6.m8259if(this, j);
                replay();
            } else if (this.done) {
                replay();
            }
        }

        @Override // rx.Subscription
        public void unsubscribe() {
            doTerminate();
            this.done = true;
            synchronized (this) {
                if (this.emitting) {
                    return;
                }
                this.emitting = true;
                this.queue.clear();
            }
        }

        @Override // rx.functions.Action1
        public void call(y22<? super T> y22Var) {
            if (!this.subscriber.compareAndSet(null, y22Var)) {
                y22Var.onError(new IllegalStateException("Only a single subscriber is allowed"));
            } else {
                y22Var.add(this);
                y22Var.setProducer(this);
            }
        }
    }

    private Celse(Cdo<T> cdo) {
        super(cdo);
        this.f36205if = cdo;
    }

    public static <T> Celse<T> g6() {
        return h6(16);
    }

    public static <T> Celse<T> h6(int i) {
        return new Celse<>(new Cdo(i, false, null));
    }

    public static <T> Celse<T> i6(int i, Action0 action0) {
        return new Celse<>(new Cdo(i, false, action0));
    }

    public static <T> Celse<T> j6(int i, Action0 action0, boolean z) {
        return new Celse<>(new Cdo(i, z, action0));
    }

    public static <T> Celse<T> k6(boolean z) {
        return new Celse<>(new Cdo(16, z, null));
    }

    @Override // android.support.v4.u22
    public boolean e6() {
        return this.f36205if.subscriber.get() != null;
    }

    @Override // rx.Observer
    public void onCompleted() {
        this.f36205if.onCompleted();
    }

    @Override // rx.Observer
    public void onError(Throwable th) {
        this.f36205if.onError(th);
    }

    @Override // rx.Observer
    public void onNext(T t) {
        this.f36205if.onNext(t);
    }
}
