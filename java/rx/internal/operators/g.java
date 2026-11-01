package rx.internal.operators;

import android.support.v4.ds1;
import android.support.v4.u22;
import android.support.v4.u6;
import android.support.v4.ww1;
import android.support.v4.y22;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;
import rx.Cif;
import rx.Observable;
import rx.Producer;
import rx.functions.Action0;
import rx.functions.Func1;
import rx.functions.Func2;

/* loaded from: classes4.dex */
public final class g<T> implements Observable.OnSubscribe<T> {

    /* renamed from: case, reason: not valid java name */
    public static final Func1<Observable<? extends rx.Cdo<?>>, Observable<?>> f34784case = new Cdo();

    /* renamed from: do, reason: not valid java name */
    public final Observable<T> f34785do;

    /* renamed from: for, reason: not valid java name */
    public final boolean f34786for;

    /* renamed from: if, reason: not valid java name */
    private final Func1<? super Observable<? extends rx.Cdo<?>>, ? extends Observable<?>> f34787if;

    /* renamed from: new, reason: not valid java name */
    public final boolean f34788new;

    /* renamed from: try, reason: not valid java name */
    private final rx.Cif f34789try;

    /* renamed from: rx.internal.operators.g$case, reason: invalid class name */
    public static final class Ccase implements Func1<Observable<? extends rx.Cdo<?>>, Observable<?>> {

        /* renamed from: do, reason: not valid java name */
        public final long f34790do;

        /* renamed from: rx.internal.operators.g$case$do, reason: invalid class name */
        public class Cdo implements Func1<rx.Cdo<?>, rx.Cdo<?>> {

            /* renamed from: do, reason: not valid java name */
            public int f34791do;

            public Cdo() {
            }

            @Override // rx.functions.Func1
            /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
            public rx.Cdo<?> call(rx.Cdo<?> cdo) {
                long j = Ccase.this.f34790do;
                if (j == 0) {
                    return cdo;
                }
                int i = this.f34791do + 1;
                this.f34791do = i;
                return ((long) i) <= j ? rx.Cdo.m38312try(Integer.valueOf(i)) : cdo;
            }
        }

        public Ccase(long j) {
            this.f34790do = j;
        }

        @Override // rx.functions.Func1
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public Observable<?> call(Observable<? extends rx.Cdo<?>> observable) {
            return observable.K1(new Cdo()).j0();
        }
    }

    /* renamed from: rx.internal.operators.g$do, reason: invalid class name */
    public static class Cdo implements Func1<Observable<? extends rx.Cdo<?>>, Observable<?>> {

        /* renamed from: rx.internal.operators.g$do$do, reason: invalid class name and collision with other inner class name */
        public class C0525do implements Func1<rx.Cdo<?>, rx.Cdo<?>> {
            public C0525do() {
            }

            @Override // rx.functions.Func1
            /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
            public rx.Cdo<?> call(rx.Cdo<?> cdo) {
                return rx.Cdo.m38312try(null);
            }
        }

        @Override // rx.functions.Func1
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public Observable<?> call(Observable<? extends rx.Cdo<?>> observable) {
            return observable.K1(new C0525do());
        }
    }

    /* renamed from: rx.internal.operators.g$else, reason: invalid class name */
    public static final class Celse implements Func1<Observable<? extends rx.Cdo<?>>, Observable<? extends rx.Cdo<?>>> {

        /* renamed from: do, reason: not valid java name */
        public final Func2<Integer, Throwable, Boolean> f34794do;

        /* renamed from: rx.internal.operators.g$else$do, reason: invalid class name */
        public class Cdo implements Func2<rx.Cdo<Integer>, rx.Cdo<?>, rx.Cdo<Integer>> {
            public Cdo() {
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // rx.functions.Func2
            /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
            public rx.Cdo<Integer> call(rx.Cdo<Integer> cdo, rx.Cdo<?> cdo2) {
                int iIntValue = cdo.m38320goto().intValue();
                return Celse.this.f34794do.call(Integer.valueOf(iIntValue), cdo2.m38319else()).booleanValue() ? rx.Cdo.m38312try(Integer.valueOf(iIntValue + 1)) : cdo2;
            }
        }

