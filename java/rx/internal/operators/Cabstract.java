package rx.internal.operators;

import android.support.v4.u6;
import android.support.v4.y22;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import rx.Observable;
import rx.Producer;
import rx.Subscription;

/* renamed from: rx.internal.operators.abstract, reason: invalid class name */
/* loaded from: classes4.dex */
public final class Cabstract<T> implements Observable.OnSubscribe<T> {

    /* renamed from: do, reason: not valid java name */
    public final Observable<T> f34497do;

    /* renamed from: rx.internal.operators.abstract$do, reason: invalid class name */
    public static final class Cdo<T> implements Producer, Subscription {

        /* renamed from: do, reason: not valid java name */
        public final Cif<T> f34498do;

        public Cdo(Cif<T> cif) {
            this.f34498do = cif;
        }

        @Override // rx.Subscription
        public boolean isUnsubscribed() {
            return this.f34498do.isUnsubscribed();
        }

        @Override // rx.Producer
        public void request(long j) {
            this.f34498do.m38406do(j);
        }

        @Override // rx.Subscription
        public void unsubscribe() {
            this.f34498do.m38407if();
        }
    }

    /* renamed from: rx.internal.operators.abstract$for, reason: invalid class name */
    public enum Cfor implements Producer {
        INSTANCE;

        @Override // rx.Producer
        public void request(long j) {
        }
    }

    /* renamed from: rx.internal.operators.abstract$if, reason: invalid class name */
    public static final class Cif<T> extends y22<T> {

        /* renamed from: do, reason: not valid java name */
        public final AtomicReference<y22<? super T>> f34500do;

        /* renamed from: if, reason: not valid java name */
        public final AtomicReference<Producer> f34502if = new AtomicReference<>();

        /* renamed from: for, reason: not valid java name */
        public final AtomicLong f34501for = new AtomicLong();

        public Cif(y22<? super T> y22Var) {
            this.f34500do = new AtomicReference<>(y22Var);
        }

        /* renamed from: do, reason: not valid java name */
        public void m38406do(long j) {
            if (j < 0) {
                throw new IllegalArgumentException("n >= 0 required but it was " + j);
            }
            Producer producer = this.f34502if.get();
            if (producer != null) {
                producer.request(j);
                return;
            }
            u6.m8259if(this.f34501for, j);
            Producer producer2 = this.f34502if.get();
            if (producer2 == null || producer2 == Cfor.INSTANCE) {
                return;
            }
            producer2.request(this.f34501for.getAndSet(0L));
        }

        /* renamed from: if, reason: not valid java name */
        public void m38407if() {
            this.f34502if.lazySet(Cfor.INSTANCE);
            this.f34500do.lazySet(null);
            unsubscribe();
        }

        @Override // rx.Observer
        public void onCompleted() {
            this.f34502if.lazySet(Cfor.INSTANCE);
            y22<? super T> andSet = this.f34500do.getAndSet(null);
            if (andSet != null) {
                andSet.onCompleted();
            }
        }

        @Override // rx.Observer
        public void onError(Throwable th) {
            this.f34502if.lazySet(Cfor.INSTANCE);
            y22<? super T> andSet = this.f34500do.getAndSet(null);
            if (andSet != null) {
                andSet.onError(th);
            } else {
                rx.plugins.Cif.m39151protected(th);
            }
        }

        @Override // rx.Observer
        public void onNext(T t) {
            y22<? super T> y22Var = this.f34500do.get();
            if (y22Var != null) {
                y22Var.onNext(t);
            }
        }

        @Override // android.support.v4.y22, rx.observers.AssertableSubscriber
        public void setProducer(Producer producer) {
            if (this.f34502if.compareAndSet(null, producer)) {
                producer.request(this.f34501for.getAndSet(0L));
            } else if (this.f34502if.get() != Cfor.INSTANCE) {
                throw new IllegalStateException("Producer already set!");
            }
        }
    }

    public Cabstract(Observable<T> observable) {
        this.f34497do = observable;
    }

    @Override // rx.functions.Action1
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public void call(y22<? super T> y22Var) {
        Cif cif = new Cif(y22Var);
        Cdo cdo = new Cdo(cif);
        y22Var.add(cdo);
        y22Var.setProducer(cdo);
        this.f34497do.r5(cif);
    }
}
