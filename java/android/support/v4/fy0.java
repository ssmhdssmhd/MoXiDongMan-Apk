package android.support.v4;

import io.reactivex.Cfor;
import io.reactivex.CompletableSource;
import io.reactivex.Ctry;
import io.reactivex.MaybeConverter;
import io.reactivex.MaybeObserver;
import io.reactivex.MaybeOnSubscribe;
import io.reactivex.MaybeOperator;
import io.reactivex.MaybeSource;
import io.reactivex.MaybeTransformer;
import io.reactivex.ObservableSource;
import io.reactivex.SingleSource;
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
import io.reactivex.functions.Predicate;
import io.reactivex.internal.functions.Cdo;
import io.reactivex.internal.functions.Cif;
import io.reactivex.internal.fuseable.FuseToFlowable;
import io.reactivex.internal.fuseable.FuseToObservable;
import io.reactivex.internal.operators.maybe.Cabstract;
import io.reactivex.internal.operators.maybe.Cbreak;
import io.reactivex.internal.operators.maybe.Ccase;
import io.reactivex.internal.operators.maybe.Ccatch;
import io.reactivex.internal.operators.maybe.Cclass;
import io.reactivex.internal.operators.maybe.Ccontinue;
import io.reactivex.internal.operators.maybe.Cdefault;
import io.reactivex.internal.operators.maybe.Celse;
import io.reactivex.internal.operators.maybe.Cextends;
import io.reactivex.internal.operators.maybe.Cfinal;
import io.reactivex.internal.operators.maybe.Cfinally;
import io.reactivex.internal.operators.maybe.Cgoto;
import io.reactivex.internal.operators.maybe.Cimplements;
import io.reactivex.internal.operators.maybe.Cimport;
import io.reactivex.internal.operators.maybe.Cinterface;
import io.reactivex.internal.operators.maybe.Cnative;
import io.reactivex.internal.operators.maybe.Cnew;
import io.reactivex.internal.operators.maybe.Cpackage;
import io.reactivex.internal.operators.maybe.Cprivate;
import io.reactivex.internal.operators.maybe.Cprotected;
import io.reactivex.internal.operators.maybe.Cpublic;
import io.reactivex.internal.operators.maybe.Cstatic;
import io.reactivex.internal.operators.maybe.Cstrictfp;
import io.reactivex.internal.operators.maybe.Csuper;
import io.reactivex.internal.operators.maybe.Cswitch;
import io.reactivex.internal.operators.maybe.Csynchronized;
import io.reactivex.internal.operators.maybe.Cthis;
import io.reactivex.internal.operators.maybe.Cthrow;
import io.reactivex.internal.operators.maybe.Cthrows;
import io.reactivex.internal.operators.maybe.Cvolatile;
import io.reactivex.internal.operators.maybe.Cwhile;
import io.reactivex.internal.operators.maybe.MaybeMergeArray;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import org.reactivestreams.Publisher;

/* loaded from: classes.dex */
public abstract class fy0<T> implements MaybeSource<T> {
    @b41
    @cs1("none")
    @gl
    public static <T> fy0<T> A(SingleSource<T> singleSource) {
        Cif.m29468else(singleSource, "singleSource is null");
        return jp1.e(new Cinterface(singleSource));
    }

    @b41
    @cs1("none")
    @gl
    public static <T> fy0<T> E(T t) {
        Cif.m29468else(t, "item is null");
        return jp1.e(new my0(t));
    }

    @b41
    @cs1("none")
    @gl
    public static <T> fy0<T> I(MaybeSource<? extends MaybeSource<? extends T>> maybeSource) {
        Cif.m29468else(maybeSource, "source is null");
        return jp1.e(new Cprivate(maybeSource, Cdo.m29416catch()));
    }

    @b41
    @t6(s6.FULL)
    @cs1("none")
    @gl
    public static <T> Cfor<T> J(MaybeSource<? extends T> maybeSource, MaybeSource<? extends T> maybeSource2) {
        Cif.m29468else(maybeSource, "source1 is null");
        Cif.m29468else(maybeSource2, "source2 is null");
        return P(maybeSource, maybeSource2);
    }

    @b41
    @t6(s6.FULL)
    @cs1("none")
    @gl
    public static <T> Cfor<T> K(MaybeSource<? extends T> maybeSource, MaybeSource<? extends T> maybeSource2, MaybeSource<? extends T> maybeSource3) {
        Cif.m29468else(maybeSource, "source1 is null");
        Cif.m29468else(maybeSource2, "source2 is null");
        Cif.m29468else(maybeSource3, "source3 is null");
        return P(maybeSource, maybeSource2, maybeSource3);
    }

    @cs1(cs1.G5)
    @gl
    public static fy0<Long> K0(long j, TimeUnit timeUnit) {
        return L0(j, timeUnit, io.reactivex.schedulers.Cdo.m29767do());
    }

    @b41
    @t6(s6.FULL)
    @cs1("none")
    @gl
    public static <T> Cfor<T> L(MaybeSource<? extends T> maybeSource, MaybeSource<? extends T> maybeSource2, MaybeSource<? extends T> maybeSource3, MaybeSource<? extends T> maybeSource4) {
        Cif.m29468else(maybeSource, "source1 is null");
        Cif.m29468else(maybeSource2, "source2 is null");
        Cif.m29468else(maybeSource3, "source3 is null");
        Cif.m29468else(maybeSource4, "source4 is null");
        return P(maybeSource, maybeSource2, maybeSource3, maybeSource4);
    }

    @b41
    @cs1(cs1.F5)
    @gl
    public static fy0<Long> L0(long j, TimeUnit timeUnit, Ctry ctry) {
        Cif.m29468else(timeUnit, "unit is null");
        Cif.m29468else(ctry, "scheduler is null");
        return jp1.e(new io.reactivex.internal.operators.maybe.o(Math.max(0L, j), timeUnit, ctry));
    }

    @cs1("none")
    @t6(s6.FULL)
    @gl
    public static <T> Cfor<T> M(Iterable<? extends MaybeSource<? extends T>> iterable) {
        return N(Cfor.f2(iterable));
    }

    @cs1("none")
    @t6(s6.FULL)
    @gl
    public static <T> Cfor<T> N(Publisher<? extends MaybeSource<? extends T>> publisher) {
        return O(publisher, Integer.MAX_VALUE);
    }

    @b41
    @t6(s6.FULL)
    @cs1("none")
    @gl
    public static <T> Cfor<T> O(Publisher<? extends MaybeSource<? extends T>> publisher, int i) {
        Cif.m29468else(publisher, "source is null");
        Cif.m29470goto(i, "maxConcurrency");
        return jp1.h(new zc0(publisher, io.reactivex.internal.operators.maybe.r.instance(), false, i, 1));
    }

    @b41
    @t6(s6.FULL)
    @cs1("none")
    @gl
    public static <T> Cfor<T> P(MaybeSource<? extends T>... maybeSourceArr) {
        Cif.m29468else(maybeSourceArr, "sources is null");
        return maybeSourceArr.length == 0 ? Cfor.s1() : maybeSourceArr.length == 1 ? jp1.h(new io.reactivex.internal.operators.maybe.p(maybeSourceArr[0])) : jp1.h(new MaybeMergeArray(maybeSourceArr));
    }

