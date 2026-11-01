package io.reactivex;

import android.support.v4.ad0;
import android.support.v4.as0;
import android.support.v4.b41;
import android.support.v4.bd0;
import android.support.v4.c22;
import android.support.v4.cd0;
import android.support.v4.cs1;
import android.support.v4.dd0;
import android.support.v4.e72;
import android.support.v4.f90;
import android.support.v4.fi0;
import android.support.v4.fy0;
import android.support.v4.gl;
import android.support.v4.ia;
import android.support.v4.id0;
import android.support.v4.jp1;
import android.support.v4.jz1;
import android.support.v4.la;
import android.support.v4.np;
import android.support.v4.oq;
import android.support.v4.s6;
import android.support.v4.t41;
import android.support.v4.t6;
import android.support.v4.t80;
import android.support.v4.tr1;
import android.support.v4.ub1;
import android.support.v4.uc0;
import android.support.v4.wc0;
import android.support.v4.xc0;
import android.support.v4.yc0;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Action;
import io.reactivex.functions.BiConsumer;
import io.reactivex.functions.BiFunction;
import io.reactivex.functions.BiPredicate;
import io.reactivex.functions.BooleanSupplier;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.Function;
import io.reactivex.functions.Function3;
import io.reactivex.functions.Function4;
import io.reactivex.functions.Function5;
import io.reactivex.functions.Function6;
import io.reactivex.functions.Function7;
import io.reactivex.functions.Function8;
import io.reactivex.functions.Function9;
import io.reactivex.functions.LongConsumer;
import io.reactivex.functions.Predicate;
import io.reactivex.internal.functions.Cdo;
import io.reactivex.internal.functions.Cif;
import io.reactivex.internal.fuseable.ScalarCallable;
import io.reactivex.internal.operators.flowable.Cabstract;
import io.reactivex.internal.operators.flowable.Cbreak;
import io.reactivex.internal.operators.flowable.Ccatch;
import io.reactivex.internal.operators.flowable.Cclass;
import io.reactivex.internal.operators.flowable.Cconst;
import io.reactivex.internal.operators.flowable.Ccontinue;
import io.reactivex.internal.operators.flowable.Cdefault;
import io.reactivex.internal.operators.flowable.Cfinal;
import io.reactivex.internal.operators.flowable.Cfinally;
import io.reactivex.internal.operators.flowable.Cgoto;
import io.reactivex.internal.operators.flowable.Cimplements;
import io.reactivex.internal.operators.flowable.Cimport;
import io.reactivex.internal.operators.flowable.Cinstanceof;
import io.reactivex.internal.operators.flowable.Cinterface;
import io.reactivex.internal.operators.flowable.Cnative;
import io.reactivex.internal.operators.flowable.Cpackage;
import io.reactivex.internal.operators.flowable.Cprivate;
import io.reactivex.internal.operators.flowable.Cprotected;
import io.reactivex.internal.operators.flowable.Cpublic;
import io.reactivex.internal.operators.flowable.Creturn;
import io.reactivex.internal.operators.flowable.Cstatic;
import io.reactivex.internal.operators.flowable.Cstrictfp;
import io.reactivex.internal.operators.flowable.Csuper;
import io.reactivex.internal.operators.flowable.Cswitch;
import io.reactivex.internal.operators.flowable.Csynchronized;
import io.reactivex.internal.operators.flowable.Cthrow;
import io.reactivex.internal.operators.flowable.Cthrows;
import io.reactivex.internal.operators.flowable.Ctransient;
import io.reactivex.internal.operators.flowable.Cvolatile;
import io.reactivex.internal.operators.flowable.FlowableConcatMap;
import io.reactivex.internal.operators.flowable.FlowableGroupJoin;
import io.reactivex.internal.operators.flowable.FlowableReplay;
import io.reactivex.internal.operators.flowable.FlowableTimeout;
import io.reactivex.internal.operators.flowable.FlowableTimeoutTimed;
import io.reactivex.internal.operators.flowable.a;
import io.reactivex.internal.operators.flowable.a0;
import io.reactivex.internal.operators.flowable.a2;
import io.reactivex.internal.operators.flowable.b0;
import io.reactivex.internal.operators.flowable.b1;
import io.reactivex.internal.operators.flowable.b2;
import io.reactivex.internal.operators.flowable.c;
import io.reactivex.internal.operators.flowable.c0;
import io.reactivex.internal.operators.flowable.c1;
import io.reactivex.internal.operators.flowable.c2;
import io.reactivex.internal.operators.flowable.d;
import io.reactivex.internal.operators.flowable.d0;
import io.reactivex.internal.operators.flowable.d1;
import io.reactivex.internal.operators.flowable.e;
import io.reactivex.internal.operators.flowable.e1;
import io.reactivex.internal.operators.flowable.e2;
import io.reactivex.internal.operators.flowable.f;
import io.reactivex.internal.operators.flowable.f0;
import io.reactivex.internal.operators.flowable.f1;
import io.reactivex.internal.operators.flowable.f2;
import io.reactivex.internal.operators.flowable.g0;
import io.reactivex.internal.operators.flowable.g1;
import io.reactivex.internal.operators.flowable.g2;
import io.reactivex.internal.operators.flowable.h;
import io.reactivex.internal.operators.flowable.h0;
import io.reactivex.internal.operators.flowable.h1;
import io.reactivex.internal.operators.flowable.h2;
import io.reactivex.internal.operators.flowable.i;
import io.reactivex.internal.operators.flowable.i0;
import io.reactivex.internal.operators.flowable.i1;
import io.reactivex.internal.operators.flowable.i2;
import io.reactivex.internal.operators.flowable.j;
import io.reactivex.internal.operators.flowable.j0;
import io.reactivex.internal.operators.flowable.j1;
import io.reactivex.internal.operators.flowable.j2;
import io.reactivex.internal.operators.flowable.k;
import io.reactivex.internal.operators.flowable.k0;
import io.reactivex.internal.operators.flowable.k1;
import io.reactivex.internal.operators.flowable.k2;
import io.reactivex.internal.operators.flowable.l;
import io.reactivex.internal.operators.flowable.l0;
import io.reactivex.internal.operators.flowable.l1;
import io.reactivex.internal.operators.flowable.m;
import io.reactivex.internal.operators.flowable.m0;
import io.reactivex.internal.operators.flowable.m1;
import io.reactivex.internal.operators.flowable.m2;
import io.reactivex.internal.operators.flowable.n;
import io.reactivex.internal.operators.flowable.n1;
import io.reactivex.internal.operators.flowable.n2;
import io.reactivex.internal.operators.flowable.o0;
import io.reactivex.internal.operators.flowable.o2;
import io.reactivex.internal.operators.flowable.p;
import io.reactivex.internal.operators.flowable.p0;
import io.reactivex.internal.operators.flowable.p1;
import io.reactivex.internal.operators.flowable.p2;
import io.reactivex.internal.operators.flowable.q;
import io.reactivex.internal.operators.flowable.q0;
import io.reactivex.internal.operators.flowable.q1;
import io.reactivex.internal.operators.flowable.q2;
import io.reactivex.internal.operators.flowable.r;
import io.reactivex.internal.operators.flowable.r0;
import io.reactivex.internal.operators.flowable.r1;
import io.reactivex.internal.operators.flowable.r2;
import io.reactivex.internal.operators.flowable.s;
import io.reactivex.internal.operators.flowable.s1;
import io.reactivex.internal.operators.flowable.s2;
import io.reactivex.internal.operators.flowable.t;
import io.reactivex.internal.operators.flowable.t0;
import io.reactivex.internal.operators.flowable.t1;
import io.reactivex.internal.operators.flowable.t2;
import io.reactivex.internal.operators.flowable.u;
import io.reactivex.internal.operators.flowable.u0;
import io.reactivex.internal.operators.flowable.u1;
import io.reactivex.internal.operators.flowable.u2;
import io.reactivex.internal.operators.flowable.v;
import io.reactivex.internal.operators.flowable.v0;
import io.reactivex.internal.operators.flowable.v1;
import io.reactivex.internal.operators.flowable.v2;
import io.reactivex.internal.operators.flowable.w;
import io.reactivex.internal.operators.flowable.w1;
import io.reactivex.internal.operators.flowable.w2;
import io.reactivex.internal.operators.flowable.x;
import io.reactivex.internal.operators.flowable.x0;
import io.reactivex.internal.operators.flowable.x1;
import io.reactivex.internal.operators.flowable.x2;
import io.reactivex.internal.operators.flowable.y;
import io.reactivex.internal.operators.flowable.y0;
import io.reactivex.internal.operators.flowable.y1;
import io.reactivex.internal.operators.flowable.z;
import io.reactivex.internal.operators.flowable.z0;
import io.reactivex.internal.operators.flowable.z1;
import io.reactivex.internal.operators.mixed.Cnew;
import io.reactivex.internal.util.Ccase;
import io.reactivex.internal.util.Celse;
import io.reactivex.internal.util.Ctry;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* renamed from: io.reactivex.for, reason: invalid class name */
/* loaded from: classes.dex */
public abstract class Cfor<T> implements Publisher<T> {

    /* renamed from: do, reason: not valid java name */
    public static final int f25272do = Math.max(1, Integer.getInteger("rx2.buffer-size", 128).intValue());

    @cs1("none")
    @t6(s6.FULL)
    @gl
    public static <T, R> Cfor<R> A(Function<? super Object[], ? extends R> function, Publisher<? extends T>... publisherArr) {
        return E(publisherArr, function, g());
    }

    @b41
    @t6(s6.ERROR)
    @cs1(cs1.F5)
    @gl
    public static Cfor<Long> A2(long j, long j2, long j3, long j4, TimeUnit timeUnit, Ctry ctry) {
        if (j2 < 0) {
            throw new IllegalArgumentException("count >= 0 required but it was " + j2);
        }
        if (j2 == 0) {
            return s1().L0(j3, timeUnit, ctry);
        }
        long j5 = j + (j2 - 1);
        if (j > 0 && j5 < 0) {
            throw new IllegalArgumentException("Overflow! start + count is bigger than Long.MAX_VALUE");
        }
        Cif.m29468else(timeUnit, "unit is null");
        Cif.m29468else(ctry, "scheduler is null");
        return jp1.h(new w(j, j5, Math.max(0L, j3), Math.max(0L, j4), timeUnit, ctry));
    }

    @b41
    @t6(s6.FULL)
    @cs1("none")
    @gl
    public static <T1, T2, T3, T4, T5, R> Cfor<R> A7(Publisher<? extends T1> publisher, Publisher<? extends T2> publisher2, Publisher<? extends T3> publisher3, Publisher<? extends T4> publisher4, Publisher<? extends T5> publisher5, Function5<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? extends R> function5) {
        Cif.m29468else(publisher, "source1 is null");
        Cif.m29468else(publisher2, "source2 is null");
        Cif.m29468else(publisher3, "source3 is null");
        Cif.m29468else(publisher4, "source4 is null");
        Cif.m29468else(publisher5, "source5 is null");
        return F7(Cdo.m29425finally(function5), false, g(), publisher, publisher2, publisher3, publisher4, publisher5);
    }

    @cs1("none")
    @t6(s6.FULL)
    @gl
    public static <T, R> Cfor<R> B(Iterable<? extends Publisher<? extends T>> iterable, Function<? super Object[], ? extends R> function) {
        return C(iterable, function, g());
    }

    @b41
    @t6(s6.FULL)
    @cs1("none")
    @gl
    public static <T1, T2, T3, T4, T5, T6, R> Cfor<R> B7(Publisher<? extends T1> publisher, Publisher<? extends T2> publisher2, Publisher<? extends T3> publisher3, Publisher<? extends T4> publisher4, Publisher<? extends T5> publisher5, Publisher<? extends T6> publisher6, Function6<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? extends R> function6) {
        Cif.m29468else(publisher, "source1 is null");
        Cif.m29468else(publisher2, "source2 is null");
        Cif.m29468else(publisher3, "source3 is null");
        Cif.m29468else(publisher4, "source4 is null");
        Cif.m29468else(publisher5, "source5 is null");
        Cif.m29468else(publisher6, "source6 is null");
        return F7(Cdo.m29433package(function6), false, g(), publisher, publisher2, publisher3, publisher4, publisher5, publisher6);
    }

    @cs1("none")
    @t6(s6.FULL)
    @gl
    public static <T, R> Cfor<R> C(Iterable<? extends Publisher<? extends T>> iterable, Function<? super Object[], ? extends R> function, int i) {
        Cif.m29468else(iterable, "sources is null");
        Cif.m29468else(function, "combiner is null");
        Cif.m29470goto(i, "bufferSize");
        return jp1.h(new Cnative((Iterable) iterable, (Function) function, i, true));
    }

    @cs1("none")
    @t6(s6.FULL)
    @gl
    public static <T> Cfor<T> C5(Publisher<? extends Publisher<? extends T>> publisher) {
        return g2(publisher).r5(Cdo.m29416catch());
    }

    @b41
    @t6(s6.FULL)
    @cs1("none")
    @gl
    public static <T1, T2, T3, T4, T5, T6, T7, R> Cfor<R> C7(Publisher<? extends T1> publisher, Publisher<? extends T2> publisher2, Publisher<? extends T3> publisher3, Publisher<? extends T4> publisher4, Publisher<? extends T5> publisher5, Publisher<? extends T6> publisher6, Publisher<? extends T7> publisher7, Function7<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? extends R> function7) {
        Cif.m29468else(publisher, "source1 is null");
        Cif.m29468else(publisher2, "source2 is null");
        Cif.m29468else(publisher3, "source3 is null");
        Cif.m29468else(publisher4, "source4 is null");
        Cif.m29468else(publisher5, "source5 is null");
        Cif.m29468else(publisher6, "source6 is null");
        Cif.m29468else(publisher7, "source7 is null");
        return F7(Cdo.m29434private(function7), false, g(), publisher, publisher2, publisher3, publisher4, publisher5, publisher6, publisher7);
    }

    @cs1("none")
    @t6(s6.FULL)
    @gl
    public static <T, R> Cfor<R> D(Publisher<? extends T>[] publisherArr, Function<? super Object[], ? extends R> function) {
        return E(publisherArr, function, g());
    }

    @b41
    @t6(s6.FULL)
    @cs1("none")
    @gl
    public static <T> Cfor<T> D2(T t) {
        Cif.m29468else(t, "item is null");
        return jp1.h(new cd0(t));
    }

    @cs1("none")
    @t6(s6.FULL)
    @gl
    public static <T> Cfor<T> D5(Publisher<? extends Publisher<? extends T>> publisher, int i) {
        return g2(publisher).s5(Cdo.m29416catch(), i);
    }

    @b41
    @t6(s6.FULL)
    @cs1("none")
    @gl
    public static <T1, T2, T3, T4, T5, T6, T7, T8, R> Cfor<R> D7(Publisher<? extends T1> publisher, Publisher<? extends T2> publisher2, Publisher<? extends T3> publisher3, Publisher<? extends T4> publisher4, Publisher<? extends T5> publisher5, Publisher<? extends T6> publisher6, Publisher<? extends T7> publisher7, Publisher<? extends T8> publisher8, Function8<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? super T8, ? extends R> function8) {
        Cif.m29468else(publisher, "source1 is null");
        Cif.m29468else(publisher2, "source2 is null");
        Cif.m29468else(publisher3, "source3 is null");
        Cif.m29468else(publisher4, "source4 is null");
        Cif.m29468else(publisher5, "source5 is null");
        Cif.m29468else(publisher6, "source6 is null");
        Cif.m29468else(publisher7, "source7 is null");
        Cif.m29468else(publisher8, "source8 is null");
        return F7(Cdo.m29413abstract(function8), false, g(), publisher, publisher2, publisher3, publisher4, publisher5, publisher6, publisher7, publisher8);
    }

    @b41
    @t6(s6.FULL)
    @cs1("none")
    @gl
    public static <T, R> Cfor<R> E(Publisher<? extends T>[] publisherArr, Function<? super Object[], ? extends R> function, int i) {
        Cif.m29468else(publisherArr, "sources is null");
        Cif.m29468else(function, "combiner is null");
        Cif.m29470goto(i, "bufferSize");
        return publisherArr.length == 0 ? s1() : jp1.h(new Cnative((Publisher[]) publisherArr, (Function) function, i, true));
    }

    @b41
    @t6(s6.SPECIAL)
    @cs1("none")
    @gl
    public static <T> Cfor<T> E0(FlowableOnSubscribe<T> flowableOnSubscribe, Cif cif) {
        Cif.m29468else(flowableOnSubscribe, "source is null");
        Cif.m29468else(cif, "mode is null");
        return jp1.h(new Cpackage(flowableOnSubscribe, cif));
    }

    @b41
    @t6(s6.FULL)
    @cs1("none")
    @gl
    public static <T> Cfor<T> E2(T t, T t2) {
        Cif.m29468else(t, "item1 is null");
        Cif.m29468else(t2, "item2 is null");
        return Z1(t, t2);
    }

    @cs1("none")
    @t6(s6.FULL)
    @gl
    public static <T> Cfor<T> E5(Publisher<? extends Publisher<? extends T>> publisher) {
        return F5(publisher, g());
    }

    @b41
    @t6(s6.FULL)
    @cs1("none")
    @gl
    public static <T1, T2, T3, T4, T5, T6, T7, T8, T9, R> Cfor<R> E7(Publisher<? extends T1> publisher, Publisher<? extends T2> publisher2, Publisher<? extends T3> publisher3, Publisher<? extends T4> publisher4, Publisher<? extends T5> publisher5, Publisher<? extends T6> publisher6, Publisher<? extends T7> publisher7, Publisher<? extends T8> publisher8, Publisher<? extends T9> publisher9, Function9<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? super T8, ? super T9, ? extends R> function9) {
        Cif.m29468else(publisher, "source1 is null");
        Cif.m29468else(publisher2, "source2 is null");
        Cif.m29468else(publisher3, "source3 is null");
        Cif.m29468else(publisher4, "source4 is null");
        Cif.m29468else(publisher5, "source5 is null");
        Cif.m29468else(publisher6, "source6 is null");
        Cif.m29468else(publisher7, "source7 is null");
        Cif.m29468else(publisher8, "source8 is null");
        Cif.m29468else(publisher9, "source9 is null");
        return F7(Cdo.m29419continue(function9), false, g(), publisher, publisher2, publisher3, publisher4, publisher5, publisher6, publisher7, publisher8, publisher9);
    }

    @b41
    @t6(s6.FULL)
    @cs1("none")
    @gl
    public static <T> Cfor<T> F2(T t, T t2, T t3) {
        Cif.m29468else(t, "item1 is null");
        Cif.m29468else(t2, "item2 is null");
        Cif.m29468else(t3, "item3 is null");
        return Z1(t, t2, t3);
    }

    @cs1("none")
    @t6(s6.FULL)
    @gl
    public static <T> Cfor<T> F5(Publisher<? extends Publisher<? extends T>> publisher, int i) {
        return g2(publisher).x5(Cdo.m29416catch(), i);
    }

    @b41
    @t6(s6.FULL)
    @cs1("none")
    @gl
    public static <T, R> Cfor<R> F7(Function<? super Object[], ? extends R> function, boolean z, int i, Publisher<? extends T>... publisherArr) {
        if (publisherArr.length == 0) {
            return s1();
        }
        Cif.m29468else(function, "zipper is null");
        Cif.m29470goto(i, "bufferSize");
        return jp1.h(new w2(publisherArr, null, function, i, z));
    }

    @b41
    @t6(s6.FULL)
    @cs1("none")
    @gl
    public static <T> Cfor<T> G(Iterable<? extends Publisher<? extends T>> iterable) {
        Cif.m29468else(iterable, "sources is null");
        return f2(iterable).h0(Cdo.m29416catch(), 2, false);
    }

    @b41
    @t6(s6.FULL)
    @cs1("none")
    @gl
    public static <T> Cfor<T> G2(T t, T t2, T t3, T t4) {
        Cif.m29468else(t, "item1 is null");
        Cif.m29468else(t2, "item2 is null");
        Cif.m29468else(t3, "item3 is null");
        Cif.m29468else(t4, "item4 is null");
        return Z1(t, t2, t3, t4);
    }

    @b41
    @t6(s6.FULL)
    @cs1("none")
    @gl
    public static <T, R> Cfor<R> G7(Iterable<? extends Publisher<? extends T>> iterable, Function<? super Object[], ? extends R> function, boolean z, int i) {
        Cif.m29468else(function, "zipper is null");
        Cif.m29468else(iterable, "sources is null");
        Cif.m29470goto(i, "bufferSize");
        return jp1.h(new w2(null, iterable, function, i, z));
    }

    @cs1("none")
    @t6(s6.FULL)
    @gl
    public static <T> Cfor<T> H(Publisher<? extends Publisher<? extends T>> publisher) {
        return I(publisher, g());
    }

    @b41
    @t6(s6.FULL)
    @cs1("none")
    @gl
    public static <T> Cfor<T> H2(T t, T t2, T t3, T t4, T t5) {
        Cif.m29468else(t, "item1 is null");
        Cif.m29468else(t2, "item2 is null");
        Cif.m29468else(t3, "item3 is null");
        Cif.m29468else(t4, "item4 is null");
        Cif.m29468else(t5, "item5 is null");
        return Z1(t, t2, t3, t4, t5);
    }

    @cs1("none")
    @t6(s6.FULL)
    @gl
    public static <T> Cfor<T> I(Publisher<? extends Publisher<? extends T>> publisher, int i) {
        return g2(publisher).a0(Cdo.m29416catch(), i);
    }