        public Celse(Func2<Integer, Throwable, Boolean> func2) {
            this.f34794do = func2;
        }

        @Override // rx.functions.Func1
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public Observable<? extends rx.Cdo<?>> call(Observable<? extends rx.Cdo<?>> observable) {
            return observable.s3(rx.Cdo.m38312try(0), new Cdo());
        }
    }

    /* renamed from: rx.internal.operators.g$for, reason: invalid class name */
    public class Cfor implements Observable.Operator<rx.Cdo<?>, rx.Cdo<?>> {

        /* renamed from: rx.internal.operators.g$for$do, reason: invalid class name */
        public class Cdo extends y22<rx.Cdo<?>> {

            /* renamed from: do, reason: not valid java name */
            public final /* synthetic */ y22 f34797do;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public Cdo(y22 y22Var, y22 y22Var2) {
                super(y22Var);
                this.f34797do = y22Var2;
            }

            @Override // rx.Observer
            /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
            public void onNext(rx.Cdo<?> cdo) {
                if (cdo.m38315catch() && g.this.f34786for) {
                    this.f34797do.onCompleted();
                } else if (cdo.m38316class() && g.this.f34788new) {
                    this.f34797do.onError(cdo.m38319else());
                } else {
                    this.f34797do.onNext(cdo);
                }
            }

            @Override // rx.Observer
            public void onCompleted() {
                this.f34797do.onCompleted();
            }

            @Override // rx.Observer
            public void onError(Throwable th) {
                this.f34797do.onError(th);
            }

            @Override // android.support.v4.y22, rx.observers.AssertableSubscriber
            public void setProducer(Producer producer) {
                producer.request(Long.MAX_VALUE);
            }
        }

        public Cfor() {
        }

        @Override // rx.functions.Func1
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public y22<? super rx.Cdo<?>> call(y22<? super rx.Cdo<?>> y22Var) {
            return new Cdo(y22Var, y22Var);
        }
    }

    /* renamed from: rx.internal.operators.g$if, reason: invalid class name */
    public class Cif implements Action0 {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ y22 f34800do;

        /* renamed from: for, reason: not valid java name */
        public final /* synthetic */ rx.internal.producers.Cdo f34801for;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ u22 f34802if;

        /* renamed from: new, reason: not valid java name */
        public final /* synthetic */ AtomicLong f34803new;

        /* renamed from: try, reason: not valid java name */
        public final /* synthetic */ ww1 f34804try;

        /* renamed from: rx.internal.operators.g$if$do, reason: invalid class name */
        public class Cdo extends y22<T> {

            /* renamed from: do, reason: not valid java name */
            public boolean f34805do;

            public Cdo() {
            }

            /* renamed from: do, reason: not valid java name */
            private void m38521do() {
                long j;
                do {
                    j = Cif.this.f34803new.get();
                    if (j == Long.MAX_VALUE) {
                        return;
                    }
                } while (!Cif.this.f34803new.compareAndSet(j, j - 1));
            }

            @Override // rx.Observer
            public void onCompleted() {
                if (this.f34805do) {
                    return;
                }
                this.f34805do = true;
                unsubscribe();
                Cif.this.f34802if.onNext(rx.Cdo.m38310if());
            }

            @Override // rx.Observer
            public void onError(Throwable th) {
                if (this.f34805do) {
                    return;
                }
                this.f34805do = true;
                unsubscribe();
                Cif.this.f34802if.onNext(rx.Cdo.m38311new(th));
            }

            @Override // rx.Observer
            public void onNext(T t) {
                if (this.f34805do) {
                    return;
                }
                Cif.this.f34800do.onNext(t);
                m38521do();
                Cif.this.f34801for.m38830if(1L);
            }

            @Override // android.support.v4.y22, rx.observers.AssertableSubscriber
            public void setProducer(Producer producer) {
                Cif.this.f34801for.m38829for(producer);
            }
        }

        public Cif(y22 y22Var, u22 u22Var, rx.internal.producers.Cdo cdo, AtomicLong atomicLong, ww1 ww1Var) {
            this.f34800do = y22Var;
            this.f34802if = u22Var;
            this.f34801for = cdo;
            this.f34803new = atomicLong;
            this.f34804try = ww1Var;
        }

