package rx.internal.util;

import android.support.v4.s80;
import android.support.v4.y22;
import android.support.v4.yz1;
import freemarker.core.b2;
import java.util.concurrent.atomic.AtomicBoolean;
import rx.Cif;
import rx.Observable;
import rx.Producer;
import rx.Subscription;
import rx.functions.Action0;
import rx.functions.Func1;

/* renamed from: rx.internal.util.else, reason: invalid class name */
/* loaded from: classes4.dex */
public final class Celse<T> extends Observable<T> {

    /* renamed from: for, reason: not valid java name */
    public static final boolean f35802for = Boolean.valueOf(System.getProperty("rx.just.strong-mode", b2.f23510do)).booleanValue();

    /* renamed from: if, reason: not valid java name */
    public final T f35803if;

    /* renamed from: rx.internal.util.else$case, reason: invalid class name */
    public static final class Ccase<T> extends AtomicBoolean implements Producer, Action0 {
        private static final long serialVersionUID = -2466317989629281651L;
        public final y22<? super T> actual;
        public final Func1<Action0, Subscription> onSchedule;
        public final T value;

        public Ccase(y22<? super T> y22Var, T t, Func1<Action0, Subscription> func1) {
            this.actual = y22Var;
            this.value = t;
            this.onSchedule = func1;
        }

        @Override // rx.functions.Action0
        public void call() {
            y22<? super T> y22Var = this.actual;
            if (y22Var.isUnsubscribed()) {
                return;
            }
            T t = this.value;
            try {
                y22Var.onNext(t);
                if (y22Var.isUnsubscribed()) {
                    return;
                }
                y22Var.onCompleted();
            } catch (Throwable th) {
                s80.m7300this(th, y22Var, t);
            }
        }

        @Override // rx.Producer
        public void request(long j) {
            if (j < 0) {
                throw new IllegalArgumentException("n >= 0 required but it was " + j);
            }
            if (j == 0 || !compareAndSet(false, true)) {
                return;
            }
            this.actual.add(this.onSchedule.call(this));
        }

        @Override // java.util.concurrent.atomic.AtomicBoolean
        public String toString() {
            return "ScalarAsyncProducer[" + this.value + ", " + get() + "]";
        }
    }

    /* renamed from: rx.internal.util.else$do, reason: invalid class name */
    public class Cdo implements Func1<Action0, Subscription> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ rx.internal.schedulers.Cif f35804do;

        public Cdo(rx.internal.schedulers.Cif cif) {
            this.f35804do = cif;
        }

