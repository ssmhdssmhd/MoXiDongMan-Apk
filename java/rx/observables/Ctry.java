package rx.observables;

import android.support.v4.s80;
import android.support.v4.u6;
import android.support.v4.y22;
import java.util.concurrent.atomic.AtomicLong;
import rx.Observable;
import rx.Observer;
import rx.Producer;
import rx.Subscription;
import rx.functions.Action0;
import rx.functions.Action1;
import rx.functions.Action2;
import rx.functions.Func0;
import rx.functions.Func2;

/* renamed from: rx.observables.try, reason: invalid class name */
/* loaded from: classes4.dex */
public abstract class Ctry<S, T> implements Observable.OnSubscribe<T> {

    /* renamed from: rx.observables.try$case, reason: invalid class name */
    public static final class Ccase<S, T> extends AtomicLong implements Producer, Subscription, Observer<T> {
        private static final long serialVersionUID = -3736864024352728072L;
        private final y22<? super T> actualSubscriber;
        private boolean hasTerminated;
        private boolean onNextCalled;
        private final Ctry<S, T> parent;
        private S state;

        public Ccase(y22<? super T> y22Var, Ctry<S, T> ctry, S s) {
            this.actualSubscriber = y22Var;
            this.parent = ctry;
            this.state = s;
        }

        /* renamed from: case, reason: not valid java name */
        private boolean m39068case() {
            if (!this.hasTerminated && get() >= -1) {
                return false;
            }
            set(-1L);
            m39069do();
            return true;
        }

        /* renamed from: do, reason: not valid java name */
        private void m39069do() {
            try {
                this.parent.mo39064break(this.state);
            } catch (Throwable th) {
                s80.m7301try(th);
                rx.plugins.Cif.m39151protected(th);
            }
        }

        /* renamed from: for, reason: not valid java name */
        private void m39070for(y22<? super T> y22Var, Throwable th) {
            if (this.hasTerminated) {
                rx.plugins.Cif.m39151protected(th);
                return;
            }
            this.hasTerminated = true;
            y22Var.onError(th);
            unsubscribe();
        }

        /* renamed from: if, reason: not valid java name */
        private void m39071if() {
            Ctry<S, T> ctry = this.parent;
            y22<? super T> y22Var = this.actualSubscriber;
            do {
                try {
                    this.onNextCalled = false;
                    m39072new(ctry);
                } catch (Throwable th) {
                    m39070for(y22Var, th);
                    return;
                }
            } while (!m39068case());
        }

        /* renamed from: new, reason: not valid java name */
        private void m39072new(Ctry<S, T> ctry) {
            this.state = ctry.mo39067this(this.state, this);
        }

        /* renamed from: try, reason: not valid java name */
        private void m39073try(long j) {
            Ctry<S, T> ctry = this.parent;
            y22<? super T> y22Var = this.actualSubscriber;
            do {
                long j2 = j;
                do {
                    try {
                        this.onNextCalled = false;
                        m39072new(ctry);
                        if (m39068case()) {
                            return;
                        }
                        if (this.onNextCalled) {
                            j2--;
                        }
                    } catch (Throwable th) {
                        m39070for(y22Var, th);
                        return;
                    }
                } while (j2 != 0);
                j = addAndGet(-j);
            } while (j > 0);
            m39068case();
        }

        @Override // rx.Subscription
        public boolean isUnsubscribed() {
            return get() < 0;
        }

        @Override // rx.Observer
        public void onCompleted() {
            if (this.hasTerminated) {
                throw new IllegalStateException("Terminal event already emitted.");
            }
            this.hasTerminated = true;
            if (this.actualSubscriber.isUnsubscribed()) {
                return;
            }
            this.actualSubscriber.onCompleted();
        }

        @Override // rx.Observer
        public void onError(Throwable th) {
            if (this.hasTerminated) {
                throw new IllegalStateException("Terminal event already emitted.");
            }
            this.hasTerminated = true;
            if (this.actualSubscriber.isUnsubscribed()) {
                return;
            }
            this.actualSubscriber.onError(th);
        }

        @Override // rx.Observer
        public void onNext(T t) {
            if (this.onNextCalled) {
                throw new IllegalStateException("onNext called multiple times!");
            }
            this.onNextCalled = true;
            this.actualSubscriber.onNext(t);
        }

        @Override // rx.Producer
        public void request(long j) {
            if (j <= 0 || u6.m8259if(this, j) != 0) {
                return;
            }
            if (j == Long.MAX_VALUE) {
                m39071if();
            } else {
                m39073try(j);
            }
        }

        @Override // rx.Subscription
        public void unsubscribe() {
            long j;
            do {
                j = get();
                if (compareAndSet(0L, -1L)) {
                    m39069do();
                    return;
                }
            } while (!compareAndSet(j, -2L));
        }
    }

    /* renamed from: rx.observables.try$do, reason: invalid class name */
    public static class Cdo implements Func2<S, Observer<? super T>, S> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Action2 f36077do;

        public Cdo(Action2 action2) {
            this.f36077do = action2;
        }