    @cs1("none")
    @t6(s6.FULL)
    @gl
    public static <T> Cfor<T> Q(MaybeSource<? extends T>... maybeSourceArr) {
        return maybeSourceArr.length == 0 ? Cfor.s1() : Cfor.Z1(maybeSourceArr).J1(io.reactivex.internal.operators.maybe.r.instance(), true, maybeSourceArr.length);
    }

    @b41
    @t6(s6.FULL)
    @cs1("none")
    @gl
    public static <T> Cfor<T> R(MaybeSource<? extends T> maybeSource, MaybeSource<? extends T> maybeSource2) {
        Cif.m29468else(maybeSource, "source1 is null");
        Cif.m29468else(maybeSource2, "source2 is null");
        return Q(maybeSource, maybeSource2);
    }

    @b41
    @cs1("none")
    @gl
    public static <T> fy0<T> R0(MaybeSource<T> maybeSource) {
        if (maybeSource instanceof fy0) {
            throw new IllegalArgumentException("unsafeCreate(Maybe) should be upgraded");
        }
        Cif.m29468else(maybeSource, "onSubscribe is null");
        return jp1.e(new io.reactivex.internal.operators.maybe.t(maybeSource));
    }

    @b41
    @t6(s6.FULL)
    @cs1("none")
    @gl
    public static <T> Cfor<T> S(MaybeSource<? extends T> maybeSource, MaybeSource<? extends T> maybeSource2, MaybeSource<? extends T> maybeSource3) {
        Cif.m29468else(maybeSource, "source1 is null");
        Cif.m29468else(maybeSource2, "source2 is null");
        Cif.m29468else(maybeSource3, "source3 is null");
        return Q(maybeSource, maybeSource2, maybeSource3);
    }

    @b41
    @t6(s6.FULL)
    @cs1("none")
    @gl
    public static <T> Cfor<T> T(MaybeSource<? extends T> maybeSource, MaybeSource<? extends T> maybeSource2, MaybeSource<? extends T> maybeSource3, MaybeSource<? extends T> maybeSource4) {
        Cif.m29468else(maybeSource, "source1 is null");
        Cif.m29468else(maybeSource2, "source2 is null");
        Cif.m29468else(maybeSource3, "source3 is null");
        Cif.m29468else(maybeSource4, "source4 is null");
        return Q(maybeSource, maybeSource2, maybeSource3, maybeSource4);
    }

    @cs1("none")
    @gl
    public static <T, D> fy0<T> T0(Callable<? extends D> callable, Function<? super D, ? extends MaybeSource<? extends T>> function, Consumer<? super D> consumer) {
        return U0(callable, function, consumer, true);
    }

    @cs1("none")
    @t6(s6.FULL)
    @gl
    public static <T> Cfor<T> U(Iterable<? extends MaybeSource<? extends T>> iterable) {
        return Cfor.f2(iterable).I1(io.reactivex.internal.operators.maybe.r.instance(), true);
    }

    @b41
    @cs1("none")
    @gl
    public static <T, D> fy0<T> U0(Callable<? extends D> callable, Function<? super D, ? extends MaybeSource<? extends T>> function, Consumer<? super D> consumer, boolean z) {
        Cif.m29468else(callable, "resourceSupplier is null");
        Cif.m29468else(function, "sourceSupplier is null");
        Cif.m29468else(consumer, "disposer is null");
        return jp1.e(new io.reactivex.internal.operators.maybe.v(callable, function, consumer, z));
    }

    @cs1("none")
    @t6(s6.FULL)
    @gl
    public static <T> Cfor<T> V(Publisher<? extends MaybeSource<? extends T>> publisher) {
        return W(publisher, Integer.MAX_VALUE);
    }

    @b41
    @cs1("none")
    @gl
    public static <T> fy0<T> V0(MaybeSource<T> maybeSource) {
        if (maybeSource instanceof fy0) {
            return jp1.e((fy0) maybeSource);
        }
        Cif.m29468else(maybeSource, "onSubscribe is null");
        return jp1.e(new io.reactivex.internal.operators.maybe.t(maybeSource));
    }

    @b41
    @t6(s6.FULL)
    @cs1("none")
    @gl
    public static <T> Cfor<T> W(Publisher<? extends MaybeSource<? extends T>> publisher, int i) {
        Cif.m29468else(publisher, "source is null");
        Cif.m29470goto(i, "maxConcurrency");
        return jp1.h(new zc0(publisher, io.reactivex.internal.operators.maybe.r.instance(), true, i, 1));
    }

    @b41
    @cs1("none")
    @gl
    public static <T1, T2, T3, T4, T5, T6, T7, T8, T9, R> fy0<R> W0(MaybeSource<? extends T1> maybeSource, MaybeSource<? extends T2> maybeSource2, MaybeSource<? extends T3> maybeSource3, MaybeSource<? extends T4> maybeSource4, MaybeSource<? extends T5> maybeSource5, MaybeSource<? extends T6> maybeSource6, MaybeSource<? extends T7> maybeSource7, MaybeSource<? extends T8> maybeSource8, MaybeSource<? extends T9> maybeSource9, Function9<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? super T8, ? super T9, ? extends R> function9) {
        Cif.m29468else(maybeSource, "source1 is null");
        Cif.m29468else(maybeSource2, "source2 is null");
        Cif.m29468else(maybeSource3, "source3 is null");
        Cif.m29468else(maybeSource4, "source4 is null");
        Cif.m29468else(maybeSource5, "source5 is null");
        Cif.m29468else(maybeSource6, "source6 is null");
        Cif.m29468else(maybeSource7, "source7 is null");
        Cif.m29468else(maybeSource8, "source8 is null");
        Cif.m29468else(maybeSource9, "source9 is null");
        return f1(Cdo.m29419continue(function9), maybeSource, maybeSource2, maybeSource3, maybeSource4, maybeSource5, maybeSource6, maybeSource7, maybeSource8, maybeSource9);
    }

    @b41
    @cs1("none")
    @gl
    public static <T1, T2, T3, T4, T5, T6, T7, T8, R> fy0<R> X0(MaybeSource<? extends T1> maybeSource, MaybeSource<? extends T2> maybeSource2, MaybeSource<? extends T3> maybeSource3, MaybeSource<? extends T4> maybeSource4, MaybeSource<? extends T5> maybeSource5, MaybeSource<? extends T6> maybeSource6, MaybeSource<? extends T7> maybeSource7, MaybeSource<? extends T8> maybeSource8, Function8<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? super T8, ? extends R> function8) {
        Cif.m29468else(maybeSource, "source1 is null");
        Cif.m29468else(maybeSource2, "source2 is null");
        Cif.m29468else(maybeSource3, "source3 is null");
        Cif.m29468else(maybeSource4, "source4 is null");
        Cif.m29468else(maybeSource5, "source5 is null");
        Cif.m29468else(maybeSource6, "source6 is null");
        Cif.m29468else(maybeSource7, "source7 is null");
        Cif.m29468else(maybeSource8, "source8 is null");
        return f1(Cdo.m29413abstract(function8), maybeSource, maybeSource2, maybeSource3, maybeSource4, maybeSource5, maybeSource6, maybeSource7, maybeSource8);
    }

