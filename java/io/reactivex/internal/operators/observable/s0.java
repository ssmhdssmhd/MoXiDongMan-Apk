package io.reactivex.internal.operators.observable;

import android.support.v4.jp1;
import android.support.v4.pq;
import android.support.v4.tw1;
import io.reactivex.Cnew;
import io.reactivex.Ctry;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;
import io.reactivex.internal.disposables.ResettableConnectable;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes3.dex */
public final class s0<T> extends Cnew<T> {

    /* renamed from: case, reason: not valid java name */
    public Cdo f26858case;

    /* renamed from: do, reason: not valid java name */
    public final pq<T> f26859do;

    /* renamed from: for, reason: not valid java name */
    public final long f26860for;

    /* renamed from: if, reason: not valid java name */
    public final int f26861if;

    /* renamed from: new, reason: not valid java name */
    public final TimeUnit f26862new;

    /* renamed from: try, reason: not valid java name */
    public final Ctry f26863try;

    /* renamed from: io.reactivex.internal.operators.observable.s0$do, reason: invalid class name */
    public static final class Cdo extends AtomicReference<Disposable> implements Runnable, Consumer<Disposable> {
        private static final long serialVersionUID = -4552101107598366241L;
        public boolean connected;
        public boolean disconnectedEarly;
        public final s0<?> parent;
        public long subscriberCount;
        public Disposable timer;

        public Cdo(s0<?> s0Var) {
            this.parent = s0Var;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.parent.m29609try(this);
        }

        @Override // io.reactivex.functions.Consumer
        public void accept(Disposable disposable) throws Exception {
            io.reactivex.internal.disposables.Cdo.replace(this, disposable);
            synchronized (this.parent) {
                if (this.disconnectedEarly) {
                    ((ResettableConnectable) this.parent.f26859do).resetIf(disposable);
                }
            }
        }
    }

    /* renamed from: io.reactivex.internal.operators.observable.s0$if, reason: invalid class name */
    public static final class Cif<T> extends AtomicBoolean implements Observer<T>, Disposable {
        private static final long serialVersionUID = -7419642935409022375L;
        public final Cdo connection;
        public final Observer<? super T> downstream;
        public final s0<T> parent;
        public Disposable upstream;

        public Cif(Observer<? super T> observer, s0<T> s0Var, Cdo cdo) {
            this.downstream = observer;
            this.parent = s0Var;
            this.connection = cdo;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.upstream.dispose();
            if (compareAndSet(false, true)) {
                this.parent.m29605do(this.connection);
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.upstream.isDisposed();
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            if (compareAndSet(false, true)) {
                this.parent.m29608new(this.connection);
                this.downstream.onComplete();
            }
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            if (!compareAndSet(false, true)) {
                jp1.l(th);
            } else {
                this.parent.m29608new(this.connection);
                this.downstream.onError(th);
            }
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            this.downstream.onNext(t);
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            if (io.reactivex.internal.disposables.Cdo.validate(this.upstream, disposable)) {
                this.upstream = disposable;
                this.downstream.onSubscribe(this);
            }
        }
    }

    public s0(pq<T> pqVar) {
        this(pqVar, 1, 0L, TimeUnit.NANOSECONDS, null);
    }

    /* renamed from: do, reason: not valid java name */
    public void m29605do(Cdo cdo) {
        synchronized (this) {
            Cdo cdo2 = this.f26858case;
            if (cdo2 != null && cdo2 == cdo) {
                long j = cdo.subscriberCount - 1;
                cdo.subscriberCount = j;
                if (j == 0 && cdo.connected) {
                    if (this.f26860for == 0) {
                        m29609try(cdo);
                        return;
                    }
                    tw1 tw1Var = new tw1();
                    cdo.timer = tw1Var;
                    tw1Var.replace(this.f26863try.mo29361try(cdo, this.f26860for, this.f26862new));
                }
            }
        }
    }

    /* renamed from: for, reason: not valid java name */
    public void m29606for(Cdo cdo) {
        pq<T> pqVar = this.f26859do;
        if (pqVar instanceof Disposable) {
            ((Disposable) pqVar).dispose();
        } else if (pqVar instanceof ResettableConnectable) {
            ((ResettableConnectable) pqVar).resetIf(cdo.get());
        }
    }

    /* renamed from: if, reason: not valid java name */
    public void m29607if(Cdo cdo) {
        Disposable disposable = cdo.timer;
        if (disposable != null) {
            disposable.dispose();
            cdo.timer = null;
        }
    }

    /* renamed from: new, reason: not valid java name */
    public void m29608new(Cdo cdo) {
        synchronized (this) {
            if (this.f26859do instanceof ObservablePublishClassic) {
                Cdo cdo2 = this.f26858case;
                if (cdo2 != null && cdo2 == cdo) {
                    this.f26858case = null;
                    m29607if(cdo);
                }
                long j = cdo.subscriberCount - 1;
                cdo.subscriberCount = j;
                if (j == 0) {
                    m29606for(cdo);
                }
            } else {
                Cdo cdo3 = this.f26858case;
                if (cdo3 != null && cdo3 == cdo) {
                    m29607if(cdo);
                    long j2 = cdo.subscriberCount - 1;
                    cdo.subscriberCount = j2;
                    if (j2 == 0) {
                        this.f26858case = null;
                        m29606for(cdo);
                    }
                }
            }
        }
    }

    @Override // io.reactivex.Cnew
    public void subscribeActual(Observer<? super T> observer) {
        Cdo cdo;
        boolean z;
        Disposable disposable;
        synchronized (this) {
            cdo = this.f26858case;
            if (cdo == null) {
                cdo = new Cdo(this);
                this.f26858case = cdo;
            }
            long j = cdo.subscriberCount;
            if (j == 0 && (disposable = cdo.timer) != null) {
                disposable.dispose();
            }
            long j2 = j + 1;
            cdo.subscriberCount = j2;
            z = true;
            if (cdo.connected || j2 != this.f26861if) {
                z = false;
            } else {
                cdo.connected = true;
            }
        }
        this.f26859do.subscribe(new Cif(observer, this, cdo));
        if (z) {
            this.f26859do.mo6179try(cdo);
        }
    }

    /* renamed from: try, reason: not valid java name */
    public void m29609try(Cdo cdo) {
        synchronized (this) {
            if (cdo.subscriberCount == 0 && cdo == this.f26858case) {
                this.f26858case = null;
                Disposable disposable = cdo.get();
                io.reactivex.internal.disposables.Cdo.dispose(cdo);
                pq<T> pqVar = this.f26859do;
                if (pqVar instanceof Disposable) {
                    ((Disposable) pqVar).dispose();
                } else if (pqVar instanceof ResettableConnectable) {
                    if (disposable == null) {
                        cdo.disconnectedEarly = true;
                    } else {
                        ((ResettableConnectable) pqVar).resetIf(disposable);
                    }
                }
            }
        }
    }

    public s0(pq<T> pqVar, int i, long j, TimeUnit timeUnit, Ctry ctry) {
        this.f26859do = pqVar;
        this.f26861if = i;
        this.f26860for = j;
        this.f26862new = timeUnit;
        this.f26863try = ctry;
    }
}