        @Override // rx.functions.Action0
        public void call() {
            if (this.f34800do.isUnsubscribed()) {
                return;
            }
            Cdo cdo = new Cdo();
            this.f34804try.m9298if(cdo);
            g.this.f34785do.r5(cdo);
        }
    }

    /* renamed from: rx.internal.operators.g$new, reason: invalid class name */
    public class Cnew implements Action0 {

        /* renamed from: case, reason: not valid java name */
        public final /* synthetic */ AtomicBoolean f34807case;

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Observable f34808do;

        /* renamed from: for, reason: not valid java name */
        public final /* synthetic */ AtomicLong f34810for;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ y22 f34811if;

        /* renamed from: new, reason: not valid java name */
        public final /* synthetic */ Cif.Cdo f34812new;

        /* renamed from: try, reason: not valid java name */
        public final /* synthetic */ Action0 f34813try;

        /* renamed from: rx.internal.operators.g$new$do, reason: invalid class name */
        public class Cdo extends y22<Object> {
            public Cdo(y22 y22Var) {
                super(y22Var);
            }

            @Override // rx.Observer
            public void onCompleted() {
                Cnew.this.f34811if.onCompleted();
            }

            @Override // rx.Observer
            public void onError(Throwable th) {
                Cnew.this.f34811if.onError(th);
            }

            @Override // rx.Observer
            public void onNext(Object obj) {
                if (Cnew.this.f34811if.isUnsubscribed()) {
                    return;
                }
                if (Cnew.this.f34810for.get() <= 0) {
                    Cnew.this.f34807case.compareAndSet(false, true);
                } else {
                    Cnew cnew = Cnew.this;
                    cnew.f34812new.mo38376if(cnew.f34813try);
                }
            }

            @Override // android.support.v4.y22, rx.observers.AssertableSubscriber
            public void setProducer(Producer producer) {
                producer.request(Long.MAX_VALUE);
            }
        }

        public Cnew(Observable observable, y22 y22Var, AtomicLong atomicLong, Cif.Cdo cdo, Action0 action0, AtomicBoolean atomicBoolean) {
            this.f34808do = observable;
            this.f34811if = y22Var;
            this.f34810for = atomicLong;
            this.f34812new = cdo;
            this.f34813try = action0;
            this.f34807case = atomicBoolean;
        }

        @Override // rx.functions.Action0
        public void call() {
            this.f34808do.r5(new Cdo(this.f34811if));
        }
    }

    /* renamed from: rx.internal.operators.g$try, reason: invalid class name */
    public class Ctry implements Producer {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ AtomicLong f34816do;

        /* renamed from: for, reason: not valid java name */
        public final /* synthetic */ AtomicBoolean f34817for;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ rx.internal.producers.Cdo f34818if;

        /* renamed from: new, reason: not valid java name */
        public final /* synthetic */ Cif.Cdo f34819new;

        /* renamed from: try, reason: not valid java name */
        public final /* synthetic */ Action0 f34820try;

        public Ctry(AtomicLong atomicLong, rx.internal.producers.Cdo cdo, AtomicBoolean atomicBoolean, Cif.Cdo cdo2, Action0 action0) {
            this.f34816do = atomicLong;
            this.f34818if = cdo;
            this.f34817for = atomicBoolean;
            this.f34819new = cdo2;
            this.f34820try = action0;
        }

        @Override // rx.Producer
        public void request(long j) {
            if (j > 0) {
                u6.m8259if(this.f34816do, j);
                this.f34818if.request(j);
                if (this.f34817for.compareAndSet(true, false)) {
                    this.f34819new.mo38376if(this.f34820try);
                }
            }
        }
    }

    private g(Observable<T> observable, Func1<? super Observable<? extends rx.Cdo<?>>, ? extends Observable<?>> func1, boolean z, boolean z2, rx.Cif cif) {
        this.f34785do = observable;
        this.f34787if = func1;
        this.f34786for = z;
        this.f34788new = z2;
        this.f34789try = cif;
    }