    @cs1("none")
    @gl
    public static <T> fy0<T> Y() {
        return jp1.e(oy0.f4805do);
    }

    @b41
    @cs1("none")
    @gl
    public static <T1, T2, T3, T4, T5, T6, T7, R> fy0<R> Y0(MaybeSource<? extends T1> maybeSource, MaybeSource<? extends T2> maybeSource2, MaybeSource<? extends T3> maybeSource3, MaybeSource<? extends T4> maybeSource4, MaybeSource<? extends T5> maybeSource5, MaybeSource<? extends T6> maybeSource6, MaybeSource<? extends T7> maybeSource7, Function7<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? extends R> function7) {
        Cif.m29468else(maybeSource, "source1 is null");
        Cif.m29468else(maybeSource2, "source2 is null");
        Cif.m29468else(maybeSource3, "source3 is null");
        Cif.m29468else(maybeSource4, "source4 is null");
        Cif.m29468else(maybeSource5, "source5 is null");
        Cif.m29468else(maybeSource6, "source6 is null");
        Cif.m29468else(maybeSource7, "source7 is null");
        return f1(Cdo.m29434private(function7), maybeSource, maybeSource2, maybeSource3, maybeSource4, maybeSource5, maybeSource6, maybeSource7);
    }

    @b41
    @cs1("none")
    @gl
    public static <T1, T2, T3, T4, T5, T6, R> fy0<R> Z0(MaybeSource<? extends T1> maybeSource, MaybeSource<? extends T2> maybeSource2, MaybeSource<? extends T3> maybeSource3, MaybeSource<? extends T4> maybeSource4, MaybeSource<? extends T5> maybeSource5, MaybeSource<? extends T6> maybeSource6, Function6<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? extends R> function6) {
        Cif.m29468else(maybeSource, "source1 is null");
        Cif.m29468else(maybeSource2, "source2 is null");
        Cif.m29468else(maybeSource3, "source3 is null");
        Cif.m29468else(maybeSource4, "source4 is null");
        Cif.m29468else(maybeSource5, "source5 is null");
        Cif.m29468else(maybeSource6, "source6 is null");
        return f1(Cdo.m29433package(function6), maybeSource, maybeSource2, maybeSource3, maybeSource4, maybeSource5, maybeSource6);
    }

    @b41
    @cs1("none")
    @gl
    public static <T1, T2, T3, T4, T5, R> fy0<R> a1(MaybeSource<? extends T1> maybeSource, MaybeSource<? extends T2> maybeSource2, MaybeSource<? extends T3> maybeSource3, MaybeSource<? extends T4> maybeSource4, MaybeSource<? extends T5> maybeSource5, Function5<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? extends R> function5) {
        Cif.m29468else(maybeSource, "source1 is null");
        Cif.m29468else(maybeSource2, "source2 is null");
        Cif.m29468else(maybeSource3, "source3 is null");
        Cif.m29468else(maybeSource4, "source4 is null");
        Cif.m29468else(maybeSource5, "source5 is null");
        return f1(Cdo.m29425finally(function5), maybeSource, maybeSource2, maybeSource3, maybeSource4, maybeSource5);
    }

    @b41
    @cs1("none")
    @gl
    public static <T1, T2, T3, T4, R> fy0<R> b1(MaybeSource<? extends T1> maybeSource, MaybeSource<? extends T2> maybeSource2, MaybeSource<? extends T3> maybeSource3, MaybeSource<? extends T4> maybeSource4, Function4<? super T1, ? super T2, ? super T3, ? super T4, ? extends R> function4) {
        Cif.m29468else(maybeSource, "source1 is null");
        Cif.m29468else(maybeSource2, "source2 is null");
        Cif.m29468else(maybeSource3, "source3 is null");
        Cif.m29468else(maybeSource4, "source4 is null");
        return f1(Cdo.m29423extends(function4), maybeSource, maybeSource2, maybeSource3, maybeSource4);
    }

    @b41
    @t6(s6.FULL)
    @cs1("none")
    @gl
    /* renamed from: break, reason: not valid java name */
    public static <T> Cfor<T> m2449break(MaybeSource<? extends T> maybeSource, MaybeSource<? extends T> maybeSource2) {
        Cif.m29468else(maybeSource, "source1 is null");
        Cif.m29468else(maybeSource2, "source2 is null");
        return m2464throw(maybeSource, maybeSource2);
    }

    @b41
    @cs1("none")
    @gl
    public static <T1, T2, T3, R> fy0<R> c1(MaybeSource<? extends T1> maybeSource, MaybeSource<? extends T2> maybeSource2, MaybeSource<? extends T3> maybeSource3, Function3<? super T1, ? super T2, ? super T3, ? extends R> function3) {
        Cif.m29468else(maybeSource, "source1 is null");
        Cif.m29468else(maybeSource2, "source2 is null");
        Cif.m29468else(maybeSource3, "source3 is null");
        return f1(Cdo.m29420default(function3), maybeSource, maybeSource2, maybeSource3);
    }

    @b41
    @t6(s6.FULL)
    @cs1("none")
    @gl
    /* renamed from: catch, reason: not valid java name */
    public static <T> Cfor<T> m2450catch(MaybeSource<? extends T> maybeSource, MaybeSource<? extends T> maybeSource2, MaybeSource<? extends T> maybeSource3) {
        Cif.m29468else(maybeSource, "source1 is null");
        Cif.m29468else(maybeSource2, "source2 is null");
        Cif.m29468else(maybeSource3, "source3 is null");
        return m2464throw(maybeSource, maybeSource2, maybeSource3);
    }

    @b41
    @t6(s6.FULL)
    @cs1("none")
    @gl
    /* renamed from: class, reason: not valid java name */
    public static <T> Cfor<T> m2451class(MaybeSource<? extends T> maybeSource, MaybeSource<? extends T> maybeSource2, MaybeSource<? extends T> maybeSource3, MaybeSource<? extends T> maybeSource4) {
        Cif.m29468else(maybeSource, "source1 is null");
        Cif.m29468else(maybeSource2, "source2 is null");
        Cif.m29468else(maybeSource3, "source3 is null");
        Cif.m29468else(maybeSource4, "source4 is null");
        return m2464throw(maybeSource, maybeSource2, maybeSource3, maybeSource4);
    }

    @b41
    @t6(s6.FULL)
    @cs1("none")
    @gl
    /* renamed from: const, reason: not valid java name */
    public static <T> Cfor<T> m2452const(Iterable<? extends MaybeSource<? extends T>> iterable) {
        Cif.m29468else(iterable, "sources is null");
        return jp1.h(new Ccase(iterable));
    }

    @b41
    @cs1("none")
    @gl
    public static <T1, T2, R> fy0<R> d1(MaybeSource<? extends T1> maybeSource, MaybeSource<? extends T2> maybeSource2, BiFunction<? super T1, ? super T2, ? extends R> biFunction) {
        Cif.m29468else(maybeSource, "source1 is null");
        Cif.m29468else(maybeSource2, "source2 is null");
        return f1(Cdo.m29443throws(biFunction), maybeSource, maybeSource2);
    }

