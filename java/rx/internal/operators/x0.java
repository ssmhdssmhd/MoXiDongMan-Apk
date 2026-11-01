package rx.internal.operators;

import android.support.v4.y22;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import rx.Observable;
import rx.Observer;
import rx.Producer;
import rx.Subscription;

/* loaded from: classes4.dex */
public final class x0<T> implements Observable.Operator<T, T> {

    /* renamed from: rx.internal.operators.x0$do, reason: invalid class name */
    public static final class Cdo {

        /* renamed from: do, reason: not valid java name */
        public static final x0<Object> f35563do = new x0<>();
    }

    /* renamed from: rx.internal.operators.x0$for, reason: invalid class name */
    public static final class Cfor<T> extends y22<T> {

        /* renamed from: do, reason: not valid java name */
        private final Cif<T> f35564do;

        public Cfor(Cif<T> cif) {
            this.f35564do = cif;
        }

        /* renamed from: do, reason: not valid java name */
        public void m38789do(long j) {
            request(j);
        }

        @Override // rx.Observer
        public void onCompleted() throws Throwable {
            this.f35564do.onCompleted();
        }

        @Override // rx.Observer
        public void onError(Throwable th) throws Throwable {
            this.f35564do.onError(th);
        }

        @Override // rx.Observer
        public void onNext(T t) throws Throwable {
            this.f35564do.onNext(t);
        }

        @Override // android.support.v4.y22
        public void onStart() {
            request(0L);
        }
    }

    /* renamed from: rx.internal.operators.x0$if, reason: invalid class name */
    public static final class Cif<T> extends AtomicLong implements Producer, Subscription, Observer<T> {
        public static final Object EMPTY = new Object();
        public static final long NOT_REQUESTED = -4611686018427387904L;
        private static final long serialVersionUID = -1364393685005146274L;
        public final y22<? super T> child;
        public volatile boolean done;
        public boolean emitting;
        public boolean missed;
        public Cfor<? super T> parent;
        public Throwable terminal;
        public final AtomicReference<Object> value = new AtomicReference<>(EMPTY);

        public Cif(y22<? super T> y22Var) {
            this.child = y22Var;
            lazySet(-4611686018427387904L);
        }

        public void emit() throws Throwable {
            boolean z;
            Object obj;
            synchronized (this) {
                boolean z2 = true;
                if (this.emitting) {
                    this.missed = true;
                    return;
                }
                this.emitting = true;
                this.missed = false;
                while (true) {
                    try {
                        long j = get();
                        if (j == Long.MIN_VALUE) {
                            return;
                        }
                        Object obj2 = this.value.get();
                        if (j > 0 && obj2 != (obj = EMPTY)) {
                            this.child.onNext(obj2);
                            this.value.compareAndSet(obj2, obj);
                            produced(1L);
                            obj2 = obj;
                        }
                        if (obj2 == EMPTY && this.done) {
                            Throwable th = this.terminal;
                            if (th != null) {
                                this.child.onError(th);
                            } else {
                                this.child.onCompleted();
                            }
                        }
                        try {
                            synchronized (this) {
                                try {
                                    if (!this.missed) {
                                        this.emitting = false;
                                        return;
                                    }
                                    this.missed = false;
                                } catch (Throwable th2) {
                                    th = th2;
                                    z2 = false;
                                }
                            }
                        } catch (Throwable th3) {
                            th = th3;
                        }
                        try {
                            throw th;
                        } catch (Throwable th4) {
                            z = z2;
                            th = th4;
                            if (!z) {
                                synchronized (this) {
                                    this.emitting = false;
                                }
                            }
                            throw th;
                        }
                    } catch (Throwable th5) {
                        th = th5;
                        z = false;
                    }
                }
            }
        }

        @Override // rx.Subscription
        public boolean isUnsubscribed() {
            return get() == Long.MIN_VALUE;
        }

        @Override // rx.Observer
        public void onCompleted() throws Throwable {
            this.done = true;
            emit();
        }

        @Override // rx.Observer
        public void onError(Throwable th) throws Throwable {
            this.terminal = th;
            this.done = true;
            emit();
        }

        @Override // rx.Observer
        public void onNext(T t) throws Throwable {
            this.value.lazySet(t);
            emit();
        }

        public long produced(long j) {
            long j2;
            long j3;
            do {
                j2 = get();
                if (j2 < 0) {
                    return j2;
                }
                j3 = j2 - j;
            } while (!compareAndSet(j2, j3));
            return j3;
        }

        @Override // rx.Producer
        public void request(long j) throws Throwable {
            long j2;
            long j3;
            if (j >= 0) {
                do {
                    j2 = get();
                    if (j2 == Long.MIN_VALUE) {
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
                if (j2 == -4611686018427387904L) {
                    this.parent.m38789do(Long.MAX_VALUE);
                }
                emit();
            }
        }

        @Override // rx.Subscription
        public void unsubscribe() {
            if (get() >= 0) {
                getAndSet(Long.MIN_VALUE);
            }
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static <T> x0<T> m38787if() {
        return (x0<T>) Cdo.f35563do;
    }

    @Override // rx.functions.Func1
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public y22<? super T> call(y22<? super T> y22Var) {
        Cif cif = new Cif(y22Var);
        Cfor<? super T> cfor = new Cfor<>(cif);
        cif.parent = cfor;
        y22Var.add(cfor);
        y22Var.add(cif);
        y22Var.setProducer(cif);
        return cfor;
    }
}
