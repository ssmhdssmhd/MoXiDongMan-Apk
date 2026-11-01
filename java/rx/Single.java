package rx;

import android.support.v4.b02;
import android.support.v4.ds1;
import android.support.v4.e90;
import android.support.v4.mz1;
import android.support.v4.nz1;
import android.support.v4.pz1;
import android.support.v4.rz1;
import android.support.v4.s80;
import android.support.v4.sr1;
import android.support.v4.v3;
import android.support.v4.y22;
import java.util.Collection;
import java.util.Objects;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import rx.Cif;
import rx.Observable;
import rx.functions.Action0;
import rx.functions.Action1;
import rx.functions.Func0;
import rx.functions.Func1;
import rx.functions.Func2;
import rx.functions.Func3;
import rx.functions.Func4;
import rx.functions.Func5;
import rx.functions.Func6;
import rx.functions.Func7;
import rx.functions.Func8;
import rx.functions.Func9;
import rx.functions.FuncN;
import rx.internal.operators.a3;
import rx.internal.operators.b3;
import rx.internal.operators.c3;
import rx.internal.operators.d3;
import rx.internal.operators.m2;
import rx.internal.operators.n2;
import rx.internal.operators.o2;
import rx.internal.operators.p2;
import rx.internal.operators.q2;
import rx.internal.operators.r2;
import rx.internal.operators.s2;
import rx.internal.operators.t2;
import rx.internal.operators.u2;
import rx.internal.operators.v2;
import rx.internal.operators.w2;
import rx.internal.operators.x2;
import rx.internal.operators.y2;
import rx.internal.operators.z2;
import rx.observers.AssertableSubscriber;

/* loaded from: classes4.dex */
public class Single<T> {

    /* renamed from: do, reason: not valid java name */
    public final OnSubscribe<T> f34313do;

    public interface OnSubscribe<T> extends Action1<b02<? super T>> {
    }

    public interface Transformer<T, R> extends Func1<Single<T>, Single<R>> {
    }

    /* renamed from: rx.Single$break, reason: invalid class name */
    public class Cbreak implements OnSubscribe<T> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ rx.Cif f34314do;

        /* renamed from: rx.Single$break$do, reason: invalid class name */
        public class Cdo extends b02<T> {

            /* renamed from: if, reason: not valid java name */
            public final /* synthetic */ b02 f34317if;

            public Cdo(b02 b02Var) {
                this.f34317if = b02Var;
            }

            @Override // android.support.v4.b02
            /* renamed from: if */
            public void mo416if(T t) {
                this.f34317if.mo416if(t);
            }

            @Override // android.support.v4.b02
            public void onError(Throwable th) {
                this.f34317if.onError(th);
            }
        }

        /* renamed from: rx.Single$break$if, reason: invalid class name */
        public class Cif implements Action0 {

            /* renamed from: do, reason: not valid java name */
            public final /* synthetic */ b02 f34318do;

            /* renamed from: rx.Single$break$if$do, reason: invalid class name */
            public class Cdo implements Action0 {

                /* renamed from: do, reason: not valid java name */
                public final /* synthetic */ Cif.Cdo f34320do;

                public Cdo(Cif.Cdo cdo) {
                    this.f34320do = cdo;
                }

                @Override // rx.functions.Action0
                public void call() {
                    try {
                        Cif.this.f34318do.unsubscribe();
                    } finally {
                        this.f34320do.unsubscribe();
                    }
                }
            }

            public Cif(b02 b02Var) {
                this.f34318do = b02Var;
            }

            @Override // rx.functions.Action0
            public void call() {
                Cif.Cdo cdoMo971do = Cbreak.this.f34314do.mo971do();
                cdoMo971do.mo38376if(new Cdo(cdoMo971do));
            }
        }

        public Cbreak(rx.Cif cif) {
            this.f34314do = cif;
        }