    @b41
    @cs1("none")
    @gl
    /* renamed from: do, reason: not valid java name */
    public static <T> fy0<T> m2453do(Iterable<? extends MaybeSource<? extends T>> iterable) {
        Cif.m29468else(iterable, "sources is null");
        return jp1.e(new io.reactivex.internal.operators.maybe.Cif(null, iterable));
    }

    @b41
    @cs1("none")
    @gl
    public static <T, R> fy0<R> e1(Iterable<? extends MaybeSource<? extends T>> iterable, Function<? super Object[], ? extends R> function) {
        Cif.m29468else(function, "zipper is null");
        Cif.m29468else(iterable, "sources is null");
        return jp1.e(new io.reactivex.internal.operators.maybe.x(iterable, function));
    }

    @b41
    @cs1("none")
    @gl
    public static <T, R> fy0<R> f1(Function<? super Object[], ? extends R> function, MaybeSource<? extends T>... maybeSourceArr) {
        Cif.m29468else(maybeSourceArr, "sources is null");
        if (maybeSourceArr.length == 0) {
            return g();
        }
        Cif.m29468else(function, "zipper is null");
        return jp1.e(new io.reactivex.internal.operators.maybe.w(maybeSourceArr, function));
    }

    @cs1("none")
    @t6(s6.FULL)
    @gl
    /* renamed from: final, reason: not valid java name */
    public static <T> Cfor<T> m2454final(Publisher<? extends MaybeSource<? extends T>> publisher) {
        return m2463super(publisher, 2);
    }

    @b41
    @cs1("none")
    @gl
    /* renamed from: finally, reason: not valid java name */
    public static <T> fy0<T> m2455finally(MaybeOnSubscribe<T> maybeOnSubscribe) {
        Cif.m29468else(maybeOnSubscribe, "onSubscribe is null");
        return jp1.e(new Cthis(maybeOnSubscribe));
    }

    @cs1("none")
    @gl
    public static <T> fy0<T> g() {
        return jp1.e(iy0.f2934do);
    }

    @b41
    @cs1("none")
    @gl
    public static <T> fy0<T> h(Throwable th) {
        Cif.m29468else(th, "exception is null");
        return jp1.e(new jy0(th));
    }

    @b41
    @cs1("none")
    @gl
    public static <T> fy0<T> i(Callable<? extends Throwable> callable) {
        Cif.m29468else(callable, "errorSupplier is null");
        return jp1.e(new ky0(callable));
    }

    @cs1("none")
    @gl
    /* renamed from: if, reason: not valid java name */
    public static <T> fy0<T> m2456if(MaybeSource<? extends T>... maybeSourceArr) {
        return maybeSourceArr.length == 0 ? g() : maybeSourceArr.length == 1 ? V0(maybeSourceArr[0]) : jp1.e(new io.reactivex.internal.operators.maybe.Cif(maybeSourceArr, null));
    }

    @cs1("none")
    @t6(s6.FULL)
    @gl
    /* renamed from: import, reason: not valid java name */
    public static <T> Cfor<T> m2457import(MaybeSource<? extends T>... maybeSourceArr) {
        return Cfor.Z1(maybeSourceArr).i0(io.reactivex.internal.operators.maybe.r.instance());
    }

    @b41
    @t6(s6.FULL)
    @cs1("none")
    @gl
    /* renamed from: native, reason: not valid java name */
    public static <T> Cfor<T> m2458native(Iterable<? extends MaybeSource<? extends T>> iterable) {
        Cif.m29468else(iterable, "sources is null");
        return Cfor.f2(iterable).g0(io.reactivex.internal.operators.maybe.r.instance());
    }

    @b41
    @cs1("none")
    @gl
    /* renamed from: private, reason: not valid java name */
    public static <T> fy0<T> m2459private(Callable<? extends MaybeSource<? extends T>> callable) {
        Cif.m29468else(callable, "maybeSupplier is null");
        return jp1.e(new hy0(callable));
    }

    @cs1("none")
    @t6(s6.FULL)
    @gl
    /* renamed from: public, reason: not valid java name */
    public static <T> Cfor<T> m2460public(Publisher<? extends MaybeSource<? extends T>> publisher) {
        return Cfor.g2(publisher).g0(io.reactivex.internal.operators.maybe.r.instance());
    }

    @cs1("none")
    @t6(s6.FULL)
    @gl
    /* renamed from: return, reason: not valid java name */
    public static <T> Cfor<T> m2461return(Iterable<? extends MaybeSource<? extends T>> iterable) {
        return Cfor.f2(iterable).i0(io.reactivex.internal.operators.maybe.r.instance());
    }

    @cs1("none")
    @t6(s6.FULL)
    @gl
    /* renamed from: static, reason: not valid java name */
    public static <T> Cfor<T> m2462static(Publisher<? extends MaybeSource<? extends T>> publisher) {
        return Cfor.g2(publisher).i0(io.reactivex.internal.operators.maybe.r.instance());
    }

    @b41
    @t6(s6.FULL)
    @cs1("none")
    @gl
    /* renamed from: super, reason: not valid java name */
    public static <T> Cfor<T> m2463super(Publisher<? extends MaybeSource<? extends T>> publisher, int i) {
        Cif.m29468else(publisher, "sources is null");
        Cif.m29470goto(i, "prefetch");
        return jp1.h(new vc0(publisher, io.reactivex.internal.operators.maybe.r.instance(), i, io.reactivex.internal.util.Ctry.IMMEDIATE));
    }

    @b41
    @t6(s6.FULL)
    @cs1("none")
    @gl
    /* renamed from: throw, reason: not valid java name */
    public static <T> Cfor<T> m2464throw(MaybeSource<? extends T>... maybeSourceArr) {
        Cif.m29468else(maybeSourceArr, "sources is null");
        return maybeSourceArr.length == 0 ? Cfor.s1() : maybeSourceArr.length == 1 ? jp1.h(new io.reactivex.internal.operators.maybe.p(maybeSourceArr[0])) : jp1.h(new Cnew(maybeSourceArr));
    }

    @b41
    @cs1("none")
    @gl
    public static <T> fy0<T> u(Action action) {
        Cif.m29468else(action, "run is null");
        return jp1.e(new Cabstract(action));
    }

    @cs1("none")
    @gl
    public static <T> jz1<Boolean> u0(MaybeSource<? extends T> maybeSource, MaybeSource<? extends T> maybeSource2) {
        return v0(maybeSource, maybeSource2, Cif.m29472new());
    }

    @b41
    @cs1("none")
    @gl
    public static <T> fy0<T> v(@b41 Callable<? extends T> callable) {
        Cif.m29468else(callable, "callable is null");
        return jp1.e(new Ccontinue(callable));
    }

    @b41
    @cs1("none")
    @gl
    public static <T> jz1<Boolean> v0(MaybeSource<? extends T> maybeSource, MaybeSource<? extends T> maybeSource2, BiPredicate<? super T, ? super T> biPredicate) {
        Cif.m29468else(maybeSource, "source1 is null");
        Cif.m29468else(maybeSource2, "source2 is null");
        Cif.m29468else(biPredicate, "isEqual is null");
        return jp1.g(new Cnative(maybeSource, maybeSource2, biPredicate));
    }