    @b41
    @t6(s6.FULL)
    @cs1("none")
    @gl
    public static <T> Cfor<T> I2(T t, T t2, T t3, T t4, T t5, T t6) {
        Cif.m29468else(t, "item1 is null");
        Cif.m29468else(t2, "item2 is null");
        Cif.m29468else(t3, "item3 is null");
        Cif.m29468else(t4, "item4 is null");
        Cif.m29468else(t5, "item5 is null");
        Cif.m29468else(t6, "item6 is null");
        return Z1(t, t2, t3, t4, t5, t6);
    }

    @b41
    @t6(s6.FULL)
    @cs1("none")
    @gl
    public static <T> Cfor<T> J(Publisher<? extends T> publisher, Publisher<? extends T> publisher2) {
        Cif.m29468else(publisher, "source1 is null");
        Cif.m29468else(publisher2, "source2 is null");
        return M(publisher, publisher2);
    }

    @b41
    @t6(s6.PASS_THROUGH)
    @cs1("none")
    @gl
    public static <T> Cfor<T> J0(Callable<? extends Publisher<? extends T>> callable) {
        Cif.m29468else(callable, "supplier is null");
        return jp1.h(new wc0(callable));
    }

    @b41
    @t6(s6.FULL)
    @cs1("none")
    @gl
    public static <T> Cfor<T> J2(T t, T t2, T t3, T t4, T t5, T t6, T t7) {
        Cif.m29468else(t, "item1 is null");
        Cif.m29468else(t2, "item2 is null");
        Cif.m29468else(t3, "item3 is null");
        Cif.m29468else(t4, "item4 is null");
        Cif.m29468else(t5, "item5 is null");
        Cif.m29468else(t6, "item6 is null");
        Cif.m29468else(t7, "item7 is null");
        return Z1(t, t2, t3, t4, t5, t6, t7);
    }

    @b41
    @t6(s6.FULL)
    @cs1("none")
    @gl
    public static <T> Cfor<T> K(Publisher<? extends T> publisher, Publisher<? extends T> publisher2, Publisher<? extends T> publisher3) {
        Cif.m29468else(publisher, "source1 is null");
        Cif.m29468else(publisher2, "source2 is null");
        Cif.m29468else(publisher3, "source3 is null");
        return M(publisher, publisher2, publisher3);
    }

    @b41
    @t6(s6.FULL)
    @cs1("none")
    @gl
    public static <T> Cfor<T> K2(T t, T t2, T t3, T t4, T t5, T t6, T t7, T t8) {
        Cif.m29468else(t, "item1 is null");
        Cif.m29468else(t2, "item2 is null");
        Cif.m29468else(t3, "item3 is null");
        Cif.m29468else(t4, "item4 is null");
        Cif.m29468else(t5, "item5 is null");
        Cif.m29468else(t6, "item6 is null");
        Cif.m29468else(t7, "item7 is null");
        Cif.m29468else(t8, "item8 is null");
        return Z1(t, t2, t3, t4, t5, t6, t7, t8);
    }

    @b41
    @t6(s6.FULL)
    @cs1("none")
    @gl
    public static <T> Cfor<T> L(Publisher<? extends T> publisher, Publisher<? extends T> publisher2, Publisher<? extends T> publisher3, Publisher<? extends T> publisher4) {
        Cif.m29468else(publisher, "source1 is null");
        Cif.m29468else(publisher2, "source2 is null");
        Cif.m29468else(publisher3, "source3 is null");
        Cif.m29468else(publisher4, "source4 is null");
        return M(publisher, publisher2, publisher3, publisher4);
    }

    @b41
    @t6(s6.FULL)
    @cs1("none")
    @gl
    public static <T> Cfor<T> L2(T t, T t2, T t3, T t4, T t5, T t6, T t7, T t8, T t9) {
        Cif.m29468else(t, "item1 is null");
        Cif.m29468else(t2, "item2 is null");
        Cif.m29468else(t3, "item3 is null");
        Cif.m29468else(t4, "item4 is null");
        Cif.m29468else(t5, "item5 is null");
        Cif.m29468else(t6, "item6 is null");
        Cif.m29468else(t7, "item7 is null");
        Cif.m29468else(t8, "item8 is null");
        Cif.m29468else(t9, "item9 is null");
        return Z1(t, t2, t3, t4, t5, t6, t7, t8, t9);
    }

    @cs1("none")
    @t6(s6.FULL)
    @gl
    public static <T> Cfor<T> M(Publisher<? extends T>... publisherArr) {
        return publisherArr.length == 0 ? s1() : publisherArr.length == 1 ? g2(publisherArr[0]) : jp1.h(new Cpublic(publisherArr, false));
    }

    @b41
    @t6(s6.FULL)
    @cs1("none")
    @gl
    public static <T> Cfor<T> M2(T t, T t2, T t3, T t4, T t5, T t6, T t7, T t8, T t9, T t10) {
        Cif.m29468else(t, "item1 is null");
        Cif.m29468else(t2, "item2 is null");
        Cif.m29468else(t3, "item3 is null");
        Cif.m29468else(t4, "item4 is null");
        Cif.m29468else(t5, "item5 is null");
        Cif.m29468else(t6, "item6 is null");
        Cif.m29468else(t7, "item7 is null");
        Cif.m29468else(t8, "item8 is null");
        Cif.m29468else(t9, "item9 is null");
        Cif.m29468else(t10, "item10 is null");
        return Z1(t, t2, t3, t4, t5, t6, t7, t8, t9, t10);
    }

    @cs1("none")
    @t6(s6.FULL)
    @gl
    public static <T> jz1<Boolean> M4(Publisher<? extends T> publisher, Publisher<? extends T> publisher2) {
        return P4(publisher, publisher2, Cif.m29472new(), g());
    }

    @cs1("none")
    @t6(s6.FULL)
    @gl
    public static <T> Cfor<T> N(Publisher<? extends T>... publisherArr) {
        return publisherArr.length == 0 ? s1() : publisherArr.length == 1 ? g2(publisherArr[0]) : jp1.h(new Cpublic(publisherArr, true));
    }

    @cs1("none")
    @t6(s6.FULL)
    @gl
    public static <T> jz1<Boolean> N4(Publisher<? extends T> publisher, Publisher<? extends T> publisher2, int i) {
        return P4(publisher, publisher2, Cif.m29472new(), i);
    }

    @b41
    @t6(s6.FULL)
    @cs1("none")
    @gl
    public static <T> Cfor<T> O(int i, int i2, Publisher<? extends T>... publisherArr) {
        Cif.m29468else(publisherArr, "sources is null");
        Cif.m29470goto(i, "maxConcurrency");
        Cif.m29470goto(i2, "prefetch");
        return jp1.h(new Creturn(new l(publisherArr), Cdo.m29416catch(), i, i2, Ctry.IMMEDIATE));
    }

    @cs1("none")
    @t6(s6.FULL)
    @gl
    public static <T> jz1<Boolean> O4(Publisher<? extends T> publisher, Publisher<? extends T> publisher2, BiPredicate<? super T, ? super T> biPredicate) {
        return P4(publisher, publisher2, biPredicate, g());
    }

    @cs1("none")
    @t6(s6.FULL)
    @gl
    public static <T> Cfor<T> P(Publisher<? extends T>... publisherArr) {
        return O(g(), g(), publisherArr);
    }

    @b41
    @t6(s6.FULL)
    @cs1("none")
    @gl
    public static <T> jz1<Boolean> P4(Publisher<? extends T> publisher, Publisher<? extends T> publisher2, BiPredicate<? super T, ? super T> biPredicate, int i) {
        Cif.m29468else(publisher, "source1 is null");
        Cif.m29468else(publisher2, "source2 is null");
        Cif.m29468else(biPredicate, "isEqual is null");
        Cif.m29470goto(i, "bufferSize");
        return jp1.g(new m1(publisher, publisher2, biPredicate, i));
    }

    @cs1("none")
    @t6(s6.FULL)
    @gl
    public static <T> Cfor<T> Q(int i, int i2, Publisher<? extends T>... publisherArr) {
        return Z1(publisherArr).k0(Cdo.m29416catch(), i, i2, true);
    }

    @b41
    @t6(s6.NONE)
    @cs1("none")
    @gl
    public static <T> Cfor<T> Q6(Publisher<T> publisher) {
        Cif.m29468else(publisher, "onSubscribe is null");
        if (publisher instanceof Cfor) {
            throw new IllegalArgumentException("unsafeCreate(Flowable) should be upgraded");
        }
        return jp1.h(new bd0(publisher));
    }

    @cs1("none")
    @t6(s6.FULL)
    @gl
    public static <T> Cfor<T> R(Publisher<? extends T>... publisherArr) {
        return Q(g(), g(), publisherArr);
    }

    @b41
    @t6(s6.FULL)
    @cs1("none")
    @gl
    public static <T> Cfor<T> S(Iterable<? extends Publisher<? extends T>> iterable) {
        Cif.m29468else(iterable, "sources is null");
        return f2(iterable).g0(Cdo.m29416catch());
    }

    @cs1("none")
    @t6(s6.PASS_THROUGH)
    @gl
    public static <T, D> Cfor<T> S6(Callable<? extends D> callable, Function<? super D, ? extends Publisher<? extends T>> function, Consumer<? super D> consumer) {
        return T6(callable, function, consumer, true);
    }

    @cs1("none")
    @t6(s6.FULL)
    @gl
    public static <T> Cfor<T> T(Publisher<? extends Publisher<? extends T>> publisher) {
        return U(publisher, g(), true);
    }

    @b41
    @t6(s6.PASS_THROUGH)
    @cs1("none")
    @gl
    public static <T, D> Cfor<T> T6(Callable<? extends D> callable, Function<? super D, ? extends Publisher<? extends T>> function, Consumer<? super D> consumer, boolean z) {
        Cif.m29468else(callable, "resourceSupplier is null");
        Cif.m29468else(function, "sourceSupplier is null");
        Cif.m29468else(consumer, "resourceDisposer is null");
        return jp1.h(new o2(callable, function, consumer, z));
    }

    @cs1("none")
    @t6(s6.FULL)
    @gl
    public static <T> Cfor<T> U(Publisher<? extends Publisher<? extends T>> publisher, int i, boolean z) {
        return g2(publisher).h0(Cdo.m29416catch(), i, z);
    }

    @cs1("none")
    @t6(s6.FULL)
    @gl
    public static <T> Cfor<T> U2(Iterable<? extends Publisher<? extends T>> iterable) {
        return f2(iterable).z1(Cdo.m29416catch());
    }

    @cs1("none")
    @t6(s6.FULL)
    @gl
    public static <T> Cfor<T> V(Iterable<? extends Publisher<? extends T>> iterable) {
        return W(iterable, g(), g());
    }

    @cs1("none")
    @t6(s6.FULL)
    @gl
    public static <T> Cfor<T> V2(Iterable<? extends Publisher<? extends T>> iterable, int i) {
        return f2(iterable).A1(Cdo.m29416catch(), i);
    }

    @cs1("none")
    @t6(s6.FULL)
    @gl
    public static Cfor<Integer> V3(int i, int i2) {
        if (i2 < 0) {
            throw new IllegalArgumentException("count >= 0 required but it was " + i2);
        }
        if (i2 == 0) {
            return s1();
        }
        if (i2 == 1) {
            return D2(Integer.valueOf(i));
        }
        if (i + (i2 - 1) <= 2147483647L) {
            return jp1.h(new u0(i, i2));
        }
        throw new IllegalArgumentException("Integer overflow");
    }

    @b41
    @t6(s6.FULL)
    @cs1("none")
    @gl
    public static <T> Cfor<T> W(Iterable<? extends Publisher<? extends T>> iterable, int i, int i2) {
        Cif.m29468else(iterable, "sources is null");
        Cif.m29470goto(i, "maxConcurrency");
        Cif.m29470goto(i2, "prefetch");
        return jp1.h(new Creturn(new n(iterable), Cdo.m29416catch(), i, i2, Ctry.IMMEDIATE));
    }

    @cs1("none")
    @t6(s6.FULL)
    @gl
    public static <T> Cfor<T> W2(Iterable<? extends Publisher<? extends T>> iterable, int i, int i2) {
        return f2(iterable).K1(Cdo.m29416catch(), false, i, i2);
    }

    @cs1("none")
    @t6(s6.FULL)
    @gl
    public static Cfor<Long> W3(long j, long j2) {
        if (j2 < 0) {
            throw new IllegalArgumentException("count >= 0 required but it was " + j2);
        }
        if (j2 == 0) {
            return s1();
        }
        if (j2 == 1) {
            return D2(Long.valueOf(j));
        }
        long j3 = (j2 - 1) + j;
        if (j <= 0 || j3 >= 0) {
            return jp1.h(new v0(j, j2));
        }
        throw new IllegalArgumentException("Overflow! start + count is bigger than Long.MAX_VALUE");
    }

    @cs1("none")
    @t6(s6.FULL)
    @gl
    public static <T> Cfor<T> X(Publisher<? extends Publisher<? extends T>> publisher) {
        return Y(publisher, g(), g());
    }

    @cs1("none")
    @t6(s6.FULL)
    @gl
    public static <T> Cfor<T> X2(Publisher<? extends Publisher<? extends T>> publisher) {
        return Y2(publisher, g());
    }

    @b41
    @t6(s6.FULL)
    @cs1("none")
    @gl
    public static <T> Cfor<T> Y(Publisher<? extends Publisher<? extends T>> publisher, int i, int i2) {
        Cif.m29468else(publisher, "sources is null");
        Cif.m29470goto(i, "maxConcurrency");
        Cif.m29470goto(i2, "prefetch");
        return jp1.h(new Cstatic(publisher, Cdo.m29416catch(), i, i2, Ctry.IMMEDIATE));
    }

    @cs1("none")
    @t6(s6.FULL)
    @gl
    public static <T> Cfor<T> Y2(Publisher<? extends Publisher<? extends T>> publisher, int i) {
        return g2(publisher).A1(Cdo.m29416catch(), i);
    }

    @b41
    @t6(s6.FULL)
    @cs1("none")
    @gl
    public static <T> Cfor<T> Z1(T... tArr) {
        Cif.m29468else(tArr, "items is null");
        return tArr.length == 0 ? s1() : tArr.length == 1 ? D2(tArr[0]) : jp1.h(new l(tArr));
    }

    @b41
    @t6(s6.FULL)
    @cs1("none")
    @gl
    public static <T> Cfor<T> Z2(Publisher<? extends T> publisher, Publisher<? extends T> publisher2) {
        Cif.m29468else(publisher, "source1 is null");
        Cif.m29468else(publisher2, "source2 is null");
        return Z1(publisher, publisher2).J1(Cdo.m29416catch(), false, 2);
    }

    @b41
    @t6(s6.FULL)
    @cs1("none")
    @gl
    public static <T> Cfor<T> a2(Callable<? extends T> callable) {
        Cif.m29468else(callable, "supplier is null");
        return jp1.h(new m(callable));
    }

    @b41
    @t6(s6.FULL)
    @cs1("none")
    @gl
    public static <T> Cfor<T> a3(Publisher<? extends T> publisher, Publisher<? extends T> publisher2, Publisher<? extends T> publisher3) {
        Cif.m29468else(publisher, "source1 is null");
        Cif.m29468else(publisher2, "source2 is null");
        Cif.m29468else(publisher3, "source3 is null");
        return Z1(publisher, publisher2, publisher3).J1(Cdo.m29416catch(), false, 3);
    }

    @b41
    @t6(s6.FULL)
    @cs1("none")
    @gl
    public static <T> Cfor<T> b2(Future<? extends T> future) {
        Cif.m29468else(future, "future is null");
        return jp1.h(new ad0(future, 0L, null));
    }

    @b41
    @t6(s6.FULL)
    @cs1("none")
    @gl
    public static <T> Cfor<T> b3(Publisher<? extends T> publisher, Publisher<? extends T> publisher2, Publisher<? extends T> publisher3, Publisher<? extends T> publisher4) {
        Cif.m29468else(publisher, "source1 is null");
        Cif.m29468else(publisher2, "source2 is null");
        Cif.m29468else(publisher3, "source3 is null");
        Cif.m29468else(publisher4, "source4 is null");
        return Z1(publisher, publisher2, publisher3, publisher4).J1(Cdo.m29416catch(), false, 4);
    }

    @b41
    @t6(s6.FULL)
    @cs1("none")
    @gl
    public static <T> Cfor<T> c2(Future<? extends T> future, long j, TimeUnit timeUnit) {
        Cif.m29468else(future, "future is null");
        Cif.m29468else(timeUnit, "unit is null");
        return jp1.h(new ad0(future, j, timeUnit));
    }

    @cs1("none")
    @t6(s6.FULL)
    @gl
    public static <T> Cfor<T> c3(int i, int i2, Publisher<? extends T>... publisherArr) {
        return Z1(publisherArr).K1(Cdo.m29416catch(), false, i, i2);
    }

    @b41
    @t6(s6.FULL)
    @cs1(cs1.F5)
    @gl
    public static <T> Cfor<T> d2(Future<? extends T> future, long j, TimeUnit timeUnit, Ctry ctry) {
        Cif.m29468else(ctry, "scheduler is null");
        return c2(future, j, timeUnit).o5(ctry);
    }

    @cs1("none")
    @t6(s6.FULL)
    @gl
    public static <T> Cfor<T> d3(Publisher<? extends T>... publisherArr) {
        return Z1(publisherArr).A1(Cdo.m29416catch(), publisherArr.length);
    }

    @b41
    @t6(s6.FULL)
    @cs1(cs1.F5)
    @gl
    public static <T> Cfor<T> e2(Future<? extends T> future, Ctry ctry) {
        Cif.m29468else(ctry, "scheduler is null");
        return b2(future).o5(ctry);
    }

    @cs1("none")
    @t6(s6.FULL)
    @gl
    public static <T> Cfor<T> e3(int i, int i2, Publisher<? extends T>... publisherArr) {
        return Z1(publisherArr).K1(Cdo.m29416catch(), true, i, i2);
    }

    @b41
    @t6(s6.FULL)
    @cs1("none")
    @gl
    public static <T> Cfor<T> f2(Iterable<? extends T> iterable) {
        Cif.m29468else(iterable, "source is null");
        return jp1.h(new n(iterable));
    }

    @cs1("none")
    @t6(s6.FULL)
    @gl
    public static <T> Cfor<T> f3(Publisher<? extends T>... publisherArr) {
        return Z1(publisherArr).J1(Cdo.m29416catch(), true, publisherArr.length);
    }

    @b41
    @t6(s6.PASS_THROUGH)
    @cs1("none")
    @gl
    /* renamed from: for, reason: not valid java name */
    public static <T> Cfor<T> m29374for(Publisher<? extends T>... publisherArr) {
        Cif.m29468else(publisherArr, "sources is null");
        int length = publisherArr.length;
        return length == 0 ? s1() : length == 1 ? g2(publisherArr[0]) : jp1.h(new Cgoto(publisherArr, null));
    }

    public static int g() {
        return f25272do;
    }

    @b41
    @t6(s6.PASS_THROUGH)
    @cs1("none")
    @gl
    public static <T> Cfor<T> g2(Publisher<? extends T> publisher) {
        if (publisher instanceof Cfor) {
            return jp1.h((Cfor) publisher);
        }
        Cif.m29468else(publisher, "source is null");
        return jp1.h(new bd0(publisher));
    }

    @cs1("none")
    @t6(s6.FULL)
    @gl
    public static <T> Cfor<T> g3(Iterable<? extends Publisher<? extends T>> iterable) {
        return f2(iterable).I1(Cdo.m29416catch(), true);
    }

    @b41
    @t6(s6.PASS_THROUGH)
    @cs1("none")
    @gl
    private Cfor<T> h1(Consumer<? super T> consumer, Consumer<? super Throwable> consumer2, Action action, Action action2) {
        Cif.m29468else(consumer, "onNext is null");
        Cif.m29468else(consumer2, "onError is null");
        Cif.m29468else(action, "onComplete is null");
        Cif.m29468else(action2, "onAfterTerminate is null");
        return jp1.h(new Csynchronized(this, consumer, consumer2, action, action2));
    }

    @b41
    @t6(s6.FULL)
    @cs1("none")
    @gl
    public static <T> Cfor<T> h2(Consumer<Emitter<T>> consumer) {
        Cif.m29468else(consumer, "generator is null");
        return l2(Cdo.m29436return(), u.m29519break(consumer), Cdo.m29427goto());
    }

    @cs1("none")
    @t6(s6.FULL)
    @gl
    public static <T> Cfor<T> h3(Iterable<? extends Publisher<? extends T>> iterable, int i) {
        return f2(iterable).J1(Cdo.m29416catch(), true, i);
    }

    @b41
    @t6(s6.FULL)
    @cs1("none")
    @gl
    public static <T, S> Cfor<T> i2(Callable<S> callable, BiConsumer<S, Emitter<T>> biConsumer) {
        Cif.m29468else(biConsumer, "generator is null");
        return l2(callable, u.m29531this(biConsumer), Cdo.m29427goto());
    }

    @cs1("none")
    @t6(s6.FULL)
    @gl
    public static <T> Cfor<T> i3(Iterable<? extends Publisher<? extends T>> iterable, int i, int i2) {
        return f2(iterable).K1(Cdo.m29416catch(), true, i, i2);
    }

    @b41
    @t6(s6.PASS_THROUGH)
    @cs1("none")
    @gl
    /* renamed from: if, reason: not valid java name */
    public static <T> Cfor<T> m29375if(Iterable<? extends Publisher<? extends T>> iterable) {
        Cif.m29468else(iterable, "sources is null");
        return jp1.h(new Cgoto(null, iterable));
    }

    @b41
    @t6(s6.FULL)
    @cs1("none")
    @gl
    public static <T, S> Cfor<T> j2(Callable<S> callable, BiConsumer<S, Emitter<T>> biConsumer, Consumer<? super S> consumer) {
        Cif.m29468else(biConsumer, "generator is null");
        return l2(callable, u.m29531this(biConsumer), consumer);
    }

