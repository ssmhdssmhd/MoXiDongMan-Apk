package rx.internal.operators;

import android.support.v4.ax1;
import android.support.v4.s80;
import android.support.v4.ww1;
import android.support.v4.y22;
import android.support.v4.zz0;
import java.util.Queue;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import rx.Observable;
import rx.Producer;
import rx.functions.Func1;
import rx.internal.util.Celse;
import rx.internal.util.unsafe.Cimplements;
import rx.internal.util.unsafe.Cswitch;

/* renamed from: rx.internal.operators.default, reason: invalid class name */
/* loaded from: classes4.dex */
public final class Cdefault<T, R> implements Observable.OnSubscribe<R> {

    /* renamed from: case, reason: not valid java name */
    public static final int f34659case = 1;

    /* renamed from: else, reason: not valid java name */
    public static final int f34660else = 2;

    /* renamed from: try, reason: not valid java name */
    public static final int f34661try = 0;

    /* renamed from: do, reason: not valid java name */
    public final Observable<? extends T> f34662do;

    /* renamed from: for, reason: not valid java name */
    public final int f34663for;

    /* renamed from: if, reason: not valid java name */
    public final Func1<? super T, ? extends Observable<? extends R>> f34664if;

    /* renamed from: new, reason: not valid java name */
    public final int f34665new;

    /* renamed from: rx.internal.operators.default$do, reason: invalid class name */
    public class Cdo implements Producer {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Cnew f34666do;

        public Cdo(Cnew cnew) {
            this.f34666do = cnew;
        }

        @Override // rx.Producer
        public void request(long j) {
            this.f34666do.m38457else(j);
        }
    }

    /* renamed from: rx.internal.operators.default$for, reason: invalid class name */
    public static final class Cfor<T, R> extends y22<R> {

        /* renamed from: do, reason: not valid java name */
        public final Cnew<T, R> f34668do;

        /* renamed from: if, reason: not valid java name */
        public long f34669if;

        public Cfor(Cnew<T, R> cnew) {
            this.f34668do = cnew;
        }

        @Override // rx.Observer
        public void onCompleted() {
            this.f34668do.m38458for(this.f34669if);
        }

        @Override // rx.Observer
        public void onError(Throwable th) {
            this.f34668do.m38460new(th, this.f34669if);
        }

        @Override // rx.Observer
        public void onNext(R r) {
            this.f34669if++;
            this.f34668do.m38461try(r);
        }

        @Override // android.support.v4.y22, rx.observers.AssertableSubscriber
        public void setProducer(Producer producer) {
            this.f34668do.f34680new.m38829for(producer);
        }
    }

    /* renamed from: rx.internal.operators.default$if, reason: invalid class name */
    public static final class Cif<T, R> implements Producer {

        /* renamed from: do, reason: not valid java name */
        public final R f34670do;

        /* renamed from: for, reason: not valid java name */
        public boolean f34671for;

        /* renamed from: if, reason: not valid java name */
        public final Cnew<T, R> f34672if;

        public Cif(R r, Cnew<T, R> cnew) {
            this.f34670do = r;
            this.f34672if = cnew;
        }

        @Override // rx.Producer
        public void request(long j) {
            if (this.f34671for || j <= 0) {
                return;
            }
            this.f34671for = true;
            Cnew<T, R> cnew = this.f34672if;
            cnew.m38461try(this.f34670do);
            cnew.m38458for(1L);
        }
    }

    /* renamed from: rx.internal.operators.default$new, reason: invalid class name */
    public static final class Cnew<T, R> extends y22<T> {

        /* renamed from: break, reason: not valid java name */
        public volatile boolean f34673break;

        /* renamed from: do, reason: not valid java name */
        public final y22<? super R> f34675do;

        /* renamed from: for, reason: not valid java name */
        public final int f34677for;

        /* renamed from: goto, reason: not valid java name */
        public final ww1 f34678goto;

        /* renamed from: if, reason: not valid java name */
        public final Func1<? super T, ? extends Observable<? extends R>> f34679if;

        /* renamed from: this, reason: not valid java name */
        public volatile boolean f34681this;

        /* renamed from: try, reason: not valid java name */
        public final Queue<Object> f34682try;

        /* renamed from: new, reason: not valid java name */
        public final rx.internal.producers.Cdo f34680new = new rx.internal.producers.Cdo();

        /* renamed from: case, reason: not valid java name */
        public final AtomicInteger f34674case = new AtomicInteger();

        /* renamed from: else, reason: not valid java name */
        public final AtomicReference<Throwable> f34676else = new AtomicReference<>();

        public Cnew(y22<? super R> y22Var, Func1<? super T, ? extends Observable<? extends R>> func1, int i, int i2) {
            this.f34675do = y22Var;
            this.f34679if = func1;
            this.f34677for = i2;
            this.f34682try = Cimplements.m38984case() ? new Cswitch<>(i) : new rx.internal.util.atomic.Cnew<>(i);
            this.f34678goto = new ww1();
            request(i);
        }

        /* renamed from: case, reason: not valid java name */
        public void m38455case(Throwable th) {
            rx.plugins.Cif.m39151protected(th);
        }