    @b41
    @cs1("none")
    @gl
    public static <T> fy0<T> w(CompletableSource completableSource) {
        Cif.m29468else(completableSource, "completableSource is null");
        return jp1.e(new Cstrictfp(completableSource));
    }

    @cs1("none")
    @t6(s6.FULL)
    @gl
    /* renamed from: while, reason: not valid java name */
    public static <T> Cfor<T> m2465while(MaybeSource<? extends T>... maybeSourceArr) {
        return maybeSourceArr.length == 0 ? Cfor.s1() : maybeSourceArr.length == 1 ? jp1.h(new io.reactivex.internal.operators.maybe.p(maybeSourceArr[0])) : jp1.h(new io.reactivex.internal.operators.maybe.Ctry(maybeSourceArr));
    }

    @b41
    @cs1("none")
    @gl
    public static <T> fy0<T> x(Future<? extends T> future) {
        Cif.m29468else(future, "future is null");
        return jp1.e(new ly0(future, 0L, null));
    }

    @b41
    @cs1("none")
    @gl
    public static <T> fy0<T> y(Future<? extends T> future, long j, TimeUnit timeUnit) {
        Cif.m29468else(future, "future is null");
        Cif.m29468else(timeUnit, "unit is null");
        return jp1.e(new ly0(future, j, timeUnit));
    }

    @b41
    @cs1("none")
    @gl
    public static <T> fy0<T> z(Runnable runnable) {
        Cif.m29468else(runnable, "run is null");
        return jp1.e(new Cvolatile(runnable));
    }

    @b41
    @cs1("none")
    @gl
    public final <U> fy0<T> A0(MaybeSource<U> maybeSource) {
        Cif.m29468else(maybeSource, "other is null");
        return jp1.e(new io.reactivex.internal.operators.maybe.k(this, maybeSource));
    }

    @cs1("none")
    @gl
    public final fy0<T> B() {
        return jp1.e(new Cprotected(this));
    }

    @b41
    @t6(s6.UNBOUNDED_IN)
    @cs1("none")
    @gl
    public final <U> fy0<T> B0(Publisher<U> publisher) {
        Cif.m29468else(publisher, "other is null");
        return jp1.e(new io.reactivex.internal.operators.maybe.l(this, publisher));
    }

    @cs1("none")
    @gl
    public final np C() {
        return jp1.b(new Cimplements(this));
    }

    @cs1(cs1.G5)
    @gl
    public final fy0<T> C0(long j, TimeUnit timeUnit) {
        return E0(j, timeUnit, io.reactivex.schedulers.Cdo.m29767do());
    }

    @cs1("none")
    @gl
    public final jz1<Boolean> D() {
        return jp1.g(new Csynchronized(this));
    }

    @b41
    @cs1(cs1.G5)
    @gl
    public final fy0<T> D0(long j, TimeUnit timeUnit, MaybeSource<? extends T> maybeSource) {
        Cif.m29468else(maybeSource, "fallback is null");
        return F0(j, timeUnit, io.reactivex.schedulers.Cdo.m29767do(), maybeSource);
    }

    @cs1(cs1.F5)
    @gl
    public final fy0<T> E0(long j, TimeUnit timeUnit, Ctry ctry) {
        return G0(L0(j, timeUnit, ctry));
    }

    @b41
    @cs1("none")
    @gl
    public final <R> fy0<R> F(MaybeOperator<? extends R, ? super T> maybeOperator) {
        Cif.m29468else(maybeOperator, "lift is null");
        return jp1.e(new io.reactivex.internal.operators.maybe.a(this, maybeOperator));
    }

    @b41
    @cs1(cs1.F5)
    @gl
    public final fy0<T> F0(long j, TimeUnit timeUnit, Ctry ctry, MaybeSource<? extends T> maybeSource) {
        Cif.m29468else(maybeSource, "fallback is null");
        return H0(L0(j, timeUnit, ctry), maybeSource);
    }

    @b41
    @cs1("none")
    @gl
    public final <R> fy0<R> G(Function<? super T, ? extends R> function) {
        Cif.m29468else(function, "mapper is null");
        return jp1.e(new io.reactivex.internal.operators.maybe.b(this, function));
    }

    @b41
    @cs1("none")
    @gl
    public final <U> fy0<T> G0(MaybeSource<U> maybeSource) {
        Cif.m29468else(maybeSource, "timeoutIndicator is null");
        return jp1.e(new io.reactivex.internal.operators.maybe.m(this, maybeSource, null));
    }

    @cs1("none")
    @f90
    @gl
    public final jz1<t41<T>> H() {
        return jp1.g(new ny0(this));
    }

    @b41
    @cs1("none")
    @gl
    public final <U> fy0<T> H0(MaybeSource<U> maybeSource, MaybeSource<? extends T> maybeSource2) {
        Cif.m29468else(maybeSource, "timeoutIndicator is null");
        Cif.m29468else(maybeSource2, "fallback is null");
        return jp1.e(new io.reactivex.internal.operators.maybe.m(this, maybeSource, maybeSource2));
    }

    @b41
    @t6(s6.UNBOUNDED_IN)
    @cs1("none")
    @gl
    public final <U> fy0<T> I0(Publisher<U> publisher) {
        Cif.m29468else(publisher, "timeoutIndicator is null");
        return jp1.e(new io.reactivex.internal.operators.maybe.n(this, publisher, null));
    }

    @b41
    @t6(s6.UNBOUNDED_IN)
    @cs1("none")
    @gl
    public final <U> fy0<T> J0(Publisher<U> publisher, MaybeSource<? extends T> maybeSource) {
        Cif.m29468else(publisher, "timeoutIndicator is null");
        Cif.m29468else(maybeSource, "fallback is null");
        return jp1.e(new io.reactivex.internal.operators.maybe.n(this, publisher, maybeSource));
    }