    @cs1("none")
    @t6(s6.FULL)
    @gl
    public static <T> Cfor<T> j3(Publisher<? extends Publisher<? extends T>> publisher) {
        return k3(publisher, g());
    }

    @cs1("none")
    @t6(s6.FULL)
    @gl
    public static <T, S> Cfor<T> k2(Callable<S> callable, BiFunction<S, Emitter<T>, S> biFunction) {
        return l2(callable, biFunction, Cdo.m29427goto());
    }

    @cs1("none")
    @t6(s6.FULL)
    @gl
    public static <T> Cfor<T> k3(Publisher<? extends Publisher<? extends T>> publisher, int i) {
        return g2(publisher).J1(Cdo.m29416catch(), true, i);
    }

    @b41
    @t6(s6.FULL)
    @cs1("none")
    @gl
    public static <T, S> Cfor<T> l2(Callable<S> callable, BiFunction<S, Emitter<T>, S> biFunction, Consumer<? super S> consumer) {
        Cif.m29468else(callable, "initialState is null");
        Cif.m29468else(biFunction, "generator is null");
        Cif.m29468else(consumer, "disposeState is null");
        return jp1.h(new p(callable, biFunction, consumer));
    }

    @b41
    @t6(s6.FULL)
    @cs1("none")
    @gl
    public static <T> Cfor<T> l3(Publisher<? extends T> publisher, Publisher<? extends T> publisher2) {
        Cif.m29468else(publisher, "source1 is null");
        Cif.m29468else(publisher2, "source2 is null");
        return Z1(publisher, publisher2).J1(Cdo.m29416catch(), true, 2);
    }

    @cs1("none")
    @t6(s6.FULL)
    @gl
    public static <T, R> Cfor<R> m(Function<? super Object[], ? extends R> function, Publisher<? extends T>... publisherArr) {
        return y(publisherArr, function, g());
    }

    @b41
    @t6(s6.FULL)
    @cs1("none")
    @gl
    public static <T> Cfor<T> m3(Publisher<? extends T> publisher, Publisher<? extends T> publisher2, Publisher<? extends T> publisher3) {
        Cif.m29468else(publisher, "source1 is null");
        Cif.m29468else(publisher2, "source2 is null");
        Cif.m29468else(publisher3, "source3 is null");
        return Z1(publisher, publisher2, publisher3).J1(Cdo.m29416catch(), true, 3);
    }

    @cs1("none")
    @t6(s6.FULL)
    @gl
    public static <T, R> Cfor<R> n(Iterable<? extends Publisher<? extends T>> iterable, Function<? super Object[], ? extends R> function) {
        return o(iterable, function, g());
    }

    @b41
    @t6(s6.FULL)
    @cs1("none")
    @gl
    public static <T> Cfor<T> n3(Publisher<? extends T> publisher, Publisher<? extends T> publisher2, Publisher<? extends T> publisher3, Publisher<? extends T> publisher4) {
        Cif.m29468else(publisher, "source1 is null");
        Cif.m29468else(publisher2, "source2 is null");
        Cif.m29468else(publisher3, "source3 is null");
        Cif.m29468else(publisher4, "source4 is null");
        return Z1(publisher, publisher2, publisher3, publisher4).J1(Cdo.m29416catch(), true, 4);
    }

    @b41
    @t6(s6.FULL)
    @cs1("none")
    @gl
    public static <T, R> Cfor<R> o(Iterable<? extends Publisher<? extends T>> iterable, Function<? super Object[], ? extends R> function, int i) {
        Cif.m29468else(iterable, "sources is null");
        Cif.m29468else(function, "combiner is null");
        Cif.m29470goto(i, "bufferSize");
        return jp1.h(new Cnative((Iterable) iterable, (Function) function, i, false));
    }

    @cs1("none")
    @t6(s6.FULL)
    @gl
    public static <T1, T2, R> Cfor<R> p(Publisher<? extends T1> publisher, Publisher<? extends T2> publisher2, BiFunction<? super T1, ? super T2, ? extends R> biFunction) {
        Cif.m29468else(publisher, "source1 is null");
        Cif.m29468else(publisher2, "source2 is null");
        return m(Cdo.m29443throws(biFunction), publisher, publisher2);
    }

    @b41
    @t6(s6.FULL)
    @cs1("none")
    @gl
    public static <T1, T2, T3, R> Cfor<R> q(Publisher<? extends T1> publisher, Publisher<? extends T2> publisher2, Publisher<? extends T3> publisher3, Function3<? super T1, ? super T2, ? super T3, ? extends R> function3) {
        Cif.m29468else(publisher, "source1 is null");
        Cif.m29468else(publisher2, "source2 is null");
        Cif.m29468else(publisher3, "source3 is null");
        return m(Cdo.m29420default(function3), publisher, publisher2, publisher3);
    }

    @b41
    @t6(s6.FULL)
    @cs1("none")
    @gl
    public static <T1, T2, T3, T4, R> Cfor<R> r(Publisher<? extends T1> publisher, Publisher<? extends T2> publisher2, Publisher<? extends T3> publisher3, Publisher<? extends T4> publisher4, Function4<? super T1, ? super T2, ? super T3, ? super T4, ? extends R> function4) {
        Cif.m29468else(publisher, "source1 is null");
        Cif.m29468else(publisher2, "source2 is null");
        Cif.m29468else(publisher3, "source3 is null");
        Cif.m29468else(publisher4, "source4 is null");
        return m(Cdo.m29423extends(function4), publisher, publisher2, publisher3, publisher4);
    }

    private Cfor<T> r6(long j, TimeUnit timeUnit, Publisher<? extends T> publisher, Ctry ctry) {
        Cif.m29468else(timeUnit, "timeUnit is null");
        Cif.m29468else(ctry, "scheduler is null");
        return jp1.h(new FlowableTimeoutTimed(this, j, timeUnit, ctry, publisher));
    }

    @b41
    @t6(s6.FULL)
    @cs1("none")
    @gl
    public static <T1, T2, T3, T4, T5, R> Cfor<R> s(Publisher<? extends T1> publisher, Publisher<? extends T2> publisher2, Publisher<? extends T3> publisher3, Publisher<? extends T4> publisher4, Publisher<? extends T5> publisher5, Function5<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? extends R> function5) {
        Cif.m29468else(publisher, "source1 is null");
        Cif.m29468else(publisher2, "source2 is null");
        Cif.m29468else(publisher3, "source3 is null");
        Cif.m29468else(publisher4, "source4 is null");
        Cif.m29468else(publisher5, "source5 is null");
        return m(Cdo.m29425finally(function5), publisher, publisher2, publisher3, publisher4, publisher5);
    }

    @cs1("none")
    @t6(s6.PASS_THROUGH)
    @gl
    public static <T> Cfor<T> s1() {
        return jp1.h(xc0.f7866if);
    }

    @cs1("none")
    @t6(s6.PASS_THROUGH)
    @gl
    public static <T> Cfor<T> s3() {
        return jp1.h(dd0.f996if);
    }

    private <U, V> Cfor<T> s6(Publisher<U> publisher, Function<? super T, ? extends Publisher<V>> function, Publisher<? extends T> publisher2) {
        Cif.m29468else(function, "itemTimeoutIndicator is null");
        return jp1.h(new FlowableTimeout(this, publisher, function, publisher2));
    }

    @b41
    @t6(s6.FULL)
    @cs1("none")
    @gl
    public static <T1, T2, T3, T4, T5, T6, R> Cfor<R> t(Publisher<? extends T1> publisher, Publisher<? extends T2> publisher2, Publisher<? extends T3> publisher3, Publisher<? extends T4> publisher4, Publisher<? extends T5> publisher5, Publisher<? extends T6> publisher6, Function6<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? extends R> function6) {
        Cif.m29468else(publisher, "source1 is null");
        Cif.m29468else(publisher2, "source2 is null");
        Cif.m29468else(publisher3, "source3 is null");
        Cif.m29468else(publisher4, "source4 is null");
        Cif.m29468else(publisher5, "source5 is null");
        Cif.m29468else(publisher6, "source6 is null");
        return m(Cdo.m29433package(function6), publisher, publisher2, publisher3, publisher4, publisher5, publisher6);
    }

    @b41
    @t6(s6.PASS_THROUGH)
    @cs1("none")
    @gl
    public static <T> Cfor<T> t1(Throwable th) {
        Cif.m29468else(th, "throwable is null");
        return u1(Cdo.m29418const(th));
    }

    @cs1(cs1.G5)
    @t6(s6.ERROR)
    @gl
    public static Cfor<Long> t6(long j, TimeUnit timeUnit) {
        return u6(j, timeUnit, io.reactivex.schedulers.Cdo.m29767do());
    }

    @b41
    @t6(s6.FULL)
    @cs1("none")
    @gl
    public static <T, R> Cfor<R> t7(Iterable<? extends Publisher<? extends T>> iterable, Function<? super Object[], ? extends R> function) {
        Cif.m29468else(function, "zipper is null");
        Cif.m29468else(iterable, "sources is null");
        return jp1.h(new w2(null, iterable, function, g(), false));
    }

    @b41
    @t6(s6.FULL)
    @cs1("none")
    @gl
    public static <T1, T2, T3, T4, T5, T6, T7, R> Cfor<R> u(Publisher<? extends T1> publisher, Publisher<? extends T2> publisher2, Publisher<? extends T3> publisher3, Publisher<? extends T4> publisher4, Publisher<? extends T5> publisher5, Publisher<? extends T6> publisher6, Publisher<? extends T7> publisher7, Function7<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? extends R> function7) {
        Cif.m29468else(publisher, "source1 is null");
        Cif.m29468else(publisher2, "source2 is null");
        Cif.m29468else(publisher3, "source3 is null");
        Cif.m29468else(publisher4, "source4 is null");
        Cif.m29468else(publisher5, "source5 is null");
        Cif.m29468else(publisher6, "source6 is null");
        Cif.m29468else(publisher7, "source7 is null");
        return m(Cdo.m29434private(function7), publisher, publisher2, publisher3, publisher4, publisher5, publisher6, publisher7);
    }

    @b41
    @t6(s6.PASS_THROUGH)
    @cs1("none")
    @gl
    public static <T> Cfor<T> u1(Callable<? extends Throwable> callable) {
        Cif.m29468else(callable, "supplier is null");
        return jp1.h(new yc0(callable));
    }

    @b41
    @t6(s6.ERROR)
    @cs1(cs1.F5)
    @gl
    public static Cfor<Long> u6(long j, TimeUnit timeUnit, Ctry ctry) {
        Cif.m29468else(timeUnit, "unit is null");
        Cif.m29468else(ctry, "scheduler is null");
        return jp1.h(new k2(Math.max(0L, j), timeUnit, ctry));
    }

    @b41
    @t6(s6.FULL)
    @cs1("none")
    @gl
    public static <T, R> Cfor<R> u7(Publisher<? extends Publisher<? extends T>> publisher, Function<? super Object[], ? extends R> function) {
        Cif.m29468else(function, "zipper is null");
        return g2(publisher).B6().n(u.m29526final(function));
    }

    @b41
    @t6(s6.FULL)
    @cs1("none")
    @gl
    public static <T1, T2, T3, T4, T5, T6, T7, T8, R> Cfor<R> v(Publisher<? extends T1> publisher, Publisher<? extends T2> publisher2, Publisher<? extends T3> publisher3, Publisher<? extends T4> publisher4, Publisher<? extends T5> publisher5, Publisher<? extends T6> publisher6, Publisher<? extends T7> publisher7, Publisher<? extends T8> publisher8, Function8<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? super T8, ? extends R> function8) {
        Cif.m29468else(publisher, "source1 is null");
        Cif.m29468else(publisher2, "source2 is null");
        Cif.m29468else(publisher3, "source3 is null");
        Cif.m29468else(publisher4, "source4 is null");
        Cif.m29468else(publisher5, "source5 is null");
        Cif.m29468else(publisher6, "source6 is null");
        Cif.m29468else(publisher7, "source7 is null");
        Cif.m29468else(publisher8, "source8 is null");
        return m(Cdo.m29413abstract(function8), publisher, publisher2, publisher3, publisher4, publisher5, publisher6, publisher7, publisher8);
    }

    @cs1(cs1.G5)
    @t6(s6.ERROR)
    @gl
    public static Cfor<Long> v2(long j, long j2, TimeUnit timeUnit) {
        return w2(j, j2, timeUnit, io.reactivex.schedulers.Cdo.m29767do());
    }

    @b41
    @t6(s6.FULL)
    @cs1("none")
    @gl
    public static <T1, T2, R> Cfor<R> v7(Publisher<? extends T1> publisher, Publisher<? extends T2> publisher2, BiFunction<? super T1, ? super T2, ? extends R> biFunction) {
        Cif.m29468else(publisher, "source1 is null");
        Cif.m29468else(publisher2, "source2 is null");
        return F7(Cdo.m29443throws(biFunction), false, g(), publisher, publisher2);
    }

    @b41
    @t6(s6.FULL)
    @cs1("none")
    @gl
    public static <T1, T2, T3, T4, T5, T6, T7, T8, T9, R> Cfor<R> w(Publisher<? extends T1> publisher, Publisher<? extends T2> publisher2, Publisher<? extends T3> publisher3, Publisher<? extends T4> publisher4, Publisher<? extends T5> publisher5, Publisher<? extends T6> publisher6, Publisher<? extends T7> publisher7, Publisher<? extends T8> publisher8, Publisher<? extends T9> publisher9, Function9<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? super T8, ? super T9, ? extends R> function9) {
        Cif.m29468else(publisher, "source1 is null");
        Cif.m29468else(publisher2, "source2 is null");
        Cif.m29468else(publisher3, "source3 is null");
        Cif.m29468else(publisher4, "source4 is null");
        Cif.m29468else(publisher5, "source5 is null");
        Cif.m29468else(publisher6, "source6 is null");
        Cif.m29468else(publisher7, "source7 is null");
        Cif.m29468else(publisher8, "source8 is null");
        Cif.m29468else(publisher9, "source9 is null");
        return m(Cdo.m29419continue(function9), publisher, publisher2, publisher3, publisher4, publisher5, publisher6, publisher7, publisher8, publisher9);
    }

    @b41
    @t6(s6.ERROR)
    @cs1(cs1.F5)
    @gl
    public static Cfor<Long> w2(long j, long j2, TimeUnit timeUnit, Ctry ctry) {
        Cif.m29468else(timeUnit, "unit is null");
        Cif.m29468else(ctry, "scheduler is null");
        return jp1.h(new v(Math.max(0L, j), Math.max(0L, j2), timeUnit, ctry));
    }

    @b41
    @t6(s6.FULL)
    @cs1("none")
    @gl
    public static <T1, T2, R> Cfor<R> w7(Publisher<? extends T1> publisher, Publisher<? extends T2> publisher2, BiFunction<? super T1, ? super T2, ? extends R> biFunction, boolean z) {
        Cif.m29468else(publisher, "source1 is null");
        Cif.m29468else(publisher2, "source2 is null");
        return F7(Cdo.m29443throws(biFunction), z, g(), publisher, publisher2);
    }

    @cs1("none")
    @t6(s6.FULL)
    @gl
    public static <T, R> Cfor<R> x(Publisher<? extends T>[] publisherArr, Function<? super Object[], ? extends R> function) {
        return y(publisherArr, function, g());
    }

    @cs1(cs1.G5)
    @t6(s6.ERROR)
    @gl
    public static Cfor<Long> x2(long j, TimeUnit timeUnit) {
        return w2(j, j, timeUnit, io.reactivex.schedulers.Cdo.m29767do());
    }

    @b41
    @t6(s6.FULL)
    @cs1("none")
    @gl
    public static <T1, T2, R> Cfor<R> x7(Publisher<? extends T1> publisher, Publisher<? extends T2> publisher2, BiFunction<? super T1, ? super T2, ? extends R> biFunction, boolean z, int i) {
        Cif.m29468else(publisher, "source1 is null");
        Cif.m29468else(publisher2, "source2 is null");
        return F7(Cdo.m29443throws(biFunction), z, i, publisher, publisher2);
    }

    @b41
    @t6(s6.FULL)
    @cs1("none")
    @gl
    public static <T, R> Cfor<R> y(Publisher<? extends T>[] publisherArr, Function<? super Object[], ? extends R> function, int i) {
        Cif.m29468else(publisherArr, "sources is null");
        if (publisherArr.length == 0) {
            return s1();
        }
        Cif.m29468else(function, "combiner is null");
        Cif.m29470goto(i, "bufferSize");
        return jp1.h(new Cnative((Publisher[]) publisherArr, (Function) function, i, false));
    }

    @cs1(cs1.F5)
    @t6(s6.ERROR)
    @gl
    public static Cfor<Long> y2(long j, TimeUnit timeUnit, Ctry ctry) {
        return w2(j, j, timeUnit, ctry);
    }

    @b41
    @t6(s6.FULL)
    @cs1("none")
    @gl
    public static <T1, T2, T3, R> Cfor<R> y7(Publisher<? extends T1> publisher, Publisher<? extends T2> publisher2, Publisher<? extends T3> publisher3, Function3<? super T1, ? super T2, ? super T3, ? extends R> function3) {
        Cif.m29468else(publisher, "source1 is null");
        Cif.m29468else(publisher2, "source2 is null");
        Cif.m29468else(publisher3, "source3 is null");
        return F7(Cdo.m29420default(function3), false, g(), publisher, publisher2, publisher3);
    }

    @cs1("none")
    @t6(s6.FULL)
    @gl
    public static <T, R> Cfor<R> z(Function<? super Object[], ? extends R> function, int i, Publisher<? extends T>... publisherArr) {
        return E(publisherArr, function, i);
    }

    @cs1(cs1.G5)
    @t6(s6.ERROR)
    @gl
    public static Cfor<Long> z2(long j, long j2, long j3, long j4, TimeUnit timeUnit) {
        return A2(j, j2, j3, j4, timeUnit, io.reactivex.schedulers.Cdo.m29767do());
    }

    @b41
    @t6(s6.FULL)
    @cs1("none")
    @gl
    public static <T1, T2, T3, T4, R> Cfor<R> z7(Publisher<? extends T1> publisher, Publisher<? extends T2> publisher2, Publisher<? extends T3> publisher3, Publisher<? extends T4> publisher4, Function4<? super T1, ? super T2, ? super T3, ? super T4, ? extends R> function4) {
        Cif.m29468else(publisher, "source1 is null");
        Cif.m29468else(publisher2, "source2 is null");
        Cif.m29468else(publisher3, "source3 is null");
        Cif.m29468else(publisher4, "source4 is null");
        return F7(Cdo.m29423extends(function4), false, g(), publisher, publisher2, publisher3, publisher4);
    }

    @cs1("none")
    @t6(s6.FULL)
    @gl
    public final Cfor<T> A0(@b41 SingleSource<? extends T> singleSource) {
        Cif.m29468else(singleSource, "other is null");
        return jp1.h(new Cdefault(this, singleSource));
    }

    @cs1("none")
    @t6(s6.FULL)
    @gl
    public final <R> Cfor<R> A1(Function<? super T, ? extends Publisher<? extends R>> function, int i) {
        return K1(function, false, i, g());
    }

    @cs1("none")
    @t6(s6.ERROR)
    @gl
    public final Cfor<T> A3(int i, boolean z) {
        return B3(i, z, false);
    }

    @b41
    @t6(s6.FULL)
    @cs1("none")
    @gl
    public final Cfor<T> A4(BooleanSupplier booleanSupplier) {
        Cif.m29468else(booleanSupplier, "stop is null");
        return x4(Long.MAX_VALUE, Cdo.m29437static(booleanSupplier));
    }

    @b41
    @t6(s6.UNBOUNDED_IN)
    @cs1("none")
    @gl
    public final <R> Cfor<R> A5(@b41 Function<? super T, ? extends SingleSource<? extends R>> function) {
        Cif.m29468else(function, "mapper is null");
        return jp1.h(new io.reactivex.internal.operators.mixed.Cgoto(this, function, false));
    }

    @cs1("none")
    @t6(s6.UNBOUNDED_IN)
    @gl
    public final Future<T> A6() {
        return (Future) subscribeWith(new io.reactivex.internal.subscribers.Cdo());
    }

    @b41
    @t6(s6.FULL)
    @cs1("none")
    @gl
    public final Cfor<T> B0(Publisher<? extends T> publisher) {
        Cif.m29468else(publisher, "other is null");
        return J(this, publisher);
    }

    @cs1("none")
    @t6(s6.FULL)
    @gl
    public final <U, R> Cfor<R> B1(Function<? super T, ? extends Publisher<? extends U>> function, BiFunction<? super T, ? super U, ? extends R> biFunction) {
        return F1(function, biFunction, false, g(), g());
    }

    @cs1("none")
    @t6(s6.UNBOUNDED_IN)
    @gl
    public final jz1<Boolean> B2() {
        return m29384do(Cdo.m29428if());
    }

    @cs1("none")
    @t6(s6.SPECIAL)
    @gl
    public final Cfor<T> B3(int i, boolean z, boolean z2) {
        Cif.m29470goto(i, "capacity");
        return jp1.h(new k0(this, i, z2, z, Cdo.f25282for));
    }

    @b41
    @t6(s6.FULL)
    @cs1("none")
    @gl
    public final Cfor<T> B4(Function<? super Cfor<Throwable>, ? extends Publisher<?>> function) {
        Cif.m29468else(function, "handler is null");
        return jp1.h(new g1(this, function));
    }

    @b41
    @t6(s6.UNBOUNDED_IN)
    @cs1("none")
    @gl
    public final <R> Cfor<R> B5(@b41 Function<? super T, ? extends SingleSource<? extends R>> function) {
        Cif.m29468else(function, "mapper is null");
        return jp1.h(new io.reactivex.internal.operators.mixed.Cgoto(this, function, true));
    }