        /* renamed from: do, reason: not valid java name */
        public void m38456do() {
            if (this.f34674case.getAndIncrement() != 0) {
                return;
            }
            int i = this.f34677for;
            while (!this.f34675do.isUnsubscribed()) {
                if (!this.f34673break) {
                    if (i == 1 && this.f34676else.get() != null) {
                        Throwable thTerminate = rx.internal.util.Cdo.terminate(this.f34676else);
                        if (rx.internal.util.Cdo.isTerminated(thTerminate)) {
                            return;
                        }
                        this.f34675do.onError(thTerminate);
                        return;
                    }
                    boolean z = this.f34681this;
                    Object objPoll = this.f34682try.poll();
                    boolean z2 = objPoll == null;
                    if (z && z2) {
                        Throwable thTerminate2 = rx.internal.util.Cdo.terminate(this.f34676else);
                        if (thTerminate2 == null) {
                            this.f34675do.onCompleted();
                            return;
                        } else {
                            if (rx.internal.util.Cdo.isTerminated(thTerminate2)) {
                                return;
                            }
                            this.f34675do.onError(thTerminate2);
                            return;
                        }
                    }
                    if (!z2) {
                        try {
                            Observable<? extends R> observableCall = this.f34679if.call((Object) Creturn.m38691try(objPoll));
                            if (observableCall == null) {
                                m38459if(new NullPointerException("The source returned by the mapper was null"));
                                return;
                            }
                            if (observableCall != Observable.B0()) {
                                if (observableCall instanceof Celse) {
                                    this.f34673break = true;
                                    this.f34680new.m38829for(new Cif(((Celse) observableCall).g6(), this));
                                } else {
                                    Cfor cfor = new Cfor(this);
                                    this.f34678goto.m9298if(cfor);
                                    if (cfor.isUnsubscribed()) {
                                        return;
                                    }
                                    this.f34673break = true;
                                    observableCall.r5(cfor);
                                }
                                request(1L);
                            } else {
                                request(1L);
                            }
                        } catch (Throwable th) {
                            s80.m7301try(th);
                            m38459if(th);
                            return;
                        }
                    }
                }
                if (this.f34674case.decrementAndGet() == 0) {
                    return;
                }
            }
        }

        /* renamed from: else, reason: not valid java name */
        public void m38457else(long j) {
            if (j > 0) {
                this.f34680new.request(j);
            } else {
                if (j >= 0) {
                    return;
                }
                throw new IllegalArgumentException("n >= 0 required but it was " + j);
            }
        }

        /* renamed from: for, reason: not valid java name */
        public void m38458for(long j) {
            if (j != 0) {
                this.f34680new.m38830if(j);
            }
            this.f34673break = false;
            m38456do();
        }

        /* renamed from: if, reason: not valid java name */
        public void m38459if(Throwable th) {
            unsubscribe();
            if (!rx.internal.util.Cdo.addThrowable(this.f34676else, th)) {
                m38455case(th);
                return;
            }
            Throwable thTerminate = rx.internal.util.Cdo.terminate(this.f34676else);
            if (rx.internal.util.Cdo.isTerminated(thTerminate)) {
                return;
            }
            this.f34675do.onError(thTerminate);
        }

        /* renamed from: new, reason: not valid java name */
        public void m38460new(Throwable th, long j) {
            if (!rx.internal.util.Cdo.addThrowable(this.f34676else, th)) {
                m38455case(th);
                return;
            }
            if (this.f34677for == 0) {
                Throwable thTerminate = rx.internal.util.Cdo.terminate(this.f34676else);
                if (!rx.internal.util.Cdo.isTerminated(thTerminate)) {
                    this.f34675do.onError(thTerminate);
                }
                unsubscribe();
                return;
            }
            if (j != 0) {
                this.f34680new.m38830if(j);
            }
            this.f34673break = false;
            m38456do();
        }

        @Override // rx.Observer
        public void onCompleted() {
            this.f34681this = true;
            m38456do();
        }

        @Override // rx.Observer
        public void onError(Throwable th) {
            if (!rx.internal.util.Cdo.addThrowable(this.f34676else, th)) {
                m38455case(th);
                return;
            }
            this.f34681this = true;
            if (this.f34677for != 0) {
                m38456do();
                return;
            }
            Throwable thTerminate = rx.internal.util.Cdo.terminate(this.f34676else);
            if (!rx.internal.util.Cdo.isTerminated(thTerminate)) {
                this.f34675do.onError(thTerminate);
            }
            this.f34678goto.unsubscribe();
        }

        @Override // rx.Observer
        public void onNext(T t) {
            if (this.f34682try.offer(Creturn.m38682break(t))) {
                m38456do();
            } else {
                unsubscribe();
                onError(new zz0());
            }
        }

        /* renamed from: try, reason: not valid java name */
        public void m38461try(R r) {
            this.f34675do.onNext(r);
        }
    }

    public Cdefault(Observable<? extends T> observable, Func1<? super T, ? extends Observable<? extends R>> func1, int i, int i2) {
        this.f34662do = observable;
        this.f34664if = func1;
        this.f34663for = i;
        this.f34665new = i2;
    }

    @Override // rx.functions.Action1
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public void call(y22<? super R> y22Var) {
        Cnew cnew = new Cnew(this.f34665new == 0 ? new ax1<>(y22Var) : y22Var, this.f34664if, this.f34663for, this.f34665new);
        y22Var.add(cnew);
        y22Var.add(cnew.f34678goto);
        y22Var.setProducer(new Cdo(cnew));
        if (y22Var.isUnsubscribed()) {
            return;
        }
        this.f34662do.r5(cnew);
    }
}
