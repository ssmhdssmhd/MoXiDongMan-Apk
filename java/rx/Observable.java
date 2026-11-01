package rx;

import android.support.v4.c71;
import android.support.v4.d71;
import android.support.v4.ds1;
import android.support.v4.e71;
import android.support.v4.f71;
import android.support.v4.i72;
import android.support.v4.j61;
import android.support.v4.n8;
import android.support.v4.s80;
import android.support.v4.sr1;
import android.support.v4.v3;
import android.support.v4.w62;
import android.support.v4.w71;
import android.support.v4.x61;
import android.support.v4.x71;
import android.support.v4.y22;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import rx.BackpressureOverflow;
import rx.Emitter;
import rx.functions.Action0;
import rx.functions.Action1;
import rx.functions.Action2;
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
import rx.internal.operators.Cabstract;
import rx.internal.operators.Ccase;
import rx.internal.operators.Ccontinue;
import rx.internal.operators.Cdefault;
import rx.internal.operators.Cextends;
import rx.internal.operators.Cfinally;
import rx.internal.operators.Cimplements;
import rx.internal.operators.Cinstanceof;
import rx.internal.operators.Cinterface;
import rx.internal.operators.Cnative;
import rx.internal.operators.Cpackage;
import rx.internal.operators.Cprivate;
import rx.internal.operators.Cprotected;
import rx.internal.operators.Cpublic;
import rx.internal.operators.Cstatic;
import rx.internal.operators.Cstrictfp;
import rx.internal.operators.Cswitch;
import rx.internal.operators.Csynchronized;
import rx.internal.operators.Cthrows;
import rx.internal.operators.Ctransient;
import rx.internal.operators.Cvolatile;
import rx.internal.operators.OperatorReplay;
import rx.internal.operators.a;
import rx.internal.operators.a0;
import rx.internal.operators.a1;
import rx.internal.operators.a2;
import rx.internal.operators.b0;
import rx.internal.operators.b1;
import rx.internal.operators.b2;
import rx.internal.operators.c0;
import rx.internal.operators.c1;
import rx.internal.operators.c2;
import rx.internal.operators.d0;
import rx.internal.operators.d1;
import rx.internal.operators.d2;
import rx.internal.operators.e0;
import rx.internal.operators.e1;
import rx.internal.operators.e2;
import rx.internal.operators.f;
import rx.internal.operators.f0;
import rx.internal.operators.f1;
import rx.internal.operators.f2;
import rx.internal.operators.g;
import rx.internal.operators.g0;
import rx.internal.operators.g1;
import rx.internal.operators.g2;
import rx.internal.operators.h;
import rx.internal.operators.h0;
import rx.internal.operators.h1;
import rx.internal.operators.h2;
import rx.internal.operators.i;
import rx.internal.operators.i0;
import rx.internal.operators.i1;
import rx.internal.operators.i2;
import rx.internal.operators.j0;
import rx.internal.operators.j1;
import rx.internal.operators.j2;
import rx.internal.operators.k;
import rx.internal.operators.k0;
import rx.internal.operators.k1;
import rx.internal.operators.k2;
import rx.internal.operators.l;
import rx.internal.operators.l0;
import rx.internal.operators.l1;
import rx.internal.operators.l2;
import rx.internal.operators.m;
import rx.internal.operators.m0;
import rx.internal.operators.m1;
import rx.internal.operators.n;
import rx.internal.operators.n0;
import rx.internal.operators.n1;
import rx.internal.operators.o;
import rx.internal.operators.o0;
import rx.internal.operators.o1;
import rx.internal.operators.p;
import rx.internal.operators.p0;
import rx.internal.operators.p1;
import rx.internal.operators.q;
import rx.internal.operators.q0;
import rx.internal.operators.q1;
import rx.internal.operators.r;
import rx.internal.operators.r0;
import rx.internal.operators.r1;
import rx.internal.operators.s;
import rx.internal.operators.s0;
import rx.internal.operators.s1;
import rx.internal.operators.t;
import rx.internal.operators.t1;
import rx.internal.operators.u;
import rx.internal.operators.u0;
import rx.internal.operators.u1;
import rx.internal.operators.v;
import rx.internal.operators.v0;
import rx.internal.operators.v1;
import rx.internal.operators.w;
import rx.internal.operators.w0;
import rx.internal.operators.w1;
import rx.internal.operators.x;
import rx.internal.operators.x0;
import rx.internal.operators.x1;
import rx.internal.operators.y;
import rx.internal.operators.y0;
import rx.internal.operators.y1;
import rx.internal.operators.z;
import rx.internal.operators.z0;
import rx.internal.operators.z1;
import rx.internal.util.Celse;
import rx.internal.util.Cthis;
import rx.observables.Cdo;
import rx.observables.Cnew;
import rx.observables.Ctry;
import rx.observers.AssertableSubscriber;
import rx.plugins.Cif;
import rx.subscriptions.Cfor;

/* loaded from: classes4.dex */
public class Observable<T> {

    /* renamed from: do, reason: not valid java name */
    public final OnSubscribe<T> f34312do;

    public interface OnSubscribe<T> extends Action1<y22<? super T>> {
    }

    public interface Operator<R, T> extends Func1<y22<? super R>, y22<? super T>> {
    }

    public interface Transformer<T, R> extends Func1<Observable<T>, Observable<R>> {
    }

    public Observable(OnSubscribe<T> onSubscribe) {
        this.f34312do = onSubscribe;
    }

    public static <T> Observable<T> A(Observable<? extends T> observable, Observable<? extends T> observable2) {
        return w(Arrays.asList(observable, observable2));
    }

    public static <T> Observable<T> A1(T t, T t2, T t3, T t4, T t5, T t6, T t7) {
        return h1(new Object[]{t, t2, t3, t4, t5, t6, t7});
    }

    public static <T> Observable<T> B(Observable<? extends T> observable, Observable<? extends T> observable2, Observable<? extends T> observable3) {
        return w(Arrays.asList(observable, observable2, observable3));
    }

    public static <T> Observable<T> B0() {
        return Cnative.instance();
    }

    public static <T> Observable<T> B1(T t, T t2, T t3, T t4, T t5, T t6, T t7, T t8) {
        return h1(new Object[]{t, t2, t3, t4, t5, t6, t7, t8});
    }

    public static <T> Observable<T> C(Observable<? extends T> observable, Observable<? extends T> observable2, Observable<? extends T> observable3, Observable<? extends T> observable4) {
        return w(Arrays.asList(observable, observable2, observable3, observable4));
    }

    public static <T> Observable<T> C0(Throwable th) {
        return q5(new f71(th));
    }

    public static <T> Observable<T> C1(T t, T t2, T t3, T t4, T t5, T t6, T t7, T t8, T t9) {
        return h1(new Object[]{t, t2, t3, t4, t5, t6, t7, t8, t9});
    }

    public static <T> Observable<T> D(Observable<? extends T> observable, Observable<? extends T> observable2, Observable<? extends T> observable3, Observable<? extends T> observable4, Observable<? extends T> observable5) {
        return w(Arrays.asList(observable, observable2, observable3, observable4, observable5));
    }

    public static <T> Observable<T> D1(T t, T t2, T t3, T t4, T t5, T t6, T t7, T t8, T t9, T t10) {
        return h1(new Object[]{t, t2, t3, t4, t5, t6, t7, t8, t9, t10});
    }

    public static <T> Observable<T> E(Observable<? extends T> observable, Observable<? extends T> observable2, Observable<? extends T> observable3, Observable<? extends T> observable4, Observable<? extends T> observable5, Observable<? extends T> observable6) {
        return w(Arrays.asList(observable, observable2, observable3, observable4, observable5, observable6));
    }

    public static <T> Observable<T> F(Observable<? extends T> observable, Observable<? extends T> observable2, Observable<? extends T> observable3, Observable<? extends T> observable4, Observable<? extends T> observable5, Observable<? extends T> observable6, Observable<? extends T> observable7) {
        return w(Arrays.asList(observable, observable2, observable3, observable4, observable5, observable6, observable7));
    }

    public static <T> Observable<T> G(Observable<? extends T> observable, Observable<? extends T> observable2, Observable<? extends T> observable3, Observable<? extends T> observable4, Observable<? extends T> observable5, Observable<? extends T> observable6, Observable<? extends T> observable7, Observable<? extends T> observable8) {
        return w(Arrays.asList(observable, observable2, observable3, observable4, observable5, observable6, observable7, observable8));
    }

    public static <T> Observable<T> H(Observable<? extends T> observable, Observable<? extends T> observable2, Observable<? extends T> observable3, Observable<? extends T> observable4, Observable<? extends T> observable5, Observable<? extends T> observable6, Observable<? extends T> observable7, Observable<? extends T> observable8, Observable<? extends T> observable9) {
        return w(Arrays.asList(observable, observable2, observable3, observable4, observable5, observable6, observable7, observable8, observable9));
    }

    public static Observable<Integer> J2(int i, int i2) {
        if (i2 < 0) {
            throw new IllegalArgumentException("Count can not be negative");
        }
        if (i2 == 0) {
            return B0();
        }
        if (i <= (Integer.MAX_VALUE - i2) + 1) {
            return i2 == 1 ? u1(Integer.valueOf(i)) : q5(new f(i, (i2 - 1) + i));
        }
        throw new IllegalArgumentException("start + count can not exceed Integer.MAX_VALUE");
    }

    public static Observable<Integer> K2(int i, int i2, Cif cif) {
        return J2(i, i2).e4(cif);
    }

    private <R> Observable<R> L1(Func1<? super T, ? extends R> func1, Func1<? super Throwable, ? extends R> func12, Func0<? extends R> func0) {
        return I1(new p0(func1, func12, func0));
    }

    public static <T> Observable<T> N1(Iterable<? extends Observable<? extends T>> iterable) {
        return P1(d1(iterable));
    }

    public static <T> Observable<T> O1(Iterable<? extends Observable<? extends T>> iterable, int i) {
        return Q1(d1(iterable), i);
    }

    public static <T> Observable<T> P1(Observable<? extends Observable<? extends T>> observable) {
        return observable.getClass() == Celse.class ? ((Celse) observable).h6(Cthis.m38929for()) : (Observable<T>) observable.I1(s0.m38696if(false));
    }

    public static <T> Observable<T> Q1(Observable<? extends Observable<? extends T>> observable, int i) {
        return observable.getClass() == Celse.class ? ((Celse) observable).h6(Cthis.m38929for()) : (Observable<T>) observable.I1(s0.m38695for(false, i));
    }

    public static <T> Observable<T> R1(Observable<? extends T> observable, Observable<? extends T> observable2) {
        return Z1(new Observable[]{observable, observable2});
    }