    @cs1("none")
    @t6(s6.UNBOUNDED_IN)
    @gl
    public final jz1<List<T>> B6() {
        return jp1.g(new m2(this));
    }

    @b41
    @t6(s6.UNBOUNDED_IN)
    @cs1("none")
    @gl
    public final jz1<Boolean> C0(Object obj) {
        Cif.m29468else(obj, "item is null");
        return m29410try(Cdo.m29441this(obj));
    }

    @cs1("none")
    @t6(s6.FULL)
    @gl
    public final <U, R> Cfor<R> C1(Function<? super T, ? extends Publisher<? extends U>> function, BiFunction<? super T, ? super U, ? extends R> biFunction, int i) {
        return F1(function, biFunction, false, i, g());
    }

    @b41
    @t6(s6.ERROR)
    @cs1("none")
    @gl
    public final <TRight, TLeftEnd, TRightEnd, R> Cfor<R> C2(Publisher<? extends TRight> publisher, Function<? super T, ? extends Publisher<TLeftEnd>> function, Function<? super TRight, ? extends Publisher<TRightEnd>> function2, BiFunction<? super T, ? super TRight, ? extends R> biFunction) {
        Cif.m29468else(publisher, "other is null");
        Cif.m29468else(function, "leftEnd is null");
        Cif.m29468else(function2, "rightEnd is null");
        Cif.m29468else(biFunction, "resultSelector is null");
        return jp1.h(new x(this, publisher, function, function2, biFunction));
    }

    @b41
    @t6(s6.SPECIAL)
    @cs1("none")
    @gl
    public final Cfor<T> C3(int i, boolean z, boolean z2, Action action) {
        Cif.m29468else(action, "onOverflow is null");
        Cif.m29470goto(i, "capacity");
        return jp1.h(new k0(this, i, z2, z, action));
    }

    @cs1("none")
    @t6(s6.PASS_THROUGH)
    public final void C4(Subscriber<? super T> subscriber) {
        Cif.m29468else(subscriber, "s is null");
        if (subscriber instanceof tr1) {
            m5((tr1) subscriber);
        } else {
            m5(new tr1(subscriber));
        }
    }

    @cs1("none")
    @t6(s6.UNBOUNDED_IN)
    @gl
    public final jz1<List<T>> C6(int i) {
        Cif.m29470goto(i, "capacityHint");
        return jp1.g(new m2(this, Cdo.m29415case(i)));
    }

    @cs1("none")
    @t6(s6.UNBOUNDED_IN)
    @gl
    public final jz1<Long> D0() {
        return jp1.g(new Cfinally(this));
    }

    @cs1("none")
    @t6(s6.FULL)
    @gl
    public final <U, R> Cfor<R> D1(Function<? super T, ? extends Publisher<? extends U>> function, BiFunction<? super T, ? super U, ? extends R> biFunction, boolean z) {
        return F1(function, biFunction, z, g(), g());
    }

    @b41
    @t6(s6.SPECIAL)
    @cs1("none")
    @gl
    public final Cfor<T> D3(long j, Action action, Cdo cdo) {
        Cif.m29468else(cdo, "overflowStrategy is null");
        Cif.m29473this(j, "capacity");
        return jp1.h(new l0(this, j, action, cdo));
    }

    @cs1(cs1.G5)
    @t6(s6.ERROR)
    @gl
    public final Cfor<T> D4(long j, TimeUnit timeUnit) {
        return E4(j, timeUnit, io.reactivex.schedulers.Cdo.m29767do());
    }

    @cs1("none")
    @t6(s6.UNBOUNDED_IN)
    @gl
    public final <U extends Collection<? super T>> jz1<U> D6(Callable<U> callable) {
        Cif.m29468else(callable, "collectionSupplier is null");
        return jp1.g(new m2(this, callable));
    }

    @cs1("none")
    @t6(s6.FULL)
    @gl
    public final <U, R> Cfor<R> E1(Function<? super T, ? extends Publisher<? extends U>> function, BiFunction<? super T, ? super U, ? extends R> biFunction, boolean z, int i) {
        return F1(function, biFunction, z, i, g());
    }

    @cs1("none")
    @t6(s6.UNBOUNDED_IN)
    @gl
    public final Cfor<T> E3(boolean z) {
        return B3(g(), z, true);
    }

    @b41
    @t6(s6.ERROR)
    @cs1(cs1.F5)
    @gl
    public final Cfor<T> E4(long j, TimeUnit timeUnit, Ctry ctry) {
        Cif.m29468else(timeUnit, "unit is null");
        Cif.m29468else(ctry, "scheduler is null");
        return jp1.h(new i1(this, j, timeUnit, ctry, false));
    }

    @b41
    @t6(s6.UNBOUNDED_IN)
    @cs1("none")
    @gl
    public final <K> jz1<Map<K, T>> E6(Function<? super T, ? extends K> function) {
        Cif.m29468else(function, "keySelector is null");
        return (jz1<Map<K, T>>) k(Celse.asCallable(), Cdo.m29438strictfp(function));
    }

    @cs1("none")
    @t6(s6.PASS_THROUGH)
    @gl
    public final <R> Cfor<R> F(FlowableTransformer<? super T, ? extends R> flowableTransformer) {
        return g2(((FlowableTransformer) Cif.m29468else(flowableTransformer, "composer is null")).apply(this));
    }

    @cs1(cs1.G5)
    @t6(s6.ERROR)
    @gl
    public final Cfor<T> F0(long j, TimeUnit timeUnit) {
        return G0(j, timeUnit, io.reactivex.schedulers.Cdo.m29767do());
    }

    @b41
    @t6(s6.FULL)
    @cs1("none")
    @gl
    public final <U, R> Cfor<R> F1(Function<? super T, ? extends Publisher<? extends U>> function, BiFunction<? super T, ? super U, ? extends R> biFunction, boolean z, int i, int i2) {
        Cif.m29468else(function, "mapper is null");
        Cif.m29468else(biFunction, "combiner is null");
        Cif.m29470goto(i, "maxConcurrency");
        Cif.m29470goto(i2, "bufferSize");
        return K1(u.m29529if(function, biFunction), z, i, i2);
    }

    @cs1("none")
    @t6(s6.UNBOUNDED_IN)
    @gl
    public final Cfor<T> F3() {
        return jp1.h(new m0(this));
    }

    @b41
    @t6(s6.ERROR)
    @cs1(cs1.F5)
    @gl
    public final Cfor<T> F4(long j, TimeUnit timeUnit, Ctry ctry, boolean z) {
        Cif.m29468else(timeUnit, "unit is null");
        Cif.m29468else(ctry, "scheduler is null");
        return jp1.h(new i1(this, j, timeUnit, ctry, z));
    }

    @b41
    @t6(s6.UNBOUNDED_IN)
    @cs1("none")
    @gl
    public final <K, V> jz1<Map<K, V>> F6(Function<? super T, ? extends K> function, Function<? super T, ? extends V> function2) {
        Cif.m29468else(function, "keySelector is null");
        Cif.m29468else(function2, "valueSelector is null");
        return (jz1<Map<K, V>>) k(Celse.asCallable(), Cdo.m29445volatile(function, function2));
    }

    @b41
    @t6(s6.ERROR)
    @cs1(cs1.F5)
    @gl
    public final Cfor<T> G0(long j, TimeUnit timeUnit, Ctry ctry) {
        Cif.m29468else(timeUnit, "unit is null");
        Cif.m29468else(ctry, "scheduler is null");
        return jp1.h(new Cabstract(this, j, timeUnit, ctry));
    }

    @b41
    @t6(s6.FULL)
    @cs1("none")
    @gl
    public final <R> Cfor<R> G1(Function<? super T, ? extends Publisher<? extends R>> function, Function<? super Throwable, ? extends Publisher<? extends R>> function2, Callable<? extends Publisher<? extends R>> callable) {
        Cif.m29468else(function, "onNextMapper is null");
        Cif.m29468else(function2, "onErrorMapper is null");
        Cif.m29468else(callable, "onCompleteSupplier is null");
        return X2(new d0(this, function, function2, callable));
    }

    @b41
    @t6(s6.UNBOUNDED_IN)
    @cs1("none")
    @gl
    public final Cfor<T> G3(Consumer<? super T> consumer) {
        Cif.m29468else(consumer, "onDrop is null");
        return jp1.h(new m0(this, consumer));
    }

    @cs1(cs1.G5)
    @t6(s6.ERROR)
    @gl
    public final Cfor<T> G4(long j, TimeUnit timeUnit, boolean z) {
        return F4(j, timeUnit, io.reactivex.schedulers.Cdo.m29767do(), z);
    }