    /* renamed from: break, reason: not valid java name */
    public static <T> Observable<T> m38501break(Observable<T> observable, long j) {
        if (j >= 0) {
            return j == 0 ? observable : m38503catch(observable, new Ccase(j));
        }
        throw new IllegalArgumentException("count >= 0 expected");
    }

    /* renamed from: case, reason: not valid java name */
    public static <T> Observable<T> m38502case(Observable<T> observable, rx.Cif cif) {
        return m38507goto(observable, f34784case, cif);
    }

    /* renamed from: catch, reason: not valid java name */
    public static <T> Observable<T> m38503catch(Observable<T> observable, Func1<? super Observable<? extends rx.Cdo<?>>, ? extends Observable<?>> func1) {
        return Observable.q5(new g(observable, func1, true, false, ds1.m1516const()));
    }

    /* renamed from: class, reason: not valid java name */
    public static <T> Observable<T> m38504class(Observable<T> observable, Func1<? super Observable<? extends rx.Cdo<?>>, ? extends Observable<?>> func1, rx.Cif cif) {
        return Observable.q5(new g(observable, func1, true, false, cif));
    }

    /* renamed from: else, reason: not valid java name */
    public static <T> Observable<T> m38505else(Observable<T> observable, Func1<? super Observable<? extends rx.Cdo<?>>, ? extends Observable<?>> func1) {
        return Observable.q5(new g(observable, func1, false, true, ds1.m1516const()));
    }

    /* renamed from: for, reason: not valid java name */
    public static <T> Observable<T> m38506for(Observable<T> observable) {
        return m38502case(observable, ds1.m1516const());
    }

    /* renamed from: goto, reason: not valid java name */
    public static <T> Observable<T> m38507goto(Observable<T> observable, Func1<? super Observable<? extends rx.Cdo<?>>, ? extends Observable<?>> func1, rx.Cif cif) {
        return Observable.q5(new g(observable, func1, false, true, cif));
    }

    /* renamed from: if, reason: not valid java name */
    public static <T> Observable<T> m38508if(Observable<T> observable, Func1<? super Observable<? extends rx.Cdo<?>>, ? extends Observable<?>> func1, rx.Cif cif) {
        return Observable.q5(new g(observable, func1, false, false, cif));
    }

    /* renamed from: new, reason: not valid java name */
    public static <T> Observable<T> m38509new(Observable<T> observable, long j) {
        return m38511try(observable, j, ds1.m1516const());
    }

    /* renamed from: this, reason: not valid java name */
    public static <T> Observable<T> m38510this(Observable<T> observable) {
        return m38503catch(observable, f34784case);
    }

    /* renamed from: try, reason: not valid java name */
    public static <T> Observable<T> m38511try(Observable<T> observable, long j, rx.Cif cif) {
        if (j == 0) {
            return Observable.B0();
        }
        if (j >= 0) {
            return m38507goto(observable, new Ccase(j - 1), cif);
        }
        throw new IllegalArgumentException("count >= 0 expected");
    }

    @Override // rx.functions.Action1
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public void call(y22<? super T> y22Var) {
        AtomicBoolean atomicBoolean = new AtomicBoolean(true);
        AtomicLong atomicLong = new AtomicLong();
        Cif.Cdo cdoMo971do = this.f34789try.mo971do();
        y22Var.add(cdoMo971do);
        ww1 ww1Var = new ww1();
        y22Var.add(ww1Var);
        rx.subjects.Cnew<T, T> cnewF6 = rx.subjects.Cif.g6().f6();
        cnewF6.Y3(rx.observers.Cnew.m39116new());
        rx.internal.producers.Cdo cdo = new rx.internal.producers.Cdo();
        Cif cif = new Cif(y22Var, cnewF6, cdo, atomicLong, ww1Var);
        cdoMo971do.mo38376if(new Cnew(this.f34787if.call(cnewF6.I1(new Cfor())), y22Var, atomicLong, cdoMo971do, cif, atomicBoolean));
        y22Var.setProducer(new Ctry(atomicLong, cdo, atomicBoolean, cdoMo971do, cif));
    }
}
