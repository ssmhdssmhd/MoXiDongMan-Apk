package rx.internal.operators;

import android.support.v4.dq;
import android.support.v4.s80;
import android.support.v4.y22;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import rx.Completable;
import rx.CompletableSubscriber;
import rx.Observable;
import rx.Subscription;
import rx.functions.Func1;
import rx.plugins.Cif;

/* renamed from: rx.internal.operators.volatile, reason: invalid class name */
/* loaded from: classes4.dex */
public final class Cvolatile<T> implements Observable.OnSubscribe<T> {

    /* renamed from: do, reason: not valid java name */
    public final Observable<T> f35508do;

    /* renamed from: for, reason: not valid java name */
    public final boolean f35509for;

    /* renamed from: if, reason: not valid java name */
    public final Func1<? super T, ? extends Completable> f35510if;

    /* renamed from: new, reason: not valid java name */
    public final int f35511new;

    /* renamed from: rx.internal.operators.volatile$do, reason: invalid class name */
    public static final class Cdo<T> extends y22<T> {

        /* renamed from: do, reason: not valid java name */
        public final y22<? super T> f35513do;

        /* renamed from: for, reason: not valid java name */
        public final boolean f35515for;

        /* renamed from: if, reason: not valid java name */
        public final Func1<? super T, ? extends Completable> f35516if;

        /* renamed from: new, reason: not valid java name */
        public final int f35517new;

        /* renamed from: try, reason: not valid java name */
        public final AtomicInteger f35518try = new AtomicInteger(1);

        /* renamed from: else, reason: not valid java name */
        public final AtomicReference<Throwable> f35514else = new AtomicReference<>();

        /* renamed from: case, reason: not valid java name */
        public final dq f35512case = new dq();

        /* renamed from: rx.internal.operators.volatile$do$do, reason: invalid class name and collision with other inner class name */
        public final class C0539do extends AtomicReference<Subscription> implements CompletableSubscriber, Subscription {
            private static final long serialVersionUID = -8588259593722659900L;

            public C0539do() {
            }

            @Override // rx.Subscription
            public boolean isUnsubscribed() {
                return get() == this;
            }

            @Override // rx.CompletableSubscriber
            public void onCompleted() {
                Cdo.this.m38775if(this);
            }

            @Override // rx.CompletableSubscriber
            public void onError(Throwable th) {
                Cdo.this.m38774for(this, th);
            }

            @Override // rx.CompletableSubscriber
            public void onSubscribe(Subscription subscription) {
                if (compareAndSet(null, subscription)) {
                    return;
                }
                subscription.unsubscribe();
                if (get() != this) {
                    Cif.m39151protected(new IllegalStateException("Subscription already set!"));
                }
            }

            @Override // rx.Subscription
            public void unsubscribe() {
                Subscription andSet = getAndSet(this);
                if (andSet == null || andSet == this) {
                    return;
                }
                andSet.unsubscribe();
            }
        }

        public Cdo(y22<? super T> y22Var, Func1<? super T, ? extends Completable> func1, boolean z, int i) {
            this.f35513do = y22Var;
            this.f35516if = func1;
            this.f35515for = z;
            this.f35517new = i;
            request(i != Integer.MAX_VALUE ? i : Long.MAX_VALUE);
        }

        /* renamed from: do, reason: not valid java name */
        public boolean m38773do() {
            if (this.f35518try.decrementAndGet() != 0) {
                return false;
            }
            Throwable thTerminate = rx.internal.util.Cdo.terminate(this.f35514else);
            if (thTerminate != null) {
                this.f35513do.onError(thTerminate);
                return true;
            }
            this.f35513do.onCompleted();
            return true;
        }

        /* renamed from: for, reason: not valid java name */
        public void m38774for(Cdo<T>.C0539do c0539do, Throwable th) {
            this.f35512case.m1492try(c0539do);
            if (this.f35515for) {
                rx.internal.util.Cdo.addThrowable(this.f35514else, th);
                if (m38773do() || this.f35517new == Integer.MAX_VALUE) {
                    return;
                }
                request(1L);
                return;
            }
            this.f35512case.unsubscribe();
            unsubscribe();
            if (this.f35514else.compareAndSet(null, th)) {
                this.f35513do.onError(rx.internal.util.Cdo.terminate(this.f35514else));
            } else {
                Cif.m39151protected(th);
            }
        }

        /* renamed from: if, reason: not valid java name */
        public void m38775if(Cdo<T>.C0539do c0539do) {
            this.f35512case.m1492try(c0539do);
            if (m38773do() || this.f35517new == Integer.MAX_VALUE) {
                return;
            }
            request(1L);
        }

        @Override // rx.Observer
        public void onCompleted() {
            m38773do();
        }

        @Override // rx.Observer
        public void onError(Throwable th) {
            if (this.f35515for) {
                rx.internal.util.Cdo.addThrowable(this.f35514else, th);
                onCompleted();
                return;
            }
            this.f35512case.unsubscribe();
            if (this.f35514else.compareAndSet(null, th)) {
                this.f35513do.onError(rx.internal.util.Cdo.terminate(this.f35514else));
            } else {
                Cif.m39151protected(th);
            }
        }

        @Override // rx.Observer
        public void onNext(T t) {
            try {
                Completable completableCall = this.f35516if.call(t);
                if (completableCall == null) {
                    throw new NullPointerException("The mapper returned a null Completable");
                }
                C0539do c0539do = new C0539do();
                this.f35512case.m1488do(c0539do);
                this.f35518try.getAndIncrement();
                completableCall.V(c0539do);
            } catch (Throwable th) {
                s80.m7301try(th);
                unsubscribe();
                onError(th);
            }
        }
    }

    public Cvolatile(Observable<T> observable, Func1<? super T, ? extends Completable> func1, boolean z, int i) {
        Objects.requireNonNull(func1, "mapper is null");
        if (i <= 0) {
            throw new IllegalArgumentException("maxConcurrency > 0 required but it was " + i);
        }
        this.f35508do = observable;
        this.f35510if = func1;
        this.f35509for = z;
        this.f35511new = i;
    }

    @Override // rx.functions.Action1
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public void call(y22<? super T> y22Var) {
        Cdo cdo = new Cdo(y22Var, this.f35510if, this.f35509for, this.f35511new);
        y22Var.add(cdo);
        y22Var.add(cdo.f35512case);
        this.f35508do.r5(cdo);
    }
}