    @cs1("none")
    @t6(s6.SPECIAL)
    @gl
    public final Cfor<T> G5(long j) {
        if (j >= 0) {
            return jp1.h(new z1(this, j));
        }
        throw new IllegalArgumentException("count >= 0 required but it was " + j);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @b41
    @t6(s6.UNBOUNDED_IN)
    @cs1("none")
    @gl
    public final <K, V> jz1<Map<K, V>> G6(Function<? super T, ? extends K> function, Function<? super T, ? extends V> function2, Callable<? extends Map<K, V>> callable) {
        Cif.m29468else(function, "keySelector is null");
        Cif.m29468else(function2, "valueSelector is null");
        return (jz1<Map<K, V>>) k(callable, Cdo.m29445volatile(function, function2));
    }

    @b41
    @t6(s6.ERROR)
    @cs1("none")
    @gl
    public final <U> Cfor<T> H0(Function<? super T, ? extends Publisher<U>> function) {
        Cif.m29468else(function, "debounceIndicator is null");
        return jp1.h(new Cprivate(this, function));
    }

    @b41
    @t6(s6.FULL)
    @cs1("none")
    @gl
    public final <R> Cfor<R> H1(Function<? super T, ? extends Publisher<? extends R>> function, Function<Throwable, ? extends Publisher<? extends R>> function2, Callable<? extends Publisher<? extends R>> callable, int i) {
        Cif.m29468else(function, "onNextMapper is null");
        Cif.m29468else(function2, "onErrorMapper is null");
        Cif.m29468else(callable, "onCompleteSupplier is null");
        return Y2(new d0(this, function, function2, callable), i);
    }

    @cs1("none")
    @t6(s6.UNBOUNDED_IN)
    @gl
    public final Cfor<T> H3() {
        return jp1.h(new o0(this));
    }

    @b41
    @t6(s6.ERROR)
    @cs1("none")
    @gl
    public final <U> Cfor<T> H4(Publisher<U> publisher) {
        Cif.m29468else(publisher, "sampler is null");
        return jp1.h(new h1(this, publisher, false));
    }

    @cs1(cs1.G5)
    @t6(s6.PASS_THROUGH)
    @gl
    public final Cfor<T> H5(long j, TimeUnit timeUnit) {
        return T5(t6(j, timeUnit));
    }

    @cs1("none")
    @t6(s6.UNBOUNDED_IN)
    @gl
    public final <K> jz1<Map<K, Collection<T>>> H6(Function<? super T, ? extends K> function) {
        return (jz1<Map<K, Collection<T>>>) K6(function, Cdo.m29416catch(), Celse.asCallable(), io.reactivex.internal.util.Cdo.asFunction());
    }

    @b41
    @t6(s6.FULL)
    @cs1("none")
    @gl
    public final <U, R> Cfor<R> H7(Iterable<U> iterable, BiFunction<? super T, ? super U, ? extends R> biFunction) {
        Cif.m29468else(iterable, "other is null");
        Cif.m29468else(biFunction, "zipper is null");
        return jp1.h(new x2(this, iterable, biFunction));
    }

    @b41
    @t6(s6.FULL)
    @cs1("none")
    @gl
    public final Cfor<T> I0(T t) {
        Cif.m29468else(t, "defaultItem is null");
        return q5(D2(t));
    }

    @cs1("none")
    @t6(s6.FULL)
    @gl
    public final <R> Cfor<R> I1(Function<? super T, ? extends Publisher<? extends R>> function, boolean z) {
        return K1(function, z, g(), g());
    }

    @b41
    @t6(s6.FULL)
    @cs1("none")
    @gl
    public final Cfor<T> I3(Function<? super Throwable, ? extends Publisher<? extends T>> function) {
        Cif.m29468else(function, "resumeFunction is null");
        return jp1.h(new p0(this, function, false));
    }

    @b41
    @t6(s6.ERROR)
    @cs1("none")
    @gl
    public final <U> Cfor<T> I4(Publisher<U> publisher, boolean z) {
        Cif.m29468else(publisher, "sampler is null");
        return jp1.h(new h1(this, publisher, z));
    }

    @cs1(cs1.F5)
    @t6(s6.PASS_THROUGH)
    @gl
    public final Cfor<T> I5(long j, TimeUnit timeUnit, Ctry ctry) {
        return T5(u6(j, timeUnit, ctry));
    }

    @cs1("none")
    @t6(s6.UNBOUNDED_IN)
    @gl
    public final <K, V> jz1<Map<K, Collection<V>>> I6(Function<? super T, ? extends K> function, Function<? super T, ? extends V> function2) {
        return K6(function, function2, Celse.asCallable(), io.reactivex.internal.util.Cdo.asFunction());
    }

    @b41
    @t6(s6.FULL)
    @cs1("none")
    @gl
    public final <U, R> Cfor<R> I7(Publisher<? extends U> publisher, BiFunction<? super T, ? super U, ? extends R> biFunction) {
        Cif.m29468else(publisher, "other is null");
        return v7(this, publisher, biFunction);
    }

    @cs1("none")
    @t6(s6.FULL)
    @gl
    public final <R> Cfor<R> J1(Function<? super T, ? extends Publisher<? extends R>> function, boolean z, int i) {
        return K1(function, z, i, g());
    }

    @b41
    @t6(s6.FULL)
    @cs1("none")
    @gl
    public final Cfor<T> J3(Publisher<? extends T> publisher) {
        Cif.m29468else(publisher, "next is null");
        return I3(Cdo.m29424final(publisher));
    }

    @b41
    @t6(s6.FULL)
    @cs1("none")
    @gl
    public final Cfor<T> J4(BiFunction<T, T, T> biFunction) {
        Cif.m29468else(biFunction, "accumulator is null");
        return jp1.h(new k1(this, biFunction));
    }

    @cs1("none")
    @t6(s6.FULL)
    @gl
    public final Cfor<T> J5(int i) {
        if (i >= 0) {
            return i == 0 ? jp1.h(new s(this)) : i == 1 ? jp1.h(new b2(this)) : jp1.h(new a2(this, i));
        }
        throw new IndexOutOfBoundsException("count >= 0 required but it was " + i);
    }

    @cs1("none")
    @t6(s6.UNBOUNDED_IN)
    @gl
    public final <K, V> jz1<Map<K, Collection<V>>> J6(Function<? super T, ? extends K> function, Function<? super T, ? extends V> function2, Callable<Map<K, Collection<V>>> callable) {
        return K6(function, function2, callable, io.reactivex.internal.util.Cdo.asFunction());
    }

    @cs1("none")
    @t6(s6.FULL)
    @gl
    public final <U, R> Cfor<R> J7(Publisher<? extends U> publisher, BiFunction<? super T, ? super U, ? extends R> biFunction, boolean z) {
        return w7(this, publisher, biFunction, z);
    }

    @cs1(cs1.G5)
    @t6(s6.FULL)
    @gl
    public final Cfor<T> K0(long j, TimeUnit timeUnit) {
        return M0(j, timeUnit, io.reactivex.schedulers.Cdo.m29767do(), false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @b41
    @t6(s6.FULL)
    @cs1("none")
    @gl
    public final <R> Cfor<R> K1(Function<? super T, ? extends Publisher<? extends R>> function, boolean z, int i, int i2) {
        Cif.m29468else(function, "mapper is null");
        Cif.m29470goto(i, "maxConcurrency");
        Cif.m29470goto(i2, "bufferSize");
        if (!(this instanceof ScalarCallable)) {
            return jp1.h(new f(this, function, z, i, i2));
        }
        Object objCall = ((ScalarCallable) this).call();
        return objCall == null ? s1() : j1.m29492do(objCall, function);
    }

    @b41
    @t6(s6.FULL)
    @cs1("none")
    @gl
    public final Cfor<T> K3(Function<? super Throwable, ? extends T> function) {
        Cif.m29468else(function, "valueSupplier is null");
        return jp1.h(new q0(this, function));
    }

    @b41
    @t6(s6.FULL)
    @cs1("none")
    @gl
    public final <R> Cfor<R> K4(R r, BiFunction<R, ? super T, R> biFunction) {
        Cif.m29468else(r, "initialValue is null");
        return L4(Cdo.m29418const(r), biFunction);
    }

    @cs1("none")
    @t6(s6.FULL)
    @gl
    public final Cfor<T> K5(long j, long j2, TimeUnit timeUnit) {
        return M5(j, j2, timeUnit, io.reactivex.schedulers.Cdo.m29767do(), false, g());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @b41
    @t6(s6.UNBOUNDED_IN)
    @cs1("none")
    @gl
    public final <K, V> jz1<Map<K, Collection<V>>> K6(Function<? super T, ? extends K> function, Function<? super T, ? extends V> function2, Callable<? extends Map<K, Collection<V>>> callable, Function<? super K, ? extends Collection<? super V>> function3) {
        Cif.m29468else(function, "keySelector is null");
        Cif.m29468else(function2, "valueSelector is null");
        Cif.m29468else(callable, "mapSupplier is null");
        Cif.m29468else(function3, "collectionFactory is null");
        return (jz1<Map<K, Collection<V>>>) k(callable, Cdo.m29430interface(function, function2, function3));
    }

    @cs1("none")
    @t6(s6.FULL)
    @gl
    public final <U, R> Cfor<R> K7(Publisher<? extends U> publisher, BiFunction<? super T, ? super U, ? extends R> biFunction, boolean z, int i) {
        return x7(this, publisher, biFunction, z, i);
    }

    @cs1(cs1.F5)
    @t6(s6.FULL)
    @gl
    public final Cfor<T> L0(long j, TimeUnit timeUnit, Ctry ctry) {
        return M0(j, timeUnit, ctry, false);
    }

    @cs1("none")
    @t6(s6.UNBOUNDED_IN)
    @gl
    public final np L1(Function<? super T, ? extends CompletableSource> function) {
        return M1(function, false, Integer.MAX_VALUE);
    }

    @b41
    @t6(s6.FULL)
    @cs1("none")
    @gl
    public final Cfor<T> L3(T t) {
        Cif.m29468else(t, "item is null");
        return K3(Cdo.m29424final(t));
    }

    @b41
    @t6(s6.FULL)
    @cs1("none")
    @gl
    public final <R> Cfor<R> L4(Callable<R> callable, BiFunction<R, ? super T, R> biFunction) {
        Cif.m29468else(callable, "seedSupplier is null");
        Cif.m29468else(biFunction, "accumulator is null");
        return jp1.h(new l1(this, callable, biFunction));
    }

    @cs1(cs1.F5)
    @t6(s6.FULL)
    @gl
    public final Cfor<T> L5(long j, long j2, TimeUnit timeUnit, Ctry ctry) {
        return M5(j, j2, timeUnit, ctry, false, g());
    }

    @cs1("none")
    @t6(s6.UNBOUNDED_IN)
    @gl
    public final Cnew<T> L6() {
        return jp1.i(new io.reactivex.internal.operators.observable.n(this));
    }

    @b41
    @t6(s6.FULL)
    @cs1(cs1.F5)
    @gl
    public final Cfor<T> M0(long j, TimeUnit timeUnit, Ctry ctry, boolean z) {
        Cif.m29468else(timeUnit, "unit is null");
        Cif.m29468else(ctry, "scheduler is null");
        return jp1.h(new Ccontinue(this, Math.max(0L, j), timeUnit, ctry, z));
    }

    @b41
    @t6(s6.UNBOUNDED_IN)
    @cs1("none")
    @gl
    public final np M1(Function<? super T, ? extends CompletableSource> function, boolean z, int i) {
        Cif.m29468else(function, "mapper is null");
        Cif.m29470goto(i, "maxConcurrency");
        return jp1.b(new h(this, function, z, i));
    }

    @b41
    @t6(s6.FULL)
    @cs1("none")
    @gl
    public final Cfor<T> M3(Publisher<? extends T> publisher) {
        Cif.m29468else(publisher, "next is null");
        return jp1.h(new p0(this, Cdo.m29424final(publisher), true));
    }

    @b41
    @t6(s6.FULL)
    @cs1(cs1.F5)
    @gl
    public final Cfor<T> M5(long j, long j2, TimeUnit timeUnit, Ctry ctry, boolean z, int i) {
        Cif.m29468else(timeUnit, "unit is null");
        Cif.m29468else(ctry, "scheduler is null");
        Cif.m29470goto(i, "bufferSize");
        if (j >= 0) {
            return jp1.h(new c2(this, j, j2, timeUnit, ctry, i, z));
        }
        throw new IndexOutOfBoundsException("count >= 0 required but it was " + j);
    }

    @cs1("none")
    @t6(s6.UNBOUNDED_IN)
    @gl
    public final jz1<List<T>> M6() {
        return O6(Cdo.m29442throw());
    }

    @cs1(cs1.G5)
    @t6(s6.FULL)
    @gl
    public final Cfor<T> N0(long j, TimeUnit timeUnit, boolean z) {
        return M0(j, timeUnit, io.reactivex.schedulers.Cdo.m29767do(), z);
    }

    @cs1("none")
    @t6(s6.FULL)
    @gl
    public final <U> Cfor<U> N1(Function<? super T, ? extends Iterable<? extends U>> function) {
        return O1(function, g());
    }

    @b41
    @t6(s6.UNBOUNDED_IN)
    @cs1("none")
    @gl
    public final jz1<T> N2(T t) {
        Cif.m29468else(t, "defaultItem");
        return jp1.g(new z(this, t));
    }

    @cs1("none")
    @t6(s6.PASS_THROUGH)
    @gl
    public final Cfor<T> N3() {
        return jp1.h(new Cinterface(this));
    }

    @cs1(cs1.G5)
    @t6(s6.FULL)
    @gl
    public final Cfor<T> N5(long j, TimeUnit timeUnit) {
        return Q5(j, timeUnit, io.reactivex.schedulers.Cdo.m29767do(), false, g());
    }

    @cs1("none")
    @t6(s6.UNBOUNDED_IN)
    @gl
    public final jz1<List<T>> N6(int i) {
        return P6(Cdo.m29442throw(), i);
    }

    @b41
    @t6(s6.FULL)
    @cs1("none")
    @gl
    public final <U> Cfor<T> O0(Function<? super T, ? extends Publisher<U>> function) {
        Cif.m29468else(function, "itemDelayIndicator is null");
        return (Cfor<T>) z1(u.m29527for(function));
    }

    @b41
    @t6(s6.FULL)
    @cs1("none")
    @gl
    public final <U> Cfor<U> O1(Function<? super T, ? extends Iterable<? extends U>> function, int i) {
        Cif.m29468else(function, "mapper is null");
        Cif.m29470goto(i, "bufferSize");
        return jp1.h(new k(this, function, i));
    }

    @cs1("none")
    @t6(s6.UNBOUNDED_IN)
    @gl
    public final fy0<T> O2() {
        return jp1.e(new y(this));
    }

    @cs1("none")
    @t6(s6.FULL)
    @gl
    public final ub1<T> O3() {
        return ub1.m8317default(this);
    }

    @cs1(cs1.F5)
    @t6(s6.FULL)
    @gl
    public final Cfor<T> O5(long j, TimeUnit timeUnit, Ctry ctry) {
        return Q5(j, timeUnit, ctry, false, g());
    }

    @b41
    @t6(s6.UNBOUNDED_IN)
    @cs1("none")
    @gl
    public final jz1<List<T>> O6(Comparator<? super T> comparator) {
        Cif.m29468else(comparator, "comparator is null");
        return (jz1<List<T>>) B6().B(Cdo.m29439super(comparator));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @cs1("none")
    @t6(s6.FULL)
    @gl
    public final <U, V> Cfor<T> P0(Publisher<U> publisher, Function<? super T, ? extends Publisher<V>> function) {
        return S0(publisher).O0(function);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @b41
    @t6(s6.FULL)
    @cs1("none")
    @gl
    public final <U, V> Cfor<V> P1(Function<? super T, ? extends Iterable<? extends U>> function, BiFunction<? super T, ? super U, ? extends V> biFunction) {
        Cif.m29468else(function, "mapper is null");
        Cif.m29468else(biFunction, "resultSelector is null");
        return (Cfor<V>) F1(u.m29524do(function), biFunction, false, g(), g());
    }

    @cs1("none")
    @t6(s6.UNBOUNDED_IN)
    @gl
    public final jz1<T> P2() {
        return jp1.g(new z(this, null));
    }

    @cs1("none")
    @t6(s6.FULL)
    @gl
    public final ub1<T> P3(int i) {
        Cif.m29470goto(i, "parallelism");
        return ub1.m8318extends(this, i);
    }

    @cs1(cs1.F5)
    @t6(s6.FULL)
    @gl
    public final Cfor<T> P5(long j, TimeUnit timeUnit, Ctry ctry, boolean z) {
        return Q5(j, timeUnit, ctry, z, g());
    }

    @b41
    @t6(s6.UNBOUNDED_IN)
    @cs1("none")
    @gl
    public final jz1<List<T>> P6(Comparator<? super T> comparator, int i) {
        Cif.m29468else(comparator, "comparator is null");
        return (jz1<List<T>>) C6(i).B(Cdo.m29439super(comparator));
    }

    @cs1(cs1.G5)
    @t6(s6.FULL)
    @gl
    public final Cfor<T> Q0(long j, TimeUnit timeUnit) {
        return R0(j, timeUnit, io.reactivex.schedulers.Cdo.m29767do());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @b41
    @t6(s6.FULL)
    @cs1("none")
    @gl
    public final <U, V> Cfor<V> Q1(Function<? super T, ? extends Iterable<? extends U>> function, BiFunction<? super T, ? super U, ? extends V> biFunction, int i) {
        Cif.m29468else(function, "mapper is null");
        Cif.m29468else(biFunction, "resultSelector is null");
        return (Cfor<V>) F1(u.m29524do(function), biFunction, false, g(), i);
    }

    @b41
    @t6(s6.SPECIAL)
    @cs1("none")
    @gl
    public final <R> Cfor<R> Q2(FlowableOperator<? extends R, ? super T> flowableOperator) {
        Cif.m29468else(flowableOperator, "lifter is null");
        return jp1.h(new a0(this, flowableOperator));
    }

    @cs1("none")
    @t6(s6.FULL)
    @gl
    public final ub1<T> Q3(int i, int i2) {
        Cif.m29470goto(i, "parallelism");
        Cif.m29470goto(i2, "prefetch");
        return ub1.m8319finally(this, i, i2);
    }

    @cs1("none")
    @t6(s6.PASS_THROUGH)
    @gl
    public final Cfor<T> Q4() {
        return jp1.h(new n1(this));
    }

    @cs1(cs1.F5)
    @t6(s6.FULL)
    @gl
    public final Cfor<T> Q5(long j, TimeUnit timeUnit, Ctry ctry, boolean z, int i) {
        return M5(Long.MAX_VALUE, j, timeUnit, ctry, z, i);
    }

    @cs1(cs1.F5)
    @t6(s6.FULL)
    @gl
    public final Cfor<T> R0(long j, TimeUnit timeUnit, Ctry ctry) {
        return S0(u6(j, timeUnit, ctry));
    }

    @cs1("none")
    @t6(s6.UNBOUNDED_IN)
    @gl
    public final <R> Cfor<R> R1(Function<? super T, ? extends MaybeSource<? extends R>> function) {
        return S1(function, false, Integer.MAX_VALUE);
    }

    @cs1("none")
    @t6(s6.SPECIAL)
    @gl
    public final Cfor<T> R2(long j) {
        if (j >= 0) {
            return jp1.h(new b0(this, j));
        }
        throw new IllegalArgumentException("count >= 0 required but it was " + j);
    }

    @cs1("none")
    @t6(s6.FULL)
    @gl
    public final oq<T> R3() {
        return S3(g());
    }

    @cs1("none")
    @t6(s6.FULL)
    @gl
    public final Cfor<T> R4() {
        return R3().R7();
    }

    @cs1(cs1.G5)
    @t6(s6.FULL)
    @gl
    public final Cfor<T> R5(long j, TimeUnit timeUnit, boolean z) {
        return Q5(j, timeUnit, io.reactivex.schedulers.Cdo.m29767do(), z, g());
    }

    @b41
    @t6(s6.PASS_THROUGH)
    @cs1(cs1.F5)
    @gl
    public final Cfor<T> R6(Ctry ctry) {
        Cif.m29468else(ctry, "scheduler is null");
        return jp1.h(new n2(this, ctry));
    }

    @b41
    @t6(s6.FULL)
    @cs1("none")
    @gl
    public final <U> Cfor<T> S0(Publisher<U> publisher) {
        Cif.m29468else(publisher, "subscriptionIndicator is null");
        return jp1.h(new Cstrictfp(this, publisher));
    }

    @b41
    @t6(s6.UNBOUNDED_IN)
    @cs1("none")
    @gl
    public final <R> Cfor<R> S1(Function<? super T, ? extends MaybeSource<? extends R>> function, boolean z, int i) {
        Cif.m29468else(function, "mapper is null");
        Cif.m29470goto(i, "maxConcurrency");
        return jp1.h(new i(this, function, z, i));
    }

    @b41
    @t6(s6.PASS_THROUGH)
    @cs1("none")
    @gl
    public final <R> Cfor<R> S2(Function<? super T, ? extends R> function) {
        Cif.m29468else(function, "mapper is null");
        return jp1.h(new c0(this, function));
    }

    @cs1("none")
    @t6(s6.FULL)
    @gl
    public final oq<T> S3(int i) {
        Cif.m29470goto(i, "bufferSize");
        return r0.X7(this, i);
    }

    @b41
    @t6(s6.UNBOUNDED_IN)
    @cs1("none")
    @gl
    public final jz1<T> S4(T t) {
        Cif.m29468else(t, "defaultItem is null");
        return jp1.g(new q1(this, t));
    }

    @b41
    @t6(s6.PASS_THROUGH)
    @cs1("none")
    @gl
    public final Cfor<T> S5(Predicate<? super T> predicate) {
        Cif.m29468else(predicate, "stopPredicate is null");
        return jp1.h(new f2(this, predicate));
    }

    @t6(s6.PASS_THROUGH)
    @Deprecated
    @cs1("none")
    @gl
    public final <T2> Cfor<T2> T0() {
        return jp1.h(new Cvolatile(this, Cdo.m29416catch()));
    }

    @cs1("none")
    @t6(s6.UNBOUNDED_IN)
    @gl
    public final <R> Cfor<R> T1(Function<? super T, ? extends SingleSource<? extends R>> function) {
        return U1(function, false, Integer.MAX_VALUE);
    }

    @cs1("none")
    @t6(s6.FULL)
    @gl
    public final Cfor<t41<T>> T2() {
        return jp1.h(new f0(this));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @cs1("none")
    @t6(s6.FULL)
    @gl
    public final <R> Cfor<R> T3(Function<? super Cfor<T>, ? extends Publisher<R>> function) {
        return U3(function, g());
    }

    @cs1("none")
    @t6(s6.UNBOUNDED_IN)
    @gl
    public final fy0<T> T4() {
        return jp1.e(new p1(this));
    }

    @b41
    @t6(s6.PASS_THROUGH)
    @cs1("none")
    @gl
    public final <U> Cfor<T> T5(Publisher<U> publisher) {
        Cif.m29468else(publisher, "other is null");
        return jp1.h(new e2(this, publisher));
    }

    @b41
    @f90
    @t6(s6.PASS_THROUGH)
    @cs1("none")
    @gl
    public final <R> Cfor<R> U0(Function<? super T, t41<R>> function) {
        Cif.m29468else(function, "selector is null");
        return jp1.h(new Cvolatile(this, function));
    }

    @b41
    @t6(s6.UNBOUNDED_IN)
    @cs1("none")
    @gl
    public final <R> Cfor<R> U1(Function<? super T, ? extends SingleSource<? extends R>> function, boolean z, int i) {
        Cif.m29468else(function, "mapper is null");
        Cif.m29470goto(i, "maxConcurrency");
        return jp1.h(new j(this, function, z, i));
    }

    @b41
    @t6(s6.FULL)
    @cs1("none")
    @gl
    public final <R> Cfor<R> U3(Function<? super Cfor<T>, ? extends Publisher<? extends R>> function, int i) {
        Cif.m29468else(function, "selector is null");
        Cif.m29470goto(i, "prefetch");
        return jp1.h(new t0(this, function, i, false));
    }

    @cs1("none")
    @t6(s6.UNBOUNDED_IN)
    @gl
    public final jz1<T> U4() {
        return jp1.g(new q1(this, null));
    }

    @b41
    @t6(s6.PASS_THROUGH)
    @cs1("none")
    @gl
    public final Cfor<T> U5(Predicate<? super T> predicate) {
        Cif.m29468else(predicate, "predicate is null");
        return jp1.h(new g2(this, predicate));
    }

    @cs1("none")
    @t6(s6.FULL)
    @gl
    public final Cfor<Cfor<T>> U6(long j) {
        return W6(j, j, g());
    }

    @cs1("none")
    @t6(s6.FULL)
    @gl
    public final Cfor<T> V0() {
        return X0(Cdo.m29416catch(), Cdo.m29422else());
    }

    @cs1("none")
    @t6(s6.NONE)
    @gl
    public final Disposable V1(Consumer<? super T> consumer) {
        return subscribe(consumer);
    }

    @cs1("none")
    @t6(s6.FULL)
    @gl
    public final Cfor<T> V4(long j) {
        return j <= 0 ? jp1.h(this) : jp1.h(new r1(this, j));
    }

    @cs1(cs1.G5)
    @t6(s6.ERROR)
    @gl
    public final Cfor<T> V5(long j, TimeUnit timeUnit) {
        return W5(j, timeUnit, io.reactivex.schedulers.Cdo.m29767do());
    }

    @cs1("none")
    @t6(s6.FULL)
    @gl
    public final Cfor<Cfor<T>> V6(long j, long j2) {
        return W6(j, j2, g());
    }

    @cs1("none")
    @t6(s6.FULL)
    @gl
    public final <K> Cfor<T> W0(Function<? super T, K> function) {
        return X0(function, Cdo.m29422else());
    }

    @cs1("none")
    @t6(s6.NONE)
    @gl
    public final Disposable W1(Predicate<? super T> predicate) {
        return Y1(predicate, Cdo.f25277case, Cdo.f25282for);
    }

    @cs1("none")
    @t6(s6.FULL)
    @gl
    public final Cfor<T> W4(long j, TimeUnit timeUnit) {
        return e5(t6(j, timeUnit));
    }

    @b41
    @t6(s6.ERROR)
    @cs1(cs1.F5)
    @gl
    public final Cfor<T> W5(long j, TimeUnit timeUnit, Ctry ctry) {
        Cif.m29468else(timeUnit, "unit is null");
        Cif.m29468else(ctry, "scheduler is null");
        return jp1.h(new h2(this, j, timeUnit, ctry));
    }

    @cs1("none")
    @t6(s6.FULL)
    @gl
    public final Cfor<Cfor<T>> W6(long j, long j2, int i) {
        Cif.m29473this(j2, "skip");
        Cif.m29473this(j, "count");
        Cif.m29470goto(i, "bufferSize");
        return jp1.h(new p2(this, j, j2, i));
    }

    @cs1("none")
    @t6(s6.FULL)
    @gl
    public final <K> Cfor<T> X0(Function<? super T, K> function, Callable<? extends Collection<? super K>> callable) {
        Cif.m29468else(function, "keySelector is null");
        Cif.m29468else(callable, "collectionSupplier is null");
        return jp1.h(new Cprotected(this, function, callable));
    }

    @cs1("none")
    @t6(s6.NONE)
    @gl
    public final Disposable X1(Predicate<? super T> predicate, Consumer<? super Throwable> consumer) {
        return Y1(predicate, consumer, Cdo.f25282for);
    }

    @cs1("none")
    @t6(s6.FULL)
    @gl
    public final Cfor<T> X3(int i) {
        return v3(io.reactivex.internal.schedulers.Ctry.f27384if, true, i);
    }

    @cs1(cs1.F5)
    @t6(s6.FULL)
    @gl
    public final Cfor<T> X4(long j, TimeUnit timeUnit, Ctry ctry) {
        return e5(u6(j, timeUnit, ctry));
    }

    @cs1(cs1.G5)
    @t6(s6.ERROR)
    @gl
    public final Cfor<T> X5(long j, TimeUnit timeUnit) {
        return D4(j, timeUnit);
    }

    @cs1(cs1.G5)
    @t6(s6.ERROR)
    @gl
    public final Cfor<Cfor<T>> X6(long j, long j2, TimeUnit timeUnit) {
        return Z6(j, j2, timeUnit, io.reactivex.schedulers.Cdo.m29767do(), g());
    }

    @cs1("none")
    @t6(s6.FULL)
    @gl
    public final Cfor<T> Y0() {
        return a1(Cdo.m29416catch());
    }

    @b41
    @t6(s6.NONE)
    @cs1("none")
    @gl
    public final Disposable Y1(Predicate<? super T> predicate, Consumer<? super Throwable> consumer, Action action) {
        Cif.m29468else(predicate, "onNext is null");
        Cif.m29468else(consumer, "onError is null");
        Cif.m29468else(action, "onComplete is null");
        id0 id0Var = new id0(predicate, consumer, action);
        m5(id0Var);
        return id0Var;
    }

    @b41
    @t6(s6.UNBOUNDED_IN)
    @cs1("none")
    @gl
    public final fy0<T> Y3(BiFunction<T, T, T> biFunction) {
        Cif.m29468else(biFunction, "reducer is null");
        return jp1.e(new x0(this, biFunction));
    }

    @cs1("none")
    @t6(s6.FULL)
    @gl
    public final Cfor<T> Y4(int i) {
        if (i >= 0) {
            return i == 0 ? jp1.h(this) : jp1.h(new s1(this, i));
        }
        throw new IndexOutOfBoundsException("count >= 0 required but it was " + i);
    }

    @cs1(cs1.F5)
    @t6(s6.ERROR)
    @gl
    public final Cfor<T> Y5(long j, TimeUnit timeUnit, Ctry ctry) {
        return E4(j, timeUnit, ctry);
    }

    @cs1(cs1.F5)
    @t6(s6.ERROR)
    @gl
    public final Cfor<Cfor<T>> Y6(long j, long j2, TimeUnit timeUnit, Ctry ctry) {
        return Z6(j, j2, timeUnit, ctry, g());
    }

    @cs1("none")
    @t6(s6.FULL)
    @gl
    public final <R> Cfor<R> Z(Function<? super T, ? extends Publisher<? extends R>> function) {
        return a0(function, 2);
    }

    @cs1("none")
    @t6(s6.FULL)
    @gl
    public final Cfor<T> Z0(BiPredicate<? super T, ? super T> biPredicate) {
        Cif.m29468else(biPredicate, "comparer is null");
        return jp1.h(new Ctransient(this, Cdo.m29416catch(), biPredicate));
    }

    @b41
    @t6(s6.UNBOUNDED_IN)
    @cs1("none")
    @gl
    public final <R> jz1<R> Z3(R r, BiFunction<R, ? super T, R> biFunction) {
        Cif.m29468else(r, "seed is null");
        Cif.m29468else(biFunction, "reducer is null");
        return jp1.g(new y0(this, r, biFunction));
    }

    @cs1("none")
    @t6(s6.UNBOUNDED_IN)
    @gl
    public final Cfor<T> Z4(long j, TimeUnit timeUnit) {
        return c5(j, timeUnit, io.reactivex.schedulers.Cdo.m29767do(), false, g());
    }

    @cs1(cs1.G5)
    @t6(s6.ERROR)
    @gl
    public final Cfor<T> Z5(long j, TimeUnit timeUnit) {
        return b6(j, timeUnit, io.reactivex.schedulers.Cdo.m29767do(), false);
    }

    @b41
    @t6(s6.ERROR)
    @cs1(cs1.F5)
    @gl
    public final Cfor<Cfor<T>> Z6(long j, long j2, TimeUnit timeUnit, Ctry ctry, int i) {
        Cif.m29470goto(i, "bufferSize");
        Cif.m29473this(j, "timespan");
        Cif.m29473this(j2, "timeskip");
        Cif.m29468else(ctry, "scheduler is null");
        Cif.m29468else(timeUnit, "unit is null");
        return jp1.h(new t2(this, j, j2, timeUnit, ctry, Long.MAX_VALUE, i, false));
    }

    @cs1("none")
    @t6(s6.ERROR)
    @gl
    public final <TOpening, TClosing, U extends Collection<? super T>> Cfor<U> a(Cfor<? extends TOpening> cfor, Function<? super TOpening, ? extends Publisher<? extends TClosing>> function, Callable<U> callable) {
        Cif.m29468else(cfor, "openingIndicator is null");
        Cif.m29468else(function, "closingIndicator is null");
        Cif.m29468else(callable, "bufferSupplier is null");
        return jp1.h(new Cclass(this, cfor, function, callable));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @b41
    @t6(s6.FULL)
    @cs1("none")
    @gl
    public final <R> Cfor<R> a0(Function<? super T, ? extends Publisher<? extends R>> function, int i) {
        Cif.m29468else(function, "mapper is null");
        Cif.m29470goto(i, "prefetch");
        if (!(this instanceof ScalarCallable)) {
            return jp1.h(new FlowableConcatMap(this, function, i, Ctry.IMMEDIATE));
        }
        Object objCall = ((ScalarCallable) this).call();
        return objCall == null ? s1() : j1.m29492do(objCall, function);
    }

    @cs1("none")
    @t6(s6.FULL)
    @gl
    public final <K> Cfor<T> a1(Function<? super T, K> function) {
        Cif.m29468else(function, "keySelector is null");
        return jp1.h(new Ctransient(this, function, Cif.m29472new()));
    }

    @b41
    @t6(s6.UNBOUNDED_IN)
    @cs1("none")
    @gl
    public final <R> jz1<R> a4(Callable<R> callable, BiFunction<R, ? super T, R> biFunction) {
        Cif.m29468else(callable, "seedSupplier is null");
        Cif.m29468else(biFunction, "reducer is null");
        return jp1.g(new z0(this, callable, biFunction));
    }

    @cs1(cs1.F5)
    @t6(s6.UNBOUNDED_IN)
    @gl
    public final Cfor<T> a5(long j, TimeUnit timeUnit, Ctry ctry) {
        return c5(j, timeUnit, ctry, false, g());
    }

    @cs1(cs1.F5)
    @t6(s6.ERROR)
    @gl
    public final Cfor<T> a6(long j, TimeUnit timeUnit, Ctry ctry) {
        return b6(j, timeUnit, ctry, false);
    }

    @cs1(cs1.G5)
    @t6(s6.ERROR)
    @gl
    public final Cfor<Cfor<T>> a7(long j, TimeUnit timeUnit) {
        return f7(j, timeUnit, io.reactivex.schedulers.Cdo.m29767do(), Long.MAX_VALUE, false);
    }

    @cs1("none")
    @t6(s6.FULL)
    @gl
    /* renamed from: abstract, reason: not valid java name */
    public final <U extends Collection<? super T>> Cfor<U> m29376abstract(int i, Callable<U> callable) {
        return m29397private(i, i, callable);
    }

    @cs1("none")
    @t6(s6.ERROR)
    @gl
    public final <B> Cfor<List<T>> b(Callable<? extends Publisher<B>> callable) {
        return (Cfor<List<T>>) c(callable, io.reactivex.internal.util.Cdo.asCallable());
    }

    @cs1("none")
    @t6(s6.FULL)
    @gl
    public final np b0(Function<? super T, ? extends CompletableSource> function) {
        return c0(function, 2);
    }

    @cs1("none")
    @t6(s6.PASS_THROUGH)
    @gl
    public final Cfor<T> b1(Consumer<? super T> consumer) {
        Cif.m29468else(consumer, "onAfterNext is null");
        return jp1.h(new Cimplements(this, consumer));
    }

    @cs1("none")
    @t6(s6.FULL)
    @gl
    public final Cfor<T> b4() {
        return c4(Long.MAX_VALUE);
    }

    @cs1(cs1.F5)
    @t6(s6.UNBOUNDED_IN)
    @gl
    public final Cfor<T> b5(long j, TimeUnit timeUnit, Ctry ctry, boolean z) {
        return c5(j, timeUnit, ctry, z, g());
    }

    @b41
    @t6(s6.ERROR)
    @cs1(cs1.F5)
    @gl
    public final Cfor<T> b6(long j, TimeUnit timeUnit, Ctry ctry, boolean z) {
        Cif.m29468else(timeUnit, "unit is null");
        Cif.m29468else(ctry, "scheduler is null");
        return jp1.h(new i2(this, j, timeUnit, ctry, z));
    }

    @cs1(cs1.G5)
    @t6(s6.ERROR)
    @gl
    public final Cfor<Cfor<T>> b7(long j, TimeUnit timeUnit, long j2) {
        return f7(j, timeUnit, io.reactivex.schedulers.Cdo.m29767do(), j2, false);
    }

    @cs1("none")
    @t6(s6.FULL)
    @gl
    /* renamed from: break, reason: not valid java name */
    public final Iterable<T> m29377break() {
        return m29379catch(g());
    }

    @cs1("none")
    @t6(s6.ERROR)
    @gl
    public final <B, U extends Collection<? super T>> Cfor<U> c(Callable<? extends Publisher<B>> callable, Callable<U> callable2) {
        Cif.m29468else(callable, "boundaryIndicatorSupplier is null");
        Cif.m29468else(callable2, "bufferSupplier is null");
        return jp1.h(new Cconst(this, callable, callable2));
    }

    @b41
    @t6(s6.FULL)
    @cs1("none")
    @gl
    public final np c0(Function<? super T, ? extends CompletableSource> function, int i) {
        Cif.m29468else(function, "mapper is null");
        Cif.m29470goto(i, "prefetch");
        return jp1.b(new io.reactivex.internal.operators.mixed.Cfor(this, function, Ctry.IMMEDIATE, i));
    }

    @cs1("none")
    @t6(s6.PASS_THROUGH)
    @gl
    public final Cfor<T> c1(Action action) {
        return h1(Cdo.m29427goto(), Cdo.m29427goto(), Cdo.f25282for, action);
    }

    @cs1("none")
    @t6(s6.FULL)
    @gl
    public final Cfor<T> c4(long j) {
        if (j >= 0) {
            return j == 0 ? s1() : jp1.h(new b1(this, j));
        }
        throw new IllegalArgumentException("times >= 0 required but it was " + j);
    }

    @b41
    @t6(s6.UNBOUNDED_IN)
    @cs1(cs1.F5)
    @gl
    public final Cfor<T> c5(long j, TimeUnit timeUnit, Ctry ctry, boolean z, int i) {
        Cif.m29468else(timeUnit, "unit is null");
        Cif.m29468else(ctry, "scheduler is null");
        Cif.m29470goto(i, "bufferSize");
        return jp1.h(new t1(this, j, timeUnit, ctry, i << 1, z));
    }

    @cs1(cs1.G5)
    @t6(s6.ERROR)
    @gl
    public final Cfor<T> c6(long j, TimeUnit timeUnit, boolean z) {
        return b6(j, timeUnit, io.reactivex.schedulers.Cdo.m29767do(), z);
    }

    @cs1(cs1.G5)
    @t6(s6.ERROR)
    @gl
    public final Cfor<Cfor<T>> c7(long j, TimeUnit timeUnit, long j2, boolean z) {
        return f7(j, timeUnit, io.reactivex.schedulers.Cdo.m29767do(), j2, z);
    }

    @cs1("none")
    @t6(s6.SPECIAL)
    @gl
    /* renamed from: case, reason: not valid java name */
    public final <R> R m29378case(@b41 FlowableConverter<T, ? extends R> flowableConverter) {
        return (R) ((FlowableConverter) Cif.m29468else(flowableConverter, "converter is null")).apply(this);
    }

    @cs1("none")
    @t6(s6.FULL)
    @gl
    /* renamed from: catch, reason: not valid java name */
    public final Iterable<T> m29379catch(int i) {
        Cif.m29470goto(i, "bufferSize");
        return new io.reactivex.internal.operators.flowable.Cif(this, i);
    }

    @cs1("none")
    @t6(s6.UNBOUNDED_IN)
    @gl
    /* renamed from: class, reason: not valid java name */
    public final T m29380class() throws InterruptedException {
        la laVar = new la();
        m5(laVar);
        T tM2621do = laVar.m2621do();
        if (tM2621do != null) {
            return tM2621do;
        }
        throw new NoSuchElementException();
    }

    @cs1("none")
    @t6(s6.UNBOUNDED_IN)
    @gl
    /* renamed from: const, reason: not valid java name */
    public final T m29381const(T t) throws InterruptedException {
        la laVar = new la();
        m5(laVar);
        T tM2621do = laVar.m2621do();
        return tM2621do != null ? tM2621do : t;
    }

    @cs1(cs1.G5)
    @t6(s6.ERROR)
    @gl
    /* renamed from: continue, reason: not valid java name */
    public final Cfor<List<T>> m29382continue(long j, long j2, TimeUnit timeUnit) {
        return (Cfor<List<T>>) m29411volatile(j, j2, timeUnit, io.reactivex.schedulers.Cdo.m29767do(), io.reactivex.internal.util.Cdo.asCallable());
    }

    @cs1("none")
    @t6(s6.ERROR)
    @gl
    public final <B> Cfor<List<T>> d(Publisher<B> publisher) {
        return (Cfor<List<T>>) f(publisher, io.reactivex.internal.util.Cdo.asCallable());
    }

    @cs1("none")
    @t6(s6.FULL)
    @gl
    public final np d0(Function<? super T, ? extends CompletableSource> function) {
        return f0(function, true, 2);
    }

    @cs1("none")
    @t6(s6.PASS_THROUGH)
    @gl
    public final Cfor<T> d1(Action action) {
        Cif.m29468else(action, "onFinally is null");
        return jp1.h(new Cinstanceof(this, action));
    }

    @b41
    @t6(s6.FULL)
    @cs1("none")
    @gl
    public final Cfor<T> d4(BooleanSupplier booleanSupplier) {
        Cif.m29468else(booleanSupplier, "stop is null");
        return jp1.h(new c1(this, booleanSupplier));
    }

    @cs1("none")
    @t6(s6.UNBOUNDED_IN)
    @gl
    public final Cfor<T> d5(long j, TimeUnit timeUnit, boolean z) {
        return c5(j, timeUnit, io.reactivex.schedulers.Cdo.m29767do(), z, g());
    }

    @cs1(cs1.G5)
    @t6(s6.ERROR)
    @gl
    public final Cfor<T> d6(long j, TimeUnit timeUnit) {
        return F0(j, timeUnit);
    }

    @cs1(cs1.F5)
    @t6(s6.ERROR)
    @gl
    public final Cfor<Cfor<T>> d7(long j, TimeUnit timeUnit, Ctry ctry) {
        return f7(j, timeUnit, ctry, Long.MAX_VALUE, false);
    }

    @cs1("none")
    @t6(s6.FULL)
    /* renamed from: default, reason: not valid java name */
    public final void m29383default(Consumer<? super T> consumer, Consumer<? super Throwable> consumer2, Action action, int i) {
        uc0.m8356for(this, consumer, consumer2, action, i);
    }

    @b41
    @t6(s6.UNBOUNDED_IN)
    @cs1("none")
    @gl
    /* renamed from: do, reason: not valid java name */
    public final jz1<Boolean> m29384do(Predicate<? super T> predicate) {
        Cif.m29468else(predicate, "predicate is null");
        return jp1.g(new io.reactivex.internal.operators.flowable.Celse(this, predicate));
    }

    @cs1("none")
    @t6(s6.ERROR)
    @gl
    public final <B> Cfor<List<T>> e(Publisher<B> publisher, int i) {
        Cif.m29470goto(i, "initialCapacity");
        return (Cfor<List<T>>) f(publisher, Cdo.m29415case(i));
    }

    @cs1("none")
    @t6(s6.FULL)
    @gl
    public final np e0(Function<? super T, ? extends CompletableSource> function, boolean z) {
        return f0(function, z, 2);
    }

    @cs1("none")
    @t6(s6.PASS_THROUGH)
    @gl
    public final Cfor<T> e1(Action action) {
        return k1(Cdo.m29427goto(), Cdo.f25281else, action);
    }

    @b41
    @t6(s6.FULL)
    @cs1("none")
    @gl
    public final Cfor<T> e4(Function<? super Cfor<Object>, ? extends Publisher<?>> function) {
        Cif.m29468else(function, "handler is null");
        return jp1.h(new d1(this, function));
    }

    @b41
    @t6(s6.FULL)
    @cs1("none")
    @gl
    public final <U> Cfor<T> e5(Publisher<U> publisher) {
        Cif.m29468else(publisher, "other is null");
        return jp1.h(new u1(this, publisher));
    }

    @cs1(cs1.F5)
    @t6(s6.ERROR)
    @gl
    public final Cfor<T> e6(long j, TimeUnit timeUnit, Ctry ctry) {
        return G0(j, timeUnit, ctry);
    }

    @cs1(cs1.F5)
    @t6(s6.ERROR)
    @gl
    public final Cfor<Cfor<T>> e7(long j, TimeUnit timeUnit, Ctry ctry, long j2) {
        return f7(j, timeUnit, ctry, j2, false);
    }

    @cs1("none")
    @t6(s6.UNBOUNDED_IN)
    @gl
    /* renamed from: else, reason: not valid java name */
    public final T m29385else() throws InterruptedException {
        ia iaVar = new ia();
        m5(iaVar);
        T tM2621do = iaVar.m2621do();
        if (tM2621do != null) {
            return tM2621do;
        }
        throw new NoSuchElementException();
    }

    @cs1("none")
    @t6(s6.SPECIAL)
    /* renamed from: extends, reason: not valid java name */
    public final void m29386extends(Subscriber<? super T> subscriber) {
        uc0.m8358new(this, subscriber);
    }

    @cs1("none")
    @t6(s6.ERROR)
    @gl
    public final <B, U extends Collection<? super T>> Cfor<U> f(Publisher<B> publisher, Callable<U> callable) {
        Cif.m29468else(publisher, "boundaryIndicator is null");
        Cif.m29468else(callable, "bufferSupplier is null");
        return jp1.h(new Cfinal(this, publisher, callable));
    }

    @b41
    @t6(s6.FULL)
    @cs1("none")
    @gl
    public final np f0(Function<? super T, ? extends CompletableSource> function, boolean z, int i) {
        Cif.m29468else(function, "mapper is null");
        Cif.m29470goto(i, "prefetch");
        return jp1.b(new io.reactivex.internal.operators.mixed.Cfor(this, function, z ? Ctry.END : Ctry.BOUNDARY, i));
    }

    @cs1("none")
    @t6(s6.PASS_THROUGH)
    @gl
    public final Cfor<T> f1(Action action) {
        return h1(Cdo.m29427goto(), Cdo.m29427goto(), action, Cdo.f25282for);
    }

    @cs1("none")
    @t6(s6.FULL)
    @gl
    public final oq<T> f4() {
        return FlowableReplay.b8(this);
    }

    @b41
    @t6(s6.FULL)
    @cs1("none")
    @gl
    public final Cfor<T> f5(Predicate<? super T> predicate) {
        Cif.m29468else(predicate, "predicate is null");
        return jp1.h(new v1(this, predicate));
    }

    @cs1("none")
    @t6(s6.PASS_THROUGH)
    @gl
    public final Cfor<e72<T>> f6() {
        return i6(TimeUnit.MILLISECONDS, io.reactivex.schedulers.Cdo.m29767do());
    }

    @cs1(cs1.F5)
    @t6(s6.ERROR)
    @gl
    public final Cfor<Cfor<T>> f7(long j, TimeUnit timeUnit, Ctry ctry, long j2, boolean z) {
        return g7(j, timeUnit, ctry, j2, z, g());
    }

    @cs1("none")
    @t6(s6.UNBOUNDED_IN)
    @gl
    /* renamed from: final, reason: not valid java name */
    public final Iterable<T> m29387final() {
        return new io.reactivex.internal.operators.flowable.Cfor(this);
    }

    @cs1("none")
    @t6(s6.FULL)
    @gl
    /* renamed from: finally, reason: not valid java name */
    public final Cfor<List<T>> m29388finally(int i) {
        return m29396package(i, i);
    }

    @cs1("none")
    @t6(s6.FULL)
    @gl
    public final <R> Cfor<R> g0(Function<? super T, ? extends Publisher<? extends R>> function) {
        return h0(function, 2, true);
    }

    @b41
    @t6(s6.PASS_THROUGH)
    @cs1("none")
    @gl
    public final Cfor<T> g1(Consumer<? super t41<T>> consumer) {
        Cif.m29468else(consumer, "onNotification is null");
        return h1(Cdo.m29435public(consumer), Cdo.m29431native(consumer), Cdo.m29429import(consumer), Cdo.f25282for);
    }

    @cs1("none")
    @t6(s6.FULL)
    @gl
    public final oq<T> g4(int i) {
        Cif.m29470goto(i, "bufferSize");
        return FlowableReplay.X7(this, i);
    }

    @cs1("none")
    @t6(s6.FULL)
    @gl
    public final Cfor<T> g5() {
        return B6().u0().S2(Cdo.m29439super(Cdo.m29442throw())).N1(Cdo.m29416catch());
    }

    @cs1("none")
    @t6(s6.PASS_THROUGH)
    @gl
    public final Cfor<e72<T>> g6(Ctry ctry) {
        return i6(TimeUnit.MILLISECONDS, ctry);
    }

    @b41
    @t6(s6.ERROR)
    @cs1(cs1.F5)
    @gl
    public final Cfor<Cfor<T>> g7(long j, TimeUnit timeUnit, Ctry ctry, long j2, boolean z, int i) {
        Cif.m29470goto(i, "bufferSize");
        Cif.m29468else(ctry, "scheduler is null");
        Cif.m29468else(timeUnit, "unit is null");
        Cif.m29473this(j2, "count");
        return jp1.h(new t2(this, j, j, timeUnit, ctry, j2, i, z));
    }

    @cs1("none")
    @t6(s6.UNBOUNDED_IN)
    @gl
    /* renamed from: goto, reason: not valid java name */
    public final T m29389goto(T t) throws InterruptedException {
        ia iaVar = new ia();
        m5(iaVar);
        T tM2621do = iaVar.m2621do();
        return tM2621do != null ? tM2621do : t;
    }

    @cs1("none")
    @t6(s6.FULL)
    @gl
    public final Cfor<T> h() {
        return i(16);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @b41
    @t6(s6.FULL)
    @cs1("none")
    @gl
    public final <R> Cfor<R> h0(Function<? super T, ? extends Publisher<? extends R>> function, int i, boolean z) {
        Cif.m29468else(function, "mapper is null");
        Cif.m29470goto(i, "prefetch");
        if (!(this instanceof ScalarCallable)) {
            return jp1.h(new FlowableConcatMap(this, function, i, z ? Ctry.END : Ctry.BOUNDARY));
        }
        Object objCall = ((ScalarCallable) this).call();
        return objCall == null ? s1() : j1.m29492do(objCall, function);
    }

    @cs1(cs1.G5)
    @t6(s6.FULL)
    @gl
    public final oq<T> h4(int i, long j, TimeUnit timeUnit) {
        return i4(i, j, timeUnit, io.reactivex.schedulers.Cdo.m29767do());
    }

    @b41
    @t6(s6.FULL)
    @cs1("none")
    @gl
    public final Cfor<T> h5(Comparator<? super T> comparator) {
        Cif.m29468else(comparator, "sortFunction");
        return B6().u0().S2(Cdo.m29439super(comparator)).N1(Cdo.m29416catch());
    }

    @cs1("none")
    @t6(s6.PASS_THROUGH)
    @gl
    public final Cfor<e72<T>> h6(TimeUnit timeUnit) {
        return i6(timeUnit, io.reactivex.schedulers.Cdo.m29767do());
    }

    @cs1("none")
    @t6(s6.ERROR)
    @gl
    public final <B> Cfor<Cfor<T>> h7(Callable<? extends Publisher<B>> callable) {
        return i7(callable, g());
    }

    @cs1("none")
    @t6(s6.FULL)
    @gl
    public final Cfor<T> i(int i) {
        Cif.m29470goto(i, "initialCapacity");
        return jp1.h(new Cthrow(this, i));
    }

    @cs1("none")
    @t6(s6.FULL)
    @gl
    public final <R> Cfor<R> i0(Function<? super T, ? extends Publisher<? extends R>> function) {
        return j0(function, g(), g());
    }

    @b41
    @t6(s6.PASS_THROUGH)
    @cs1("none")
    @gl
    public final Cfor<T> i1(Subscriber<? super T> subscriber) {
        Cif.m29468else(subscriber, "subscriber is null");
        return h1(u.m29523const(subscriber), u.m29522class(subscriber), u.m29521catch(subscriber), Cdo.f25282for);
    }

    @cs1(cs1.F5)
    @t6(s6.FULL)
    @gl
    public final oq<T> i4(int i, long j, TimeUnit timeUnit, Ctry ctry) {
        Cif.m29470goto(i, "bufferSize");
        Cif.m29468else(timeUnit, "unit is null");
        Cif.m29468else(ctry, "scheduler is null");
        Cif.m29470goto(i, "bufferSize");
        return FlowableReplay.Z7(this, j, timeUnit, ctry, i);
    }

    @cs1("none")
    @t6(s6.FULL)
    @gl
    public final Cfor<T> i5(Iterable<? extends T> iterable) {
        return M(f2(iterable), this);
    }

    @cs1("none")
    @t6(s6.PASS_THROUGH)
    @gl
    public final Cfor<e72<T>> i6(TimeUnit timeUnit, Ctry ctry) {
        Cif.m29468else(timeUnit, "unit is null");
        Cif.m29468else(ctry, "scheduler is null");
        return jp1.h(new j2(this, timeUnit, ctry));
    }

    @b41
    @t6(s6.ERROR)
    @cs1("none")
    @gl
    public final <B> Cfor<Cfor<T>> i7(Callable<? extends Publisher<B>> callable, int i) {
        Cif.m29468else(callable, "boundaryIndicatorSupplier is null");
        Cif.m29470goto(i, "bufferSize");
        return jp1.h(new s2(this, callable, i));
    }

    @cs1(cs1.F5)
    @t6(s6.ERROR)
    @gl
    /* renamed from: implements, reason: not valid java name */
    public final Cfor<List<T>> m29390implements(long j, TimeUnit timeUnit, Ctry ctry, int i) {
        return (Cfor<List<T>>) m29392instanceof(j, timeUnit, ctry, i, io.reactivex.internal.util.Cdo.asCallable(), false);
    }

    @cs1("none")
    @t6(s6.UNBOUNDED_IN)
    @gl
    /* renamed from: import, reason: not valid java name */
    public final T m29391import(T t) {
        return S4(t).m4165try();
    }

    @cs1(cs1.F5)
    @t6(s6.ERROR)
    @gl
    /* renamed from: instanceof, reason: not valid java name */
    public final <U extends Collection<? super T>> Cfor<U> m29392instanceof(long j, TimeUnit timeUnit, Ctry ctry, int i, Callable<U> callable, boolean z) {
        Cif.m29468else(timeUnit, "unit is null");
        Cif.m29468else(ctry, "scheduler is null");
        Cif.m29468else(callable, "bufferSupplier is null");
        Cif.m29470goto(i, "count");
        return jp1.h(new Csuper(this, j, j, timeUnit, ctry, callable, i, z));
    }

    @cs1(cs1.G5)
    @t6(s6.ERROR)
    @gl
    /* renamed from: interface, reason: not valid java name */
    public final Cfor<List<T>> m29393interface(long j, TimeUnit timeUnit) {
        return m29390implements(j, timeUnit, io.reactivex.schedulers.Cdo.m29767do(), Integer.MAX_VALUE);
    }

    @b41
    @t6(s6.PASS_THROUGH)
    @cs1("none")
    @gl
    public final <U> Cfor<U> j(Class<U> cls) {
        Cif.m29468else(cls, "clazz is null");
        return (Cfor<U>) S2(Cdo.m29444try(cls));
    }

    @b41
    @t6(s6.FULL)
    @cs1("none")
    @gl
    public final <R> Cfor<R> j0(Function<? super T, ? extends Publisher<? extends R>> function, int i, int i2) {
        Cif.m29468else(function, "mapper is null");
        Cif.m29470goto(i, "maxConcurrency");
        Cif.m29470goto(i2, "prefetch");
        return jp1.h(new Creturn(this, function, i, i2, Ctry.IMMEDIATE));
    }

    @cs1("none")
    @t6(s6.PASS_THROUGH)
    @gl
    public final Cfor<T> j1(Consumer<? super Throwable> consumer) {
        Consumer<? super T> consumerM29427goto = Cdo.m29427goto();
        Action action = Cdo.f25282for;
        return h1(consumerM29427goto, consumer, action, action);
    }

    @cs1(cs1.F5)
    @t6(s6.FULL)
    @gl
    public final oq<T> j4(int i, Ctry ctry) {
        Cif.m29468else(ctry, "scheduler is null");
        return FlowableReplay.d8(g4(i), ctry);
    }

    @b41
    @t6(s6.FULL)
    @cs1("none")
    @gl
    public final Cfor<T> j5(T t) {
        Cif.m29468else(t, "value is null");
        return M(D2(t), this);
    }

    @cs1(cs1.G5)
    @t6(s6.PASS_THROUGH)
    @gl
    public final Cfor<T> j6(long j, TimeUnit timeUnit) {
        return r6(j, timeUnit, null, io.reactivex.schedulers.Cdo.m29767do());
    }

    @cs1("none")
    @t6(s6.ERROR)
    @gl
    public final <B> Cfor<Cfor<T>> j7(Publisher<B> publisher) {
        return k7(publisher, g());
    }

    @b41
    @t6(s6.UNBOUNDED_IN)
    @cs1("none")
    @gl
    public final <U> jz1<U> k(Callable<? extends U> callable, BiConsumer<? super U, ? super T> biConsumer) {
        Cif.m29468else(callable, "initialItemSupplier is null");
        Cif.m29468else(biConsumer, "collector is null");
        return jp1.g(new Cimport(this, callable, biConsumer));
    }

    @b41
    @t6(s6.FULL)
    @cs1("none")
    @gl
    public final <R> Cfor<R> k0(Function<? super T, ? extends Publisher<? extends R>> function, int i, int i2, boolean z) {
        Cif.m29468else(function, "mapper is null");
        Cif.m29470goto(i, "maxConcurrency");
        Cif.m29470goto(i2, "prefetch");
        return jp1.h(new Creturn(this, function, i, i2, z ? Ctry.END : Ctry.BOUNDARY));
    }

    @b41
    @t6(s6.PASS_THROUGH)
    @cs1("none")
    @gl
    public final Cfor<T> k1(Consumer<? super Subscription> consumer, LongConsumer longConsumer, Action action) {
        Cif.m29468else(consumer, "onSubscribe is null");
        Cif.m29468else(longConsumer, "onRequest is null");
        Cif.m29468else(action, "onCancel is null");
        return jp1.h(new a(this, consumer, longConsumer, action));
    }

    @cs1(cs1.G5)
    @t6(s6.FULL)
    @gl
    public final oq<T> k4(long j, TimeUnit timeUnit) {
        return l4(j, timeUnit, io.reactivex.schedulers.Cdo.m29767do());
    }

    @b41
    @t6(s6.FULL)
    @cs1("none")
    @gl
    public final Cfor<T> k5(Publisher<? extends T> publisher) {
        Cif.m29468else(publisher, "other is null");
        return M(publisher, this);
    }

    @cs1(cs1.F5)
    @t6(s6.PASS_THROUGH)
    @gl
    public final Cfor<T> k6(long j, TimeUnit timeUnit, Ctry ctry) {
        return r6(j, timeUnit, null, ctry);
    }

    @b41
    @t6(s6.ERROR)
    @cs1("none")
    @gl
    public final <B> Cfor<Cfor<T>> k7(Publisher<B> publisher, int i) {
        Cif.m29468else(publisher, "boundaryIndicator is null");
        Cif.m29470goto(i, "bufferSize");
        return jp1.h(new q2(this, publisher, i));
    }

    @b41
    @t6(s6.UNBOUNDED_IN)
    @cs1("none")
    @gl
    public final <U> jz1<U> l(U u, BiConsumer<? super U, ? super T> biConsumer) {
        Cif.m29468else(u, "initialItem is null");
        return k(Cdo.m29418const(u), biConsumer);
    }

    @cs1("none")
    @t6(s6.FULL)
    @gl
    public final <R> Cfor<R> l0(Function<? super T, ? extends Publisher<? extends R>> function, boolean z) {
        return k0(function, g(), g(), z);
    }

    @cs1("none")
    @t6(s6.PASS_THROUGH)
    @gl
    public final Cfor<T> l1(Consumer<? super T> consumer) {
        Consumer<? super Throwable> consumerM29427goto = Cdo.m29427goto();
        Action action = Cdo.f25282for;
        return h1(consumer, consumerM29427goto, action, action);
    }

    @cs1(cs1.F5)
    @t6(s6.FULL)
    @gl
    public final oq<T> l4(long j, TimeUnit timeUnit, Ctry ctry) {
        Cif.m29468else(timeUnit, "unit is null");
        Cif.m29468else(ctry, "scheduler is null");
        return FlowableReplay.Y7(this, j, timeUnit, ctry);
    }

    @cs1("none")
    @t6(s6.FULL)
    @gl
    public final Cfor<T> l5(T... tArr) {
        Cfor cforZ1 = Z1(tArr);
        return cforZ1 == s1() ? jp1.h(this) : M(cforZ1, this);
    }

    @b41
    @t6(s6.FULL)
    @cs1(cs1.F5)
    @gl
    public final Cfor<T> l6(long j, TimeUnit timeUnit, Ctry ctry, Publisher<? extends T> publisher) {
        Cif.m29468else(publisher, "other is null");
        return r6(j, timeUnit, publisher, ctry);
    }

    @cs1("none")
    @t6(s6.ERROR)
    @gl
    public final <U, V> Cfor<Cfor<T>> l7(Publisher<U> publisher, Function<? super U, ? extends Publisher<V>> function) {
        return m7(publisher, function, g());
    }

    @cs1("none")
    @t6(s6.FULL)
    @gl
    public final <U> Cfor<U> m0(Function<? super T, ? extends Iterable<? extends U>> function) {
        return n0(function, 2);
    }

    @cs1("none")
    @t6(s6.PASS_THROUGH)
    @gl
    public final Cfor<T> m1(LongConsumer longConsumer) {
        return k1(Cdo.m29427goto(), longConsumer, Cdo.f25282for);
    }

    @cs1("none")
    @t6(s6.FULL)
    @gl
    public final <K> Cfor<fi0<K, T>> m2(Function<? super T, ? extends K> function) {
        return (Cfor<fi0<K, T>>) p2(function, Cdo.m29416catch(), false, g());
    }

    @cs1(cs1.F5)
    @t6(s6.FULL)
    @gl
    public final oq<T> m4(Ctry ctry) {
        Cif.m29468else(ctry, "scheduler is null");
        return FlowableReplay.d8(f4(), ctry);
    }

    @cs1("none")
    @t6(s6.SPECIAL)
    public final void m5(FlowableSubscriber<? super T> flowableSubscriber) {
        Cif.m29468else(flowableSubscriber, "s is null");
        try {
            Subscriber<? super T> subscriberU = jp1.u(this, flowableSubscriber);
            Cif.m29468else(subscriberU, "The RxJavaPlugins.onSubscribe hook returned a null FlowableSubscriber. Please check the handler provided to RxJavaPlugins.setOnFlowableSubscribe for invalid null returns. Further reading: https://github.com/ReactiveX/RxJava/wiki/Plugins");
            n5(subscriberU);
        } catch (NullPointerException e) {
            throw e;
        } catch (Throwable th) {
            t80.m7781if(th);
            jp1.l(th);
            NullPointerException nullPointerException = new NullPointerException("Actually not, but can't throw other exceptions due to RS");
            nullPointerException.initCause(th);
            throw nullPointerException;
        }
    }

    @b41
    @t6(s6.FULL)
    @cs1(cs1.G5)
    @gl
    public final Cfor<T> m6(long j, TimeUnit timeUnit, Publisher<? extends T> publisher) {
        Cif.m29468else(publisher, "other is null");
        return r6(j, timeUnit, publisher, io.reactivex.schedulers.Cdo.m29767do());
    }

    @b41
    @t6(s6.ERROR)
    @cs1("none")
    @gl
    public final <U, V> Cfor<Cfor<T>> m7(Publisher<U> publisher, Function<? super U, ? extends Publisher<V>> function, int i) {
        Cif.m29468else(publisher, "openingIndicator is null");
        Cif.m29468else(function, "closingIndicator is null");
        Cif.m29470goto(i, "bufferSize");
        return jp1.h(new r2(this, publisher, function, i));
    }

    @b41
    @t6(s6.FULL)
    @cs1("none")
    @gl
    public final <U> Cfor<U> n0(Function<? super T, ? extends Iterable<? extends U>> function, int i) {
        Cif.m29468else(function, "mapper is null");
        Cif.m29470goto(i, "prefetch");
        return jp1.h(new k(this, function, i));
    }

    @cs1("none")
    @t6(s6.PASS_THROUGH)
    @gl
    public final Cfor<T> n1(Consumer<? super Subscription> consumer) {
        return k1(consumer, Cdo.f25281else, Cdo.f25282for);
    }

    @cs1("none")
    @t6(s6.FULL)
    @gl
    public final <K, V> Cfor<fi0<K, V>> n2(Function<? super T, ? extends K> function, Function<? super T, ? extends V> function2) {
        return p2(function, function2, false, g());
    }

    @b41
    @t6(s6.FULL)
    @cs1("none")
    @gl
    public final <R> Cfor<R> n4(Function<? super Cfor<T>, ? extends Publisher<R>> function) {
        Cif.m29468else(function, "selector is null");
        return FlowableReplay.c8(u.m29530new(this), function);
    }

    public abstract void n5(Subscriber<? super T> subscriber);

    @cs1("none")
    @t6(s6.PASS_THROUGH)
    @gl
    public final <V> Cfor<T> n6(Function<? super T, ? extends Publisher<V>> function) {
        return s6(null, function, null);
    }

    @b41
    @t6(s6.PASS_THROUGH)
    @cs1("none")
    @gl
    public final <R> Cfor<R> n7(Iterable<? extends Publisher<?>> iterable, Function<? super Object[], R> function) {
        Cif.m29468else(iterable, "others is null");
        Cif.m29468else(function, "combiner is null");
        return jp1.h(new v2(this, iterable, function));
    }

    @cs1("none")
    @t6(s6.UNBOUNDED_IN)
    /* renamed from: native, reason: not valid java name */
    public final void m29394native() {
        uc0.m8355do(this);
    }

    @b41
    @t6(s6.FULL)
    @cs1("none")
    @gl
    /* renamed from: new, reason: not valid java name */
    public final Cfor<T> m29395new(Publisher<? extends T> publisher) {
        Cif.m29468else(publisher, "other is null");
        return m29374for(this, publisher);
    }

    @cs1("none")
    @t6(s6.FULL)
    @gl
    public final <R> Cfor<R> o0(Function<? super T, ? extends MaybeSource<? extends R>> function) {
        return p0(function, 2);
    }

    @cs1("none")
    @t6(s6.PASS_THROUGH)
    @gl
    public final Cfor<T> o1(Action action) {
        return h1(Cdo.m29427goto(), Cdo.m29421do(action), action, Cdo.f25282for);
    }

    @cs1("none")
    @t6(s6.FULL)
    @gl
    public final <K, V> Cfor<fi0<K, V>> o2(Function<? super T, ? extends K> function, Function<? super T, ? extends V> function2, boolean z) {
        return p2(function, function2, z, g());
    }

    @b41
    @t6(s6.PASS_THROUGH)
    @cs1("none")
    @gl
    public final Cfor<T> o3(@b41 CompletableSource completableSource) {
        Cif.m29468else(completableSource, "other is null");
        return jp1.h(new g0(this, completableSource));
    }

    @b41
    @t6(s6.FULL)
    @cs1("none")
    @gl
    public final <R> Cfor<R> o4(Function<? super Cfor<T>, ? extends Publisher<R>> function, int i) {
        Cif.m29468else(function, "selector is null");
        Cif.m29470goto(i, "bufferSize");
        return FlowableReplay.c8(u.m29532try(this, i), function);
    }

    @b41
    @t6(s6.PASS_THROUGH)
    @cs1(cs1.F5)
    @gl
    public final Cfor<T> o5(@b41 Ctry ctry) {
        Cif.m29468else(ctry, "scheduler is null");
        return p5(ctry, !(this instanceof Cpackage));
    }

    @b41
    @t6(s6.FULL)
    @cs1("none")
    @gl
    public final <V> Cfor<T> o6(Function<? super T, ? extends Publisher<V>> function, Cfor<? extends T> cfor) {
        Cif.m29468else(cfor, "other is null");
        return s6(null, function, cfor);
    }

    @b41
    @t6(s6.PASS_THROUGH)
    @cs1("none")
    @gl
    public final <U, R> Cfor<R> o7(Publisher<? extends U> publisher, BiFunction<? super T, ? super U, ? extends R> biFunction) {
        Cif.m29468else(publisher, "other is null");
        Cif.m29468else(biFunction, "combiner is null");
        return jp1.h(new u2(this, biFunction, publisher));
    }

    @b41
    @t6(s6.FULL)
    @cs1("none")
    @gl
    public final <R> Cfor<R> p0(Function<? super T, ? extends MaybeSource<? extends R>> function, int i) {
        Cif.m29468else(function, "mapper is null");
        Cif.m29470goto(i, "prefetch");
        return jp1.h(new Cnew(this, function, Ctry.IMMEDIATE, i));
    }

    @cs1("none")
    @t6(s6.UNBOUNDED_IN)
    @gl
    public final fy0<T> p1(long j) {
        if (j >= 0) {
            return jp1.e(new c(this, j));
        }
        throw new IndexOutOfBoundsException("index >= 0 required but it was " + j);
    }

    @b41
    @t6(s6.FULL)
    @cs1("none")
    @gl
    public final <K, V> Cfor<fi0<K, V>> p2(Function<? super T, ? extends K> function, Function<? super T, ? extends V> function2, boolean z, int i) {
        Cif.m29468else(function, "keySelector is null");
        Cif.m29468else(function2, "valueSelector is null");
        Cif.m29470goto(i, "bufferSize");
        return jp1.h(new q(this, function, function2, i, z, null));
    }

    @b41
    @t6(s6.FULL)
    @cs1("none")
    @gl
    public final Cfor<T> p3(@b41 MaybeSource<? extends T> maybeSource) {
        Cif.m29468else(maybeSource, "other is null");
        return jp1.h(new h0(this, maybeSource));
    }

    @cs1(cs1.G5)
    @t6(s6.FULL)
    @gl
    public final <R> Cfor<R> p4(Function<? super Cfor<T>, ? extends Publisher<R>> function, int i, long j, TimeUnit timeUnit) {
        return q4(function, i, j, timeUnit, io.reactivex.schedulers.Cdo.m29767do());
    }

    @b41
    @t6(s6.PASS_THROUGH)
    @cs1(cs1.F5)
    @gl
    public final Cfor<T> p5(@b41 Ctry ctry, boolean z) {
        Cif.m29468else(ctry, "scheduler is null");
        return jp1.h(new w1(this, ctry, z));
    }

    @b41
    @t6(s6.PASS_THROUGH)
    @cs1("none")
    @gl
    public final <U, V> Cfor<T> p6(Publisher<U> publisher, Function<? super T, ? extends Publisher<V>> function) {
        Cif.m29468else(publisher, "firstTimeoutIndicator is null");
        return s6(publisher, function, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @b41
    @t6(s6.PASS_THROUGH)
    @cs1("none")
    @gl
    public final <T1, T2, R> Cfor<R> p7(Publisher<T1> publisher, Publisher<T2> publisher2, Function3<? super T, ? super T1, ? super T2, R> function3) {
        Cif.m29468else(publisher, "source1 is null");
        Cif.m29468else(publisher2, "source2 is null");
        return s7(new Publisher[]{publisher, publisher2}, Cdo.m29420default(function3));
    }

    @cs1("none")
    @t6(s6.FULL)
    @gl
    /* renamed from: package, reason: not valid java name */
    public final Cfor<List<T>> m29396package(int i, int i2) {
        return (Cfor<List<T>>) m29397private(i, i2, io.reactivex.internal.util.Cdo.asCallable());
    }

    @b41
    @t6(s6.FULL)
    @cs1("none")
    @gl
    /* renamed from: private, reason: not valid java name */
    public final <U extends Collection<? super T>> Cfor<U> m29397private(int i, int i2, Callable<U> callable) {
        Cif.m29470goto(i, "count");
        Cif.m29470goto(i2, "skip");
        Cif.m29468else(callable, "bufferSupplier is null");
        return jp1.h(new Ccatch(this, i, i2, callable));
    }

    @cs1(cs1.G5)
    @t6(s6.ERROR)
    @gl
    /* renamed from: protected, reason: not valid java name */
    public final Cfor<List<T>> m29398protected(long j, TimeUnit timeUnit, int i) {
        return m29390implements(j, timeUnit, io.reactivex.schedulers.Cdo.m29767do(), i);
    }

    @cs1("none")
    @t6(s6.UNBOUNDED_IN)
    /* renamed from: public, reason: not valid java name */
    public final void m29399public(Consumer<? super T> consumer) {
        uc0.m8357if(this, consumer, Cdo.f25277case, Cdo.f25282for);
    }

    @cs1("none")
    @t6(s6.FULL)
    @gl
    public final <R> Cfor<R> q0(Function<? super T, ? extends MaybeSource<? extends R>> function) {
        return s0(function, true, 2);
    }

    @b41
    @t6(s6.UNBOUNDED_IN)
    @cs1("none")
    @gl
    public final jz1<T> q1(long j, T t) {
        if (j >= 0) {
            Cif.m29468else(t, "defaultItem is null");
            return jp1.g(new d(this, j, t));
        }
        throw new IndexOutOfBoundsException("index >= 0 required but it was " + j);
    }

    @b41
    @t6(s6.FULL)
    @cs1("none")
    @gl
    public final <K, V> Cfor<fi0<K, V>> q2(Function<? super T, ? extends K> function, Function<? super T, ? extends V> function2, boolean z, int i, Function<? super Consumer<Object>, ? extends Map<K, Object>> function3) {
        Cif.m29468else(function, "keySelector is null");
        Cif.m29468else(function2, "valueSelector is null");
        Cif.m29470goto(i, "bufferSize");
        Cif.m29468else(function3, "evictingMapFactory is null");
        return jp1.h(new q(this, function, function2, i, z, function3));
    }

    @b41
    @t6(s6.FULL)
    @cs1("none")
    @gl
    public final Cfor<T> q3(@b41 SingleSource<? extends T> singleSource) {
        Cif.m29468else(singleSource, "other is null");
        return jp1.h(new i0(this, singleSource));
    }

    @b41
    @t6(s6.FULL)
    @cs1(cs1.F5)
    @gl
    public final <R> Cfor<R> q4(Function<? super Cfor<T>, ? extends Publisher<R>> function, int i, long j, TimeUnit timeUnit, Ctry ctry) {
        Cif.m29468else(function, "selector is null");
        Cif.m29468else(timeUnit, "unit is null");
        Cif.m29470goto(i, "bufferSize");
        Cif.m29468else(ctry, "scheduler is null");
        return FlowableReplay.c8(u.m29520case(this, i, j, timeUnit, ctry), function);
    }

    @b41
    @t6(s6.FULL)
    @cs1("none")
    @gl
    public final Cfor<T> q5(Publisher<? extends T> publisher) {
        Cif.m29468else(publisher, "other is null");
        return jp1.h(new x1(this, publisher));
    }

    @b41
    @t6(s6.FULL)
    @cs1("none")
    @gl
    public final <U, V> Cfor<T> q6(Publisher<U> publisher, Function<? super T, ? extends Publisher<V>> function, Publisher<? extends T> publisher2) {
        Cif.m29468else(publisher, "firstTimeoutSelector is null");
        Cif.m29468else(publisher2, "other is null");
        return s6(publisher, function, publisher2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @b41
    @t6(s6.PASS_THROUGH)
    @cs1("none")
    @gl
    public final <T1, T2, T3, R> Cfor<R> q7(Publisher<T1> publisher, Publisher<T2> publisher2, Publisher<T3> publisher3, Function4<? super T, ? super T1, ? super T2, ? super T3, R> function4) {
        Cif.m29468else(publisher, "source1 is null");
        Cif.m29468else(publisher2, "source2 is null");
        Cif.m29468else(publisher3, "source3 is null");
        return s7(new Publisher[]{publisher, publisher2, publisher3}, Cdo.m29423extends(function4));
    }

    @cs1("none")
    @t6(s6.FULL)
    @gl
    public final <R> Cfor<R> r0(Function<? super T, ? extends MaybeSource<? extends R>> function, boolean z) {
        return s0(function, z, 2);
    }

    @cs1("none")
    @t6(s6.UNBOUNDED_IN)
    @gl
    public final jz1<T> r1(long j) {
        if (j >= 0) {
            return jp1.g(new d(this, j, null));
        }
        throw new IndexOutOfBoundsException("index >= 0 required but it was " + j);
    }

    @cs1("none")
    @t6(s6.FULL)
    @gl
    public final <K> Cfor<fi0<K, T>> r2(Function<? super T, ? extends K> function, boolean z) {
        return (Cfor<fi0<K, T>>) p2(function, Cdo.m29416catch(), z, g());
    }

    @b41
    @t6(s6.FULL)
    @cs1("none")
    @gl
    public final Cfor<T> r3(Publisher<? extends T> publisher) {
        Cif.m29468else(publisher, "other is null");
        return Z2(this, publisher);
    }

    @b41
    @t6(s6.FULL)
    @cs1(cs1.F5)
    @gl
    public final <R> Cfor<R> r4(Function<? super Cfor<T>, ? extends Publisher<R>> function, int i, Ctry ctry) {
        Cif.m29468else(function, "selector is null");
        Cif.m29468else(ctry, "scheduler is null");
        Cif.m29470goto(i, "bufferSize");
        return FlowableReplay.c8(u.m29532try(this, i), u.m29528goto(function, ctry));
    }

    @cs1("none")
    @t6(s6.FULL)
    @gl
    public final <R> Cfor<R> r5(Function<? super T, ? extends Publisher<? extends R>> function) {
        return s5(function, g());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @b41
    @t6(s6.PASS_THROUGH)
    @cs1("none")
    @gl
    public final <T1, T2, T3, T4, R> Cfor<R> r7(Publisher<T1> publisher, Publisher<T2> publisher2, Publisher<T3> publisher3, Publisher<T4> publisher4, Function5<? super T, ? super T1, ? super T2, ? super T3, ? super T4, R> function5) {
        Cif.m29468else(publisher, "source1 is null");
        Cif.m29468else(publisher2, "source2 is null");
        Cif.m29468else(publisher3, "source3 is null");
        Cif.m29468else(publisher4, "source4 is null");
        return s7(new Publisher[]{publisher, publisher2, publisher3, publisher4}, Cdo.m29425finally(function5));
    }

    @cs1("none")
    @t6(s6.FULL)
    /* renamed from: return, reason: not valid java name */
    public final void m29400return(Consumer<? super T> consumer, int i) {
        uc0.m8356for(this, consumer, Cdo.f25277case, Cdo.f25282for, i);
    }

    @b41
    @t6(s6.FULL)
    @cs1("none")
    @gl
    public final <R> Cfor<R> s0(Function<? super T, ? extends MaybeSource<? extends R>> function, boolean z, int i) {
        Cif.m29468else(function, "mapper is null");
        Cif.m29470goto(i, "prefetch");
        return jp1.h(new Cnew(this, function, z ? Ctry.END : Ctry.BOUNDARY, i));
    }

    @b41
    @t6(s6.ERROR)
    @cs1("none")
    @gl
    public final <TRight, TLeftEnd, TRightEnd, R> Cfor<R> s2(Publisher<? extends TRight> publisher, Function<? super T, ? extends Publisher<TLeftEnd>> function, Function<? super TRight, ? extends Publisher<TRightEnd>> function2, BiFunction<? super T, ? super Cfor<TRight>, ? extends R> biFunction) {
        Cif.m29468else(publisher, "other is null");
        Cif.m29468else(function, "leftEnd is null");
        Cif.m29468else(function2, "rightEnd is null");
        Cif.m29468else(biFunction, "resultSelector is null");
        return jp1.h(new FlowableGroupJoin(this, publisher, function, function2, biFunction));
    }

    @cs1(cs1.G5)
    @t6(s6.FULL)
    @gl
    public final <R> Cfor<R> s4(Function<? super Cfor<T>, ? extends Publisher<R>> function, long j, TimeUnit timeUnit) {
        return t4(function, j, timeUnit, io.reactivex.schedulers.Cdo.m29767do());
    }

    @cs1("none")
    @t6(s6.FULL)
    @gl
    public final <R> Cfor<R> s5(Function<? super T, ? extends Publisher<? extends R>> function, int i) {
        return t5(function, i, false);
    }

    @b41
    @t6(s6.PASS_THROUGH)
    @cs1("none")
    @gl
    public final <R> Cfor<R> s7(Publisher<?>[] publisherArr, Function<? super Object[], R> function) {
        Cif.m29468else(publisherArr, "others is null");
        Cif.m29468else(function, "combiner is null");
        return jp1.h(new v2(this, publisherArr, function));
    }

    @cs1("none")
    @t6(s6.UNBOUNDED_IN)
    /* renamed from: static, reason: not valid java name */
    public final void m29401static(Consumer<? super T> consumer, Consumer<? super Throwable> consumer2) {
        uc0.m8357if(this, consumer, consumer2, Cdo.f25282for);
    }

    @cs1(cs1.F5)
    @t6(s6.ERROR)
    @gl
    /* renamed from: strictfp, reason: not valid java name */
    public final Cfor<List<T>> m29402strictfp(long j, long j2, TimeUnit timeUnit, Ctry ctry) {
        return (Cfor<List<T>>) m29411volatile(j, j2, timeUnit, ctry, io.reactivex.internal.util.Cdo.asCallable());
    }

    @cs1("none")
    @t6(s6.UNBOUNDED_IN)
    public final Disposable subscribe() {
        return subscribe(Cdo.m29427goto(), Cdo.f25277case, Cdo.f25282for, u.Cthis.INSTANCE);
    }

    @cs1("none")
    @t6(s6.SPECIAL)
    @gl
    public final <E extends Subscriber<? super T>> E subscribeWith(E e) {
        subscribe(e);
        return e;
    }

    @cs1("none")
    @t6(s6.UNBOUNDED_IN)
    @gl
    /* renamed from: super, reason: not valid java name */
    public final Iterable<T> m29403super(T t) {
        return new io.reactivex.internal.operators.flowable.Cnew(this, t);
    }

    @cs1("none")
    @t6(s6.FULL)
    /* renamed from: switch, reason: not valid java name */
    public final void m29404switch(Consumer<? super T> consumer, Consumer<? super Throwable> consumer2, int i) {
        uc0.m8356for(this, consumer, consumer2, Cdo.f25282for, i);
    }

    @cs1("none")
    @t6(s6.ERROR)
    @gl
    /* renamed from: synchronized, reason: not valid java name */
    public final <TOpening, TClosing> Cfor<List<T>> m29405synchronized(Cfor<? extends TOpening> cfor, Function<? super TOpening, ? extends Publisher<? extends TClosing>> function) {
        return (Cfor<List<T>>) a(cfor, function, io.reactivex.internal.util.Cdo.asCallable());
    }

    @cs1("none")
    @t6(s6.FULL)
    @gl
    public final <R> Cfor<R> t0(Function<? super T, ? extends SingleSource<? extends R>> function) {
        return u0(function, 2);
    }

    @cs1("none")
    @t6(s6.PASS_THROUGH)
    @gl
    public final Cfor<T> t2() {
        return jp1.h(new r(this));
    }

    @cs1(cs1.F5)
    @t6(s6.FULL)
    @gl
    public final Cfor<T> t3(Ctry ctry) {
        return v3(ctry, false, g());
    }

    @b41
    @t6(s6.FULL)
    @cs1(cs1.F5)
    @gl
    public final <R> Cfor<R> t4(Function<? super Cfor<T>, ? extends Publisher<R>> function, long j, TimeUnit timeUnit, Ctry ctry) {
        Cif.m29468else(function, "selector is null");
        Cif.m29468else(timeUnit, "unit is null");
        Cif.m29468else(ctry, "scheduler is null");
        return FlowableReplay.c8(u.m29525else(this, j, timeUnit, ctry), function);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <R> Cfor<R> t5(Function<? super T, ? extends Publisher<? extends R>> function, int i, boolean z) {
        Cif.m29468else(function, "mapper is null");
        Cif.m29470goto(i, "bufferSize");
        if (!(this instanceof ScalarCallable)) {
            return jp1.h(new y1(this, function, i, z));
        }
        Object objCall = ((ScalarCallable) this).call();
        return objCall == null ? s1() : j1.m29492do(objCall, function);
    }

    @cs1("none")
    @t6(s6.UNBOUNDED_IN)
    @gl
    public final io.reactivex.subscribers.Cdo<T> test() {
        io.reactivex.subscribers.Cdo<T> cdo = new io.reactivex.subscribers.Cdo<>();
        m5(cdo);
        return cdo;
    }

    @cs1("none")
    @t6(s6.UNBOUNDED_IN)
    /* renamed from: this, reason: not valid java name */
    public final void m29406this(Consumer<? super T> consumer) {
        Iterator<T> it = m29377break().iterator();
        while (it.hasNext()) {
            try {
                consumer.accept(it.next());
            } catch (Throwable th) {
                t80.m7781if(th);
                ((Disposable) it).dispose();
                throw Ccase.m29712case(th);
            }
        }
    }

    @cs1("none")
    @t6(s6.UNBOUNDED_IN)
    @gl
    /* renamed from: throw, reason: not valid java name */
    public final Iterable<T> m29407throw() {
        return new io.reactivex.internal.operators.flowable.Ctry(this);
    }

    @cs1("none")
    @t6(s6.UNBOUNDED_IN)
    /* renamed from: throws, reason: not valid java name */
    public final void m29408throws(Consumer<? super T> consumer, Consumer<? super Throwable> consumer2, Action action) {
        uc0.m8357if(this, consumer, consumer2, action);
    }

    @cs1(cs1.F5)
    @t6(s6.ERROR)
    @gl
    /* renamed from: transient, reason: not valid java name */
    public final Cfor<List<T>> m29409transient(long j, TimeUnit timeUnit, Ctry ctry) {
        return (Cfor<List<T>>) m29392instanceof(j, timeUnit, ctry, Integer.MAX_VALUE, io.reactivex.internal.util.Cdo.asCallable(), false);
    }

    @b41
    @t6(s6.UNBOUNDED_IN)
    @cs1("none")
    @gl
    /* renamed from: try, reason: not valid java name */
    public final jz1<Boolean> m29410try(Predicate<? super T> predicate) {
        Cif.m29468else(predicate, "predicate is null");
        return jp1.g(new Cbreak(this, predicate));
    }

    @b41
    @t6(s6.FULL)
    @cs1("none")
    @gl
    public final <R> Cfor<R> u0(Function<? super T, ? extends SingleSource<? extends R>> function, int i) {
        Cif.m29468else(function, "mapper is null");
        Cif.m29470goto(i, "prefetch");
        return jp1.h(new io.reactivex.internal.operators.mixed.Ctry(this, function, Ctry.IMMEDIATE, i));
    }

    @cs1("none")
    @t6(s6.UNBOUNDED_IN)
    @gl
    public final np u2() {
        return jp1.b(new t(this));
    }

    @cs1(cs1.F5)
    @t6(s6.FULL)
    @gl
    public final Cfor<T> u3(Ctry ctry, boolean z) {
        return v3(ctry, z, g());
    }

    @b41
    @t6(s6.FULL)
    @cs1(cs1.F5)
    @gl
    public final <R> Cfor<R> u4(Function<? super Cfor<T>, ? extends Publisher<R>> function, Ctry ctry) {
        Cif.m29468else(function, "selector is null");
        Cif.m29468else(ctry, "scheduler is null");
        return FlowableReplay.c8(u.m29530new(this), u.m29528goto(function, ctry));
    }

    @b41
    @t6(s6.UNBOUNDED_IN)
    @cs1("none")
    @gl
    public final np u5(@b41 Function<? super T, ? extends CompletableSource> function) {
        Cif.m29468else(function, "mapper is null");
        return jp1.b(new io.reactivex.internal.operators.mixed.Ccase(this, function, false));
    }

    @cs1("none")
    @t6(s6.FULL)
    @gl
    public final <R> Cfor<R> v0(Function<? super T, ? extends SingleSource<? extends R>> function) {
        return x0(function, true, 2);
    }

    @b41
    @t6(s6.PASS_THROUGH)
    @cs1("none")
    @gl
    public final Cfor<T> v1(Predicate<? super T> predicate) {
        Cif.m29468else(predicate, "predicate is null");
        return jp1.h(new e(this, predicate));
    }

    @b41
    @t6(s6.FULL)
    @cs1(cs1.F5)
    @gl
    public final Cfor<T> v3(Ctry ctry, boolean z, int i) {
        Cif.m29468else(ctry, "scheduler is null");
        Cif.m29470goto(i, "bufferSize");
        return jp1.h(new j0(this, ctry, z, i));
    }

    @cs1("none")
    @t6(s6.FULL)
    @gl
    public final Cfor<T> v4() {
        return x4(Long.MAX_VALUE, Cdo.m29426for());
    }

    @b41
    @t6(s6.UNBOUNDED_IN)
    @cs1("none")
    @gl
    public final np v5(@b41 Function<? super T, ? extends CompletableSource> function) {
        Cif.m29468else(function, "mapper is null");
        return jp1.b(new io.reactivex.internal.operators.mixed.Ccase(this, function, true));
    }

    @cs1("none")
    @t6(s6.PASS_THROUGH)
    @gl
    public final Cfor<e72<T>> v6() {
        return y6(TimeUnit.MILLISECONDS, io.reactivex.schedulers.Cdo.m29767do());
    }

    @b41
    @t6(s6.ERROR)
    @cs1(cs1.F5)
    @gl
    /* renamed from: volatile, reason: not valid java name */
    public final <U extends Collection<? super T>> Cfor<U> m29411volatile(long j, long j2, TimeUnit timeUnit, Ctry ctry, Callable<U> callable) {
        Cif.m29468else(timeUnit, "unit is null");
        Cif.m29468else(ctry, "scheduler is null");
        Cif.m29468else(callable, "bufferSupplier is null");
        return jp1.h(new Csuper(this, j, j2, timeUnit, ctry, callable, Integer.MAX_VALUE, false));
    }

    @cs1("none")
    @t6(s6.FULL)
    @gl
    public final <R> Cfor<R> w0(Function<? super T, ? extends SingleSource<? extends R>> function, boolean z) {
        return x0(function, z, 2);
    }

    @cs1("none")
    @t6(s6.SPECIAL)
    @gl
    public final jz1<T> w1(T t) {
        return q1(0L, t);
    }

    @b41
    @t6(s6.PASS_THROUGH)
    @cs1("none")
    @gl
    public final <U> Cfor<U> w3(Class<U> cls) {
        Cif.m29468else(cls, "clazz is null");
        return v1(Cdo.m29417class(cls)).j(cls);
    }

    @cs1("none")
    @t6(s6.FULL)
    @gl
    public final Cfor<T> w4(long j) {
        return x4(j, Cdo.m29426for());
    }

    @cs1("none")
    @t6(s6.SPECIAL)
    @gl
    public final <R> Cfor<R> w5(Function<? super T, ? extends Publisher<? extends R>> function) {
        return x5(function, g());
    }

    @cs1("none")
    @t6(s6.PASS_THROUGH)
    @gl
    public final Cfor<e72<T>> w6(Ctry ctry) {
        return y6(TimeUnit.MILLISECONDS, ctry);
    }

    @cs1("none")
    @t6(s6.UNBOUNDED_IN)
    @gl
    /* renamed from: while, reason: not valid java name */
    public final T m29412while() {
        return U4().m4165try();
    }

    @b41
    @t6(s6.FULL)
    @cs1("none")
    @gl
    public final <R> Cfor<R> x0(Function<? super T, ? extends SingleSource<? extends R>> function, boolean z, int i) {
        Cif.m29468else(function, "mapper is null");
        Cif.m29470goto(i, "prefetch");
        return jp1.h(new io.reactivex.internal.operators.mixed.Ctry(this, function, z ? Ctry.END : Ctry.BOUNDARY, i));
    }

    @cs1("none")
    @t6(s6.SPECIAL)
    @gl
    public final fy0<T> x1() {
        return p1(0L);
    }

    @cs1("none")
    @t6(s6.UNBOUNDED_IN)
    @gl
    public final Cfor<T> x3() {
        return B3(g(), false, true);
    }

    @b41
    @t6(s6.FULL)
    @cs1("none")
    @gl
    public final Cfor<T> x4(long j, Predicate<? super Throwable> predicate) {
        if (j >= 0) {
            Cif.m29468else(predicate, "predicate is null");
            return jp1.h(new f1(this, j, predicate));
        }
        throw new IllegalArgumentException("times >= 0 required but it was " + j);
    }

    @cs1("none")
    @t6(s6.SPECIAL)
    @gl
    public final <R> Cfor<R> x5(Function<? super T, ? extends Publisher<? extends R>> function, int i) {
        return t5(function, i, true);
    }

    @cs1("none")
    @t6(s6.PASS_THROUGH)
    @gl
    public final Cfor<e72<T>> x6(TimeUnit timeUnit) {
        return y6(timeUnit, io.reactivex.schedulers.Cdo.m29767do());
    }

    @cs1("none")
    @t6(s6.PASS_THROUGH)
    @gl
    public final Cfor<T> y0(@b41 CompletableSource completableSource) {
        Cif.m29468else(completableSource, "other is null");
        return jp1.h(new Cswitch(this, completableSource));
    }

    @cs1("none")
    @t6(s6.SPECIAL)
    @gl
    public final jz1<T> y1() {
        return r1(0L);
    }

    @cs1("none")
    @t6(s6.ERROR)
    @gl
    public final Cfor<T> y3(int i) {
        return B3(i, false, false);
    }

    @b41
    @t6(s6.FULL)
    @cs1("none")
    @gl
    public final Cfor<T> y4(BiPredicate<? super Integer, ? super Throwable> biPredicate) {
        Cif.m29468else(biPredicate, "predicate is null");
        return jp1.h(new e1(this, biPredicate));
    }

    @b41
    @t6(s6.UNBOUNDED_IN)
    @cs1("none")
    @gl
    public final <R> Cfor<R> y5(@b41 Function<? super T, ? extends MaybeSource<? extends R>> function) {
        Cif.m29468else(function, "mapper is null");
        return jp1.h(new io.reactivex.internal.operators.mixed.Celse(this, function, false));
    }

    @b41
    @t6(s6.PASS_THROUGH)
    @cs1("none")
    @gl
    public final Cfor<e72<T>> y6(TimeUnit timeUnit, Ctry ctry) {
        Cif.m29468else(timeUnit, "unit is null");
        Cif.m29468else(ctry, "scheduler is null");
        return (Cfor<e72<T>>) S2(Cdo.m29440switch(timeUnit, ctry));
    }

    @cs1("none")
    @t6(s6.FULL)
    @gl
    public final Cfor<T> z0(@b41 MaybeSource<? extends T> maybeSource) {
        Cif.m29468else(maybeSource, "other is null");
        return jp1.h(new Cthrows(this, maybeSource));
    }

    @cs1("none")
    @t6(s6.FULL)
    @gl
    public final <R> Cfor<R> z1(Function<? super T, ? extends Publisher<? extends R>> function) {
        return K1(function, false, g(), g());
    }

    @cs1("none")
    @t6(s6.ERROR)
    @gl
    public final Cfor<T> z3(int i, Action action) {
        return C3(i, false, false, action);
    }

    @cs1("none")
    @t6(s6.FULL)
    @gl
    public final Cfor<T> z4(Predicate<? super Throwable> predicate) {
        return x4(Long.MAX_VALUE, predicate);
    }

    @b41
    @t6(s6.UNBOUNDED_IN)
    @cs1("none")
    @gl
    public final <R> Cfor<R> z5(@b41 Function<? super T, ? extends MaybeSource<? extends R>> function) {
        Cif.m29468else(function, "mapper is null");
        return jp1.h(new io.reactivex.internal.operators.mixed.Celse(this, function, true));
    }

    @cs1("none")
    @t6(s6.SPECIAL)
    @gl
    public final <R> R z6(Function<? super Cfor<T>, R> function) {
        try {
            return (R) ((Function) Cif.m29468else(function, "converter is null")).apply(this);
        } catch (Throwable th) {
            t80.m7781if(th);
            throw Ccase.m29712case(th);
        }
    }

    @cs1("none")
    @t6(s6.UNBOUNDED_IN)
    @gl
    public final Disposable subscribe(Consumer<? super T> consumer) {
        return subscribe(consumer, Cdo.f25277case, Cdo.f25282for, u.Cthis.INSTANCE);
    }

    @cs1("none")
    @t6(s6.UNBOUNDED_IN)
    @gl
    public final Disposable subscribe(Consumer<? super T> consumer, Consumer<? super Throwable> consumer2) {
        return subscribe(consumer, consumer2, Cdo.f25282for, u.Cthis.INSTANCE);
    }

    @cs1("none")
    @t6(s6.FULL)
    @gl
    public final io.reactivex.subscribers.Cdo<T> test(long j) {
        io.reactivex.subscribers.Cdo<T> cdo = new io.reactivex.subscribers.Cdo<>(j);
        m5(cdo);
        return cdo;
    }

    @cs1("none")
    @t6(s6.UNBOUNDED_IN)
    @gl
    public final Disposable subscribe(Consumer<? super T> consumer, Consumer<? super Throwable> consumer2, Action action) {
        return subscribe(consumer, consumer2, action, u.Cthis.INSTANCE);
    }

    @b41
    @t6(s6.SPECIAL)
    @cs1("none")
    @gl
    public final Disposable subscribe(Consumer<? super T> consumer, Consumer<? super Throwable> consumer2, Action action, Consumer<? super Subscription> consumer3) {
        Cif.m29468else(consumer, "onNext is null");
        Cif.m29468else(consumer2, "onError is null");
        Cif.m29468else(action, "onComplete is null");
        Cif.m29468else(consumer3, "onSubscribe is null");
        as0 as0Var = new as0(consumer, consumer2, action, consumer3);
        m5(as0Var);
        return as0Var;
    }

    @cs1("none")
    @t6(s6.FULL)
    @gl
    public final io.reactivex.subscribers.Cdo<T> test(long j, boolean z) {
        io.reactivex.subscribers.Cdo<T> cdo = new io.reactivex.subscribers.Cdo<>(j);
        if (z) {
            cdo.cancel();
        }
        m5(cdo);
        return cdo;
    }

    @Override // org.reactivestreams.Publisher
    @cs1("none")
    @t6(s6.SPECIAL)
    public final void subscribe(Subscriber<? super T> subscriber) {
        if (subscriber instanceof FlowableSubscriber) {
            m5((FlowableSubscriber) subscriber);
        } else {
            Cif.m29468else(subscriber, "s is null");
            m5(new c22(subscriber));
        }
    }
}