    public static <R> Observable<R> R5(Iterable<? extends Observable<?>> iterable, FuncN<? extends R> funcN) {
        ArrayList arrayList = new ArrayList();
        Iterator<? extends Observable<?>> it = iterable.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next());
        }
        return u1(arrayList.toArray(new Observable[arrayList.size()])).I1(new k2(funcN));
    }

    @Deprecated
    public static <T> Observable<T> S(OnSubscribe<T> onSubscribe) {
        return new Observable<>(Cif.m39164volatile(onSubscribe));
    }

    public static <T> Observable<T> S1(Observable<? extends T> observable, Observable<? extends T> observable2, Observable<? extends T> observable3) {
        return Z1(new Observable[]{observable, observable2, observable3});
    }

    public static <T1, T2, T3, T4, T5, T6, T7, T8, T9, R> Observable<R> S5(Observable<? extends T1> observable, Observable<? extends T2> observable2, Observable<? extends T3> observable3, Observable<? extends T4> observable4, Observable<? extends T5> observable5, Observable<? extends T6> observable6, Observable<? extends T7> observable7, Observable<? extends T8> observable8, Observable<? extends T9> observable9, Func9<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? super T8, ? super T9, ? extends R> func9) {
        return u1(new Observable[]{observable, observable2, observable3, observable4, observable5, observable6, observable7, observable8, observable9}).I1(new k2(func9));
    }

    public static <T> Observable<T> T(Action1<Emitter<T>> action1, Emitter.Cdo cdo) {
        return q5(new Cextends(action1, cdo));
    }

    public static <T> Observable<T> T1(Observable<? extends T> observable, Observable<? extends T> observable2, Observable<? extends T> observable3, Observable<? extends T> observable4) {
        return Z1(new Observable[]{observable, observable2, observable3, observable4});
    }

    public static <T1, T2, T3, T4, T5, T6, T7, T8, R> Observable<R> T5(Observable<? extends T1> observable, Observable<? extends T2> observable2, Observable<? extends T3> observable3, Observable<? extends T4> observable4, Observable<? extends T5> observable5, Observable<? extends T6> observable6, Observable<? extends T7> observable7, Observable<? extends T8> observable8, Func8<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? super T8, ? extends R> func8) {
        return u1(new Observable[]{observable, observable2, observable3, observable4, observable5, observable6, observable7, observable8}).I1(new k2(func8));
    }

    @n8
    public static <S, T> Observable<T> U(Cdo<S, T> cdo) {
        return q5(cdo);
    }

    public static <T> Observable<T> U1(Observable<? extends T> observable, Observable<? extends T> observable2, Observable<? extends T> observable3, Observable<? extends T> observable4, Observable<? extends T> observable5) {
        return Z1(new Observable[]{observable, observable2, observable3, observable4, observable5});
    }

    @Deprecated
    public static Observable<Long> U4(long j, long j2, TimeUnit timeUnit) {
        return p1(j, j2, timeUnit, ds1.m1517do());
    }

    public static <T1, T2, T3, T4, T5, T6, T7, R> Observable<R> U5(Observable<? extends T1> observable, Observable<? extends T2> observable2, Observable<? extends T3> observable3, Observable<? extends T4> observable4, Observable<? extends T5> observable5, Observable<? extends T6> observable6, Observable<? extends T7> observable7, Func7<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? extends R> func7) {
        return u1(new Observable[]{observable, observable2, observable3, observable4, observable5, observable6, observable7}).I1(new k2(func7));
    }

    public static <S, T> Observable<T> V(Ctry<S, T> ctry) {
        return q5(ctry);
    }

    public static <T> Observable<T> V1(Observable<? extends T> observable, Observable<? extends T> observable2, Observable<? extends T> observable3, Observable<? extends T> observable4, Observable<? extends T> observable5, Observable<? extends T> observable6) {
        return Z1(new Observable[]{observable, observable2, observable3, observable4, observable5, observable6});
    }

    @Deprecated
    public static Observable<Long> V4(long j, long j2, TimeUnit timeUnit, Cif cif) {
        return p1(j, j2, timeUnit, cif);
    }

    public static <T1, T2, T3, T4, T5, T6, R> Observable<R> V5(Observable<? extends T1> observable, Observable<? extends T2> observable2, Observable<? extends T3> observable3, Observable<? extends T4> observable4, Observable<? extends T5> observable5, Observable<? extends T6> observable6, Func6<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? extends R> func6) {
        return u1(new Observable[]{observable, observable2, observable3, observable4, observable5, observable6}).I1(new k2(func6));
    }

    public static <T> Observable<T> W1(Observable<? extends T> observable, Observable<? extends T> observable2, Observable<? extends T> observable3, Observable<? extends T> observable4, Observable<? extends T> observable5, Observable<? extends T> observable6, Observable<? extends T> observable7) {
        return Z1(new Observable[]{observable, observable2, observable3, observable4, observable5, observable6, observable7});
    }

    public static Observable<Long> W4(long j, TimeUnit timeUnit) {
        return X4(j, timeUnit, ds1.m1517do());
    }

    public static <T1, T2, T3, T4, T5, R> Observable<R> W5(Observable<? extends T1> observable, Observable<? extends T2> observable2, Observable<? extends T3> observable3, Observable<? extends T4> observable4, Observable<? extends T5> observable5, Func5<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? extends R> func5) {
        return u1(new Observable[]{observable, observable2, observable3, observable4, observable5}).I1(new k2(func5));
    }

    public static <T> Observable<T> X1(Observable<? extends T> observable, Observable<? extends T> observable2, Observable<? extends T> observable3, Observable<? extends T> observable4, Observable<? extends T> observable5, Observable<? extends T> observable6, Observable<? extends T> observable7, Observable<? extends T> observable8) {
        return Z1(new Observable[]{observable, observable2, observable3, observable4, observable5, observable6, observable7, observable8});
    }

    public static Observable<Long> X4(long j, TimeUnit timeUnit, Cif cif) {
        return q5(new o(j, timeUnit, cif));
    }

    public static <T1, T2, T3, T4, R> Observable<R> X5(Observable<? extends T1> observable, Observable<? extends T2> observable2, Observable<? extends T3> observable3, Observable<? extends T4> observable4, Func4<? super T1, ? super T2, ? super T3, ? super T4, ? extends R> func4) {
        return u1(new Observable[]{observable, observable2, observable3, observable4}).I1(new k2(func4));
    }

    public static <T> Observable<T> Y1(Observable<? extends T> observable, Observable<? extends T> observable2, Observable<? extends T> observable3, Observable<? extends T> observable4, Observable<? extends T> observable5, Observable<? extends T> observable6, Observable<? extends T> observable7, Observable<? extends T> observable8, Observable<? extends T> observable9) {
        return Z1(new Observable[]{observable, observable2, observable3, observable4, observable5, observable6, observable7, observable8, observable9});
    }

    public static <T1, T2, T3, R> Observable<R> Y5(Observable<? extends T1> observable, Observable<? extends T2> observable2, Observable<? extends T3> observable3, Func3<? super T1, ? super T2, ? super T3, ? extends R> func3) {
        return u1(new Observable[]{observable, observable2, observable3}).I1(new k2(func3));
    }

    public static <T> Observable<T> Z1(Observable<? extends T>[] observableArr) {
        return P1(h1(observableArr));
    }

    public static <T> Subscription Z3(y22<? super T> y22Var, Observable<T> observable) {
        if (y22Var == null) {
            throw new IllegalArgumentException("subscriber can not be null");
        }
        if (observable.f34312do == null) {
            throw new IllegalStateException("onSubscribe function can not be null.");
        }
        y22Var.onStart();
        if (!(y22Var instanceof sr1)) {
            y22Var = new sr1(y22Var);
        }
        try {
            Cif.b(observable, observable.f34312do).call(y22Var);
            return Cif.a(y22Var);
        } catch (Throwable th) {
            s80.m7301try(th);
            if (y22Var.isUnsubscribed()) {
                Cif.m39151protected(Cif.m39145instanceof(th));
            } else {
                try {
                    y22Var.onError(Cif.m39145instanceof(th));
                } catch (Throwable th2) {
                    s80.m7301try(th2);
                    x61 x61Var = new x61("Error occurred attempting to subscribe [" + th.getMessage() + "] and then again while trying to pass to onError.", th2);
                    Cif.m39145instanceof(x61Var);
                    throw x61Var;
                }
            }
            return Cfor.m39229try();
        }
    }

    public static <T1, T2, R> Observable<R> Z5(Observable<? extends T1> observable, Observable<? extends T2> observable2, Func2<? super T1, ? super T2, ? extends R> func2) {
        return u1(new Observable[]{observable, observable2}).I1(new k2(func2));
    }

    public static <T, R> Observable<R> a(Iterable<? extends Observable<? extends T>> iterable, FuncN<? extends R> funcN) {
        return q5(new Cthrows(null, iterable, funcN, rx.internal.util.Ctry.f35868new, true));
    }

    public static <T> Observable<T> a0(Func0<Observable<T>> func0) {
        return q5(new c71(func0));
    }

    public static <T> Observable<T> a2(Observable<? extends T>[] observableArr, int i) {
        return Q1(h1(observableArr), i);
    }

    public static <R> Observable<R> a6(Observable<? extends Observable<?>> observable, FuncN<? extends R> funcN) {
        return observable.d5().K1(rx.internal.util.Cfor.TO_ARRAY).I1(new k2(funcN));
    }

    /* renamed from: abstract, reason: not valid java name */
    public static <T, R> Observable<R> m38222abstract(Iterable<? extends Observable<? extends T>> iterable, FuncN<? extends R> funcN) {
        return q5(new Cthrows(iterable, funcN));
    }

    public static <T> Observable<T> b2(Iterable<? extends Observable<? extends T>> iterable) {
        return d2(d1(iterable));
    }

    public static <R> Observable<R> b6(Observable<?>[] observableArr, FuncN<? extends R> funcN) {
        return u1(observableArr).I1(new k2(funcN));
    }

    /* renamed from: break, reason: not valid java name */
    public static <T> Observable<T> m38223break(Observable<? extends T> observable, Observable<? extends T> observable2, Observable<? extends T> observable3, Observable<? extends T> observable4, Observable<? extends T> observable5, Observable<? extends T> observable6, Observable<? extends T> observable7, Observable<? extends T> observable8, Observable<? extends T> observable9) {
        return q5(Cstatic.m38726this(observable, observable2, observable3, observable4, observable5, observable6, observable7, observable8, observable9));
    }

    public static <T> Observable<T> c(Iterable<? extends Observable<? extends T>> iterable) {
        return d(d1(iterable));
    }

    public static <T> Observable<T> c2(Iterable<? extends Observable<? extends T>> iterable, int i) {
        return e2(d1(iterable), i);
    }

    /* renamed from: case, reason: not valid java name */
    public static <T> Observable<T> m38224case(Observable<? extends T> observable, Observable<? extends T> observable2, Observable<? extends T> observable3, Observable<? extends T> observable4, Observable<? extends T> observable5) {
        return q5(Cstatic.m38727try(observable, observable2, observable3, observable4, observable5));
    }

    /* renamed from: continue, reason: not valid java name */
    public static <T, R> Observable<R> m38225continue(List<? extends Observable<? extends T>> list, FuncN<? extends R> funcN) {
        return q5(new Cthrows(list, funcN));
    }

    public static <T> Observable<T> d(Observable<? extends Observable<? extends T>> observable) {
        return (Observable<T>) observable.I(Cthis.m38929for());
    }

    public static <T> Observable<T> d1(Iterable<? extends T> iterable) {
        return q5(new Cimplements(iterable));
    }

    public static <T> Observable<T> d2(Observable<? extends Observable<? extends T>> observable) {
        return (Observable<T>) observable.I1(s0.m38696if(true));
    }

    public static <T> Observable<T> e(Observable<? extends T> observable, Observable<? extends T> observable2) {
        return d(v1(observable, observable2));
    }

    public static <T> Observable<T> e1(Future<? extends T> future) {
        return q5(s.m38692do(future));
    }

    public static <T> Observable<T> e2(Observable<? extends Observable<? extends T>> observable, int i) {
        return (Observable<T>) observable.I1(s0.m38695for(true, i));
    }

    /* renamed from: else, reason: not valid java name */
    public static <T> Observable<T> m38226else(Observable<? extends T> observable, Observable<? extends T> observable2, Observable<? extends T> observable3, Observable<? extends T> observable4, Observable<? extends T> observable5, Observable<? extends T> observable6) {
        return q5(Cstatic.m38718case(observable, observable2, observable3, observable4, observable5, observable6));
    }

    public static <T> Observable<T> f(Observable<? extends T> observable, Observable<? extends T> observable2, Observable<? extends T> observable3) {
        return d(w1(observable, observable2, observable3));
    }

    public static <T> Observable<T> f1(Future<? extends T> future, long j, TimeUnit timeUnit) {
        return q5(s.m38693if(future, j, timeUnit));
    }

    public static <T> Observable<T> f2(Observable<? extends T> observable, Observable<? extends T> observable2) {
        return d2(v1(observable, observable2));
    }

    /* renamed from: for, reason: not valid java name */
    public static <T> Observable<T> m38227for(Observable<? extends T> observable, Observable<? extends T> observable2) {
        return q5(Cstatic.m38724if(observable, observable2));
    }

    public static <T> Observable<T> g(Observable<? extends T> observable, Observable<? extends T> observable2, Observable<? extends T> observable3, Observable<? extends T> observable4) {
        return d(x1(observable, observable2, observable3, observable4));
    }

    public static <T> Observable<T> g1(Future<? extends T> future, Cif cif) {
        return q5(s.m38692do(future)).e4(cif);
    }

    public static <T> Observable<T> g2(Observable<? extends T> observable, Observable<? extends T> observable2, Observable<? extends T> observable3) {
        return d2(w1(observable, observable2, observable3));
    }

    /* renamed from: goto, reason: not valid java name */
    public static <T> Observable<T> m38228goto(Observable<? extends T> observable, Observable<? extends T> observable2, Observable<? extends T> observable3, Observable<? extends T> observable4, Observable<? extends T> observable5, Observable<? extends T> observable6, Observable<? extends T> observable7) {
        return q5(Cstatic.m38721else(observable, observable2, observable3, observable4, observable5, observable6, observable7));
    }

    public static <T> Observable<T> h(Observable<? extends T> observable, Observable<? extends T> observable2, Observable<? extends T> observable3, Observable<? extends T> observable4, Observable<? extends T> observable5) {
        return d(y1(observable, observable2, observable3, observable4, observable5));
    }

    public static <T> Observable<T> h1(T[] tArr) {
        int length = tArr.length;
        return length == 0 ? B0() : length == 1 ? u1(tArr[0]) : q5(new Ctransient(tArr));
    }

    public static <T> Observable<T> h2(Observable<? extends T> observable, Observable<? extends T> observable2, Observable<? extends T> observable3, Observable<? extends T> observable4) {
        return d2(x1(observable, observable2, observable3, observable4));
    }

    public static <T> Observable<T> i(Observable<? extends T> observable, Observable<? extends T> observable2, Observable<? extends T> observable3, Observable<? extends T> observable4, Observable<? extends T> observable5, Observable<? extends T> observable6) {
        return d(z1(observable, observable2, observable3, observable4, observable5, observable6));
    }

    public static <T> Observable<T> i1(Callable<? extends T> callable) {
        return q5(new d71(callable));
    }

    public static <T> Observable<T> i2(Observable<? extends T> observable, Observable<? extends T> observable2, Observable<? extends T> observable3, Observable<? extends T> observable4, Observable<? extends T> observable5) {
        return d2(y1(observable, observable2, observable3, observable4, observable5));
    }

    /* renamed from: if, reason: not valid java name */
    public static <T> Observable<T> m38229if(Iterable<? extends Observable<? extends T>> iterable) {
        return q5(Cstatic.m38720do(iterable));
    }

    /* renamed from: implements, reason: not valid java name */
    public static <T1, T2, T3, T4, R> Observable<R> m38230implements(Observable<? extends T1> observable, Observable<? extends T2> observable2, Observable<? extends T3> observable3, Observable<? extends T4> observable4, Func4<? super T1, ? super T2, ? super T3, ? super T4, ? extends R> func4) {
        return m38225continue(Arrays.asList(observable, observable2, observable3, observable4), rx.functions.Cif.m38366this(func4));
    }

    /* renamed from: instanceof, reason: not valid java name */
    public static <T1, T2, T3, R> Observable<R> m38231instanceof(Observable<? extends T1> observable, Observable<? extends T2> observable2, Observable<? extends T3> observable3, Func3<? super T1, ? super T2, ? super T3, ? extends R> func3) {
        return m38225continue(Arrays.asList(observable, observable2, observable3), rx.functions.Cif.m38363goto(func3));
    }

    /* renamed from: interface, reason: not valid java name */
    public static <T1, T2, T3, T4, T5, T6, T7, R> Observable<R> m38232interface(Observable<? extends T1> observable, Observable<? extends T2> observable2, Observable<? extends T3> observable3, Observable<? extends T4> observable4, Observable<? extends T5> observable5, Observable<? extends T6> observable6, Observable<? extends T7> observable7, Func7<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? extends R> func7) {
        return m38225continue(Arrays.asList(observable, observable2, observable3, observable4, observable5, observable6, observable7), rx.functions.Cif.m38357class(func7));
    }

    public static <T> Observable<T> j(Observable<? extends T> observable, Observable<? extends T> observable2, Observable<? extends T> observable3, Observable<? extends T> observable4, Observable<? extends T> observable5, Observable<? extends T> observable6, Observable<? extends T> observable7) {
        return d(A1(observable, observable2, observable3, observable4, observable5, observable6, observable7));
    }

    public static <T> Observable<T> j2(Observable<? extends T> observable, Observable<? extends T> observable2, Observable<? extends T> observable3, Observable<? extends T> observable4, Observable<? extends T> observable5, Observable<? extends T> observable6) {
        return d2(z1(observable, observable2, observable3, observable4, observable5, observable6));
    }

    public static <T> Observable<T> j4(Observable<? extends Observable<? extends T>> observable) {
        return (Observable<T>) observable.I1(n1.m38621if(false));
    }

    public static <T> Observable<T> k(Observable<? extends T> observable, Observable<? extends T> observable2, Observable<? extends T> observable3, Observable<? extends T> observable4, Observable<? extends T> observable5, Observable<? extends T> observable6, Observable<? extends T> observable7, Observable<? extends T> observable8) {
        return d(B1(observable, observable2, observable3, observable4, observable5, observable6, observable7, observable8));
    }

    public static <T> Observable<T> k2(Observable<? extends T> observable, Observable<? extends T> observable2, Observable<? extends T> observable3, Observable<? extends T> observable4, Observable<? extends T> observable5, Observable<? extends T> observable6, Observable<? extends T> observable7) {
        return d2(A1(observable, observable2, observable3, observable4, observable5, observable6, observable7));
    }

    public static <T> Observable<T> k4(Observable<? extends Observable<? extends T>> observable) {
        return (Observable<T>) observable.I1(n1.m38621if(true));
    }

    public static <T> Observable<T> l(Observable<? extends T> observable, Observable<? extends T> observable2, Observable<? extends T> observable3, Observable<? extends T> observable4, Observable<? extends T> observable5, Observable<? extends T> observable6, Observable<? extends T> observable7, Observable<? extends T> observable8, Observable<? extends T> observable9) {
        return d(C1(observable, observable2, observable3, observable4, observable5, observable6, observable7, observable8, observable9));
    }

    public static <T> Observable<T> l2(Observable<? extends T> observable, Observable<? extends T> observable2, Observable<? extends T> observable3, Observable<? extends T> observable4, Observable<? extends T> observable5, Observable<? extends T> observable6, Observable<? extends T> observable7, Observable<? extends T> observable8) {
        return d2(B1(observable, observable2, observable3, observable4, observable5, observable6, observable7, observable8));
    }

    public static <T> Observable<T> m(Iterable<? extends Observable<? extends T>> iterable) {
        return n(d1(iterable));
    }

    public static <T> Observable<T> m2(Observable<? extends T> observable, Observable<? extends T> observable2, Observable<? extends T> observable3, Observable<? extends T> observable4, Observable<? extends T> observable5, Observable<? extends T> observable6, Observable<? extends T> observable7, Observable<? extends T> observable8, Observable<? extends T> observable9) {
        return d2(C1(observable, observable2, observable3, observable4, observable5, observable6, observable7, observable8, observable9));
    }

    public static <T> Observable<T> n(Observable<? extends Observable<? extends T>> observable) {
        return (Observable<T>) observable.J(Cthis.m38929for());
    }

    /* renamed from: new, reason: not valid java name */
    public static <T> Observable<T> m38233new(Observable<? extends T> observable, Observable<? extends T> observable2, Observable<? extends T> observable3) {
        return q5(Cstatic.m38722for(observable, observable2, observable3));
    }

    public static <T> Observable<T> o(Observable<? extends T> observable, Observable<? extends T> observable2) {
        return n(v1(observable, observable2));
    }

    public static Observable<Long> o1(long j, long j2, TimeUnit timeUnit) {
        return p1(j, j2, timeUnit, ds1.m1517do());
    }

    public static <T> Observable<T> p(Observable<? extends T> observable, Observable<? extends T> observable2, Observable<? extends T> observable3) {
        return n(w1(observable, observable2, observable3));
    }

    public static Observable<Long> p1(long j, long j2, TimeUnit timeUnit, Cif cif) {
        return q5(new p(j, j2, timeUnit, cif));
    }

    public static <T> Observable<T> p2() {
        return Cpublic.instance();
    }

    /* renamed from: protected, reason: not valid java name */
    public static <T1, T2, T3, T4, T5, T6, R> Observable<R> m38234protected(Observable<? extends T1> observable, Observable<? extends T2> observable2, Observable<? extends T3> observable3, Observable<? extends T4> observable4, Observable<? extends T5> observable5, Observable<? extends T6> observable6, Func6<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? extends R> func6) {
        return m38225continue(Arrays.asList(observable, observable2, observable3, observable4, observable5, observable6), rx.functions.Cif.m38356catch(func6));
    }

    public static <T> Observable<T> q(Observable<? extends T> observable, Observable<? extends T> observable2, Observable<? extends T> observable3, Observable<? extends T> observable4) {
        return n(x1(observable, observable2, observable3, observable4));
    }

    public static Observable<Long> q1(long j, TimeUnit timeUnit) {
        return p1(j, j, timeUnit, ds1.m1517do());
    }

    public static <T> Observable<T> q5(OnSubscribe<T> onSubscribe) {
        return new Observable<>(Cif.m39164volatile(onSubscribe));
    }

    public static <T> Observable<T> r(Observable<? extends T> observable, Observable<? extends T> observable2, Observable<? extends T> observable3, Observable<? extends T> observable4, Observable<? extends T> observable5) {
        return n(y1(observable, observable2, observable3, observable4, observable5));
    }

    public static Observable<Long> r1(long j, TimeUnit timeUnit, Cif cif) {
        return p1(j, j, timeUnit, cif);
    }

    public static <T> Observable<T> s(Observable<? extends T> observable, Observable<? extends T> observable2, Observable<? extends T> observable3, Observable<? extends T> observable4, Observable<? extends T> observable5, Observable<? extends T> observable6) {
        return n(z1(observable, observable2, observable3, observable4, observable5, observable6));
    }

    /* renamed from: strictfp, reason: not valid java name */
    public static <T1, T2, T3, T4, T5, T6, T7, T8, T9, R> Observable<R> m38235strictfp(Observable<? extends T1> observable, Observable<? extends T2> observable2, Observable<? extends T3> observable3, Observable<? extends T4> observable4, Observable<? extends T5> observable5, Observable<? extends T6> observable6, Observable<? extends T7> observable7, Observable<? extends T8> observable8, Observable<? extends T9> observable9, Func9<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? super T8, ? super T9, ? extends R> func9) {
        return m38225continue(Arrays.asList(observable, observable2, observable3, observable4, observable5, observable6, observable7, observable8, observable9), rx.functions.Cif.m38361final(func9));
    }

    /* renamed from: synchronized, reason: not valid java name */
    public static <T1, T2, R> Observable<R> m38236synchronized(Observable<? extends T1> observable, Observable<? extends T2> observable2, Func2<? super T1, ? super T2, ? extends R> func2) {
        return m38225continue(Arrays.asList(observable, observable2), rx.functions.Cif.m38360else(func2));
    }

    public static <T> Observable<T> t(Observable<? extends T> observable, Observable<? extends T> observable2, Observable<? extends T> observable3, Observable<? extends T> observable4, Observable<? extends T> observable5, Observable<? extends T> observable6, Observable<? extends T> observable7) {
        return n(A1(observable, observable2, observable3, observable4, observable5, observable6, observable7));
    }

    public static <T, Resource> Observable<T> t5(Func0<Resource> func0, Func1<? super Resource, ? extends Observable<? extends T>> func1, Action1<? super Resource> action1) {
        return u5(func0, func1, action1, false);
    }

    /* renamed from: this, reason: not valid java name */
    public static <T> Observable<T> m38237this(Observable<? extends T> observable, Observable<? extends T> observable2, Observable<? extends T> observable3, Observable<? extends T> observable4, Observable<? extends T> observable5, Observable<? extends T> observable6, Observable<? extends T> observable7, Observable<? extends T> observable8) {
        return q5(Cstatic.m38723goto(observable, observable2, observable3, observable4, observable5, observable6, observable7, observable8));
    }

    /* renamed from: transient, reason: not valid java name */
    public static <T1, T2, T3, T4, T5, R> Observable<R> m38238transient(Observable<? extends T1> observable, Observable<? extends T2> observable2, Observable<? extends T3> observable3, Observable<? extends T4> observable4, Observable<? extends T5> observable5, Func5<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? extends R> func5) {
        return m38225continue(Arrays.asList(observable, observable2, observable3, observable4, observable5), rx.functions.Cif.m38354break(func5));
    }

    /* renamed from: try, reason: not valid java name */
    public static <T> Observable<T> m38239try(Observable<? extends T> observable, Observable<? extends T> observable2, Observable<? extends T> observable3, Observable<? extends T> observable4) {
        return q5(Cstatic.m38725new(observable, observable2, observable3, observable4));
    }

    public static <T> Observable<T> u(Observable<? extends T> observable, Observable<? extends T> observable2, Observable<? extends T> observable3, Observable<? extends T> observable4, Observable<? extends T> observable5, Observable<? extends T> observable6, Observable<? extends T> observable7, Observable<? extends T> observable8) {
        return n(B1(observable, observable2, observable3, observable4, observable5, observable6, observable7, observable8));
    }

    public static <T> Observable<T> u1(T t) {
        return Celse.e6(t);
    }

    public static <T> Observable<Boolean> u3(Observable<? extends T> observable, Observable<? extends T> observable2) {
        return v3(observable, observable2, rx.internal.util.Cfor.OBJECT_EQUALS);
    }

    public static <T, Resource> Observable<T> u5(Func0<Resource> func0, Func1<? super Resource, ? extends Observable<? extends T>> func1, Action1<? super Resource> action1, boolean z) {
        return q5(new t(func0, func1, action1, z));
    }

    public static <T> Observable<T> v(Observable<? extends T> observable, Observable<? extends T> observable2, Observable<? extends T> observable3, Observable<? extends T> observable4, Observable<? extends T> observable5, Observable<? extends T> observable6, Observable<? extends T> observable7, Observable<? extends T> observable8, Observable<? extends T> observable9) {
        return n(C1(observable, observable2, observable3, observable4, observable5, observable6, observable7, observable8, observable9));
    }

    public static <T> Observable<T> v1(T t, T t2) {
        return h1(new Object[]{t, t2});
    }

    public static <T> Observable<Boolean> v3(Observable<? extends T> observable, Observable<? extends T> observable2, Func2<? super T, ? super T, Boolean> func2) {
        return e1.m38466if(observable, observable2, func2);
    }

    /* renamed from: volatile, reason: not valid java name */
    public static <T1, T2, T3, T4, T5, T6, T7, T8, R> Observable<R> m38240volatile(Observable<? extends T1> observable, Observable<? extends T2> observable2, Observable<? extends T3> observable3, Observable<? extends T4> observable4, Observable<? extends T5> observable5, Observable<? extends T6> observable6, Observable<? extends T7> observable7, Observable<? extends T8> observable8, Func8<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? super T8, ? extends R> func8) {
        return m38225continue(Arrays.asList(observable, observable2, observable3, observable4, observable5, observable6, observable7, observable8), rx.functions.Cif.m38358const(func8));
    }

    public static <T> Observable<T> w(Iterable<? extends Observable<? extends T>> iterable) {
        return d1(iterable).K(Cthis.m38929for());
    }

    public static <T> Observable<T> w1(T t, T t2, T t3) {
        return h1(new Object[]{t, t2, t3});
    }

    public static <T> Observable<T> x(Iterable<? extends Observable<? extends T>> iterable, int i) {
        return d1(iterable).L(Cthis.m38929for(), i);
    }

    public static <T> Observable<T> x1(T t, T t2, T t3, T t4) {
        return h1(new Object[]{t, t2, t3, t4});
    }

    public static <T> Observable<T> y(Observable<? extends Observable<? extends T>> observable) {
        return (Observable<T>) observable.K(Cthis.m38929for());
    }

    public static <T> Observable<T> y1(T t, T t2, T t3, T t4, T t5) {
        return h1(new Object[]{t, t2, t3, t4, t5});
    }

    public static <T> Observable<T> z(Observable<? extends Observable<? extends T>> observable, int i) {
        return (Observable<T>) observable.L(Cthis.m38929for(), i);
    }

    public static <T> Observable<T> z1(T t, T t2, T t3, T t4, T t5, T t6) {
        return h1(new Object[]{t, t2, t3, t4, t5, t6});
    }

    public final Observable<T> A0(int i, T t) {
        return (Observable<T>) I1(new m0(i, t));
    }

    public final Observable<T> A2(Action1<? super T> action1) {
        return (Observable<T>) I1(new w0(action1));
    }

    public final Observable<T> A3(T t) {
        return (Observable<T>) I1(new g1(t));
    }

    public final Observable<T> A4(Func1<? super T, Boolean> func1) {
        return (Observable<T>) I1(new t1(func1));
    }

    public final Observable<Observable<T>> A5(long j, TimeUnit timeUnit) {
        return z5(j, j, timeUnit, ds1.m1517do());
    }

    public final Observable<T> B2() {
        return (Observable<T>) I1(x0.m38787if());
    }

    public final Observable<T> B3(T t, Func1<? super T, Boolean> func1) {
        return E0(func1).A3(t);
    }

    public final Observable<T> B4(Func1<? super T, Boolean> func1) {
        return (Observable<T>) I1(new u1(func1));
    }

    public final Observable<Observable<T>> B5(long j, TimeUnit timeUnit, int i) {
        return C5(j, timeUnit, i, ds1.m1517do());
    }

    public final Observable<T> C2(Observable<? extends T> observable) {
        return (Observable<T>) I1(y0.m38805for(observable));
    }

    public final Observable<T> C3(int i) {
        return (Observable<T>) I1(new h1(i));
    }

    public final AssertableSubscriber<T> C4() {
        v3 v3VarM8727do = v3.m8727do(Long.MAX_VALUE);
        a4(v3VarM8727do);
        return v3VarM8727do;
    }

    public final Observable<Observable<T>> C5(long j, TimeUnit timeUnit, int i, Cif cif) {
        return y5(j, j, timeUnit, i, cif);
    }

    public final Observable<Boolean> D0(Func1<? super T, Boolean> func1) {
        return I1(new v(func1, false));
    }

    public final Observable<T> D2(Func1<? super Throwable, ? extends Observable<? extends T>> func1) {
        return (Observable<T>) I1(new y0(func1));
    }

    public final Observable<T> D3(long j, TimeUnit timeUnit) {
        return E3(j, timeUnit, ds1.m1517do());
    }

    public final AssertableSubscriber<T> D4(long j) {
        v3 v3VarM8727do = v3.m8727do(j);
        a4(v3VarM8727do);
        return v3VarM8727do;
    }

    public final Observable<Observable<T>> D5(long j, TimeUnit timeUnit, Cif cif) {
        return C5(j, timeUnit, Integer.MAX_VALUE, cif);
    }

    public final Observable<T> E0(Func1<? super T, Boolean> func1) {
        return q5(new Cstrictfp(this, func1));
    }

    public final Observable<T> E1() {
        return p4(1).y3();
    }

    public final Observable<T> E2(Func1<? super Throwable, ? extends T> func1) {
        return (Observable<T>) I1(y0.m38807new(func1));
    }

    public final Observable<T> E3(long j, TimeUnit timeUnit, Cif cif) {
        return q5(new l(this, j, timeUnit, cif));
    }

    public final Observable<T> E4(long j, TimeUnit timeUnit) {
        return F4(j, timeUnit, ds1.m1517do());
    }

    public final <U> Observable<Observable<T>> E5(Observable<U> observable) {
        return (Observable<Observable<T>>) I1(new d2(observable));
    }

    @Deprecated
    public final Observable<T> F0(Action0 action0) {
        return (Observable<T>) I1(new j0(action0));
    }

    public final Observable<T> F1(Func1<? super T, Boolean> func1) {
        return E0(func1).p4(1).y3();
    }

    public final Observable<T> F2(Observable<? extends T> observable) {
        return (Observable<T>) I1(y0.m38806if(observable));
    }

    public final Observable<T> F3(int i) {
        return (Observable<T>) I1(new i1(i));
    }

    public final Observable<T> F4(long j, TimeUnit timeUnit, Cif cif) {
        return (Observable<T>) I1(new v1(j, timeUnit, cif));
    }

    public final <TOpening, TClosing> Observable<Observable<T>> F5(Observable<? extends TOpening> observable, Func1<? super TOpening, ? extends Observable<? extends TClosing>> func1) {
        return (Observable<Observable<T>>) I1(new g2(observable, func1));
    }

    public final Observable<T> G0() {
        return l4(1).y3();
    }

    public final Observable<T> G1(T t) {
        return p4(1).A3(t);
    }

    public final Observable<T> G2() {
        return q5(new Cabstract(this));
    }

    public final Observable<T> G3(long j, TimeUnit timeUnit) {
        return H3(j, timeUnit, ds1.m1517do());
    }

    public final Observable<T> G4(long j, TimeUnit timeUnit) {
        return p3(j, timeUnit);
    }

    public final <TClosing> Observable<Observable<T>> G5(Func0<? extends Observable<? extends TClosing>> func0) {
        return (Observable<Observable<T>>) I1(new e2(func0));
    }

    public final Observable<T> H0(Func1<? super T, Boolean> func1) {
        return o4(func1).y3();
    }

    public final Observable<T> H1(T t, Func1<? super T, Boolean> func1) {
        return E0(func1).p4(1).A3(t);
    }

    public final <R> Observable<R> H2(Func1<? super Observable<T>, ? extends Observable<R>> func1) {
        return z0.k6(this, func1);
    }

    public final Observable<T> H3(long j, TimeUnit timeUnit, Cif cif) {
        return (Observable<T>) I1(new j1(j, timeUnit, cif));
    }

    public final Observable<T> H4(long j, TimeUnit timeUnit, Cif cif) {
        return q3(j, timeUnit, cif);
    }

    public final <R> Observable<R> H5(Iterable<Observable<?>> iterable, FuncN<R> funcN) {
        return q5(new j2(this, null, iterable, funcN));
    }

    public final <R> Observable<R> I(Func1<? super T, ? extends Observable<? extends R>> func1) {
        return this instanceof Celse ? ((Celse) this).h6(func1) : q5(new Cdefault(this, func1, 2, 0));
    }

    public final Observable<T> I0(T t) {
        return l4(1).A3(t);
    }

    public final <R> Observable<R> I1(Operator<? extends R, ? super T> operator) {
        return q5(new e71(this.f34312do, operator));
    }

    public final rx.observables.Cfor<T> I2() {
        return z0.m6(this);
    }

    public final <U> Observable<T> I3(Observable<U> observable) {
        return (Observable<T>) I1(new k1(observable));
    }

    public final Observable<T> I4(long j, TimeUnit timeUnit) {
        return W(j, timeUnit);
    }

    public final <T1, T2, T3, T4, T5, T6, T7, T8, R> Observable<R> I5(Observable<T1> observable, Observable<T2> observable2, Observable<T3> observable3, Observable<T4> observable4, Observable<T5> observable5, Observable<T6> observable6, Observable<T7> observable7, Observable<T8> observable8, Func9<? super T, ? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? super T8, R> func9) {
        return q5(new j2(this, new Observable[]{observable, observable2, observable3, observable4, observable5, observable6, observable7, observable8}, null, rx.functions.Cif.m38361final(func9)));
    }

    public final <R> Observable<R> J(Func1<? super T, ? extends Observable<? extends R>> func1) {
        return this instanceof Celse ? ((Celse) this).h6(func1) : q5(new Cdefault(this, func1, 2, 2));
    }

    public final Observable<T> J0(T t, Func1<? super T, Boolean> func1) {
        return o4(func1).A3(t);
    }

    public final Observable<T> J1(int i) {
        return l4(i);
    }

    public final Observable<T> J3(Func1<? super T, Boolean> func1) {
        return (Observable<T>) I1(new l1(l1.m38603if(func1)));
    }

    public final Observable<T> J4(long j, TimeUnit timeUnit, Cif cif) {
        return X(j, timeUnit, cif);
    }

    public final <T1, T2, T3, T4, T5, T6, T7, R> Observable<R> J5(Observable<T1> observable, Observable<T2> observable2, Observable<T3> observable3, Observable<T4> observable4, Observable<T5> observable5, Observable<T6> observable6, Observable<T7> observable7, Func8<? super T, ? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, R> func8) {
        return q5(new j2(this, new Observable[]{observable, observable2, observable3, observable4, observable5, observable6, observable7}, null, rx.functions.Cif.m38358const(func8)));
    }

    public final <R> Observable<R> K(Func1<? super T, ? extends Observable<? extends R>> func1) {
        return L(func1, rx.internal.util.Ctry.f35868new);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final <R> Observable<R> K0(Func1<? super T, ? extends Observable<? extends R>> func1) {
        return getClass() == Celse.class ? ((Celse) this).h6(func1) : P1(K1(func1));
    }

    public final <R> Observable<R> K1(Func1<? super T, ? extends R> func1) {
        return q5(new a(this, func1));
    }

    public final Observable<T> K3() {
        return (Observable<T>) m5().T0(Cthis.m38929for());
    }

    public final Observable<w62<T>> K4() {
        return L4(ds1.m1517do());
    }

    public final <T1, T2, T3, T4, T5, T6, R> Observable<R> K5(Observable<T1> observable, Observable<T2> observable2, Observable<T3> observable3, Observable<T4> observable4, Observable<T5> observable5, Observable<T6> observable6, Func7<? super T, ? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, R> func7) {
        return q5(new j2(this, new Observable[]{observable, observable2, observable3, observable4, observable5, observable6}, null, rx.functions.Cif.m38357class(func7)));
    }

    public final <R> Observable<R> L(Func1<? super T, ? extends Observable<? extends R>> func1, int i) {
        if (i >= 1) {
            return I1(new l0(func1, i, Integer.MAX_VALUE));
        }
        throw new IllegalArgumentException("capacityHint > 0 required but it was " + i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final <R> Observable<R> L0(Func1<? super T, ? extends Observable<? extends R>> func1, int i) {
        return getClass() == Celse.class ? ((Celse) this).h6(func1) : Q1(K1(func1), i);
    }

    public final Observable<T> L2(int i) {
        if (i > 0) {
            return (Observable<T>) I1(u0.m38756if(i));
        }
        throw new IllegalArgumentException("n > 0 required but it was " + i);
    }

    public final Observable<T> L3(Func2<? super T, ? super T, Integer> func2) {
        return (Observable<T>) o5(func2).T0(Cthis.m38929for());
    }

    public final Observable<w62<T>> L4(Cif cif) {
        return (Observable<w62<T>>) I1(new w1(cif));
    }

    public final <T1, T2, T3, T4, T5, R> Observable<R> L5(Observable<T1> observable, Observable<T2> observable2, Observable<T3> observable3, Observable<T4> observable4, Observable<T5> observable5, Func6<? super T, ? super T1, ? super T2, ? super T3, ? super T4, ? super T5, R> func6) {
        return q5(new j2(this, new Observable[]{observable, observable2, observable3, observable4, observable5}, null, rx.functions.Cif.m38356catch(func6)));
    }

    public final <R> Observable<R> M(Func1<? super T, ? extends Observable<? extends R>> func1, int i, int i2) {
        if (i < 1) {
            throw new IllegalArgumentException("capacityHint > 0 required but it was " + i);
        }
        if (i2 >= 1) {
            return I1(new l0(func1, i, i2));
        }
        throw new IllegalArgumentException("maxConcurrent > 0 required but it was " + i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final <R> Observable<R> M0(Func1<? super T, ? extends Observable<? extends R>> func1, Func1<? super Throwable, ? extends Observable<? extends R>> func12, Func0<? extends Observable<? extends R>> func0) {
        return P1(L1(func1, func12, func0));
    }

    public final Observable<Cdo<T>> M1() {
        return (Observable<Cdo<T>>) I1(r0.m38674if());
    }

    public final <R> Observable<R> M2(R r, Func2<R, ? super T, R> func2) {
        return q5(new i(this, r, func2));
    }

    public final Observable<T> M3(Iterable<T> iterable) {
        return e(d1(iterable), this);
    }

    public final Observable<T> M4(long j, TimeUnit timeUnit) {
        return O4(j, timeUnit, null, ds1.m1517do());
    }

    public final <T1, T2, T3, T4, R> Observable<R> M5(Observable<T1> observable, Observable<T2> observable2, Observable<T3> observable3, Observable<T4> observable4, Func5<? super T, ? super T1, ? super T2, ? super T3, ? super T4, R> func5) {
        return q5(new j2(this, new Observable[]{observable, observable2, observable3, observable4}, null, rx.functions.Cif.m38354break(func5)));
    }

    public final <R> Observable<R> N(Func1<? super T, ? extends Iterable<? extends R>> func1) {
        return Cprotected.m38655if(this, func1, rx.internal.util.Ctry.f35868new);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final <R> Observable<R> N0(Func1<? super T, ? extends Observable<? extends R>> func1, Func1<? super Throwable, ? extends Observable<? extends R>> func12, Func0<? extends Observable<? extends R>> func0, int i) {
        return Q1(L1(func1, func12, func0), i);
    }

    public final Observable<T> N2(Func2<T, T, T> func2) {
        return q5(new h(this, func2));
    }

    public final Observable<T> N3(T t) {
        return e(u1(t), this);
    }

    public final Observable<T> N4(long j, TimeUnit timeUnit, Observable<? extends T> observable) {
        return O4(j, timeUnit, observable, ds1.m1517do());
    }

    public final <T1, T2, T3, R> Observable<R> N5(Observable<T1> observable, Observable<T2> observable2, Observable<T3> observable3, Func4<? super T, ? super T1, ? super T2, ? super T3, R> func4) {
        return q5(new j2(this, new Observable[]{observable, observable2, observable3}, null, rx.functions.Cif.m38366this(func4)));
    }

    public final Observable<T> O(Observable<? extends T> observable) {
        return e(this, observable);
    }

    public final <U, R> Observable<R> O0(Func1<? super T, ? extends Observable<? extends U>> func1, Func2<? super T, ? super U, ? extends R> func2) {
        return P1(I1(new q0(func1, func2)));
    }

    public final Observable<T> O2() {
        return g.m38506for(this);
    }

    public final Observable<T> O3(T t, T t2) {
        return e(v1(t, t2), this);
    }

    public final Observable<T> O4(long j, TimeUnit timeUnit, Observable<? extends T> observable, Cif cif) {
        return (Observable<T>) I1(new x1(j, timeUnit, observable, cif));
    }

    public final <T1, T2, R> Observable<R> O5(Observable<T1> observable, Observable<T2> observable2, Func3<? super T, ? super T1, ? super T2, R> func3) {
        return q5(new j2(this, new Observable[]{observable, observable2}, null, rx.functions.Cif.m38363goto(func3)));
    }

    public final Observable<Boolean> P(Object obj) {
        return D0(rx.internal.util.Cfor.equalsWith(obj));
    }

    public final <U, R> Observable<R> P0(Func1<? super T, ? extends Observable<? extends U>> func1, Func2<? super T, ? super U, ? extends R> func2, int i) {
        return Q1(I1(new q0(func1, func2)), i);
    }

    public final Observable<T> P2(long j) {
        return g.m38509new(this, j);
    }

    public final Observable<T> P3(T t, T t2, T t3) {
        return e(w1(t, t2, t3), this);
    }

    public final Observable<T> P4(long j, TimeUnit timeUnit, Cif cif) {
        return O4(j, timeUnit, null, cif);
    }

    public final <U, R> Observable<R> P5(Observable<? extends U> observable, Func2<? super T, ? super U, ? extends R> func2) {
        return I1(new i2(observable, func2));
    }

    public final Observable<Integer> Q() {
        return M2(0, rx.internal.util.Cfor.COUNTER);
    }

    public final Observable<T> Q0(Func1<? super T, ? extends Completable> func1) {
        return S0(func1, false, Integer.MAX_VALUE);
    }

    public final Observable<T> Q2(long j, Cif cif) {
        return g.m38511try(this, j, cif);
    }

    public final Observable<T> Q3(T t, T t2, T t3, T t4) {
        return e(x1(t, t2, t3, t4), this);
    }

    public final <U, V> Observable<T> Q4(Func0<? extends Observable<U>> func0, Func1<? super T, ? extends Observable<V>> func1) {
        return R4(func0, func1, null);
    }

    public final <R> Observable<R> Q5(Observable<?>[] observableArr, FuncN<R> funcN) {
        return q5(new j2(this, observableArr, null, funcN));
    }

    public final Observable<Long> R() {
        return M2(0L, rx.internal.util.Cfor.LONG_COUNTER);
    }

    public final Observable<T> R0(Func1<? super T, ? extends Completable> func1, boolean z) {
        return S0(func1, z, Integer.MAX_VALUE);
    }

    public final Observable<T> R2(Cif cif) {
        return g.m38502case(this, cif);
    }

    public final Observable<T> R3(T t, T t2, T t3, T t4, T t5) {
        return e(y1(t, t2, t3, t4, t5), this);
    }

    public final <U, V> Observable<T> R4(Func0<? extends Observable<U>> func0, Func1<? super T, ? extends Observable<V>> func1, Observable<? extends T> observable) {
        Objects.requireNonNull(func1, "timeoutSelector is null");
        return (Observable<T>) I1(new y1(func0, func1, observable));
    }

    public final Observable<T> S0(Func1<? super T, ? extends Completable> func1, boolean z, int i) {
        return q5(new Cvolatile(this, func1, z, i));
    }

    public final Observable<T> S2(Func1<? super Observable<? extends Void>, ? extends Observable<?>> func1) {
        return g.m38505else(this, rx.internal.util.Cfor.createRepeatDematerializer(func1));
    }

    public final Observable<T> S3(T t, T t2, T t3, T t4, T t5, T t6) {
        return e(z1(t, t2, t3, t4, t5, t6), this);
    }

    public final <V> Observable<T> S4(Func1<? super T, ? extends Observable<V>> func1) {
        return R4(null, func1, null);
    }

    public final <R> Observable<R> T0(Func1<? super T, ? extends Iterable<? extends R>> func1) {
        return U0(func1, rx.internal.util.Ctry.f35868new);
    }

    public final Observable<T> T2(Func1<? super Observable<? extends Void>, ? extends Observable<?>> func1, Cif cif) {
        return g.m38507goto(this, rx.internal.util.Cfor.createRepeatDematerializer(func1), cif);
    }

    public final Observable<T> T3(T t, T t2, T t3, T t4, T t5, T t6, T t7) {
        return e(A1(t, t2, t3, t4, t5, t6, t7), this);
    }

    public final <V> Observable<T> T4(Func1<? super T, ? extends Observable<V>> func1, Observable<? extends T> observable) {
        return R4(null, func1, observable);
    }

    public final <R> Observable<R> U0(Func1<? super T, ? extends Iterable<? extends R>> func1, int i) {
        return Cprotected.m38655if(this, func1, i);
    }

    public final <R> Observable<R> U2(Func1<? super Observable<T>, ? extends Observable<R>> func1) {
        return OperatorReplay.p6(rx.internal.util.Cfor.createReplaySupplier(this), func1);
    }

    public final Observable<T> U3(T t, T t2, T t3, T t4, T t5, T t6, T t7, T t8) {
        return e(B1(t, t2, t3, t4, t5, t6, t7, t8), this);
    }

    public final <U, R> Observable<R> V0(Func1<? super T, ? extends Iterable<? extends U>> func1, Func2<? super T, ? super U, ? extends R> func2) {
        return O0(q0.m38663if(func1), func2);
    }

    public final <R> Observable<R> V2(Func1<? super Observable<T>, ? extends Observable<R>> func1, int i) {
        return OperatorReplay.p6(rx.internal.util.Cfor.createReplaySupplier(this, i), func1);
    }

    public final Observable<T> V3(T t, T t2, T t3, T t4, T t5, T t6, T t7, T t8, T t9) {
        return e(C1(t, t2, t3, t4, t5, t6, t7, t8, t9), this);
    }

    public final Observable<T> W(long j, TimeUnit timeUnit) {
        return X(j, timeUnit, ds1.m1517do());
    }

    public final <U, R> Observable<R> W0(Func1<? super T, ? extends Iterable<? extends U>> func1, Func2<? super T, ? super U, ? extends R> func2, int i) {
        return P0(q0.m38663if(func1), func2, i);
    }

    public final <R> Observable<R> W2(Func1<? super Observable<T>, ? extends Observable<R>> func1, int i, long j, TimeUnit timeUnit) {
        return X2(func1, i, j, timeUnit, ds1.m1517do());
    }

    public final Observable<T> W3(Observable<T> observable) {
        return e(observable, this);
    }

    public final Observable<T> X(long j, TimeUnit timeUnit, Cif cif) {
        return (Observable<T>) I1(new d0(j, timeUnit, cif));
    }

    public final <R> Observable<R> X0(Func1<? super T, ? extends Single<? extends R>> func1) {
        return Z0(func1, false, Integer.MAX_VALUE);
    }

    public final <R> Observable<R> X2(Func1<? super Observable<T>, ? extends Observable<R>> func1, int i, long j, TimeUnit timeUnit, Cif cif) {
        if (i >= 0) {
            return OperatorReplay.p6(rx.internal.util.Cfor.createReplaySupplier(this, i, j, timeUnit, cif), func1);
        }
        throw new IllegalArgumentException("bufferSize < 0");
    }

    public final Subscription X3() {
        return Y3(new android.support.v4.t(rx.functions.Cdo.m38335do(), rx.internal.util.Cfor.ERROR_NOT_IMPLEMENTED, rx.functions.Cdo.m38335do()));
    }

    public final <U> Observable<T> Y(Func1<? super T, ? extends Observable<U>> func1) {
        return (Observable<T>) I1(new c0(func1));
    }

    public final <R> Observable<R> Y0(Func1<? super T, ? extends Single<? extends R>> func1, boolean z) {
        return Z0(func1, z, Integer.MAX_VALUE);
    }

    public final <R> Observable<R> Y2(Func1<? super Observable<T>, ? extends Observable<R>> func1, int i, Cif cif) {
        return OperatorReplay.p6(rx.internal.util.Cfor.createReplaySupplier(this, i), rx.internal.util.Cfor.createReplaySelectorAndObserveOn(func1, cif));
    }

    public final Subscription Y3(y22<? super T> y22Var) {
        return Z3(y22Var, this);
    }

    public final Observable<i72<T>> Y4() {
        return Z4(ds1.m1517do());
    }

    public final Observable<T> Z(T t) {
        return g4(u1(t));
    }

    public final <R> Observable<R> Z0(Func1<? super T, ? extends Single<? extends R>> func1, boolean z, int i) {
        return q5(new Cinterface(this, func1, z, i));
    }

    public final <R> Observable<R> Z2(Func1<? super Observable<T>, ? extends Observable<R>> func1, long j, TimeUnit timeUnit) {
        return a3(func1, j, timeUnit, ds1.m1517do());
    }

    public final Observable<i72<T>> Z4(Cif cif) {
        return (Observable<i72<T>>) I1(new z1(cif));
    }

    public final void a1(Action1<? super T> action1) {
        b4(action1);
    }

    public final <R> Observable<R> a3(Func1<? super Observable<T>, ? extends Observable<R>> func1, long j, TimeUnit timeUnit, Cif cif) {
        return OperatorReplay.p6(rx.internal.util.Cfor.createReplaySupplier(this, j, timeUnit, cif), func1);
    }

    public final Subscription a4(Observer<? super T> observer) {
        if (observer instanceof y22) {
            return Y3((y22) observer);
        }
        Objects.requireNonNull(observer, "observer is null");
        return Y3(new j61(observer));
    }

    public final <R> R a5(Func1<? super Observable<T>, R> func1) {
        return func1.call(this);
    }

    public <R> Observable<R> b(Transformer<? super T, ? extends R> transformer) {
        return (Observable) transformer.call(this);
    }

    public final Observable<T> b0(long j, TimeUnit timeUnit) {
        return c0(j, timeUnit, ds1.m1517do());
    }

    public final void b1(Action1<? super T> action1, Action1<Throwable> action12) {
        c4(action1, action12);
    }

    public final <R> Observable<R> b3(Func1<? super Observable<T>, ? extends Observable<R>> func1, Cif cif) {
        return OperatorReplay.p6(rx.internal.util.Cfor.createReplaySupplier(this), rx.internal.util.Cfor.createReplaySelectorAndObserveOn(func1, cif));
    }

    public final Subscription b4(Action1<? super T> action1) {
        if (action1 != null) {
            return Y3(new android.support.v4.t(action1, rx.internal.util.Cfor.ERROR_NOT_IMPLEMENTED, rx.functions.Cdo.m38335do()));
        }
        throw new IllegalArgumentException("onNext can not be null");
    }

    public final rx.observables.Cif<T> b5() {
        return rx.observables.Cif.m39030else(this);
    }

    public final Observable<T> c0(long j, TimeUnit timeUnit, Cif cif) {
        return (Observable<T>) I1(new e0(j, timeUnit, cif));
    }

    public final void c1(Action1<? super T> action1, Action1<Throwable> action12, Action0 action0) {
        d4(action1, action12, action0);
    }

    public final rx.observables.Cfor<T> c3() {
        return OperatorReplay.k6(this);
    }

    public final Subscription c4(Action1<? super T> action1, Action1<Throwable> action12) {
        if (action1 == null) {
            throw new IllegalArgumentException("onNext can not be null");
        }
        if (action12 != null) {
            return Y3(new android.support.v4.t(action1, action12, rx.functions.Cdo.m38335do()));
        }
        throw new IllegalArgumentException("onError can not be null");
    }

    public Completable c5() {
        return Completable.m38171transient(this);
    }

    public final <T2, R> Observable<R> c6(Iterable<? extends T2> iterable, Func2<? super T, ? super T2, ? extends R> func2) {
        return I1(new l2(iterable, func2));
    }

    /* renamed from: catch, reason: not valid java name */
    public final Observable<T> m38241catch(Observable<? extends T> observable) {
        return m38227for(this, observable);
    }

    /* renamed from: class, reason: not valid java name */
    public final Observable<T> m38242class() {
        return (Observable<T>) I1(w.m38776if());
    }

    /* renamed from: const, reason: not valid java name */
    public final Observable<List<T>> m38243const(int i) {
        return m38247final(i, i);
    }

    public final <U, V> Observable<T> d0(Func0<? extends Observable<U>> func0, Func1<? super T, ? extends Observable<V>> func1) {
        return (Observable<T>) i0(func0).I1(new f0(this, func1));
    }

    public final rx.observables.Cfor<T> d3(int i) {
        return OperatorReplay.l6(this, i);
    }

    public final Subscription d4(Action1<? super T> action1, Action1<Throwable> action12, Action0 action0) {
        if (action1 == null) {
            throw new IllegalArgumentException("onNext can not be null");
        }
        if (action12 == null) {
            throw new IllegalArgumentException("onError can not be null");
        }
        if (action0 != null) {
            return Y3(new android.support.v4.t(action1, action12, action0));
        }
        throw new IllegalArgumentException("onComplete can not be null");
    }

    public final Observable<List<T>> d5() {
        return (Observable<List<T>>) I1(a2.m38402if());
    }

    public final <T2, R> Observable<R> d6(Observable<? extends T2> observable, Func2<? super T, ? super T2, ? extends R> func2) {
        return Z5(this, observable, func2);
    }

    /* renamed from: default, reason: not valid java name */
    public final Observable<T> m38244default() {
        return Ccase.e6(this);
    }

    /* renamed from: do, reason: not valid java name */
    public final Observable<Boolean> m38245do(Func1<? super T, Boolean> func1) {
        return I1(new u(func1));
    }

    public final <U> Observable<T> e0(Func1<? super T, ? extends Observable<U>> func1) {
        return (Observable<T>) I1(new f0(this, func1));
    }

    public final rx.observables.Cfor<T> e3(int i, long j, TimeUnit timeUnit) {
        return f3(i, j, timeUnit, ds1.m1517do());
    }

    public final Observable<T> e4(Cif cif) {
        return f4(cif, !(this.f34312do instanceof Cextends));
    }

    public final <K> Observable<Map<K, T>> e5(Func1<? super T, ? extends K> func1) {
        return q5(new q(this, func1, Cthis.m38929for()));
    }

    @Deprecated
    /* renamed from: extends, reason: not valid java name */
    public final Observable<T> m38246extends(int i) {
        return m38248finally(i);
    }

    public final Observable<T> f0(long j, TimeUnit timeUnit) {
        return g0(j, timeUnit, ds1.m1517do());
    }

    public final rx.observables.Cfor<T> f3(int i, long j, TimeUnit timeUnit, Cif cif) {
        if (i >= 0) {
            return OperatorReplay.n6(this, j, timeUnit, cif, i);
        }
        throw new IllegalArgumentException("bufferSize < 0");
    }

    public final Observable<T> f4(Cif cif, boolean z) {
        return this instanceof Celse ? ((Celse) this).i6(cif) : q5(new m1(this, cif, z));
    }

    public final <K, V> Observable<Map<K, V>> f5(Func1<? super T, ? extends K> func1, Func1<? super T, ? extends V> func12) {
        return q5(new q(this, func1, func12));
    }

    /* renamed from: final, reason: not valid java name */
    public final Observable<List<T>> m38247final(int i, int i2) {
        return (Observable<List<T>>) I1(new y(i, i2));
    }

    /* renamed from: finally, reason: not valid java name */
    public final Observable<T> m38248finally(int i) {
        return Ccase.f6(this, i);
    }

    public final Observable<T> g0(long j, TimeUnit timeUnit, Cif cif) {
        return q5(new Cfinally(this, j, timeUnit, cif));
    }

    public final rx.observables.Cfor<T> g3(int i, Cif cif) {
        return OperatorReplay.q6(d3(i), cif);
    }

    public final Observable<T> g4(Observable<? extends T> observable) {
        Objects.requireNonNull(observable, "alternate is null");
        return q5(new m(this, observable));
    }

    public final <K, V> Observable<Map<K, V>> g5(Func1<? super T, ? extends K> func1, Func1<? super T, ? extends V> func12, Func0<? extends Map<K, V>> func0) {
        return q5(new q(this, func1, func12, func0));
    }

    public final <U> Observable<T> h0(Observable<U> observable) {
        Objects.requireNonNull(observable);
        return q5(new Cpackage(this, observable));
    }

    public final rx.observables.Cfor<T> h3(long j, TimeUnit timeUnit) {
        return i3(j, timeUnit, ds1.m1517do());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final <R> Observable<R> h4(Func1<? super T, ? extends Observable<? extends R>> func1) {
        return j4(K1(func1));
    }

    public final <K> Observable<Map<K, Collection<T>>> h5(Func1<? super T, ? extends K> func1) {
        return q5(new r(this, func1, Cthis.m38929for()));
    }

    public final <U> Observable<T> i0(Func0<? extends Observable<U>> func0) {
        return q5(new Cprivate(this, func0));
    }

    public final rx.observables.Cfor<T> i3(long j, TimeUnit timeUnit, Cif cif) {
        return OperatorReplay.m6(this, j, timeUnit, cif);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final <R> Observable<R> i4(Func1<? super T, ? extends Observable<? extends R>> func1) {
        return k4(K1(func1));
    }

    public final <K, V> Observable<Map<K, Collection<V>>> i5(Func1<? super T, ? extends K> func1, Func1<? super T, ? extends V> func12) {
        return q5(new r(this, func1, func12));
    }

    /* renamed from: import, reason: not valid java name */
    public final Observable<List<T>> m38249import(long j, TimeUnit timeUnit, int i) {
        return (Observable<List<T>>) I1(new a0(j, j, timeUnit, i, ds1.m1517do()));
    }

    public final <T2> Observable<T2> j0() {
        return (Observable<T2>) I1(g0.m38522if());
    }

    public final <K> Observable<Cnew<K, T>> j1(Func1<? super T, ? extends K> func1) {
        return (Observable<Cnew<K, T>>) I1(new n0(func1));
    }

    public final rx.observables.Cfor<T> j3(Cif cif) {
        return OperatorReplay.q6(c3(), cif);
    }

    public final <K, V> Observable<Map<K, Collection<V>>> j5(Func1<? super T, ? extends K> func1, Func1<? super T, ? extends V> func12, Func0<? extends Map<K, Collection<V>>> func0) {
        return q5(new r(this, func1, func12, func0));
    }

    public final Observable<T> k0() {
        return (Observable<T>) I1(h0.m38534if());
    }

    public final <K, R> Observable<Cnew<K, R>> k1(Func1<? super T, ? extends K> func1, Func1<? super T, ? extends R> func12) {
        return I1(new n0(func1, func12));
    }

    public final Observable<T> k3() {
        return g.m38510this(this);
    }

    public final <K, V> Observable<Map<K, Collection<V>>> k5(Func1<? super T, ? extends K> func1, Func1<? super T, ? extends V> func12, Func0<? extends Map<K, Collection<V>>> func0, Func1<? super K, ? extends Collection<V>> func13) {
        return q5(new r(this, func1, func12, func0, func13));
    }

    public final <U> Observable<T> l0(Func1<? super T, ? extends U> func1) {
        return (Observable<T>) I1(new h0(func1));
    }

    public final <K, R> Observable<Cnew<K, R>> l1(Func1<? super T, ? extends K> func1, Func1<? super T, ? extends R> func12, Func1<Action1<K>, Map<K, Object>> func13) {
        Objects.requireNonNull(func13, "evictingMapFactory cannot be null");
        return I1(new n0(func1, func12, func13));
    }

    public final Observable<T> l3(long j) {
        return g.m38501break(this, j);
    }

    public final Observable<T> l4(int i) {
        return (Observable<T>) I1(new o1(i));
    }

    public Single<T> l5() {
        return new Single<>(k.m38588if(this));
    }

    public final Observable<T> m0() {
        return (Observable<T>) I1(i0.m38554for());
    }

    public final <T2, D1, D2, R> Observable<R> m1(Observable<T2> observable, Func1<? super T, ? extends Observable<D1>> func1, Func1<? super T2, ? extends Observable<D2>> func12, Func2<? super T, ? super Observable<T2>, ? extends R> func2) {
        return q5(new Cinstanceof(this, observable, func1, func12, func2));
    }

    public final Observable<T> m3(Func2<Integer, Throwable, Boolean> func2) {
        return (Observable<T>) o2().I1(new a1(func2));
    }

    public final Observable<T> m4(long j, TimeUnit timeUnit) {
        return n4(j, timeUnit, ds1.m1517do());
    }

    public final Observable<List<T>> m5() {
        return (Observable<List<T>>) I1(new b2(10));
    }

    public final <U> Observable<T> n0(Func1<? super T, ? extends U> func1) {
        return (Observable<T>) I1(new i0(func1));
    }

    public final Observable<T> n1() {
        return (Observable<T>) I1(o0.m38641if());
    }

    public final Observable<T> n2(Observable<? extends T> observable) {
        return R1(this, observable);
    }

    public final Observable<T> n3(Func1<? super Observable<? extends Throwable>, ? extends Observable<?>> func1) {
        return g.m38503catch(this, rx.internal.util.Cfor.createRetryDematerializer(func1));
    }

    public final Observable<T> n4(long j, TimeUnit timeUnit, Cif cif) {
        return (Observable<T>) I1(new r1(j, timeUnit, cif));
    }

    public final Observable<List<T>> n5(int i) {
        return (Observable<List<T>>) I1(new b2(i));
    }

    /* renamed from: native, reason: not valid java name */
    public final Observable<List<T>> m38250native(long j, TimeUnit timeUnit, int i, Cif cif) {
        return (Observable<List<T>>) I1(new a0(j, j, timeUnit, i, cif));
    }

    public final Observable<T> o0(Func2<? super T, ? super T, Boolean> func2) {
        return (Observable<T>) I1(new i0(func2));
    }

    public final Observable<Observable<T>> o2() {
        return u1(this);
    }

    public final Observable<T> o3(Func1<? super Observable<? extends Throwable>, ? extends Observable<?>> func1, Cif cif) {
        return g.m38504class(this, rx.internal.util.Cfor.createRetryDematerializer(func1), cif);
    }

    public final Observable<T> o4(Func1<? super T, Boolean> func1) {
        return E0(func1).l4(1);
    }

    public final Observable<List<T>> o5(Func2<? super T, ? super T, Integer> func2) {
        return (Observable<List<T>>) I1(new b2(func2, 10));
    }

    public final Observable<T> p0(Action0 action0) {
        return (Observable<T>) I1(new j0(action0));
    }

    public final Observable<T> p3(long j, TimeUnit timeUnit) {
        return q3(j, timeUnit, ds1.m1517do());
    }

    public final Observable<T> p4(int i) {
        return i == 0 ? n1() : i == 1 ? q5(new n(this)) : (Observable<T>) I1(new p1(i));
    }

    public final Observable<List<T>> p5(Func2<? super T, ? super T, Integer> func2, int i) {
        return (Observable<List<T>>) I1(new b2(func2, i));
    }

    /* renamed from: package, reason: not valid java name */
    public final <R> Observable<R> m38251package(Class<R> cls) {
        return I1(new b0(cls));
    }

    /* renamed from: private, reason: not valid java name */
    public final <R> Observable<R> m38252private(Func0<R> func0, Action2<R, ? super T> action2) {
        return q5(new Cswitch(this, func0, action2));
    }

    /* renamed from: public, reason: not valid java name */
    public final Observable<List<T>> m38253public(long j, TimeUnit timeUnit, Cif cif) {
        return m38258throw(j, j, timeUnit, cif);
    }

    public final Observable<T> q0(Action0 action0) {
        return q5(new Ccontinue(this, new android.support.v4.s(rx.functions.Cdo.m38335do(), rx.functions.Cdo.m38335do(), action0)));
    }

    public final Observable<T> q2(Cif cif) {
        return r2(cif, rx.internal.util.Ctry.f35868new);
    }

    public final Observable<T> q3(long j, TimeUnit timeUnit, Cif cif) {
        return (Observable<T>) I1(new c1(j, timeUnit, cif));
    }

    public final Observable<T> q4(int i, long j, TimeUnit timeUnit) {
        return r4(i, j, timeUnit, ds1.m1517do());
    }

    public final Observable<T> r0(Observer<? super T> observer) {
        return q5(new Ccontinue(this, observer));
    }

    public final Observable<T> r2(Cif cif, int i) {
        return t2(cif, false, i);
    }

    public final <U> Observable<T> r3(Observable<U> observable) {
        return (Observable<T>) I1(new b1(observable));
    }

    public final Observable<T> r4(int i, long j, TimeUnit timeUnit, Cif cif) {
        return (Observable<T>) I1(new q1(i, j, timeUnit, cif));
    }

    public final Subscription r5(y22<? super T> y22Var) {
        try {
            y22Var.onStart();
            Cif.b(this, this.f34312do).call(y22Var);
            return Cif.a(y22Var);
        } catch (Throwable th) {
            s80.m7301try(th);
            try {
                y22Var.onError(Cif.m39145instanceof(th));
                return Cfor.m39229try();
            } catch (Throwable th2) {
                s80.m7301try(th2);
                x61 x61Var = new x61("Error occurred attempting to subscribe [" + th.getMessage() + "] and then again while trying to pass to onError.", th2);
                Cif.m39145instanceof(x61Var);
                throw x61Var;
            }
        }
    }

    /* renamed from: return, reason: not valid java name */
    public final <B> Observable<List<T>> m38254return(Observable<B> observable) {
        return m38255static(observable, 16);
    }

    public final Observable<T> s0(Action1<Cdo<? super T>> action1) {
        return q5(new Ccontinue(this, new android.support.v4.r(action1)));
    }

    public final Observable<Boolean> s1() {
        return I1(rx.internal.util.Cfor.IS_EMPTY);
    }

    public final Observable<T> s2(Cif cif, boolean z) {
        return t2(cif, z, rx.internal.util.Ctry.f35868new);
    }

    public final <R> Observable<R> s3(R r, Func2<R, ? super T, R> func2) {
        return I1(new d1(r, func2));
    }

    public final Observable<T> s4(long j, TimeUnit timeUnit) {
        return t4(j, timeUnit, ds1.m1517do());
    }

    public final Observable<T> s5(Cif cif) {
        return (Observable<T>) I1(new c2(cif));
    }

    /* renamed from: static, reason: not valid java name */
    public final <B> Observable<List<T>> m38255static(Observable<B> observable, int i) {
        return (Observable<List<T>>) I1(new x(observable, i));
    }

    /* renamed from: super, reason: not valid java name */
    public final Observable<List<T>> m38256super(long j, long j2, TimeUnit timeUnit) {
        return m38258throw(j, j2, timeUnit, ds1.m1517do());
    }

    /* renamed from: switch, reason: not valid java name */
    public final <TOpening, TClosing> Observable<List<T>> m38257switch(Observable<? extends TOpening> observable, Func1<? super TOpening, ? extends Observable<? extends TClosing>> func1) {
        return (Observable<List<T>>) I1(new z(observable, func1));
    }

    public final Observable<T> t0(Action1<? super Throwable> action1) {
        return q5(new Ccontinue(this, new android.support.v4.s(rx.functions.Cdo.m38335do(), action1, rx.functions.Cdo.m38335do())));
    }

    public final <TRight, TLeftDuration, TRightDuration, R> Observable<R> t1(Observable<TRight> observable, Func1<T, Observable<TLeftDuration>> func1, Func1<TRight, Observable<TRightDuration>> func12, Func2<T, TRight, R> func2) {
        return q5(new Csynchronized(this, observable, func1, func12, func2));
    }

    public final Observable<T> t2(Cif cif, boolean z, int i) {
        return this instanceof Celse ? ((Celse) this).i6(cif) : (Observable<T>) I1(new u0(cif, z, i));
    }

    public final Observable<T> t3(Func2<T, T, T> func2) {
        return (Observable<T>) I1(new d1(func2));
    }

    public final Observable<T> t4(long j, TimeUnit timeUnit, Cif cif) {
        return (Observable<T>) I1(new q1(j, timeUnit, cif));
    }

    /* renamed from: throw, reason: not valid java name */
    public final Observable<List<T>> m38258throw(long j, long j2, TimeUnit timeUnit, Cif cif) {
        return (Observable<List<T>>) I1(new a0(j, j2, timeUnit, Integer.MAX_VALUE, cif));
    }

    /* renamed from: throws, reason: not valid java name */
    public final <TClosing> Observable<List<T>> m38259throws(Func0<? extends Observable<? extends TClosing>> func0) {
        return (Observable<List<T>>) I1(new x(func0, 16));
    }

    public final Observable<T> u0(Action1<? super T> action1) {
        return q5(new Ccontinue(this, new android.support.v4.s(action1, rx.functions.Cdo.m38335do(), rx.functions.Cdo.m38335do())));
    }

    public final <R> Observable<R> u2(Class<R> cls) {
        return E0(rx.internal.util.Cfor.isInstanceOf(cls)).m38251package(cls);
    }

    public final Observable<List<T>> u4(int i) {
        return p4(i).d5();
    }

    public final Observable<T> v0(Action1<? super Long> action1) {
        return (Observable<T>) I1(new k0(action1));
    }

    public final Observable<T> v2() {
        return (Observable<T>) I1(v0.m38766if());
    }

    public final Observable<List<T>> v4(int i, long j, TimeUnit timeUnit) {
        return q4(i, j, timeUnit).d5();
    }

    public final Observable<Observable<T>> v5(int i) {
        return w5(i, i);
    }

    public final Observable<T> w0(Action0 action0) {
        return (Observable<T>) I1(new w71(action0));
    }

    public final Observable<T> w2(long j) {
        return (Observable<T>) I1(new v0(j));
    }

    public final Observable<T> w3() {
        return (Observable<T>) I1(f1.m38480if());
    }

    public final Observable<List<T>> w4(int i, long j, TimeUnit timeUnit, Cif cif) {
        return r4(i, j, timeUnit, cif).d5();
    }

    public final Observable<Observable<T>> w5(int i, int i2) {
        if (i <= 0) {
            throw new IllegalArgumentException("count > 0 required but it was " + i);
        }
        if (i2 > 0) {
            return (Observable<Observable<T>>) I1(new f2(i, i2));
        }
        throw new IllegalArgumentException("skip > 0 required but it was " + i2);
    }

    /* renamed from: while, reason: not valid java name */
    public final Observable<List<T>> m38260while(long j, TimeUnit timeUnit) {
        return m38250native(j, timeUnit, Integer.MAX_VALUE, ds1.m1517do());
    }

    public final Observable<T> x0(Action0 action0) {
        return q5(new Ccontinue(this, new android.support.v4.s(rx.functions.Cdo.m38335do(), rx.functions.Cdo.m38338for(action0), action0)));
    }

    public final Observable<T> x2(long j, Action0 action0) {
        return (Observable<T>) I1(new v0(j, action0));
    }

    public final Observable<T> x3() {
        return I2().j6();
    }

    public final Observable<List<T>> x4(long j, TimeUnit timeUnit) {
        return s4(j, timeUnit).d5();
    }

    public final Observable<Observable<T>> x5(long j, long j2, TimeUnit timeUnit) {
        return y5(j, j2, timeUnit, Integer.MAX_VALUE, ds1.m1517do());
    }

    public final Observable<T> y0(Action0 action0) {
        return (Observable<T>) I1(new x71(action0));
    }

    public final Observable<T> y2(long j, Action0 action0, BackpressureOverflow.Strategy strategy) {
        return (Observable<T>) I1(new v0(j, action0, strategy));
    }

    public final Observable<T> y3() {
        return (Observable<T>) I1(g1.m38525if());
    }

    public final Observable<List<T>> y4(long j, TimeUnit timeUnit, Cif cif) {
        return t4(j, timeUnit, cif).d5();
    }

    public final Observable<Observable<T>> y5(long j, long j2, TimeUnit timeUnit, int i, Cif cif) {
        return (Observable<Observable<T>>) I1(new h2(j, j2, timeUnit, i, cif));
    }

    public final Observable<T> z0(int i) {
        return (Observable<T>) I1(new m0(i));
    }

    public final Observable<T> z2() {
        return (Observable<T>) I1(w0.m38778if());
    }

    public final Observable<T> z3(Func1<? super T, Boolean> func1) {
        return E0(func1).y3();
    }

    public final <E> Observable<T> z4(Observable<? extends E> observable) {
        return (Observable<T>) I1(new s1(observable));
    }

    public final Observable<Observable<T>> z5(long j, long j2, TimeUnit timeUnit, Cif cif) {
        return y5(j, j2, timeUnit, Integer.MAX_VALUE, cif);
    }
}
