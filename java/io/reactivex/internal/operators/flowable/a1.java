package io.reactivex.internal.operators.flowable;

import android.support.v4.jp1;
import android.support.v4.oq;
import android.support.v4.tw1;
import io.reactivex.Cfor;
import io.reactivex.Ctry;
import io.reactivex.FlowableSubscriber;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;
import io.reactivex.internal.disposables.ResettableConnectable;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* loaded from: classes3.dex */
public final class a1<T> extends Cfor<T> {

    /* renamed from: case, reason: not valid java name */
    public final Ctry f25527case;

    /* renamed from: else, reason: not valid java name */
    public Cdo f25528else;

    /* renamed from: for, reason: not valid java name */
    public final int f25529for;

    /* renamed from: if, reason: not valid java name */
    public final oq<T> f25530if;

    /* renamed from: new, reason: not valid java name */
    public final long f25531new;

    /* renamed from: try, reason: not valid java name */
    public final TimeUnit f25532try;

    /* renamed from: io.reactivex.internal.operators.flowable.a1$do, reason: invalid class name */
    public static final class Cdo extends AtomicReference<Disposable> implements Runnable, Consumer<Disposable> {
        private static final long serialVersionUID = -4552101107598366241L;
        public boolean connected;
        public boolean disconnectedEarly;
        public final a1<?> parent;
        public long subscriberCount;
        public Disposable timer;

        public Cdo(a1<?> a1Var) {
            this.parent = a1Var;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.parent.P7(this);
        }

        @Override // io.reactivex.functions.Consumer
        public void accept(Disposable disposable) throws Exception {
            io.reactivex.internal.disposables.Cdo.replace(this, disposable);
            synchronized (this.parent) {
                if (this.disconnectedEarly) {
                    ((ResettableConnectable) this.parent.f25530if).resetIf(disposable);
                }
            }
        }
    }

    /* renamed from: io.reactivex.internal.operators.flowable.a1$if, reason: invalid class name */
    public static final class Cif<T> extends AtomicBoolean implements FlowableSubscriber<T>, Subscription {
        private static final long serialVersionUID = -7419642935409022375L;
        public final Cdo connection;
        public final Subscriber<? super T> downstream;
        public final a1<T> parent;
        public Subscription upstream;

        public Cif(Subscriber<? super T> subscriber, a1<T> a1Var, Cdo cdo) {
            this.downstream = subscriber;
            this.parent = a1Var;
            this.connection = cdo;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            this.upstream.cancel();
            if (compareAndSet(false, true)) {
                this.parent.L7(this.connection);
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (compareAndSet(false, true)) {
                this.parent.O7(this.connection);
                this.downstream.onComplete();
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (!compareAndSet(false, true)) {
                jp1.l(th);
            } else {
                this.parent.O7(this.connection);
                this.downstream.onError(th);
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            this.downstream.onNext(t);
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (io.reactivex.internal.subscriptions.Cfor.validate(this.upstream, subscription)) {
                this.upstream = subscription;
                this.downstream.onSubscribe(this);
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            this.upstream.request(j);
        }
    }

    public a1(oq<T> oqVar) {
        this(oqVar, 1, 0L, TimeUnit.NANOSECONDS, null);
    }

    public void L7(Cdo cdo) {
        synchronized (this) {
            Cdo cdo2 = this.f25528else;
            if (cdo2 != null && cdo2 == cdo) {
                long j = cdo.subscriberCount - 1;
                cdo.subscriberCount = j;
                if (j == 0 && cdo.connected) {
                    if (this.f25531new == 0) {
                        P7(cdo);
                        return;
                    }
                    tw1 tw1Var = new tw1();
                    cdo.timer = tw1Var;
                    tw1Var.replace(this.f25527case.mo29361try(cdo, this.f25531new, this.f25532try));
                }
            }
        }
    }

    public void M7(Cdo cdo) {
        Disposable disposable = cdo.timer;
        if (disposable != null) {
            disposable.dispose();
            cdo.timer = null;
        }
    }

    public void N7(Cdo cdo) {
        oq<T> oqVar = this.f25530if;
        if (oqVar instanceof Disposable) {
            ((Disposable) oqVar).dispose();
        } else if (oqVar instanceof ResettableConnectable) {
            ((ResettableConnectable) oqVar).resetIf(cdo.get());
        }
    }

    public void O7(Cdo cdo) {
        synchronized (this) {
            if (this.f25530if instanceof FlowablePublishClassic) {
                Cdo cdo2 = this.f25528else;
                if (cdo2 != null && cdo2 == cdo) {
                    this.f25528else = null;
                    M7(cdo);
                }
                long j = cdo.subscriberCount - 1;
                cdo.subscriberCount = j;
                if (j == 0) {
                    N7(cdo);
                }
            } else {
                Cdo cdo3 = this.f25528else;
                if (cdo3 != null && cdo3 == cdo) {
                    M7(cdo);
                    long j2 = cdo.subscriberCount - 1;
                    cdo.subscriberCount = j2;
                    if (j2 == 0) {
                        this.f25528else = null;
                        N7(cdo);
                    }
                }
            }
        }
    }

    public void P7(Cdo cdo) {
        synchronized (this) {
            if (cdo.subscriberCount == 0 && cdo == this.f25528else) {
                this.f25528else = null;
                Disposable disposable = cdo.get();
                io.reactivex.internal.disposables.Cdo.dispose(cdo);
                oq<T> oqVar = this.f25530if;
                if (oqVar instanceof Disposable) {
                    ((Disposable) oqVar).dispose();
                } else if (oqVar instanceof ResettableConnectable) {
                    if (disposable == null) {
                        cdo.disconnectedEarly = true;
                    } else {
                        ((ResettableConnectable) oqVar).resetIf(disposable);
                    }
                }
            }
        }
    }

    @Override // io.reactivex.Cfor
    public void n5(Subscriber<? super T> subscriber) {
        Cdo cdo;
        boolean z;
        Disposable disposable;
        synchronized (this) {
            cdo = this.f25528else;
            if (cdo == null) {
                cdo = new Cdo(this);
                this.f25528else = cdo;
            }
            long j = cdo.subscriberCount;
            if (j == 0 && (disposable = cdo.timer) != null) {
                disposable.dispose();
            }
            long j2 = j + 1;
            cdo.subscriberCount = j2;
            z = true;
            if (cdo.connected || j2 != this.f25529for) {
                z = false;
            } else {
                cdo.connected = true;
            }
        }
        this.f25530if.m5(new Cif(subscriber, this, cdo));
        if (z) {
            this.f25530if.P7(cdo);
        }
    }

    public a1(oq<T> oqVar, int i, long j, TimeUnit timeUnit, Ctry ctry) {
        this.f25530if = oqVar;
        this.f25529for = i;
        this.f25531new = j;
        this.f25532try = timeUnit;
        this.f25527case = ctry;
    }
}
