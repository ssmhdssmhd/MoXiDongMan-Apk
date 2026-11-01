package rx.observables;

import android.support.v4.dq;
import android.support.v4.n8;
import android.support.v4.y22;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import rx.Observable;
import rx.Observer;
import rx.Producer;
import rx.Subscription;
import rx.functions.Action0;
import rx.functions.Action1;
import rx.functions.Action2;
import rx.functions.Action3;
import rx.functions.Func0;
import rx.functions.Func1;
import rx.functions.Func3;

@n8
/* renamed from: rx.observables.do, reason: invalid class name */
/* loaded from: classes4.dex */
public abstract class Cdo<S, T> implements Observable.OnSubscribe<T> {

    /* renamed from: rx.observables.do$break, reason: invalid class name */
    public static final class Cbreak<T> extends Observable<T> implements Observer<T> {

        /* renamed from: if, reason: not valid java name */
        private final C0558do<T> f36013if;

        /* renamed from: rx.observables.do$break$do, reason: invalid class name and collision with other inner class name */
        public static final class C0558do<T> implements Observable.OnSubscribe<T> {

            /* renamed from: do, reason: not valid java name */
            public y22<? super T> f36014do;

            @Override // rx.functions.Action1
            /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
            public void call(y22<? super T> y22Var) {
                synchronized (this) {
                    if (this.f36014do == null) {
                        this.f36014do = y22Var;
                    } else {
                        y22Var.onError(new IllegalStateException("There can be only one subscriber"));
                    }
                }
            }
        }

        public Cbreak(C0558do<T> c0558do) {
            super(c0558do);
            this.f36013if = c0558do;
        }

        public static <T> Cbreak<T> e6() {
            return new Cbreak<>(new C0558do());
        }

        @Override // rx.Observer
        public void onCompleted() {
            this.f36013if.f36014do.onCompleted();
        }

        @Override // rx.Observer
        public void onError(Throwable th) {
            this.f36013if.f36014do.onError(th);
        }

        @Override // rx.Observer
        public void onNext(T t) {
            this.f36013if.f36014do.onNext(t);
        }
    }

    /* renamed from: rx.observables.do$case, reason: invalid class name */
    public class Ccase extends y22<T> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ y22 f36015do;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ Cthis f36017if;

        public Ccase(y22 y22Var, Cthis cthis) {
            this.f36015do = y22Var;
            this.f36017if = cthis;
        }

        @Override // rx.Observer
        public void onCompleted() {
            this.f36015do.onCompleted();
        }

        @Override // rx.Observer
        public void onError(Throwable th) {
            this.f36015do.onError(th);
        }

        @Override // rx.Observer
        public void onNext(T t) {
            this.f36015do.onNext(t);
        }