        @Override // rx.functions.Func2
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public S call(S s, Observer<? super T> observer) {
            this.f36077do.call(s, observer);
            return s;
        }
    }

    /* renamed from: rx.observables.try$for, reason: invalid class name */
    public static class Cfor implements Func2<Void, Observer<? super T>, Void> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Action1 f36081do;

        public Cfor(Action1 action1) {
            this.f36081do = action1;
        }

        @Override // rx.functions.Func2
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public Void call(Void r2, Observer<? super T> observer) {
            this.f36081do.call(observer);
            return r2;
        }
    }

    /* renamed from: rx.observables.try$if, reason: invalid class name */
    public static class Cif implements Func2<S, Observer<? super T>, S> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Action2 f36082do;

        public Cif(Action2 action2) {
            this.f36082do = action2;
        }

        @Override // rx.functions.Func2
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public S call(S s, Observer<? super T> observer) {
            this.f36082do.call(s, observer);
            return s;
        }
    }

    /* renamed from: rx.observables.try$new, reason: invalid class name */
    public static class Cnew implements Func2<Void, Observer<? super T>, Void> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Action1 f36083do;

        public Cnew(Action1 action1) {
            this.f36083do = action1;
        }

        @Override // rx.functions.Func2
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public Void call(Void r1, Observer<? super T> observer) {
            this.f36083do.call(observer);
            return null;
        }
    }

    /* renamed from: rx.observables.try$try, reason: invalid class name and collision with other inner class name */
    public static class C0562try implements Action1<Void> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Action0 f36084do;

        public C0562try(Action0 action0) {
            this.f36084do = action0;
        }

        @Override // rx.functions.Action1
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void call(Void r1) {
            this.f36084do.call();
        }
    }

    /* renamed from: case, reason: not valid java name */
    public static <T> Ctry<Void, T> m39058case(Action1<? super Observer<? super T>> action1) {
        return new Celse(new Cfor(action1));
    }

    /* renamed from: else, reason: not valid java name */
    public static <T> Ctry<Void, T> m39059else(Action1<? super Observer<? super T>> action1, Action0 action0) {
        return new Celse(new Cnew(action1), new C0562try(action0));
    }

    /* renamed from: for, reason: not valid java name */
    public static <S, T> Ctry<S, T> m39060for(Func0<? extends S> func0, Action2<? super S, ? super Observer<? super T>> action2, Action1<? super S> action1) {
        return new Celse(func0, new Cif(action2), action1);
    }

    /* renamed from: if, reason: not valid java name */
    public static <S, T> Ctry<S, T> m39061if(Func0<? extends S> func0, Action2<? super S, ? super Observer<? super T>> action2) {
        return new Celse(func0, new Cdo(action2));
    }

    /* renamed from: new, reason: not valid java name */
    public static <S, T> Ctry<S, T> m39062new(Func0<? extends S> func0, Func2<? super S, ? super Observer<? super T>, ? extends S> func2) {
        return new Celse(func0, func2);
    }

    /* renamed from: try, reason: not valid java name */
    public static <S, T> Ctry<S, T> m39063try(Func0<? extends S> func0, Func2<? super S, ? super Observer<? super T>, ? extends S> func2, Action1<? super S> action1) {
        return new Celse(func0, func2, action1);
    }

    /* renamed from: break, reason: not valid java name */
    public void mo39064break(S s) {
    }

    @Override // rx.functions.Action1
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public final void call(y22<? super T> y22Var) {
        try {
            Ccase ccase = new Ccase(y22Var, this, mo39066goto());
            y22Var.add(ccase);
            y22Var.setProducer(ccase);
        } catch (Throwable th) {
            s80.m7301try(th);
            y22Var.onError(th);
        }
    }

    /* renamed from: goto, reason: not valid java name */
    public abstract S mo39066goto();

    /* renamed from: this, reason: not valid java name */
    public abstract S mo39067this(S s, Observer<? super T> observer);

    /* renamed from: rx.observables.try$else, reason: invalid class name */
    public static final class Celse<S, T> extends Ctry<S, T> {

        /* renamed from: do, reason: not valid java name */
        private final Func0<? extends S> f36078do;

        /* renamed from: for, reason: not valid java name */
        private final Action1<? super S> f36079for;

        /* renamed from: if, reason: not valid java name */
        private final Func2<? super S, ? super Observer<? super T>, ? extends S> f36080if;

        public Celse(Func0<? extends S> func0, Func2<? super S, ? super Observer<? super T>, ? extends S> func2, Action1<? super S> action1) {
            this.f36078do = func0;
            this.f36080if = func2;
            this.f36079for = action1;
        }

        @Override // rx.observables.Ctry
        /* renamed from: break */
        public void mo39064break(S s) {
            Action1<? super S> action1 = this.f36079for;
            if (action1 != null) {
                action1.call(s);
            }
        }

        @Override // rx.observables.Ctry, rx.functions.Action1
        public /* bridge */ /* synthetic */ void call(Object obj) {
            super.call((y22) obj);
        }

        @Override // rx.observables.Ctry
        /* renamed from: goto */
        public S mo39066goto() {
            Func0<? extends S> func0 = this.f36078do;
            if (func0 == null) {
                return null;
            }
            return func0.call();
        }

        @Override // rx.observables.Ctry
        /* renamed from: this */
        public S mo39067this(S s, Observer<? super T> observer) {
            return this.f36080if.call(s, observer);
        }

        public Celse(Func0<? extends S> func0, Func2<? super S, ? super Observer<? super T>, ? extends S> func2) {
            this(func0, func2, null);
        }

        public Celse(Func2<S, Observer<? super T>, S> func2, Action1<? super S> action1) {
            this(null, func2, action1);
        }

        public Celse(Func2<S, Observer<? super T>, S> func2) {
            this(null, func2, null);
        }
    }
}