    @b41
    @cs1("none")
    @gl
    public final <R> R M0(Function<? super fy0<T>, R> function) {
        try {
            return (R) ((Function) Cif.m29468else(function, "convert is null")).apply(this);
        } catch (Throwable th) {
            t80.m7781if(th);
            throw io.reactivex.internal.util.Ccase.m29712case(th);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @cs1("none")
    @t6(s6.FULL)
    @gl
    public final Cfor<T> N0() {
        return this instanceof FuseToFlowable ? ((FuseToFlowable) this).fuseToFlowable() : jp1.h(new io.reactivex.internal.operators.maybe.p(this));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @cs1("none")
    @gl
    public final io.reactivex.Cnew<T> O0() {
        return this instanceof FuseToObservable ? ((FuseToObservable) this).fuseToObservable() : jp1.i(new io.reactivex.internal.operators.maybe.q(this));
    }

    @cs1("none")
    @gl
    public final jz1<T> P0() {
        return jp1.g(new io.reactivex.internal.operators.maybe.s(this, null));
    }

    @b41
    @cs1("none")
    @gl
    public final jz1<T> Q0(T t) {
        Cif.m29468else(t, "defaultValue is null");
        return jp1.g(new io.reactivex.internal.operators.maybe.s(this, t));
    }

    @b41
    @cs1(cs1.F5)
    @gl
    public final fy0<T> S0(Ctry ctry) {
        Cif.m29468else(ctry, "scheduler is null");
        return jp1.e(new io.reactivex.internal.operators.maybe.u(this, ctry));
    }

    @b41
    @t6(s6.FULL)
    @cs1("none")
    @gl
    public final Cfor<T> X(MaybeSource<? extends T> maybeSource) {
        Cif.m29468else(maybeSource, "other is null");
        return J(this, maybeSource);
    }

    @b41
    @cs1(cs1.F5)
    @gl
    public final fy0<T> Z(Ctry ctry) {
        Cif.m29468else(ctry, "scheduler is null");
        return jp1.e(new io.reactivex.internal.operators.maybe.c(this, ctry));
    }

    @b41
    @cs1("none")
    @gl
    public final fy0<T> a(Action action) {
        Consumer consumerM29427goto = Cdo.m29427goto();
        Consumer consumerM29427goto2 = Cdo.m29427goto();
        Consumer consumerM29427goto3 = Cdo.m29427goto();
        Action action2 = Cdo.f25282for;
        return jp1.e(new io.reactivex.internal.operators.maybe.g(this, consumerM29427goto, consumerM29427goto2, consumerM29427goto3, action2, action2, (Action) Cif.m29468else(action, "onDispose is null")));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @b41
    @cs1("none")
    @gl
    public final <U> fy0<U> a0(Class<U> cls) {
        Cif.m29468else(cls, "clazz is null");
        return j(Cdo.m29417class(cls)).m2473goto(cls);
    }

    @cs1(cs1.G5)
    @gl
    /* renamed from: abstract, reason: not valid java name */
    public final fy0<T> m2466abstract(long j, TimeUnit timeUnit) {
        return m2468continue(j, timeUnit, io.reactivex.schedulers.Cdo.m29767do());
    }

    @b41
    @cs1("none")
    @gl
    public final fy0<T> b(Consumer<? super Throwable> consumer) {
        Consumer consumerM29427goto = Cdo.m29427goto();
        Consumer consumerM29427goto2 = Cdo.m29427goto();
        Consumer consumer2 = (Consumer) Cif.m29468else(consumer, "onError is null");
        Action action = Cdo.f25282for;
        return jp1.e(new io.reactivex.internal.operators.maybe.g(this, consumerM29427goto, consumerM29427goto2, consumer2, action, action, action));
    }

    @cs1("none")
    @gl
    public final fy0<T> b0() {
        return c0(Cdo.m29426for());
    }

    @cs1("none")
    @gl
    public final fy0<T> c(BiConsumer<? super T, ? super Throwable> biConsumer) {
        Cif.m29468else(biConsumer, "onEvent is null");
        return jp1.e(new Cwhile(this, biConsumer));
    }

    @b41
    @cs1("none")
    @gl
    public final fy0<T> c0(Predicate<? super Throwable> predicate) {
        Cif.m29468else(predicate, "predicate is null");
        return jp1.e(new io.reactivex.internal.operators.maybe.d(this, predicate));
    }

    @cs1("none")
    @gl
    /* renamed from: case, reason: not valid java name */
    public final T m2467case(T t) {
        Cif.m29468else(t, "defaultValue is null");
        ma maVar = new ma();
        subscribe(maVar);
        return (T) maVar.m4879for(t);
    }

    @b41
    @cs1(cs1.F5)
    @gl
    /* renamed from: continue, reason: not valid java name */
    public final fy0<T> m2468continue(long j, TimeUnit timeUnit, Ctry ctry) {
        Cif.m29468else(timeUnit, "unit is null");
        Cif.m29468else(ctry, "scheduler is null");
        return jp1.e(new Cbreak(this, Math.max(0L, j), timeUnit, ctry));
    }

    @b41
    @cs1("none")
    @gl
    public final fy0<T> d(Consumer<? super Disposable> consumer) {
        Consumer consumer2 = (Consumer) Cif.m29468else(consumer, "onSubscribe is null");
        Consumer consumerM29427goto = Cdo.m29427goto();
        Consumer consumerM29427goto2 = Cdo.m29427goto();
        Action action = Cdo.f25282for;
        return jp1.e(new io.reactivex.internal.operators.maybe.g(this, consumer2, consumerM29427goto, consumerM29427goto2, action, action, action));
    }

    @b41
    @cs1("none")
    @gl
    public final fy0<T> d0(MaybeSource<? extends T> maybeSource) {
        Cif.m29468else(maybeSource, "next is null");
        return e0(Cdo.m29424final(maybeSource));
    }

    @b41
    @cs1("none")
    @gl
    /* renamed from: default, reason: not valid java name */
    public final jz1<Boolean> m2469default(Object obj) {
        Cif.m29468else(obj, "item is null");
        return jp1.g(new Celse(this, obj));
    }

    @b41
    @cs1("none")
    @gl
    public final fy0<T> e(Consumer<? super T> consumer) {
        Consumer consumerM29427goto = Cdo.m29427goto();
        Consumer consumer2 = (Consumer) Cif.m29468else(consumer, "onSuccess is null");
        Consumer consumerM29427goto2 = Cdo.m29427goto();
        Action action = Cdo.f25282for;
        return jp1.e(new io.reactivex.internal.operators.maybe.g(this, consumerM29427goto, consumer2, consumerM29427goto2, action, action, action));
    }

    @b41
    @cs1("none")
    @gl
    public final fy0<T> e0(Function<? super Throwable, ? extends MaybeSource<? extends T>> function) {
        Cif.m29468else(function, "resumeFunction is null");
        return jp1.e(new io.reactivex.internal.operators.maybe.e(this, function, true));
    }

    @cs1("none")
    @gl
    /* renamed from: else, reason: not valid java name */
    public final fy0<T> m2470else() {
        return jp1.e(new io.reactivex.internal.operators.maybe.Cfor(this));
    }

    @cs1("none")
    @gl
    /* renamed from: extends, reason: not valid java name */
    public final jz1<Long> m2471extends() {
        return jp1.g(new Cgoto(this));
    }

    @b41
    @f90
    @cs1("none")
    @gl
    public final fy0<T> f(Action action) {
        Cif.m29468else(action, "onTerminate is null");
        return jp1.e(new Cimport(this, action));
    }

    @b41
    @cs1("none")
    @gl
    public final fy0<T> f0(Function<? super Throwable, ? extends T> function) {
        Cif.m29468else(function, "valueSupplier is null");
        return jp1.e(new io.reactivex.internal.operators.maybe.f(this, function));
    }

    @b41
    @cs1("none")
    @gl
    /* renamed from: for, reason: not valid java name */
    public final fy0<T> m2472for(MaybeSource<? extends T> maybeSource) {
        Cif.m29468else(maybeSource, "other is null");
        return m2456if(this, maybeSource);
    }

    @b41
    @cs1("none")
    @gl
    public final fy0<T> g0(T t) {
        Cif.m29468else(t, "item is null");
        return f0(Cdo.m29424final(t));
    }

    @b41
    @cs1("none")
    @gl
    public final <U, R> fy0<R> g1(MaybeSource<? extends U> maybeSource, BiFunction<? super T, ? super U, ? extends R> biFunction) {
        Cif.m29468else(maybeSource, "other is null");
        return d1(this, maybeSource, biFunction);
    }

    @b41
    @cs1("none")
    @gl
    /* renamed from: goto, reason: not valid java name */
    public final <U> fy0<U> m2473goto(Class<? extends U> cls) {
        Cif.m29468else(cls, "clazz is null");
        return (fy0<U>) G(Cdo.m29444try(cls));
    }

    @b41
    @cs1("none")
    @gl
    public final fy0<T> h0(MaybeSource<? extends T> maybeSource) {
        Cif.m29468else(maybeSource, "next is null");
        return jp1.e(new io.reactivex.internal.operators.maybe.e(this, Cdo.m29424final(maybeSource), false));
    }

    @cs1("none")
    @gl
    public final fy0<T> i0() {
        return jp1.e(new Cfinal(this));
    }

    @b41
    @cs1("none")
    @gl
    /* renamed from: implements, reason: not valid java name */
    public final fy0<T> m2474implements(Action action) {
        Consumer consumerM29427goto = Cdo.m29427goto();
        Consumer consumerM29427goto2 = Cdo.m29427goto();
        Consumer consumerM29427goto3 = Cdo.m29427goto();
        Action action2 = Cdo.f25282for;
        return jp1.e(new io.reactivex.internal.operators.maybe.g(this, consumerM29427goto, consumerM29427goto2, consumerM29427goto3, action2, (Action) Cif.m29468else(action, "onAfterTerminate is null"), action2));
    }

    @b41
    @cs1("none")
    @gl
    /* renamed from: instanceof, reason: not valid java name */
    public final fy0<T> m2475instanceof(Action action) {
        Cif.m29468else(action, "onFinally is null");
        return jp1.e(new Cthrow(this, action));
    }

    @cs1(cs1.F5)
    @gl
    /* renamed from: interface, reason: not valid java name */
    public final fy0<T> m2476interface(long j, TimeUnit timeUnit, Ctry ctry) {
        return m2479protected(Cfor.u6(j, timeUnit, ctry));
    }

    @b41
    @cs1("none")
    @gl
    public final fy0<T> j(Predicate<? super T> predicate) {
        Cif.m29468else(predicate, "predicate is null");
        return jp1.e(new Cpublic(this, predicate));
    }

    @cs1("none")
    @t6(s6.FULL)
    @gl
    public final Cfor<T> j0() {
        return k0(Long.MAX_VALUE);
    }

    @b41
    @cs1("none")
    @gl
    public final <R> fy0<R> k(Function<? super T, ? extends MaybeSource<? extends R>> function) {
        Cif.m29468else(function, "mapper is null");
        return jp1.e(new Cprivate(this, function));
    }

    @cs1("none")
    @t6(s6.FULL)
    @gl
    public final Cfor<T> k0(long j) {
        return N0().c4(j);
    }

    @b41
    @cs1("none")
    @gl
    public final <U, R> fy0<R> l(Function<? super T, ? extends MaybeSource<? extends U>> function, BiFunction<? super T, ? super U, ? extends R> biFunction) {
        Cif.m29468else(function, "mapper is null");
        Cif.m29468else(biFunction, "resultSelector is null");
        return jp1.e(new Cstatic(this, function, biFunction));
    }

    @cs1("none")
    @t6(s6.FULL)
    @gl
    public final Cfor<T> l0(BooleanSupplier booleanSupplier) {
        return N0().d4(booleanSupplier);
    }

    @b41
    @cs1("none")
    @gl
    public final <R> fy0<R> m(Function<? super T, ? extends MaybeSource<? extends R>> function, Function<? super Throwable, ? extends MaybeSource<? extends R>> function2, Callable<? extends MaybeSource<? extends R>> callable) {
        Cif.m29468else(function, "onSuccessMapper is null");
        Cif.m29468else(function2, "onErrorMapper is null");
        Cif.m29468else(callable, "onCompleteSupplier is null");
        return jp1.e(new Cextends(this, function, function2, callable));
    }

    @cs1("none")
    @t6(s6.FULL)
    @gl
    public final Cfor<T> m0(Function<? super Cfor<Object>, ? extends Publisher<?>> function) {
        return N0().e4(function);
    }

    @b41
    @cs1("none")
    @gl
    public final np n(Function<? super T, ? extends CompletableSource> function) {
        Cif.m29468else(function, "mapper is null");
        return jp1.b(new Cswitch(this, function));
    }

    @cs1("none")
    @gl
    public final fy0<T> n0() {
        return p0(Long.MAX_VALUE, Cdo.m29426for());
    }

    @cs1("none")
    @gl
    /* renamed from: new, reason: not valid java name */
    public final <R> R m2477new(@b41 MaybeConverter<T, ? extends R> maybeConverter) {
        return (R) ((MaybeConverter) Cif.m29468else(maybeConverter, "converter is null")).apply(this);
    }

    @b41
    @cs1("none")
    @gl
    public final <R> io.reactivex.Cnew<R> o(Function<? super T, ? extends ObservableSource<? extends R>> function) {
        Cif.m29468else(function, "mapper is null");
        return jp1.i(new io.reactivex.internal.operators.mixed.Cthis(this, function));
    }

    @cs1("none")
    @gl
    public final fy0<T> o0(long j) {
        return p0(j, Cdo.m29426for());
    }

    @b41
    @t6(s6.FULL)
    @cs1("none")
    @gl
    public final <R> Cfor<R> p(Function<? super T, ? extends Publisher<? extends R>> function) {
        Cif.m29468else(function, "mapper is null");
        return jp1.h(new io.reactivex.internal.operators.mixed.Cbreak(this, function));
    }

    @cs1("none")
    @gl
    public final fy0<T> p0(long j, Predicate<? super Throwable> predicate) {
        return N0().x4(j, predicate).T4();
    }

    @b41
    @cs1("none")
    @gl
    /* renamed from: package, reason: not valid java name */
    public final fy0<T> m2478package(T t) {
        Cif.m29468else(t, "defaultItem is null");
        return y0(E(t));
    }

    @b41
    @t6(s6.UNBOUNDED_IN)
    @cs1("none")
    @gl
    /* renamed from: protected, reason: not valid java name */
    public final <U> fy0<T> m2479protected(Publisher<U> publisher) {
        Cif.m29468else(publisher, "subscriptionIndicator is null");
        return jp1.e(new Cclass(this, publisher));
    }

    @b41
    @cs1("none")
    @gl
    public final <R> jz1<R> q(Function<? super T, ? extends SingleSource<? extends R>> function) {
        Cif.m29468else(function, "mapper is null");
        return jp1.g(new Cfinally(this, function));
    }

    @cs1("none")
    @gl
    public final fy0<T> q0(BiPredicate<? super Integer, ? super Throwable> biPredicate) {
        return N0().y4(biPredicate).T4();
    }

    @b41
    @cs1("none")
    @gl
    public final <R> fy0<R> r(Function<? super T, ? extends SingleSource<? extends R>> function) {
        Cif.m29468else(function, "mapper is null");
        return jp1.e(new Cpackage(this, function));
    }

    @cs1("none")
    @gl
    public final fy0<T> r0(Predicate<? super Throwable> predicate) {
        return p0(Long.MAX_VALUE, predicate);
    }

    @b41
    @t6(s6.FULL)
    @cs1("none")
    @gl
    public final <U> Cfor<U> s(Function<? super T, ? extends Iterable<? extends U>> function) {
        Cif.m29468else(function, "mapper is null");
        return jp1.h(new Cthrows(this, function));
    }

    @b41
    @cs1("none")
    @gl
    public final fy0<T> s0(BooleanSupplier booleanSupplier) {
        Cif.m29468else(booleanSupplier, "stop is null");
        return p0(Long.MAX_VALUE, Cdo.m29437static(booleanSupplier));
    }

    @b41
    @t6(s6.UNBOUNDED_IN)
    @cs1("none")
    @gl
    /* renamed from: strictfp, reason: not valid java name */
    public final <U, V> fy0<T> m2480strictfp(Publisher<U> publisher) {
        Cif.m29468else(publisher, "delayIndicator is null");
        return jp1.e(new Ccatch(this, publisher));
    }

    @cs1("none")
    public final Disposable subscribe() {
        return subscribe(Cdo.m29427goto(), Cdo.f25277case, Cdo.f25282for);
    }

    @cs1("none")
    @gl
    public final <E extends MaybeObserver<? super T>> E subscribeWith(E e) {
        subscribe(e);
        return e;
    }

    @b41
    @cs1("none")
    @gl
    /* renamed from: switch, reason: not valid java name */
    public final <R> fy0<R> m2481switch(Function<? super T, ? extends MaybeSource<? extends R>> function) {
        Cif.m29468else(function, "mapper is null");
        return jp1.e(new Cprivate(this, function));
    }

    @b41
    @cs1("none")
    @gl
    /* renamed from: synchronized, reason: not valid java name */
    public final fy0<T> m2482synchronized(Action action) {
        Consumer consumerM29427goto = Cdo.m29427goto();
        Consumer consumerM29427goto2 = Cdo.m29427goto();
        Consumer consumerM29427goto3 = Cdo.m29427goto();
        Action action2 = (Action) Cif.m29468else(action, "onComplete is null");
        Action action3 = Cdo.f25282for;
        return jp1.e(new io.reactivex.internal.operators.maybe.g(this, consumerM29427goto, consumerM29427goto2, consumerM29427goto3, action2, action3, action3));
    }

    @b41
    @cs1("none")
    @gl
    public final <U> io.reactivex.Cnew<U> t(Function<? super T, ? extends Iterable<? extends U>> function) {
        Cif.m29468else(function, "mapper is null");
        return jp1.i(new Cdefault(this, function));
    }

    @cs1("none")
    @gl
    public final fy0<T> t0(Function<? super Cfor<Throwable>, ? extends Publisher<?>> function) {
        return N0().B4(function).T4();
    }

    @cs1("none")
    @gl
    public final io.reactivex.observers.Cif<T> test() {
        io.reactivex.observers.Cif<T> cif = new io.reactivex.observers.Cif<>();
        subscribe(cif);
        return cif;
    }

    @cs1("none")
    @gl
    /* renamed from: this, reason: not valid java name */
    public final <R> fy0<R> m2483this(MaybeTransformer<? super T, ? extends R> maybeTransformer) {
        return V0(((MaybeTransformer) Cif.m29468else(maybeTransformer, "transformer is null")).apply(this));
    }

    @b41
    @t6(s6.FULL)
    @cs1("none")
    @gl
    /* renamed from: throws, reason: not valid java name */
    public final Cfor<T> m2484throws(MaybeSource<? extends T> maybeSource) {
        Cif.m29468else(maybeSource, "other is null");
        return m2449break(this, maybeSource);
    }

    @b41
    @cs1("none")
    @gl
    /* renamed from: transient, reason: not valid java name */
    public final fy0<T> m2485transient(Consumer<? super T> consumer) {
        Cif.m29468else(consumer, "onAfterSuccess is null");
        return jp1.e(new Csuper(this, consumer));
    }

    @cs1("none")
    @gl
    /* renamed from: try, reason: not valid java name */
    public final T m2486try() {
        ma maVar = new ma();
        subscribe(maVar);
        return (T) maVar.m4880if();
    }

    @cs1(cs1.G5)
    @gl
    /* renamed from: volatile, reason: not valid java name */
    public final fy0<T> m2487volatile(long j, TimeUnit timeUnit) {
        return m2476interface(j, timeUnit, io.reactivex.schedulers.Cdo.m29767do());
    }

    public abstract void w0(MaybeObserver<? super T> maybeObserver);

    @b41
    @cs1(cs1.F5)
    @gl
    public final fy0<T> x0(Ctry ctry) {
        Cif.m29468else(ctry, "scheduler is null");
        return jp1.e(new io.reactivex.internal.operators.maybe.h(this, ctry));
    }

    @b41
    @cs1("none")
    @gl
    public final fy0<T> y0(MaybeSource<? extends T> maybeSource) {
        Cif.m29468else(maybeSource, "other is null");
        return jp1.e(new io.reactivex.internal.operators.maybe.i(this, maybeSource));
    }

    @b41
    @cs1("none")
    @gl
    public final jz1<T> z0(SingleSource<? extends T> singleSource) {
        Cif.m29468else(singleSource, "other is null");
        return jp1.g(new io.reactivex.internal.operators.maybe.j(this, singleSource));
    }

    @cs1("none")
    @gl
    public final Disposable subscribe(Consumer<? super T> consumer) {
        return subscribe(consumer, Cdo.f25277case, Cdo.f25282for);
    }

    @cs1("none")
    @gl
    public final Disposable subscribe(Consumer<? super T> consumer, Consumer<? super Throwable> consumer2) {
        return subscribe(consumer, consumer2, Cdo.f25282for);
    }

    @cs1("none")
    @gl
    public final io.reactivex.observers.Cif<T> test(boolean z) {
        io.reactivex.observers.Cif<T> cif = new io.reactivex.observers.Cif<>();
        if (z) {
            cif.cancel();
        }
        subscribe(cif);
        return cif;
    }

    @b41
    @cs1("none")
    @gl
    public final Disposable subscribe(Consumer<? super T> consumer, Consumer<? super Throwable> consumer2, Action action) {
        Cif.m29468else(consumer, "onSuccess is null");
        Cif.m29468else(consumer2, "onError is null");
        Cif.m29468else(action, "onComplete is null");
        return (Disposable) subscribeWith(new gy0(consumer, consumer2, action));
    }

    @Override // io.reactivex.MaybeSource
    @cs1("none")
    public final void subscribe(MaybeObserver<? super T> maybeObserver) {
        Cif.m29468else(maybeObserver, "observer is null");
        MaybeObserver<? super T> maybeObserverR = jp1.r(this, maybeObserver);
        Cif.m29468else(maybeObserverR, "The RxJavaPlugins.onSubscribe hook returned a null MaybeObserver. Please check the handler provided to RxJavaPlugins.setOnMaybeSubscribe for invalid null returns. Further reading: https://github.com/ReactiveX/RxJava/wiki/Plugins");
        try {
            w0(maybeObserverR);
        } catch (NullPointerException e) {
            throw e;
        } catch (Throwable th) {
            t80.m7781if(th);
            NullPointerException nullPointerException = new NullPointerException("subscribeActual failed");
            nullPointerException.initCause(th);
            throw nullPointerException;
        }
    }
}