        @Override // android.support.v4.y22, rx.observers.AssertableSubscriber
        public void setProducer(Producer producer) {
            this.f36017if.m39021case(producer);
        }
    }

    /* renamed from: rx.observables.do$do, reason: invalid class name and collision with other inner class name */
    public static class C0559do implements Func3<S, Long, Observer<Observable<? extends T>>, S> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Action3 f36018do;

        public C0559do(Action3 action3) {
            this.f36018do = action3;
        }

        @Override // rx.functions.Func3
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public S call(S s, Long l, Observer<Observable<? extends T>> observer) {
            this.f36018do.call(s, l, observer);
            return s;
        }
    }

    /* renamed from: rx.observables.do$else, reason: invalid class name */
    public class Celse implements Func1<Observable<T>, Observable<T>> {
        public Celse() {
        }

        @Override // rx.functions.Func1
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public Observable<T> call(Observable<T> observable) {
            return observable.v2();
        }
    }

    /* renamed from: rx.observables.do$for, reason: invalid class name */
    public static class Cfor implements Func3<Void, Long, Observer<Observable<? extends T>>, Void> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Action2 f36020do;

        public Cfor(Action2 action2) {
            this.f36020do = action2;
        }

        @Override // rx.functions.Func3
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public Void call(Void r2, Long l, Observer<Observable<? extends T>> observer) {
            this.f36020do.call(l, observer);
            return r2;
        }
    }

    /* renamed from: rx.observables.do$if, reason: invalid class name */
    public static class Cif implements Func3<S, Long, Observer<Observable<? extends T>>, S> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Action3 f36024do;

        public Cif(Action3 action3) {
            this.f36024do = action3;
        }

        @Override // rx.functions.Func3
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public S call(S s, Long l, Observer<Observable<? extends T>> observer) {
            this.f36024do.call(s, l, observer);
            return s;
        }
    }

    /* renamed from: rx.observables.do$new, reason: invalid class name */
    public static class Cnew implements Func3<Void, Long, Observer<Observable<? extends T>>, Void> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Action2 f36025do;

        public Cnew(Action2 action2) {
            this.f36025do = action2;
        }

        @Override // rx.functions.Func3
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public Void call(Void r1, Long l, Observer<Observable<? extends T>> observer) {
            this.f36025do.call(l, observer);
            return null;
        }
    }

    /* renamed from: rx.observables.do$this, reason: invalid class name */
    public static final class Cthis<S, T> implements Producer, Subscription, Observer<Observable<? extends T>> {

        /* renamed from: break, reason: not valid java name */
        public List<Long> f36026break;

        /* renamed from: case, reason: not valid java name */
        private boolean f36027case;

        /* renamed from: catch, reason: not valid java name */
        public Producer f36028catch;

        /* renamed from: class, reason: not valid java name */
        public long f36029class;

        /* renamed from: else, reason: not valid java name */
        private S f36031else;

        /* renamed from: goto, reason: not valid java name */
        private final Cbreak<Observable<T>> f36033goto;

        /* renamed from: if, reason: not valid java name */
        private final Cdo<S, T> f36034if;

        /* renamed from: this, reason: not valid java name */
        public boolean f36036this;

        /* renamed from: try, reason: not valid java name */
        private boolean f36037try;

        /* renamed from: new, reason: not valid java name */
        public final dq f36035new = new dq();

        /* renamed from: for, reason: not valid java name */
        private final rx.observers.Cfor<Observable<? extends T>> f36032for = new rx.observers.Cfor<>(this);

        /* renamed from: do, reason: not valid java name */
        public final AtomicBoolean f36030do = new AtomicBoolean();

        /* renamed from: rx.observables.do$this$do, reason: invalid class name and collision with other inner class name */
        public class C0560do extends y22<T> {

            /* renamed from: do, reason: not valid java name */
            public long f36038do;

            /* renamed from: for, reason: not valid java name */
            public final /* synthetic */ rx.internal.operators.Ctry f36039for;

            /* renamed from: if, reason: not valid java name */
            public final /* synthetic */ long f36040if;

            public C0560do(long j, rx.internal.operators.Ctry ctry) {
                this.f36040if = j;
                this.f36039for = ctry;
                this.f36038do = j;
            }

            @Override // rx.Observer
            public void onCompleted() {
                this.f36039for.onCompleted();
                long j = this.f36038do;
                if (j > 0) {
                    Cthis.this.m39026try(j);
                }
            }

            @Override // rx.Observer
            public void onError(Throwable th) {
                this.f36039for.onError(th);
            }

            @Override // rx.Observer
            public void onNext(T t) {
                this.f36038do--;
                this.f36039for.onNext(t);
            }
        }

        /* renamed from: rx.observables.do$this$if, reason: invalid class name */
        public class Cif implements Action0 {

            /* renamed from: do, reason: not valid java name */
            public final /* synthetic */ y22 f36042do;

            public Cif(y22 y22Var) {
                this.f36042do = y22Var;
            }

            @Override // rx.functions.Action0
            public void call() {
                Cthis.this.f36035new.m1492try(this.f36042do);
            }
        }

        public Cthis(Cdo<S, T> cdo, S s, Cbreak<Observable<T>> cbreak) {
            this.f36034if = cdo;
            this.f36031else = s;
            this.f36033goto = cbreak;
        }

        /* renamed from: else, reason: not valid java name */
        private void m39019else(Observable<? extends T> observable) {
            rx.internal.operators.Ctry ctryG6 = rx.internal.operators.Ctry.g6();
            C0560do c0560do = new C0560do(this.f36029class, ctryG6);
            this.f36035new.m1488do(c0560do);
            observable.x0(new Cif(c0560do)).Y3(c0560do);
            this.f36033goto.onNext(ctryG6);
        }

        /* renamed from: if, reason: not valid java name */
        private void m39020if(Throwable th) {
            if (this.f36037try) {
                rx.plugins.Cif.m39151protected(th);
                return;
            }
            this.f36037try = true;
            this.f36033goto.onError(th);
            m39022do();
        }

        /* renamed from: case, reason: not valid java name */
        public void m39021case(Producer producer) {
            if (this.f36028catch != null) {
                throw new IllegalStateException("setConcatProducer may be called at most once!");
            }
            this.f36028catch = producer;
        }

        /* renamed from: do, reason: not valid java name */
        public void m39022do() {
            this.f36035new.unsubscribe();
            try {
                this.f36034if.mo39009break(this.f36031else);
            } catch (Throwable th) {
                m39020if(th);
            }
        }

        /* renamed from: for, reason: not valid java name */
        public void m39023for(long j) {
            this.f36031else = this.f36034if.mo39012this(this.f36031else, j, this.f36032for);
        }

        /* renamed from: goto, reason: not valid java name */
        public boolean m39024goto(long j) {
            if (isUnsubscribed()) {
                m39022do();
                return true;
            }
            try {
                this.f36027case = false;
                this.f36029class = j;
                m39023for(j);
                if (!this.f36037try && !isUnsubscribed()) {
                    if (this.f36027case) {
                        return false;
                    }
                    m39020if(new IllegalStateException("No events emitted!"));
                    return true;
                }
                m39022do();
                return true;
            } catch (Throwable th) {
                m39020if(th);
                return true;
            }
        }

        @Override // rx.Subscription
        public boolean isUnsubscribed() {
            return this.f36030do.get();
        }

        @Override // rx.Observer
        /* renamed from: new, reason: not valid java name and merged with bridge method [inline-methods] */
        public void onNext(Observable<? extends T> observable) {
            if (this.f36027case) {
                throw new IllegalStateException("onNext called multiple times!");
            }
            this.f36027case = true;
            if (this.f36037try) {
                return;
            }
            m39019else(observable);
        }

        @Override // rx.Observer
        public void onCompleted() {
            if (this.f36037try) {
                throw new IllegalStateException("Terminal event already emitted.");
            }
            this.f36037try = true;
            this.f36033goto.onCompleted();
        }

        @Override // rx.Observer
        public void onError(Throwable th) {
            if (this.f36037try) {
                throw new IllegalStateException("Terminal event already emitted.");
            }
            this.f36037try = true;
            this.f36033goto.onError(th);
        }

        @Override // rx.Producer
        public void request(long j) {
            boolean z;
            if (j == 0) {
                return;
            }
            if (j < 0) {
                throw new IllegalStateException("Request can't be negative! " + j);
            }
            synchronized (this) {
                z = true;
                if (this.f36036this) {
                    List arrayList = this.f36026break;
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                        this.f36026break = arrayList;
                    }
                    arrayList.add(Long.valueOf(j));
                } else {
                    this.f36036this = true;
                    z = false;
                }
            }
            this.f36028catch.request(j);
            if (z || m39024goto(j)) {
                return;
            }
            while (true) {
                synchronized (this) {
                    List<Long> list = this.f36026break;
                    if (list == null) {
                        this.f36036this = false;
                        return;
                    }
                    this.f36026break = null;
                    Iterator<Long> it = list.iterator();
                    while (it.hasNext()) {
                        if (m39024goto(it.next().longValue())) {
                            return;
                        }
                    }
                }
            }
        }

        /* renamed from: try, reason: not valid java name */
        public void m39026try(long j) {
            if (j == 0) {
                return;
            }
            if (j < 0) {
                throw new IllegalStateException("Request can't be negative! " + j);
            }
            synchronized (this) {
                if (this.f36036this) {
                    List arrayList = this.f36026break;
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                        this.f36026break = arrayList;
                    }
                    arrayList.add(Long.valueOf(j));
                    return;
                }
                this.f36036this = true;
                if (m39024goto(j)) {
                    return;
                }
                while (true) {
                    synchronized (this) {
                        List<Long> list = this.f36026break;
                        if (list == null) {
                            this.f36036this = false;
                            return;
                        }
                        this.f36026break = null;
                        Iterator<Long> it = list.iterator();
                        while (it.hasNext()) {
                            if (m39024goto(it.next().longValue())) {
                                return;
                            }
                        }
                    }
                }
            }
        }

        @Override // rx.Subscription
        public void unsubscribe() {
            if (this.f36030do.compareAndSet(false, true)) {
                synchronized (this) {
                    if (!this.f36036this) {
                        this.f36036this = true;
                        m39022do();
                    } else {
                        ArrayList arrayList = new ArrayList();
                        this.f36026break = arrayList;
                        arrayList.add(0L);
                    }
                }
            }
        }
    }

    /* renamed from: rx.observables.do$try, reason: invalid class name */
    public static class Ctry implements Action1<Void> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Action0 f36044do;

        public Ctry(Action0 action0) {
            this.f36044do = action0;
        }

        @Override // rx.functions.Action1
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void call(Void r1) {
            this.f36044do.call();
        }
    }

    /* renamed from: case, reason: not valid java name */
    public static <T> Cdo<Void, T> m39003case(Action2<Long, ? super Observer<Observable<? extends T>>> action2) {
        return new Cgoto(new Cfor(action2));
    }

    /* renamed from: else, reason: not valid java name */
    public static <T> Cdo<Void, T> m39004else(Action2<Long, ? super Observer<Observable<? extends T>>> action2, Action0 action0) {
        return new Cgoto(new Cnew(action2), new Ctry(action0));
    }

    /* renamed from: for, reason: not valid java name */
    public static <S, T> Cdo<S, T> m39005for(Func0<? extends S> func0, Action3<? super S, Long, ? super Observer<Observable<? extends T>>> action3, Action1<? super S> action1) {
        return new Cgoto(func0, new Cif(action3), action1);
    }

    /* renamed from: if, reason: not valid java name */
    public static <S, T> Cdo<S, T> m39006if(Func0<? extends S> func0, Action3<? super S, Long, ? super Observer<Observable<? extends T>>> action3) {
        return new Cgoto(func0, new C0559do(action3));
    }

    /* renamed from: new, reason: not valid java name */
    public static <S, T> Cdo<S, T> m39007new(Func0<? extends S> func0, Func3<? super S, Long, ? super Observer<Observable<? extends T>>, ? extends S> func3) {
        return new Cgoto(func0, func3);
    }

    /* renamed from: try, reason: not valid java name */
    public static <S, T> Cdo<S, T> m39008try(Func0<? extends S> func0, Func3<? super S, Long, ? super Observer<Observable<? extends T>>, ? extends S> func3, Action1<? super S> action1) {
        return new Cgoto(func0, func3, action1);
    }

    /* renamed from: break, reason: not valid java name */
    public void mo39009break(S s) {
    }

    @Override // rx.functions.Action1
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public final void call(y22<? super T> y22Var) {
        try {
            S sMo39011goto = mo39011goto();
            Cbreak cbreakE6 = Cbreak.e6();
            Cthis cthis = new Cthis(this, sMo39011goto, cbreakE6);
            Ccase ccase = new Ccase(y22Var, cthis);
            cbreakE6.v2().I(new Celse()).r5(ccase);
            y22Var.add(ccase);
            y22Var.add(cthis);
            y22Var.setProducer(cthis);
        } catch (Throwable th) {
            y22Var.onError(th);
        }
    }

    /* renamed from: goto, reason: not valid java name */
    public abstract S mo39011goto();

    /* renamed from: this, reason: not valid java name */
    public abstract S mo39012this(S s, long j, Observer<Observable<? extends T>> observer);

    /* renamed from: rx.observables.do$goto, reason: invalid class name */
    public static final class Cgoto<S, T> extends Cdo<S, T> {

        /* renamed from: do, reason: not valid java name */
        private final Func0<? extends S> f36021do;

        /* renamed from: for, reason: not valid java name */
        private final Action1<? super S> f36022for;

        /* renamed from: if, reason: not valid java name */
        private final Func3<? super S, Long, ? super Observer<Observable<? extends T>>, ? extends S> f36023if;

        public Cgoto(Func0<? extends S> func0, Func3<? super S, Long, ? super Observer<Observable<? extends T>>, ? extends S> func3, Action1<? super S> action1) {
            this.f36021do = func0;
            this.f36023if = func3;
            this.f36022for = action1;
        }

        @Override // rx.observables.Cdo
        /* renamed from: break */
        public void mo39009break(S s) {
            Action1<? super S> action1 = this.f36022for;
            if (action1 != null) {
                action1.call(s);
            }
        }

        @Override // rx.observables.Cdo, rx.functions.Action1
        public /* bridge */ /* synthetic */ void call(Object obj) {
            super.call((y22) obj);
        }

        @Override // rx.observables.Cdo
        /* renamed from: goto */
        public S mo39011goto() {
            Func0<? extends S> func0 = this.f36021do;
            if (func0 == null) {
                return null;
            }
            return func0.call();
        }

        @Override // rx.observables.Cdo
        /* renamed from: this */
        public S mo39012this(S s, long j, Observer<Observable<? extends T>> observer) {
            return this.f36023if.call(s, Long.valueOf(j), observer);
        }

        public Cgoto(Func0<? extends S> func0, Func3<? super S, Long, ? super Observer<Observable<? extends T>>, ? extends S> func3) {
            this(func0, func3, null);
        }

        public Cgoto(Func3<S, Long, Observer<Observable<? extends T>>, S> func3, Action1<? super S> action1) {
            this(null, func3, action1);
        }

        public Cgoto(Func3<S, Long, Observer<Observable<? extends T>>, S> func3) {
            this(null, func3, null);
        }
    }
}