        @Override // rx.functions.Func1
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public Subscription call(Action0 action0) {
            return this.f35804do.m38851new(action0);
        }
    }

    /* renamed from: rx.internal.util.else$else, reason: invalid class name and collision with other inner class name */
    public static final class C0555else<T> implements Producer {

        /* renamed from: do, reason: not valid java name */
        public final y22<? super T> f35806do;

        /* renamed from: for, reason: not valid java name */
        public boolean f35807for;

        /* renamed from: if, reason: not valid java name */
        public final T f35808if;

        public C0555else(y22<? super T> y22Var, T t) {
            this.f35806do = y22Var;
            this.f35808if = t;
        }

        @Override // rx.Producer
        public void request(long j) {
            if (this.f35807for) {
                return;
            }
            if (j < 0) {
                throw new IllegalStateException("n >= required but it was " + j);
            }
            if (j == 0) {
                return;
            }
            this.f35807for = true;
            y22<? super T> y22Var = this.f35806do;
            if (y22Var.isUnsubscribed()) {
                return;
            }
            T t = this.f35808if;
            try {
                y22Var.onNext(t);
                if (y22Var.isUnsubscribed()) {
                    return;
                }
                y22Var.onCompleted();
            } catch (Throwable th) {
                s80.m7300this(th, y22Var, t);
            }
        }
    }

    /* JADX INFO: Add missing generic type declarations: [R] */
    /* renamed from: rx.internal.util.else$for, reason: invalid class name */
    public class Cfor<R> implements Observable.OnSubscribe<R> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Func1 f35809do;

        public Cfor(Func1 func1) {
            this.f35809do = func1;
        }

        @Override // rx.functions.Action1
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void call(y22<? super R> y22Var) {
            Observable observable = (Observable) this.f35809do.call(Celse.this.f35803if);
            if (observable instanceof Celse) {
                y22Var.setProducer(Celse.f6(y22Var, ((Celse) observable).f35803if));
            } else {
                observable.r5(rx.observers.Cnew.m39112case(y22Var));
            }
        }
    }

    /* renamed from: rx.internal.util.else$if, reason: invalid class name */
    public class Cif implements Func1<Action0, Subscription> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ rx.Cif f35811do;

        /* renamed from: rx.internal.util.else$if$do, reason: invalid class name */
        public class Cdo implements Action0 {

            /* renamed from: do, reason: not valid java name */
            public final /* synthetic */ Action0 f35813do;

            /* renamed from: if, reason: not valid java name */
            public final /* synthetic */ Cif.Cdo f35815if;

            public Cdo(Action0 action0, Cif.Cdo cdo) {
                this.f35813do = action0;
                this.f35815if = cdo;
            }

            @Override // rx.functions.Action0
            public void call() {
                try {
                    this.f35813do.call();
                } finally {
                    this.f35815if.unsubscribe();
                }
            }
        }

        public Cif(rx.Cif cif) {
            this.f35811do = cif;
        }

        @Override // rx.functions.Func1
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public Subscription call(Action0 action0) {
            Cif.Cdo cdoMo971do = this.f35811do.mo971do();
            cdoMo971do.mo38376if(new Cdo(action0, cdoMo971do));
            return cdoMo971do;
        }
    }

    /* renamed from: rx.internal.util.else$new, reason: invalid class name */
    public static final class Cnew<T> implements Observable.OnSubscribe<T> {

        /* renamed from: do, reason: not valid java name */
        public final T f35816do;

        public Cnew(T t) {
            this.f35816do = t;
        }

        @Override // rx.functions.Action1
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void call(y22<? super T> y22Var) {
            y22Var.setProducer(Celse.f6(y22Var, this.f35816do));
        }
    }

    /* renamed from: rx.internal.util.else$try, reason: invalid class name */
    public static final class Ctry<T> implements Observable.OnSubscribe<T> {

        /* renamed from: do, reason: not valid java name */
        public final T f35817do;

        /* renamed from: if, reason: not valid java name */
        public final Func1<Action0, Subscription> f35818if;

        public Ctry(T t, Func1<Action0, Subscription> func1) {
            this.f35817do = t;
            this.f35818if = func1;
        }

        @Override // rx.functions.Action1
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void call(y22<? super T> y22Var) {
            y22Var.setProducer(new Ccase(y22Var, this.f35817do, this.f35818if));
        }
    }

    public Celse(T t) {
        super(rx.plugins.Cif.m39164volatile(new Cnew(t)));
        this.f35803if = t;
    }

    public static <T> Celse<T> e6(T t) {
        return new Celse<>(t);
    }

    public static <T> Producer f6(y22<? super T> y22Var, T t) {
        return f35802for ? new yz1(y22Var, t) : new C0555else(y22Var, t);
    }

    public T g6() {
        return this.f35803if;
    }

    public <R> Observable<R> h6(Func1<? super T, ? extends Observable<? extends R>> func1) {
        return Observable.q5(new Cfor(func1));
    }

    public Observable<T> i6(rx.Cif cif) {
        return Observable.q5(new Ctry(this.f35803if, cif instanceof rx.internal.schedulers.Cif ? new Cdo((rx.internal.schedulers.Cif) cif) : new Cif(cif)));
    }
}