        @Override // rx.functions.Action1
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void call(b02<? super T> b02Var) {
            Cdo cdo = new Cdo(b02Var);
            b02Var.m415do(rx.subscriptions.Cfor.m39225do(new Cif(cdo)));
            Single.this.u(cdo);
        }
    }

    /* renamed from: rx.Single$case, reason: invalid class name */
    public class Ccase implements Action1<Throwable> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Action1 f34322do;

        public Ccase(Action1 action1) {
            this.f34322do = action1;
        }

        @Override // rx.functions.Action1
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void call(Throwable th) {
            this.f34322do.call(th);
        }
    }

    /* renamed from: rx.Single$catch, reason: invalid class name */
    public static class Ccatch implements OnSubscribe<T> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Throwable f34324do;

        public Ccatch(Throwable th) {
            this.f34324do = th;
        }

        @Override // rx.functions.Action1
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void call(b02<? super T> b02Var) {
            b02Var.onError(this.f34324do);
        }
    }

    /* renamed from: rx.Single$class, reason: invalid class name */
    public static class Cclass implements OnSubscribe<T> {

        /* renamed from: rx.Single$class$do, reason: invalid class name */
        public class Cdo extends b02<Single<? extends T>> {

            /* renamed from: if, reason: not valid java name */
            public final /* synthetic */ b02 f34327if;

            public Cdo(b02 b02Var) {
                this.f34327if = b02Var;
            }

            @Override // android.support.v4.b02
            /* renamed from: for, reason: not valid java name and merged with bridge method [inline-methods] */
            public void mo416if(Single<? extends T> single) {
                single.u(this.f34327if);
            }

            @Override // android.support.v4.b02
            public void onError(Throwable th) {
                this.f34327if.onError(th);
            }
        }

        public Cclass() {
        }

        @Override // rx.functions.Action1
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void call(b02<? super T> b02Var) {
            Cdo cdo = new Cdo(b02Var);
            b02Var.m415do(cdo);
            Single.this.u(cdo);
        }
    }

    /* JADX INFO: Add missing generic type declarations: [R] */
    /* renamed from: rx.Single$const, reason: invalid class name */
    public static class Cconst<R> implements FuncN<R> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Func2 f34328do;

        public Cconst(Func2 func2) {
            this.f34328do = func2;
        }

        @Override // rx.functions.FuncN
        public R call(Object... objArr) {
            return (R) this.f34328do.call(objArr[0], objArr[1]);
        }
    }

    /* JADX INFO: Add missing generic type declarations: [R] */
    /* renamed from: rx.Single$do, reason: invalid class name */
    public static class Cdo<R> implements FuncN<R> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Func9 f34329do;

        public Cdo(Func9 func9) {
            this.f34329do = func9;
        }

        @Override // rx.functions.FuncN
        public R call(Object... objArr) {
            return (R) this.f34329do.call(objArr[0], objArr[1], objArr[2], objArr[3], objArr[4], objArr[5], objArr[6], objArr[7], objArr[8]);
        }
    }

    /* renamed from: rx.Single$else, reason: invalid class name */
    public class Celse implements Action1<T> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Action1 f34330do;

        public Celse(Action1 action1) {
            this.f34330do = action1;
        }

        @Override // rx.functions.Action1
        public void call(T t) {
            this.f34330do.call(rx.Cdo.m38312try(t));
        }
    }

    /* JADX INFO: Add missing generic type declarations: [R] */
    /* renamed from: rx.Single$final, reason: invalid class name */
    public static class Cfinal<R> implements FuncN<R> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Func3 f34332do;

        public Cfinal(Func3 func3) {
            this.f34332do = func3;
        }

        @Override // rx.functions.FuncN
        public R call(Object... objArr) {
            return (R) this.f34332do.call(objArr[0], objArr[1], objArr[2]);
        }
    }

    /* renamed from: rx.Single$for, reason: invalid class name */
    public class Cfor extends b02<T> {

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ Observer f34334if;

        public Cfor(Observer observer) {
            this.f34334if = observer;
        }

        @Override // android.support.v4.b02
        /* renamed from: if */
        public void mo416if(T t) {
            this.f34334if.onNext(t);
            this.f34334if.onCompleted();
        }

        @Override // android.support.v4.b02
        public void onError(Throwable th) {
            this.f34334if.onError(th);
        }
    }

    /* renamed from: rx.Single$goto, reason: invalid class name */
    public class Cgoto implements Action1<Throwable> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Action1 f34335do;

        public Cgoto(Action1 action1) {
            this.f34335do = action1;
        }

        @Override // rx.functions.Action1
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void call(Throwable th) {
            this.f34335do.call(rx.Cdo.m38311new(th));
        }
    }

    /* renamed from: rx.Single$if, reason: invalid class name */
    public class Cif extends b02<T> {

        /* renamed from: for, reason: not valid java name */
        public final /* synthetic */ Action1 f34337for;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ Action1 f34338if;

        public Cif(Action1 action1, Action1 action12) {
            this.f34338if = action1;
            this.f34337for = action12;
        }

        @Override // android.support.v4.b02
        /* renamed from: if */
        public final void mo416if(T t) {
            try {
                this.f34337for.call(t);
            } finally {
                unsubscribe();
            }
        }

        @Override // android.support.v4.b02
        public final void onError(Throwable th) {
            try {
                this.f34338if.call(th);
            } finally {
                unsubscribe();
            }
        }
    }

    /* JADX INFO: Add missing generic type declarations: [R] */
    /* renamed from: rx.Single$import, reason: invalid class name */
    public static class Cimport<R> implements FuncN<R> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Func7 f34340do;

        public Cimport(Func7 func7) {
            this.f34340do = func7;
        }

        @Override // rx.functions.FuncN
        public R call(Object... objArr) {
            return (R) this.f34340do.call(objArr[0], objArr[1], objArr[2], objArr[3], objArr[4], objArr[5], objArr[6]);
        }
    }

    /* JADX INFO: Add missing generic type declarations: [R] */
    /* renamed from: rx.Single$native, reason: invalid class name */
    public static class Cnative<R> implements FuncN<R> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Func8 f34341do;

        public Cnative(Func8 func8) {
            this.f34341do = func8;
        }

        @Override // rx.functions.FuncN
        public R call(Object... objArr) {
            return (R) this.f34341do.call(objArr[0], objArr[1], objArr[2], objArr[3], objArr[4], objArr[5], objArr[6], objArr[7]);
        }
    }

    /* renamed from: rx.Single$new, reason: invalid class name */
    public class Cnew implements OnSubscribe<T> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ rx.Cif f34342do;

        /* renamed from: rx.Single$new$do, reason: invalid class name */
        public class Cdo implements Action0 {

            /* renamed from: do, reason: not valid java name */
            public final /* synthetic */ b02 f34344do;

            /* renamed from: if, reason: not valid java name */
            public final /* synthetic */ Cif.Cdo f34346if;

            /* renamed from: rx.Single$new$do$do, reason: invalid class name and collision with other inner class name */
            public class C0502do extends b02<T> {
                public C0502do() {
                }

                @Override // android.support.v4.b02
                /* renamed from: if */
                public void mo416if(T t) {
                    try {
                        Cdo.this.f34344do.mo416if(t);
                    } finally {
                        Cdo.this.f34346if.unsubscribe();
                    }
                }

                @Override // android.support.v4.b02
                public void onError(Throwable th) {
                    try {
                        Cdo.this.f34344do.onError(th);
                    } finally {
                        Cdo.this.f34346if.unsubscribe();
                    }
                }
            }

            public Cdo(b02 b02Var, Cif.Cdo cdo) {
                this.f34344do = b02Var;
                this.f34346if = cdo;
            }

            @Override // rx.functions.Action0
            public void call() {
                C0502do c0502do = new C0502do();
                this.f34344do.m415do(c0502do);
                Single.this.u(c0502do);
            }
        }

        public Cnew(rx.Cif cif) {
            this.f34342do = cif;
        }

        @Override // rx.functions.Action1
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void call(b02<? super T> b02Var) {
            Cif.Cdo cdoMo971do = this.f34342do.mo971do();
            b02Var.m415do(cdoMo971do);
            cdoMo971do.mo38376if(new Cdo(b02Var, cdoMo971do));
        }
    }

    /* JADX INFO: Add missing generic type declarations: [R] */
    /* renamed from: rx.Single$super, reason: invalid class name */
    public static class Csuper<R> implements FuncN<R> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Func4 f34348do;

        public Csuper(Func4 func4) {
            this.f34348do = func4;
        }

        @Override // rx.functions.FuncN
        public R call(Object... objArr) {
            return (R) this.f34348do.call(objArr[0], objArr[1], objArr[2], objArr[3]);
        }
    }

    /* renamed from: rx.Single$this, reason: invalid class name */
    public static class Cthis implements OnSubscribe<T> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Callable f34349do;

        public Cthis(Callable callable) {
            this.f34349do = callable;
        }

        @Override // rx.functions.Action1
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void call(b02<? super T> b02Var) {
            try {
                ((Single) this.f34349do.call()).u(b02Var);
            } catch (Throwable th) {
                s80.m7301try(th);
                b02Var.onError(th);
            }
        }
    }

    /* JADX INFO: Add missing generic type declarations: [R] */
    /* renamed from: rx.Single$throw, reason: invalid class name */
    public static class Cthrow<R> implements FuncN<R> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Func5 f34350do;

        public Cthrow(Func5 func5) {
            this.f34350do = func5;
        }

        @Override // rx.functions.FuncN
        public R call(Object... objArr) {
            return (R) this.f34350do.call(objArr[0], objArr[1], objArr[2], objArr[3], objArr[4]);
        }
    }

    /* renamed from: rx.Single$try, reason: invalid class name */
    public class Ctry implements Func0<Single<T>> {
        public Ctry() {
        }

        @Override // rx.functions.Func0, java.util.concurrent.Callable
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public Single<T> call() {
            return Single.m38280throws(new TimeoutException());
        }
    }

    /* JADX INFO: Add missing generic type declarations: [R] */
    /* renamed from: rx.Single$while, reason: invalid class name */
    public static class Cwhile<R> implements FuncN<R> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Func6 f34352do;

        public Cwhile(Func6 func6) {
            this.f34352do = func6;
        }

        @Override // rx.functions.FuncN
        public R call(Object... objArr) {
            return (R) this.f34352do.call(objArr[0], objArr[1], objArr[2], objArr[3], objArr[4], objArr[5]);
        }
    }

    public Single(OnSubscribe<T> onSubscribe) {
        this.f34313do = rx.plugins.Cif.m39146interface(onSubscribe);
    }

    private Subscription N(y22<? super T> y22Var, boolean z) {
        if (z) {
            try {
                y22Var.onStart();
            } catch (Throwable th) {
                s80.m7301try(th);
                try {
                    y22Var.onError(rx.plugins.Cif.d(th));
                    return rx.subscriptions.Cfor.m39229try();
                } catch (Throwable th2) {
                    s80.m7301try(th2);
                    RuntimeException runtimeException = new RuntimeException("Error occurred attempting to subscribe [" + th.getMessage() + "] and then again while trying to pass to onError.", th2);
                    rx.plugins.Cif.d(runtimeException);
                    throw runtimeException;
                }
            }
        }
        rx.plugins.Cif.g(this, this.f34313do).call(r2.m38680if(y22Var));
        return rx.plugins.Cif.f(y22Var);
    }

    public static <T, Resource> Single<T> P(Func0<Resource> func0, Func1<? super Resource, ? extends Single<? extends T>> func1, Action1<? super Resource> action1) {
        return Q(func0, func1, action1, false);
    }

    public static <T, Resource> Single<T> Q(Func0<Resource> func0, Func1<? super Resource, ? extends Single<? extends T>> func1, Action1<? super Resource> action1, boolean z) {
        Objects.requireNonNull(func0, "resourceFactory is null");
        Objects.requireNonNull(func1, "singleFactory is null");
        Objects.requireNonNull(action1, "disposeAction is null");
        return m38265const(new w2(func0, func1, action1, z));
    }

    public static <R> Single<R> R(Iterable<? extends Single<?>> iterable, FuncN<? extends R> funcN) {
        return y2.m38814do(m38282volatile(iterable), funcN);
    }

    public static <T1, T2, T3, T4, T5, T6, T7, T8, T9, R> Single<R> S(Single<? extends T1> single, Single<? extends T2> single2, Single<? extends T3> single3, Single<? extends T4> single4, Single<? extends T5> single5, Single<? extends T6> single6, Single<? extends T7> single7, Single<? extends T8> single8, Single<? extends T9> single9, Func9<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? super T8, ? super T9, ? extends R> func9) {
        return y2.m38814do(new Single[]{single, single2, single3, single4, single5, single6, single7, single8, single9}, new Cdo(func9));
    }

    public static <T1, T2, T3, T4, T5, T6, T7, T8, R> Single<R> T(Single<? extends T1> single, Single<? extends T2> single2, Single<? extends T3> single3, Single<? extends T4> single4, Single<? extends T5> single5, Single<? extends T6> single6, Single<? extends T7> single7, Single<? extends T8> single8, Func8<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? super T8, ? extends R> func8) {
        return y2.m38814do(new Single[]{single, single2, single3, single4, single5, single6, single7, single8}, new Cnative(func8));
    }

    public static <T1, T2, T3, T4, T5, T6, T7, R> Single<R> U(Single<? extends T1> single, Single<? extends T2> single2, Single<? extends T3> single3, Single<? extends T4> single4, Single<? extends T5> single5, Single<? extends T6> single6, Single<? extends T7> single7, Func7<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? extends R> func7) {
        return y2.m38814do(new Single[]{single, single2, single3, single4, single5, single6, single7}, new Cimport(func7));
    }

    public static <T1, T2, T3, T4, T5, T6, R> Single<R> V(Single<? extends T1> single, Single<? extends T2> single2, Single<? extends T3> single3, Single<? extends T4> single4, Single<? extends T5> single5, Single<? extends T6> single6, Func6<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? extends R> func6) {
        return y2.m38814do(new Single[]{single, single2, single3, single4, single5, single6}, new Cwhile(func6));
    }

    public static <T1, T2, T3, T4, T5, R> Single<R> W(Single<? extends T1> single, Single<? extends T2> single2, Single<? extends T3> single3, Single<? extends T4> single4, Single<? extends T5> single5, Func5<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? extends R> func5) {
        return y2.m38814do(new Single[]{single, single2, single3, single4, single5}, new Cthrow(func5));
    }

    public static <T1, T2, T3, T4, R> Single<R> X(Single<? extends T1> single, Single<? extends T2> single2, Single<? extends T3> single3, Single<? extends T4> single4, Func4<? super T1, ? super T2, ? super T3, ? super T4, ? extends R> func4) {
        return y2.m38814do(new Single[]{single, single2, single3, single4}, new Csuper(func4));
    }

    public static <T1, T2, T3, R> Single<R> Y(Single<? extends T1> single, Single<? extends T2> single2, Single<? extends T3> single3, Func3<? super T1, ? super T2, ? super T3, ? extends R> func3) {
        return y2.m38814do(new Single[]{single, single2, single3}, new Cfinal(func3));
    }

    public static <T1, T2, R> Single<R> Z(Single<? extends T1> single, Single<? extends T2> single2, Func2<? super T1, ? super T2, ? extends R> func2) {
        return y2.m38814do(new Single[]{single, single2}, new Cconst(func2));
    }

    public static <T> Observable<T> a(Single<? extends T> single, Single<? extends T> single2, Single<? extends T> single3) {
        return Observable.S1(m38267do(single), m38267do(single2), m38267do(single3));
    }

    /* renamed from: abstract, reason: not valid java name */
    public static <T> Single<T> m38261abstract(Future<? extends T> future, rx.Cif cif) {
        return m38275package(future).z(cif);
    }

    public static <T> Observable<T> b(Single<? extends T> single, Single<? extends T> single2, Single<? extends T> single3, Single<? extends T> single4) {
        return Observable.T1(m38267do(single), m38267do(single2), m38267do(single3), m38267do(single4));
    }

    /* renamed from: break, reason: not valid java name */
    public static <T> Observable<T> m38262break(Single<? extends T> single, Single<? extends T> single2, Single<? extends T> single3, Single<? extends T> single4, Single<? extends T> single5, Single<? extends T> single6, Single<? extends T> single7, Single<? extends T> single8) {
        return Observable.k(m38267do(single), m38267do(single2), m38267do(single3), m38267do(single4), m38267do(single5), m38267do(single6), m38267do(single7), m38267do(single8));
    }

    public static <T> Observable<T> c(Single<? extends T> single, Single<? extends T> single2, Single<? extends T> single3, Single<? extends T> single4, Single<? extends T> single5) {
        return Observable.U1(m38267do(single), m38267do(single2), m38267do(single3), m38267do(single4), m38267do(single5));
    }

    /* renamed from: case, reason: not valid java name */
    public static <T> Observable<T> m38263case(Single<? extends T> single, Single<? extends T> single2, Single<? extends T> single3, Single<? extends T> single4) {
        return Observable.g(m38267do(single), m38267do(single2), m38267do(single3), m38267do(single4));
    }

    /* renamed from: catch, reason: not valid java name */
    public static <T> Observable<T> m38264catch(Single<? extends T> single, Single<? extends T> single2, Single<? extends T> single3, Single<? extends T> single4, Single<? extends T> single5, Single<? extends T> single6, Single<? extends T> single7, Single<? extends T> single8, Single<? extends T> single9) {
        return Observable.l(m38267do(single), m38267do(single2), m38267do(single3), m38267do(single4), m38267do(single5), m38267do(single6), m38267do(single7), m38267do(single8), m38267do(single9));
    }

    /* renamed from: const, reason: not valid java name */
    public static <T> Single<T> m38265const(OnSubscribe<T> onSubscribe) {
        return new Single<>(onSubscribe);
    }

    /* renamed from: continue, reason: not valid java name */
    public static <T> Single<T> m38266continue(Callable<? extends T> callable) {
        return m38265const(new pz1(callable));
    }

    public static <T> Observable<T> d(Single<? extends T> single, Single<? extends T> single2, Single<? extends T> single3, Single<? extends T> single4, Single<? extends T> single5, Single<? extends T> single6) {
        return Observable.V1(m38267do(single), m38267do(single2), m38267do(single3), m38267do(single4), m38267do(single5), m38267do(single6));
    }

    /* renamed from: do, reason: not valid java name */
    private static <T> Observable<T> m38267do(Single<T> single) {
        return Observable.q5(new d3(single.f34313do));
    }

    public static <T> Observable<T> e(Single<? extends T> single, Single<? extends T> single2, Single<? extends T> single3, Single<? extends T> single4, Single<? extends T> single5, Single<? extends T> single6, Single<? extends T> single7) {
        return Observable.W1(m38267do(single), m38267do(single2), m38267do(single3), m38267do(single4), m38267do(single5), m38267do(single6), m38267do(single7));
    }

    /* renamed from: else, reason: not valid java name */
    public static <T> Observable<T> m38268else(Single<? extends T> single, Single<? extends T> single2, Single<? extends T> single3, Single<? extends T> single4, Single<? extends T> single5) {
        return Observable.h(m38267do(single), m38267do(single2), m38267do(single3), m38267do(single4), m38267do(single5));
    }

    public static <T> Observable<T> f(Single<? extends T> single, Single<? extends T> single2, Single<? extends T> single3, Single<? extends T> single4, Single<? extends T> single5, Single<? extends T> single6, Single<? extends T> single7, Single<? extends T> single8) {
        return Observable.X1(m38267do(single), m38267do(single2), m38267do(single3), m38267do(single4), m38267do(single5), m38267do(single6), m38267do(single7), m38267do(single8));
    }

    /* renamed from: final, reason: not valid java name */
    public static <T> Single<T> m38269final(Callable<Single<T>> callable) {
        return m38265const(new Cthis(callable));
    }

    public static <T> Observable<T> g(Single<? extends T> single, Single<? extends T> single2, Single<? extends T> single3, Single<? extends T> single4, Single<? extends T> single5, Single<? extends T> single6, Single<? extends T> single7, Single<? extends T> single8, Single<? extends T> single9) {
        return Observable.Y1(m38267do(single), m38267do(single2), m38267do(single3), m38267do(single4), m38267do(single5), m38267do(single6), m38267do(single7), m38267do(single8), m38267do(single9));
    }

    /* renamed from: goto, reason: not valid java name */
    public static <T> Observable<T> m38270goto(Single<? extends T> single, Single<? extends T> single2, Single<? extends T> single3, Single<? extends T> single4, Single<? extends T> single5, Single<? extends T> single6) {
        return Observable.i(m38267do(single), m38267do(single2), m38267do(single3), m38267do(single4), m38267do(single5), m38267do(single6));
    }

    public static <T> Single<T> h(Single<? extends Single<? extends T>> single) {
        return single instanceof rx.internal.util.Cgoto ? ((rx.internal.util.Cgoto) single).d0(rx.internal.util.Cthis.m38929for()) : m38265const(new Cclass());
    }

    public static <T> Observable<T> i(Observable<? extends Single<? extends T>> observable) {
        return m38272instanceof(observable, Integer.MAX_VALUE);
    }

    /* renamed from: implements, reason: not valid java name */
    public static <T> Observable<T> m38271implements(Observable<? extends Single<? extends T>> observable) {
        return m38272instanceof(observable, Integer.MAX_VALUE);
    }

    /* renamed from: instanceof, reason: not valid java name */
    public static <T> Observable<T> m38272instanceof(Observable<? extends Single<? extends T>> observable, int i) {
        return (Observable<T>) observable.Z0(rx.internal.util.Cthis.m38929for(), false, i);
    }

    /* renamed from: interface, reason: not valid java name */
    public static <T> Single<T> m38273interface(T t) {
        return rx.internal.util.Cgoto.b0(t);
    }

    public static <T> Observable<T> j(Observable<? extends Single<? extends T>> observable, int i) {
        return (Observable<T>) observable.Z0(rx.internal.util.Cthis.m38929for(), true, i);
    }

    /* renamed from: new, reason: not valid java name */
    public static <T> Observable<T> m38274new(Single<? extends T> single, Single<? extends T> single2) {
        return Observable.e(m38267do(single), m38267do(single2));
    }

    /* renamed from: package, reason: not valid java name */
    public static <T> Single<T> m38275package(Future<? extends T> future) {
        return m38265const(new rz1(future, 0L, null));
    }

    /* renamed from: private, reason: not valid java name */
    public static <T> Single<T> m38276private(Future<? extends T> future, long j, TimeUnit timeUnit) {
        Objects.requireNonNull(timeUnit, "unit is null");
        return m38265const(new rz1(future, j, timeUnit));
    }

    /* renamed from: strictfp, reason: not valid java name */
    public static <T> Single<T> m38277strictfp(Action1<SingleEmitter<T>> action1) {
        Objects.requireNonNull(action1, "producer is null");
        return m38265const(new p2(action1));
    }

    /* renamed from: synchronized, reason: not valid java name */
    public static <T> Observable<T> m38278synchronized(Single<? extends T> single, Single<? extends T> single2) {
        return Observable.R1(m38267do(single), m38267do(single2));
    }

    /* renamed from: this, reason: not valid java name */
    public static <T> Observable<T> m38279this(Single<? extends T> single, Single<? extends T> single2, Single<? extends T> single3, Single<? extends T> single4, Single<? extends T> single5, Single<? extends T> single6, Single<? extends T> single7) {
        return Observable.j(m38267do(single), m38267do(single2), m38267do(single3), m38267do(single4), m38267do(single5), m38267do(single6), m38267do(single7));
    }

    /* renamed from: throws, reason: not valid java name */
    public static <T> Single<T> m38280throws(Throwable th) {
        return m38265const(new Ccatch(th));
    }

    /* renamed from: try, reason: not valid java name */
    public static <T> Observable<T> m38281try(Single<? extends T> single, Single<? extends T> single2, Single<? extends T> single3) {
        return Observable.f(m38267do(single), m38267do(single2), m38267do(single3));
    }

    /* renamed from: volatile, reason: not valid java name */
    public static <T> Single<? extends T>[] m38282volatile(Iterable<? extends Single<? extends T>> iterable) {
        if (iterable instanceof Collection) {
            Collection collection = (Collection) iterable;
            return (Single[]) collection.toArray(new Single[collection.size()]);
        }
        Single<? extends T>[] singleArr = new Single[8];
        int i = 0;
        for (Single<? extends T> single : iterable) {
            if (i == singleArr.length) {
                Single<? extends T>[] singleArr2 = new Single[(i >> 2) + i];
                System.arraycopy(singleArr, 0, singleArr2, 0, i);
                singleArr = singleArr2;
            }
            singleArr[i] = single;
            i++;
        }
        if (singleArr.length == i) {
            return singleArr;
        }
        Single<? extends T>[] singleArr3 = new Single[i];
        System.arraycopy(singleArr, 0, singleArr3, 0, i);
        return singleArr3;
    }

    public final Single<T> A(Completable completable) {
        return m38265const(new z2(this.f34313do, completable));
    }

    public final <E> Single<T> B(Observable<? extends E> observable) {
        return m38265const(new a3(this.f34313do, observable));
    }

    public final <E> Single<T> C(Single<? extends E> single) {
        return m38265const(new b3(this.f34313do, single));
    }

    public final AssertableSubscriber<T> D() {
        v3 v3VarM8727do = v3.m8727do(Long.MAX_VALUE);
        v(v3VarM8727do);
        return v3VarM8727do;
    }

    public final Single<T> E(long j, TimeUnit timeUnit) {
        return H(j, timeUnit, null, ds1.m1517do());
    }

    public final Single<T> F(long j, TimeUnit timeUnit, rx.Cif cif) {
        return H(j, timeUnit, null, cif);
    }

    public final Single<T> G(long j, TimeUnit timeUnit, Single<? extends T> single) {
        return H(j, timeUnit, single, ds1.m1517do());
    }

    public final Single<T> H(long j, TimeUnit timeUnit, Single<? extends T> single, rx.Cif cif) {
        if (single == null) {
            single = m38269final(new Ctry());
        }
        return m38265const(new c3(this.f34313do, j, timeUnit, cif, single.f34313do));
    }

    public final <R> R I(Func1<? super Single<T>, R> func1) {
        return func1.call(this);
    }

    public final rx.singles.Cdo<T> J() {
        return rx.singles.Cdo.m39205do(this);
    }

    public final Completable K() {
        return Completable.m38164implements(this);
    }

    public final Observable<T> L() {
        return m38267do(this);
    }

    public final Subscription M(y22<? super T> y22Var) {
        return N(y22Var, true);
    }

    @e90
    public final Single<T> O(rx.Cif cif) {
        return m38265const(new Cbreak(cif));
    }

    public final <T2, R> Single<R> a0(Single<? extends T2> single, Func2<? super T, ? super T2, ? extends R> func2) {
        return Z(this, single, func2);
    }

    /* renamed from: class, reason: not valid java name */
    public final Observable<T> m38283class(Single<? extends T> single) {
        return m38274new(this, single);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: default, reason: not valid java name */
    public final <R> Single<R> m38284default(Func1<? super T, ? extends Single<? extends R>> func1) {
        return this instanceof rx.internal.util.Cgoto ? ((rx.internal.util.Cgoto) this).d0(func1) : h(m38298transient(func1));
    }

    /* renamed from: extends, reason: not valid java name */
    public final Completable m38285extends(Func1<? super T, ? extends Completable> func1) {
        return Completable.m38170throw(new rx.internal.operators.Celse(this, func1));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: finally, reason: not valid java name */
    public final <R> Observable<R> m38286finally(Func1<? super T, ? extends Observable<? extends R>> func1) {
        return Observable.P1(m38267do(m38298transient(func1)));
    }

    /* renamed from: for, reason: not valid java name */
    public <R> Single<R> m38287for(Transformer<? super T, ? extends R> transformer) {
        return (Single) transformer.call(this);
    }

    /* renamed from: if, reason: not valid java name */
    public final Single<T> m38288if() {
        return L().m38248finally(1).l5();
    }

    /* renamed from: import, reason: not valid java name */
    public final Single<T> m38289import(Action0 action0) {
        return m38265const(new n2(this, action0));
    }

    public final Observable<T> k(Single<? extends T> single) {
        return m38278synchronized(this, single);
    }

    public final Single<T> l(rx.Cif cif) {
        if (this instanceof rx.internal.util.Cgoto) {
            return ((rx.internal.util.Cgoto) this).e0(cif);
        }
        Objects.requireNonNull(cif, "scheduler is null");
        return m38265const(new s2(this.f34313do, cif));
    }

    public final Single<T> m(Single<? extends T> single) {
        return new Single<>(x2.m38792for(this, single));
    }

    public final Single<T> n(Func1<Throwable, ? extends Single<? extends T>> func1) {
        return new Single<>(x2.m38793if(this, func1));
    }

    /* renamed from: native, reason: not valid java name */
    public final Single<T> m38290native(Action1<rx.Cdo<? extends T>> action1) {
        if (action1 != null) {
            return m38265const(new o2(this, new Celse(action1), new Cgoto(action1)));
        }
        throw new IllegalArgumentException("onNotification is null");
    }

    public final Single<T> o(Func1<Throwable, ? extends T> func1) {
        return m38265const(new t2(this.f34313do, func1));
    }

    public final Single<T> p() {
        return L().k3().l5();
    }

    /* renamed from: protected, reason: not valid java name */
    public final <R> Single<R> m38291protected(Observable.Operator<? extends R, ? super T> operator) {
        return m38265const(new r2(this.f34313do, operator));
    }

    /* renamed from: public, reason: not valid java name */
    public final Single<T> m38292public(Action1<Throwable> action1) {
        if (action1 != null) {
            return m38265const(new o2(this, rx.functions.Cdo.m38335do(), new Ccase(action1)));
        }
        throw new IllegalArgumentException("onError is null");
    }

    public final Single<T> q(long j) {
        return L().l3(j).l5();
    }

    public final Single<T> r(Func2<Integer, Throwable, Boolean> func2) {
        return L().m3(func2).l5();
    }

    /* renamed from: return, reason: not valid java name */
    public final Single<T> m38293return(Action0 action0) {
        return m38265const(new mz1(this.f34313do, action0));
    }

    public final Single<T> s(Func1<Observable<? extends Throwable>, ? extends Observable<?>> func1) {
        return L().n3(func1).l5();
    }

    /* renamed from: static, reason: not valid java name */
    public final Single<T> m38294static(Action1<? super T> action1) {
        if (action1 != null) {
            return m38265const(new o2(this, action1, rx.functions.Cdo.m38335do()));
        }
        throw new IllegalArgumentException("onSuccess is null");
    }

    /* renamed from: super, reason: not valid java name */
    public final Single<T> m38295super(long j, TimeUnit timeUnit) {
        return m38297throw(j, timeUnit, ds1.m1517do());
    }

    /* renamed from: switch, reason: not valid java name */
    public final Single<T> m38296switch(Action0 action0) {
        return m38265const(new nz1(this.f34313do, action0));
    }

    public final Subscription t() {
        return y(rx.functions.Cdo.m38335do(), rx.functions.Cdo.m38340if());
    }

    /* renamed from: throw, reason: not valid java name */
    public final Single<T> m38297throw(long j, TimeUnit timeUnit, rx.Cif cif) {
        return m38265const(new m2(this.f34313do, j, timeUnit, cif));
    }

    /* renamed from: transient, reason: not valid java name */
    public final <R> Single<R> m38298transient(Func1<? super T, ? extends R> func1) {
        return m38265const(new v2(this, func1));
    }

    public final Subscription u(b02<? super T> b02Var) {
        if (b02Var == null) {
            throw new IllegalArgumentException("te is null");
        }
        try {
            rx.plugins.Cif.g(this, this.f34313do).call(b02Var);
            return rx.plugins.Cif.f(b02Var);
        } catch (Throwable th) {
            s80.m7301try(th);
            try {
                b02Var.onError(rx.plugins.Cif.d(th));
                return rx.subscriptions.Cfor.m39227if();
            } catch (Throwable th2) {
                s80.m7301try(th2);
                RuntimeException runtimeException = new RuntimeException("Error occurred attempting to subscribe [" + th.getMessage() + "] and then again while trying to pass to onError.", th2);
                rx.plugins.Cif.d(runtimeException);
                throw runtimeException;
            }
        }
    }

    public final Subscription v(y22<? super T> y22Var) {
        if (y22Var == null) {
            throw new IllegalArgumentException("observer can not be null");
        }
        y22Var.onStart();
        return !(y22Var instanceof sr1) ? N(new sr1(y22Var), false) : N(y22Var, true);
    }

    public final Subscription w(Observer<? super T> observer) {
        Objects.requireNonNull(observer, "observer is null");
        return u(new Cfor(observer));
    }

    /* renamed from: while, reason: not valid java name */
    public final Single<T> m38299while(Observable<?> observable) {
        Objects.requireNonNull(observable);
        return m38265const(new u2(this, observable));
    }

    public final Subscription x(Action1<? super T> action1) {
        return y(action1, rx.functions.Cdo.m38340if());
    }

    public final Subscription y(Action1<? super T> action1, Action1<Throwable> action12) {
        if (action1 == null) {
            throw new IllegalArgumentException("onSuccess can not be null");
        }
        if (action12 != null) {
            return u(new Cif(action12, action1));
        }
        throw new IllegalArgumentException("onError can not be null");
    }

    public final Single<T> z(rx.Cif cif) {
        return this instanceof rx.internal.util.Cgoto ? ((rx.internal.util.Cgoto) this).e0(cif) : m38265const(new Cnew(cif));
    }

    @Deprecated
    public Single(Observable.OnSubscribe<T> onSubscribe) {
        this.f34313do = rx.plugins.Cif.m39146interface(new q2(onSubscribe));
    }
}
