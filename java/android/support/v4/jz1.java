package android.support.v4;

import io.reactivex.Cfor;
import io.reactivex.Cnew;
import io.reactivex.CompletableSource;
import io.reactivex.MaybeSource;
import io.reactivex.ObservableSource;
import io.reactivex.SingleConverter;
import io.reactivex.SingleObserver;
import io.reactivex.SingleOnSubscribe;
import io.reactivex.SingleOperator;
import io.reactivex.SingleSource;
import io.reactivex.SingleTransformer;
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
import io.reactivex.internal.fuseable.FuseToMaybe;
import io.reactivex.internal.fuseable.FuseToObservable;
import io.reactivex.internal.operators.flowable.FlowableConcatMap;
import io.reactivex.internal.operators.observable.Cpublic;
import io.reactivex.internal.operators.single.Cabstract;
import io.reactivex.internal.operators.single.Cbreak;
import io.reactivex.internal.operators.single.Ccase;
import io.reactivex.internal.operators.single.Ccatch;
import io.reactivex.internal.operators.single.Cclass;
import io.reactivex.internal.operators.single.Cconst;
import io.reactivex.internal.operators.single.Ccontinue;
import io.reactivex.internal.operators.single.Cdefault;
import io.reactivex.internal.operators.single.Celse;
import io.reactivex.internal.operators.single.Cextends;
import io.reactivex.internal.operators.single.Cfinal;
import io.reactivex.internal.operators.single.Cfinally;
import io.reactivex.internal.operators.single.Cgoto;
import io.reactivex.internal.operators.single.Cimplements;
import io.reactivex.internal.operators.single.Cimport;
import io.reactivex.internal.operators.single.Cinstanceof;
import io.reactivex.internal.operators.single.Cinterface;
import io.reactivex.internal.operators.single.Cnative;
import io.reactivex.internal.operators.single.Cpackage;
import io.reactivex.internal.operators.single.Cprivate;
import io.reactivex.internal.operators.single.Cprotected;
import io.reactivex.internal.operators.single.Creturn;
import io.reactivex.internal.operators.single.Cstatic;
import io.reactivex.internal.operators.single.Cstrictfp;
import io.reactivex.internal.operators.single.Csuper;
import io.reactivex.internal.operators.single.Cswitch;
import io.reactivex.internal.operators.single.Csynchronized;
import io.reactivex.internal.operators.single.Cthis;
import io.reactivex.internal.operators.single.Cthrow;
import io.reactivex.internal.operators.single.Cthrows;
import io.reactivex.internal.operators.single.Ctransient;
import io.reactivex.internal.operators.single.Cvolatile;
import io.reactivex.internal.operators.single.Cwhile;
import io.reactivex.internal.util.Ctry;
import java.util.NoSuchElementException;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import org.reactivestreams.Publisher;

/* loaded from: classes.dex */
public abstract class jz1<T> implements SingleSource<T> {
    @cs1("none")
    @gl
    public static <T, U> jz1<T> B0(Callable<U> callable, Function<? super U, ? extends SingleSource<? extends T>> function, Consumer<? super U> consumer) {
        return C0(callable, function, consumer, true);
    }

    @b41
    @cs1("none")
    @gl
    public static <T, U> jz1<T> C0(Callable<U> callable, Function<? super U, ? extends SingleSource<? extends T>> function, Consumer<? super U> consumer, boolean z) {
        Cif.m29468else(callable, "resourceSupplier is null");
        Cif.m29468else(function, "singleFunction is null");
        Cif.m29468else(consumer, "disposer is null");
        return jp1.g(new io.reactivex.internal.operators.single.c(callable, function, consumer, z));
    }

    @b41
    @cs1("none")
    @gl
    public static <T> jz1<T> D(SingleSource<? extends SingleSource<? extends T>> singleSource) {
        Cif.m29468else(singleSource, "source is null");
        return jp1.g(new Cstatic(singleSource, Cdo.m29416catch()));
    }

    @b41
    @cs1("none")
    @gl
    public static <T> jz1<T> D0(SingleSource<T> singleSource) {
        Cif.m29468else(singleSource, "source is null");
        return singleSource instanceof jz1 ? jp1.g((jz1) singleSource) : jp1.g(new sz1(singleSource));
    }

    @b41
    @t6(s6.FULL)
    @cs1("none")
    @gl
    public static <T> Cfor<T> E(SingleSource<? extends T> singleSource, SingleSource<? extends T> singleSource2) {
        Cif.m29468else(singleSource, "source1 is null");
        Cif.m29468else(singleSource2, "source2 is null");
        return I(Cfor.Z1(singleSource, singleSource2));
    }

    @b41
    @cs1("none")
    @gl
    public static <T1, T2, T3, T4, T5, T6, T7, T8, T9, R> jz1<R> E0(SingleSource<? extends T1> singleSource, SingleSource<? extends T2> singleSource2, SingleSource<? extends T3> singleSource3, SingleSource<? extends T4> singleSource4, SingleSource<? extends T5> singleSource5, SingleSource<? extends T6> singleSource6, SingleSource<? extends T7> singleSource7, SingleSource<? extends T8> singleSource8, SingleSource<? extends T9> singleSource9, Function9<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? super T8, ? super T9, ? extends R> function9) {
        Cif.m29468else(singleSource, "source1 is null");
        Cif.m29468else(singleSource2, "source2 is null");
        Cif.m29468else(singleSource3, "source3 is null");
        Cif.m29468else(singleSource4, "source4 is null");
        Cif.m29468else(singleSource5, "source5 is null");
        Cif.m29468else(singleSource6, "source6 is null");
        Cif.m29468else(singleSource7, "source7 is null");
        Cif.m29468else(singleSource8, "source8 is null");
        Cif.m29468else(singleSource9, "source9 is null");
        return N0(Cdo.m29419continue(function9), singleSource, singleSource2, singleSource3, singleSource4, singleSource5, singleSource6, singleSource7, singleSource8, singleSource9);
    }

    @b41
    @t6(s6.FULL)
    @cs1("none")
    @gl
    public static <T> Cfor<T> F(SingleSource<? extends T> singleSource, SingleSource<? extends T> singleSource2, SingleSource<? extends T> singleSource3) {
        Cif.m29468else(singleSource, "source1 is null");
        Cif.m29468else(singleSource2, "source2 is null");
        Cif.m29468else(singleSource3, "source3 is null");
        return I(Cfor.Z1(singleSource, singleSource2, singleSource3));
    }

    @b41
    @cs1("none")
    @gl
    public static <T1, T2, T3, T4, T5, T6, T7, T8, R> jz1<R> F0(SingleSource<? extends T1> singleSource, SingleSource<? extends T2> singleSource2, SingleSource<? extends T3> singleSource3, SingleSource<? extends T4> singleSource4, SingleSource<? extends T5> singleSource5, SingleSource<? extends T6> singleSource6, SingleSource<? extends T7> singleSource7, SingleSource<? extends T8> singleSource8, Function8<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? super T8, ? extends R> function8) {
        Cif.m29468else(singleSource, "source1 is null");
        Cif.m29468else(singleSource2, "source2 is null");
        Cif.m29468else(singleSource3, "source3 is null");
        Cif.m29468else(singleSource4, "source4 is null");
        Cif.m29468else(singleSource5, "source5 is null");
        Cif.m29468else(singleSource6, "source6 is null");
        Cif.m29468else(singleSource7, "source7 is null");
        Cif.m29468else(singleSource8, "source8 is null");
        return N0(Cdo.m29413abstract(function8), singleSource, singleSource2, singleSource3, singleSource4, singleSource5, singleSource6, singleSource7, singleSource8);
    }

    @b41
    @t6(s6.FULL)
    @cs1("none")
    @gl
    public static <T> Cfor<T> G(SingleSource<? extends T> singleSource, SingleSource<? extends T> singleSource2, SingleSource<? extends T> singleSource3, SingleSource<? extends T> singleSource4) {
        Cif.m29468else(singleSource, "source1 is null");
        Cif.m29468else(singleSource2, "source2 is null");
        Cif.m29468else(singleSource3, "source3 is null");
        Cif.m29468else(singleSource4, "source4 is null");
        return I(Cfor.Z1(singleSource, singleSource2, singleSource3, singleSource4));
    }

    @b41
    @cs1("none")
    @gl
    public static <T1, T2, T3, T4, T5, T6, T7, R> jz1<R> G0(SingleSource<? extends T1> singleSource, SingleSource<? extends T2> singleSource2, SingleSource<? extends T3> singleSource3, SingleSource<? extends T4> singleSource4, SingleSource<? extends T5> singleSource5, SingleSource<? extends T6> singleSource6, SingleSource<? extends T7> singleSource7, Function7<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? extends R> function7) {
        Cif.m29468else(singleSource, "source1 is null");
        Cif.m29468else(singleSource2, "source2 is null");
        Cif.m29468else(singleSource3, "source3 is null");
        Cif.m29468else(singleSource4, "source4 is null");
        Cif.m29468else(singleSource5, "source5 is null");
        Cif.m29468else(singleSource6, "source6 is null");
        Cif.m29468else(singleSource7, "source7 is null");
        return N0(Cdo.m29434private(function7), singleSource, singleSource2, singleSource3, singleSource4, singleSource5, singleSource6, singleSource7);
    }

    @b41
    @t6(s6.FULL)
    @cs1("none")
    @gl
    public static <T> Cfor<T> H(Iterable<? extends SingleSource<? extends T>> iterable) {
        return I(Cfor.f2(iterable));
    }

    @b41
    @cs1("none")
    @gl
    public static <T1, T2, T3, T4, T5, T6, R> jz1<R> H0(SingleSource<? extends T1> singleSource, SingleSource<? extends T2> singleSource2, SingleSource<? extends T3> singleSource3, SingleSource<? extends T4> singleSource4, SingleSource<? extends T5> singleSource5, SingleSource<? extends T6> singleSource6, Function6<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? extends R> function6) {
        Cif.m29468else(singleSource, "source1 is null");
        Cif.m29468else(singleSource2, "source2 is null");
        Cif.m29468else(singleSource3, "source3 is null");
        Cif.m29468else(singleSource4, "source4 is null");
        Cif.m29468else(singleSource5, "source5 is null");
        Cif.m29468else(singleSource6, "source6 is null");
        return N0(Cdo.m29433package(function6), singleSource, singleSource2, singleSource3, singleSource4, singleSource5, singleSource6);
    }

    @b41
    @t6(s6.FULL)
    @cs1("none")
    @gl
    public static <T> Cfor<T> I(Publisher<? extends SingleSource<? extends T>> publisher) {
        Cif.m29468else(publisher, "sources is null");
        return jp1.h(new zc0(publisher, Cabstract.m29655for(), false, Integer.MAX_VALUE, Cfor.g()));
    }

    @b41
    @cs1("none")
    @gl
    public static <T1, T2, T3, T4, T5, R> jz1<R> I0(SingleSource<? extends T1> singleSource, SingleSource<? extends T2> singleSource2, SingleSource<? extends T3> singleSource3, SingleSource<? extends T4> singleSource4, SingleSource<? extends T5> singleSource5, Function5<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? extends R> function5) {
        Cif.m29468else(singleSource, "source1 is null");
        Cif.m29468else(singleSource2, "source2 is null");
        Cif.m29468else(singleSource3, "source3 is null");
        Cif.m29468else(singleSource4, "source4 is null");
        Cif.m29468else(singleSource5, "source5 is null");
        return N0(Cdo.m29425finally(function5), singleSource, singleSource2, singleSource3, singleSource4, singleSource5);
    }

    @b41
    @t6(s6.FULL)
    @cs1("none")
    @gl
    public static <T> Cfor<T> J(SingleSource<? extends T> singleSource, SingleSource<? extends T> singleSource2) {
        Cif.m29468else(singleSource, "source1 is null");
        Cif.m29468else(singleSource2, "source2 is null");
        return N(Cfor.Z1(singleSource, singleSource2));
    }

    @b41
    @cs1("none")
    @gl
    public static <T1, T2, T3, T4, R> jz1<R> J0(SingleSource<? extends T1> singleSource, SingleSource<? extends T2> singleSource2, SingleSource<? extends T3> singleSource3, SingleSource<? extends T4> singleSource4, Function4<? super T1, ? super T2, ? super T3, ? super T4, ? extends R> function4) {
        Cif.m29468else(singleSource, "source1 is null");
        Cif.m29468else(singleSource2, "source2 is null");
        Cif.m29468else(singleSource3, "source3 is null");
        Cif.m29468else(singleSource4, "source4 is null");
        return N0(Cdo.m29423extends(function4), singleSource, singleSource2, singleSource3, singleSource4);
    }

    @b41
    @t6(s6.FULL)
    @cs1("none")
    @gl
    public static <T> Cfor<T> K(SingleSource<? extends T> singleSource, SingleSource<? extends T> singleSource2, SingleSource<? extends T> singleSource3) {
        Cif.m29468else(singleSource, "source1 is null");
        Cif.m29468else(singleSource2, "source2 is null");
        Cif.m29468else(singleSource3, "source3 is null");
        return N(Cfor.Z1(singleSource, singleSource2, singleSource3));
    }

    @b41
    @cs1("none")
    @gl
    public static <T1, T2, T3, R> jz1<R> K0(SingleSource<? extends T1> singleSource, SingleSource<? extends T2> singleSource2, SingleSource<? extends T3> singleSource3, Function3<? super T1, ? super T2, ? super T3, ? extends R> function3) {
        Cif.m29468else(singleSource, "source1 is null");
        Cif.m29468else(singleSource2, "source2 is null");
        Cif.m29468else(singleSource3, "source3 is null");
        return N0(Cdo.m29420default(function3), singleSource, singleSource2, singleSource3);
    }

    @b41
    @t6(s6.FULL)
    @cs1("none")
    @gl
    public static <T> Cfor<T> L(SingleSource<? extends T> singleSource, SingleSource<? extends T> singleSource2, SingleSource<? extends T> singleSource3, SingleSource<? extends T> singleSource4) {
        Cif.m29468else(singleSource, "source1 is null");
        Cif.m29468else(singleSource2, "source2 is null");
        Cif.m29468else(singleSource3, "source3 is null");
        Cif.m29468else(singleSource4, "source4 is null");
        return N(Cfor.Z1(singleSource, singleSource2, singleSource3, singleSource4));
    }

    @b41
    @cs1("none")
    @gl
    public static <T1, T2, R> jz1<R> L0(SingleSource<? extends T1> singleSource, SingleSource<? extends T2> singleSource2, BiFunction<? super T1, ? super T2, ? extends R> biFunction) {
        Cif.m29468else(singleSource, "source1 is null");
        Cif.m29468else(singleSource2, "source2 is null");
        return N0(Cdo.m29443throws(biFunction), singleSource, singleSource2);
    }

    @b41
    @t6(s6.FULL)
    @cs1("none")
    @gl
    public static <T> Cfor<T> M(Iterable<? extends SingleSource<? extends T>> iterable) {
        return N(Cfor.f2(iterable));
    }

    @b41
    @cs1("none")
    @gl
    public static <T, R> jz1<R> M0(Iterable<? extends SingleSource<? extends T>> iterable, Function<? super Object[], ? extends R> function) {
        Cif.m29468else(function, "zipper is null");
        Cif.m29468else(iterable, "sources is null");
        return jp1.g(new io.reactivex.internal.operators.single.e(iterable, function));
    }

    @b41
    @t6(s6.FULL)
    @cs1("none")
    @gl
    public static <T> Cfor<T> N(Publisher<? extends SingleSource<? extends T>> publisher) {
        Cif.m29468else(publisher, "sources is null");
        return jp1.h(new zc0(publisher, Cabstract.m29655for(), true, Integer.MAX_VALUE, Cfor.g()));
    }

    @b41
    @cs1("none")
    @gl
    public static <T, R> jz1<R> N0(Function<? super Object[], ? extends R> function, SingleSource<? extends T>... singleSourceArr) {
        Cif.m29468else(function, "zipper is null");
        Cif.m29468else(singleSourceArr, "sources is null");
        return singleSourceArr.length == 0 ? g(new NoSuchElementException()) : jp1.g(new io.reactivex.internal.operators.single.d(singleSourceArr, function));
    }

    @cs1("none")
    @gl
    public static <T> jz1<T> P() {
        return jp1.g(wz1.f7734do);
    }

    @b41
    @t6(s6.FULL)
    @cs1("none")
    @gl
    /* renamed from: break, reason: not valid java name */
    public static <T> Cfor<T> m4128break(SingleSource<? extends T> singleSource, SingleSource<? extends T> singleSource2, SingleSource<? extends T> singleSource3) {
        Cif.m29468else(singleSource, "source1 is null");
        Cif.m29468else(singleSource2, "source2 is null");
        Cif.m29468else(singleSource3, "source3 is null");
        return m4131const(Cfor.Z1(singleSource, singleSource2, singleSource3));
    }

    @b41
    @t6(s6.FULL)
    @cs1("none")
    @gl
    /* renamed from: catch, reason: not valid java name */
    public static <T> Cfor<T> m4129catch(SingleSource<? extends T> singleSource, SingleSource<? extends T> singleSource2, SingleSource<? extends T> singleSource3, SingleSource<? extends T> singleSource4) {
        Cif.m29468else(singleSource, "source1 is null");
        Cif.m29468else(singleSource2, "source2 is null");
        Cif.m29468else(singleSource3, "source3 is null");
        Cif.m29468else(singleSource4, "source4 is null");
        return m4131const(Cfor.Z1(singleSource, singleSource2, singleSource3, singleSource4));
    }

    @b41
    @t6(s6.FULL)
    @cs1("none")
    @gl
    /* renamed from: class, reason: not valid java name */
    public static <T> Cfor<T> m4130class(Iterable<? extends SingleSource<? extends T>> iterable) {
        return m4131const(Cfor.f2(iterable));
    }

    @b41
    @t6(s6.FULL)
    @cs1("none")
    @gl
    /* renamed from: const, reason: not valid java name */
    public static <T> Cfor<T> m4131const(Publisher<? extends SingleSource<? extends T>> publisher) {
        return m4133final(publisher, 2);
    }

    @b41
    @cs1("none")
    @gl
    /* renamed from: do, reason: not valid java name */
    public static <T> jz1<T> m4132do(Iterable<? extends SingleSource<? extends T>> iterable) {
        Cif.m29468else(iterable, "sources is null");
        return jp1.g(new io.reactivex.internal.operators.single.Cdo(null, iterable));
    }

    @b41
    @cs1("none")
    @gl
    public static <T> jz1<Boolean> f(SingleSource<? extends T> singleSource, SingleSource<? extends T> singleSource2) {
        Cif.m29468else(singleSource, "first is null");
        Cif.m29468else(singleSource2, "second is null");
        return jp1.g(new Creturn(singleSource, singleSource2));
    }

    @b41
    @t6(s6.FULL)
    @cs1("none")
    @gl
    /* renamed from: final, reason: not valid java name */
    public static <T> Cfor<T> m4133final(Publisher<? extends SingleSource<? extends T>> publisher, int i) {
        Cif.m29468else(publisher, "sources is null");
        Cif.m29470goto(i, "prefetch");
        return jp1.h(new vc0(publisher, Cabstract.m29655for(), i, Ctry.IMMEDIATE));
    }

    @b41
    @cs1("none")
    @gl
    public static <T> jz1<T> g(Throwable th) {
        Cif.m29468else(th, "exception is null");
        return h(Cdo.m29418const(th));
    }

    @b41
    @cs1("none")
    @gl
    public static <T> jz1<T> h(Callable<? extends Throwable> callable) {
        Cif.m29468else(callable, "errorSupplier is null");
        return jp1.g(new oz1(callable));
    }

    @cs1("none")
    @gl
    /* renamed from: if, reason: not valid java name */
    public static <T> jz1<T> m4134if(SingleSource<? extends T>... singleSourceArr) {
        return singleSourceArr.length == 0 ? h(Cabstract.m29654do()) : singleSourceArr.length == 1 ? D0(singleSourceArr[0]) : jp1.g(new io.reactivex.internal.operators.single.Cdo(singleSourceArr, null));
    }

    @b41
    @t6(s6.FULL)
    @cs1("none")
    @gl
    /* renamed from: import, reason: not valid java name */
    public static <T> Cfor<T> m4135import(Iterable<? extends SingleSource<? extends T>> iterable) {
        return Cfor.f2(iterable).i0(Cabstract.m29655for());
    }

    @b41
    @t6(s6.FULL)
    @cs1("none")
    @gl
    /* renamed from: native, reason: not valid java name */
    public static <T> Cfor<T> m4136native(Publisher<? extends SingleSource<? extends T>> publisher) {
        return Cfor.g2(publisher).i0(Cabstract.m29655for());
    }

    private jz1<T> p0(long j, TimeUnit timeUnit, io.reactivex.Ctry ctry, SingleSource<? extends T> singleSource) {
        Cif.m29468else(timeUnit, "unit is null");
        Cif.m29468else(ctry, "scheduler is null");
        return jp1.g(new Cimplements(this, j, timeUnit, ctry, singleSource));
    }

    @b41
    @cs1("none")
    @gl
    public static <T> jz1<T> q(Callable<? extends T> callable) {
        Cif.m29468else(callable, "callable is null");
        return jp1.g(new qz1(callable));
    }

    @cs1(cs1.G5)
    @gl
    public static jz1<Long> q0(long j, TimeUnit timeUnit) {
        return r0(j, timeUnit, io.reactivex.schedulers.Cdo.m29767do());
    }

    @cs1("none")
    @gl
    public static <T> jz1<T> r(Future<? extends T> future) {
        return y0(Cfor.b2(future));
    }

    @b41
    @cs1(cs1.F5)
    @gl
    public static jz1<Long> r0(long j, TimeUnit timeUnit, io.reactivex.Ctry ctry) {
        Cif.m29468else(timeUnit, "unit is null");
        Cif.m29468else(ctry, "scheduler is null");
        return jp1.g(new Cinstanceof(j, timeUnit, ctry));
    }

    @cs1("none")
    @gl
    public static <T> jz1<T> s(Future<? extends T> future, long j, TimeUnit timeUnit) {
        return y0(Cfor.c2(future, j, timeUnit));
    }

    @b41
    @cs1("none")
    @gl
    /* renamed from: super, reason: not valid java name */
    public static <T> Cnew<T> m4137super(ObservableSource<? extends SingleSource<? extends T>> observableSource) {
        Cif.m29468else(observableSource, "sources is null");
        return jp1.i(new Cpublic(observableSource, Cabstract.m29657new(), 2, Ctry.IMMEDIATE));
    }

    @b41
    @cs1("none")
    @gl
    /* renamed from: switch, reason: not valid java name */
    public static <T> jz1<T> m4138switch(SingleOnSubscribe<T> singleOnSubscribe) {
        Cif.m29468else(singleOnSubscribe, "source is null");
        return jp1.g(new io.reactivex.internal.operators.single.Cnew(singleOnSubscribe));
    }

    @cs1(cs1.F5)
    @gl
    public static <T> jz1<T> t(Future<? extends T> future, long j, TimeUnit timeUnit, io.reactivex.Ctry ctry) {
        return y0(Cfor.d2(future, j, timeUnit, ctry));
    }

    @b41
    @t6(s6.FULL)
    @cs1("none")
    @gl
    /* renamed from: this, reason: not valid java name */
    public static <T> Cfor<T> m4139this(SingleSource<? extends T> singleSource, SingleSource<? extends T> singleSource2) {
        Cif.m29468else(singleSource, "source1 is null");
        Cif.m29468else(singleSource2, "source2 is null");
        return m4131const(Cfor.Z1(singleSource, singleSource2));
    }

    @b41
    @t6(s6.FULL)
    @cs1("none")
    @gl
    /* renamed from: throw, reason: not valid java name */
    public static <T> Cfor<T> m4140throw(SingleSource<? extends T>... singleSourceArr) {
        return jp1.h(new FlowableConcatMap(Cfor.Z1(singleSourceArr), Cabstract.m29655for(), 2, Ctry.BOUNDARY));
    }

    @b41
    @cs1("none")
    @gl
    /* renamed from: throws, reason: not valid java name */
    public static <T> jz1<T> m4141throws(Callable<? extends SingleSource<? extends T>> callable) {
        Cif.m29468else(callable, "singleSupplier is null");
        return jp1.g(new kz1(callable));
    }

    @cs1(cs1.F5)
    @gl
    public static <T> jz1<T> u(Future<? extends T> future, io.reactivex.Ctry ctry) {
        return y0(Cfor.e2(future, ctry));
    }

    @b41
    @cs1("none")
    @gl
    public static <T> jz1<T> v(ObservableSource<? extends T> observableSource) {
        Cif.m29468else(observableSource, "observableSource is null");
        return jp1.g(new io.reactivex.internal.operators.observable.i1(observableSource, null));
    }

    @b41
    @t6(s6.UNBOUNDED_IN)
    @cs1("none")
    @gl
    public static <T> jz1<T> w(Publisher<? extends T> publisher) {
        Cif.m29468else(publisher, "publisher is null");
        return jp1.g(new Cpackage(publisher));
    }

    @b41
    @t6(s6.FULL)
    @cs1("none")
    @gl
    /* renamed from: while, reason: not valid java name */
    public static <T> Cfor<T> m4142while(SingleSource<? extends T>... singleSourceArr) {
        return Cfor.Z1(singleSourceArr).i0(Cabstract.m29655for());
    }

    private static <T> jz1<T> y0(Cfor<T> cfor) {
        return jp1.g(new io.reactivex.internal.operators.flowable.q1(cfor, null));
    }

    @b41
    @cs1("none")
    @gl
    public static <T> jz1<T> z(T t) {
        Cif.m29468else(t, "item is null");
        return jp1.g(new tz1(t));
    }

    @b41
    @cs1("none")
    @gl
    public static <T> jz1<T> z0(SingleSource<T> singleSource) {
        Cif.m29468else(singleSource, "onSubscribe is null");
        if (singleSource instanceof jz1) {
            throw new IllegalArgumentException("unsafeCreate(Single) should be upgraded");
        }
        return jp1.g(new sz1(singleSource));
    }

    @b41
    @cs1("none")
    @gl
    public final <R> jz1<R> A(SingleOperator<? extends R, ? super T> singleOperator) {
        Cif.m29468else(singleOperator, "lift is null");
        return jp1.g(new uz1(this, singleOperator));
    }

    @b41
    @cs1(cs1.F5)
    @gl
    public final jz1<T> A0(io.reactivex.Ctry ctry) {
        Cif.m29468else(ctry, "scheduler is null");
        return jp1.g(new io.reactivex.internal.operators.single.b(this, ctry));
    }

    @b41
    @cs1("none")
    @gl
    public final <R> jz1<R> B(Function<? super T, ? extends R> function) {
        Cif.m29468else(function, "mapper is null");
        return jp1.g(new Ccontinue(this, function));
    }

    @cs1("none")
    @f90
    @gl
    public final jz1<t41<T>> C() {
        return jp1.g(new vz1(this));
    }

    @cs1("none")
    @t6(s6.FULL)
    @gl
    public final Cfor<T> O(SingleSource<? extends T> singleSource) {
        return E(this, singleSource);
    }

    @cs1("none")
    @gl
    public final <U, R> jz1<R> O0(SingleSource<U> singleSource, BiFunction<? super T, ? super U, ? extends R> biFunction) {
        return L0(this, singleSource, biFunction);
    }

    @b41
    @cs1(cs1.F5)
    @gl
    public final jz1<T> Q(io.reactivex.Ctry ctry) {
        Cif.m29468else(ctry, "scheduler is null");
        return jp1.g(new Cstrictfp(this, ctry));
    }

    @b41
    @cs1("none")
    @gl
    public final jz1<T> R(jz1<? extends T> jz1Var) {
        Cif.m29468else(jz1Var, "resumeSingleInCaseOfError is null");
        return S(Cdo.m29424final(jz1Var));
    }

    @b41
    @cs1("none")
    @gl
    public final jz1<T> S(Function<? super Throwable, ? extends SingleSource<? extends T>> function) {
        Cif.m29468else(function, "resumeFunctionInCaseOfError is null");
        return jp1.g(new Cinterface(this, function));
    }

    @b41
    @cs1("none")
    @gl
    public final jz1<T> T(Function<Throwable, ? extends T> function) {
        Cif.m29468else(function, "resumeFunction is null");
        return jp1.g(new Cvolatile(this, function, null));
    }

    @b41
    @cs1("none")
    @gl
    public final jz1<T> U(T t) {
        Cif.m29468else(t, "value is null");
        return jp1.g(new Cvolatile(this, null, t));
    }

    @cs1("none")
    @gl
    public final jz1<T> V() {
        return jp1.g(new Ccatch(this));
    }

    @cs1("none")
    @t6(s6.FULL)
    @gl
    public final Cfor<T> W() {
        return u0().b4();
    }

    @cs1("none")
    @t6(s6.FULL)
    @gl
    public final Cfor<T> X(long j) {
        return u0().c4(j);
    }

    @cs1("none")
    @t6(s6.FULL)
    @gl
    public final Cfor<T> Y(BooleanSupplier booleanSupplier) {
        return u0().d4(booleanSupplier);
    }

    @cs1("none")
    @t6(s6.FULL)
    @gl
    public final Cfor<T> Z(Function<? super Cfor<Object>, ? extends Publisher<?>> function) {
        return u0().e4(function);
    }

    @b41
    @cs1("none")
    @gl
    public final jz1<T> a(Consumer<? super Throwable> consumer) {
        Cif.m29468else(consumer, "onError is null");
        return jp1.g(new Cthrow(this, consumer));
    }

    @cs1("none")
    @gl
    public final jz1<T> a0() {
        return y0(u0().v4());
    }

    @cs1(cs1.F5)
    @gl
    /* renamed from: abstract, reason: not valid java name */
    public final jz1<T> m4143abstract(long j, TimeUnit timeUnit, io.reactivex.Ctry ctry) {
        return m4162strictfp(Cnew.timer(j, timeUnit, ctry));
    }

    @b41
    @cs1("none")
    @gl
    public final jz1<T> b(BiConsumer<? super T, ? super Throwable> biConsumer) {
        Cif.m29468else(biConsumer, "onEvent is null");
        return jp1.g(new Cwhile(this, biConsumer));
    }

    @cs1("none")
    @gl
    public final jz1<T> b0(long j) {
        return y0(u0().w4(j));
    }

    @b41
    @cs1("none")
    @gl
    public final jz1<T> c(Consumer<? super Disposable> consumer) {
        Cif.m29468else(consumer, "onSubscribe is null");
        return jp1.g(new Cimport(this, consumer));
    }

    @cs1("none")
    @gl
    public final jz1<T> c0(long j, Predicate<? super Throwable> predicate) {
        return y0(u0().x4(j, predicate));
    }

    @cs1("none")
    @gl
    /* renamed from: case, reason: not valid java name */
    public final jz1<T> m4144case() {
        return jp1.g(new io.reactivex.internal.operators.single.Cif(this));
    }

    @b41
    @cs1("none")
    @gl
    /* renamed from: continue, reason: not valid java name */
    public final jz1<T> m4145continue(CompletableSource completableSource) {
        Cif.m29468else(completableSource, "other is null");
        return jp1.g(new Ccase(this, completableSource));
    }

    @b41
    @cs1("none")
    @gl
    public final jz1<T> d(Consumer<? super T> consumer) {
        Cif.m29468else(consumer, "onSuccess is null");
        return jp1.g(new Cnative(this, consumer));
    }

    @cs1("none")
    @gl
    public final jz1<T> d0(BiPredicate<? super Integer, ? super Throwable> biPredicate) {
        return y0(u0().y4(biPredicate));
    }

    @cs1(cs1.G5)
    @gl
    /* renamed from: default, reason: not valid java name */
    public final jz1<T> m4146default(long j, TimeUnit timeUnit) {
        return m4149finally(j, timeUnit, io.reactivex.schedulers.Cdo.m29767do(), false);
    }

    @b41
    @f90
    @cs1("none")
    @gl
    public final jz1<T> e(Action action) {
        Cif.m29468else(action, "onTerminate is null");
        return jp1.g(new io.reactivex.internal.operators.single.Cpublic(this, action));
    }

    @cs1("none")
    @gl
    public final jz1<T> e0(Predicate<? super Throwable> predicate) {
        return y0(u0().z4(predicate));
    }

    @b41
    @cs1("none")
    @gl
    /* renamed from: else, reason: not valid java name */
    public final <U> jz1<U> m4147else(Class<? extends U> cls) {
        Cif.m29468else(cls, "clazz is null");
        return (jz1<U>) B(Cdo.m29444try(cls));
    }

    @cs1(cs1.F5)
    @gl
    /* renamed from: extends, reason: not valid java name */
    public final jz1<T> m4148extends(long j, TimeUnit timeUnit, io.reactivex.Ctry ctry) {
        return m4149finally(j, timeUnit, ctry, false);
    }

    @cs1("none")
    @gl
    public final jz1<T> f0(Function<? super Cfor<Throwable>, ? extends Publisher<?>> function) {
        return y0(u0().B4(function));
    }

    @b41
    @cs1(cs1.F5)
    @gl
    /* renamed from: finally, reason: not valid java name */
    public final jz1<T> m4149finally(long j, TimeUnit timeUnit, io.reactivex.Ctry ctry, boolean z) {
        Cif.m29468else(timeUnit, "unit is null");
        Cif.m29468else(ctry, "scheduler is null");
        return jp1.g(new io.reactivex.internal.operators.single.Ctry(this, j, timeUnit, ctry, z));
    }

    @b41
    @cs1("none")
    @gl
    /* renamed from: for, reason: not valid java name */
    public final jz1<T> m4150for(SingleSource<? extends T> singleSource) {
        Cif.m29468else(singleSource, "other is null");
        return m4134if(this, singleSource);
    }

    public abstract void g0(@b41 SingleObserver<? super T> singleObserver);

    @cs1("none")
    @gl
    /* renamed from: goto, reason: not valid java name */
    public final <R> jz1<R> m4151goto(SingleTransformer<? super T, ? extends R> singleTransformer) {
        return D0(((SingleTransformer) Cif.m29468else(singleTransformer, "transformer is null")).apply(this));
    }

    @b41
    @cs1(cs1.F5)
    @gl
    public final jz1<T> h0(io.reactivex.Ctry ctry) {
        Cif.m29468else(ctry, "scheduler is null");
        return jp1.g(new Cprotected(this, ctry));
    }

    @b41
    @cs1("none")
    @gl
    public final fy0<T> i(Predicate<? super T> predicate) {
        Cif.m29468else(predicate, "predicate is null");
        return jp1.e(new io.reactivex.internal.operators.maybe.Creturn(this, predicate));
    }

    @b41
    @cs1("none")
    @gl
    public final jz1<T> i0(CompletableSource completableSource) {
        Cif.m29468else(completableSource, "other is null");
        return k0(new zp(completableSource));
    }

    @b41
    @cs1("none")
    @gl
    /* renamed from: implements, reason: not valid java name */
    public final jz1<T> m4152implements(Action action) {
        Cif.m29468else(action, "onAfterTerminate is null");
        return jp1.g(new Cconst(this, action));
    }

    @b41
    @cs1("none")
    @gl
    /* renamed from: instanceof, reason: not valid java name */
    public final jz1<T> m4153instanceof(Action action) {
        Cif.m29468else(action, "onFinally is null");
        return jp1.g(new Cfinal(this, action));
    }

    @b41
    @t6(s6.FULL)
    @cs1("none")
    @gl
    /* renamed from: interface, reason: not valid java name */
    public final <U> jz1<T> m4154interface(Publisher<U> publisher) {
        Cif.m29468else(publisher, "other is null");
        return jp1.g(new Cgoto(this, publisher));
    }

    @b41
    @cs1("none")
    @gl
    public final <R> jz1<R> j(Function<? super T, ? extends SingleSource<? extends R>> function) {
        Cif.m29468else(function, "mapper is null");
        return jp1.g(new Cstatic(this, function));
    }

    @b41
    @cs1("none")
    @gl
    public final <E> jz1<T> j0(SingleSource<? extends E> singleSource) {
        Cif.m29468else(singleSource, "other is null");
        return k0(new Csynchronized(singleSource));
    }

    @b41
    @cs1("none")
    @gl
    public final np k(Function<? super T, ? extends CompletableSource> function) {
        Cif.m29468else(function, "mapper is null");
        return jp1.b(new Cswitch(this, function));
    }

    @b41
    @t6(s6.FULL)
    @cs1("none")
    @gl
    public final <E> jz1<T> k0(Publisher<E> publisher) {
        Cif.m29468else(publisher, "other is null");
        return jp1.g(new Ctransient(this, publisher));
    }

    @b41
    @cs1("none")
    @gl
    public final <R> fy0<R> l(Function<? super T, ? extends MaybeSource<? extends R>> function) {
        Cif.m29468else(function, "mapper is null");
        return jp1.e(new Cextends(this, function));
    }

    @cs1(cs1.G5)
    @gl
    public final jz1<T> l0(long j, TimeUnit timeUnit) {
        return p0(j, timeUnit, io.reactivex.schedulers.Cdo.m29767do(), null);
    }

    @b41
    @cs1("none")
    @gl
    public final <R> Cnew<R> m(Function<? super T, ? extends ObservableSource<? extends R>> function) {
        Cif.m29468else(function, "mapper is null");
        return jp1.i(new io.reactivex.internal.operators.mixed.Cimport(this, function));
    }

    @cs1(cs1.F5)
    @gl
    public final jz1<T> m0(long j, TimeUnit timeUnit, io.reactivex.Ctry ctry) {
        return p0(j, timeUnit, ctry, null);
    }

    @b41
    @t6(s6.FULL)
    @cs1("none")
    @gl
    public final <R> Cfor<R> n(Function<? super T, ? extends Publisher<? extends R>> function) {
        Cif.m29468else(function, "mapper is null");
        return jp1.h(new Cfinally(this, function));
    }

    @b41
    @cs1(cs1.F5)
    @gl
    public final jz1<T> n0(long j, TimeUnit timeUnit, io.reactivex.Ctry ctry, SingleSource<? extends T> singleSource) {
        Cif.m29468else(singleSource, "other is null");
        return p0(j, timeUnit, ctry, singleSource);
    }

    @cs1("none")
    @gl
    /* renamed from: new, reason: not valid java name */
    public final <R> R m4155new(@b41 SingleConverter<T, ? extends R> singleConverter) {
        return (R) ((SingleConverter) Cif.m29468else(singleConverter, "converter is null")).apply(this);
    }

    @b41
    @t6(s6.FULL)
    @cs1("none")
    @gl
    public final <U> Cfor<U> o(Function<? super T, ? extends Iterable<? extends U>> function) {
        Cif.m29468else(function, "mapper is null");
        return jp1.h(new Cthrows(this, function));
    }

    @b41
    @cs1(cs1.G5)
    @gl
    public final jz1<T> o0(long j, TimeUnit timeUnit, SingleSource<? extends T> singleSource) {
        Cif.m29468else(singleSource, "other is null");
        return p0(j, timeUnit, io.reactivex.schedulers.Cdo.m29767do(), singleSource);
    }

    @b41
    @cs1("none")
    @gl
    public final <U> Cnew<U> p(Function<? super T, ? extends Iterable<? extends U>> function) {
        Cif.m29468else(function, "mapper is null");
        return jp1.i(new Cdefault(this, function));
    }

    @cs1(cs1.G5)
    @gl
    /* renamed from: package, reason: not valid java name */
    public final jz1<T> m4156package(long j, TimeUnit timeUnit, boolean z) {
        return m4149finally(j, timeUnit, io.reactivex.schedulers.Cdo.m29767do(), z);
    }

    @cs1(cs1.G5)
    @gl
    /* renamed from: private, reason: not valid java name */
    public final jz1<T> m4157private(long j, TimeUnit timeUnit) {
        return m4143abstract(j, timeUnit, io.reactivex.schedulers.Cdo.m29767do());
    }

    @b41
    @f90
    @cs1("none")
    @gl
    /* renamed from: protected, reason: not valid java name */
    public final <R> fy0<R> m4158protected(Function<? super T, t41<R>> function) {
        Cif.m29468else(function, "selector is null");
        return jp1.e(new Cbreak(this, function));
    }

    @cs1("none")
    @t6(s6.FULL)
    @gl
    /* renamed from: public, reason: not valid java name */
    public final Cfor<T> m4159public(SingleSource<? extends T> singleSource) {
        return m4139this(this, singleSource);
    }

    @cs1("none")
    @gl
    /* renamed from: return, reason: not valid java name */
    public final jz1<Boolean> m4160return(Object obj) {
        return m4161static(obj, Cif.m29472new());
    }

    @cs1("none")
    @gl
    public final <R> R s0(Function<? super jz1<T>, R> function) {
        try {
            return (R) ((Function) Cif.m29468else(function, "convert is null")).apply(this);
        } catch (Throwable th) {
            t80.m7781if(th);
            throw io.reactivex.internal.util.Ccase.m29712case(th);
        }
    }

    @b41
    @cs1("none")
    @gl
    /* renamed from: static, reason: not valid java name */
    public final jz1<Boolean> m4161static(Object obj, BiPredicate<Object, Object> biPredicate) {
        Cif.m29468else(obj, "value is null");
        Cif.m29468else(biPredicate, "comparer is null");
        return jp1.g(new io.reactivex.internal.operators.single.Cfor(this, obj, biPredicate));
    }

    @b41
    @cs1("none")
    @gl
    /* renamed from: strictfp, reason: not valid java name */
    public final <U> jz1<T> m4162strictfp(ObservableSource<U> observableSource) {
        Cif.m29468else(observableSource, "other is null");
        return jp1.g(new Celse(this, observableSource));
    }

    @cs1("none")
    public final Disposable subscribe() {
        return subscribe(Cdo.m29427goto(), Cdo.f25277case);
    }

    @cs1("none")
    @gl
    public final <E extends SingleObserver<? super T>> E subscribeWith(E e) {
        subscribe(e);
        return e;
    }

    @b41
    @cs1("none")
    @gl
    /* renamed from: synchronized, reason: not valid java name */
    public final jz1<T> m4163synchronized(Action action) {
        Cif.m29468else(action, "onDispose is null");
        return jp1.g(new Csuper(this, action));
    }

    @cs1("none")
    @gl
    @Deprecated
    public final np t0() {
        return jp1.b(new io.reactivex.internal.operators.completable.Csuper(this));
    }

    @cs1("none")
    @gl
    public final io.reactivex.observers.Cif<T> test() {
        io.reactivex.observers.Cif<T> cif = new io.reactivex.observers.Cif<>();
        subscribe(cif);
        return cif;
    }

    @b41
    @cs1("none")
    @gl
    /* renamed from: transient, reason: not valid java name */
    public final jz1<T> m4164transient(Consumer<? super T> consumer) {
        Cif.m29468else(consumer, "onAfterSuccess is null");
        return jp1.g(new Cclass(this, consumer));
    }

    @cs1("none")
    @gl
    /* renamed from: try, reason: not valid java name */
    public final T m4165try() {
        ma maVar = new ma();
        subscribe(maVar);
        return (T) maVar.m4880if();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @cs1("none")
    @t6(s6.FULL)
    @gl
    public final Cfor<T> u0() {
        return this instanceof FuseToFlowable ? ((FuseToFlowable) this).fuseToFlowable() : jp1.h(new Csynchronized(this));
    }

    @cs1("none")
    @gl
    public final Future<T> v0() {
        return (Future) subscribeWith(new io.reactivex.internal.observers.Cnew());
    }

    @b41
    @cs1("none")
    @gl
    /* renamed from: volatile, reason: not valid java name */
    public final <U> jz1<T> m4166volatile(SingleSource<U> singleSource) {
        Cif.m29468else(singleSource, "other is null");
        return jp1.g(new Cthis(this, singleSource));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @cs1("none")
    @gl
    public final fy0<T> w0() {
        return this instanceof FuseToMaybe ? ((FuseToMaybe) this).fuseToMaybe() : jp1.e(new io.reactivex.internal.operators.maybe.Cinterface(this));
    }

    @cs1("none")
    @gl
    public final jz1<T> x() {
        return jp1.g(new Cprivate(this));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @cs1("none")
    @gl
    public final Cnew<T> x0() {
        return this instanceof FuseToObservable ? ((FuseToObservable) this).fuseToObservable() : jp1.i(new io.reactivex.internal.operators.single.a(this));
    }

    @cs1("none")
    @gl
    public final np y() {
        return jp1.b(new io.reactivex.internal.operators.completable.Csuper(this));
    }

    @b41
    @cs1("none")
    @gl
    public final Disposable subscribe(BiConsumer<? super T, ? super Throwable> biConsumer) {
        Cif.m29468else(biConsumer, "onCallback is null");
        p8 p8Var = new p8(biConsumer);
        subscribe(p8Var);
        return p8Var;
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

    @cs1("none")
    @gl
    public final Disposable subscribe(Consumer<? super T> consumer) {
        return subscribe(consumer, Cdo.f25277case);
    }

    @b41
    @cs1("none")
    @gl
    public final Disposable subscribe(Consumer<? super T> consumer, Consumer<? super Throwable> consumer2) {
        Cif.m29468else(consumer, "onSuccess is null");
        Cif.m29468else(consumer2, "onError is null");
        ar arVar = new ar(consumer, consumer2);
        subscribe(arVar);
        return arVar;
    }

    @Override // io.reactivex.SingleSource
    @cs1("none")
    public final void subscribe(SingleObserver<? super T> singleObserver) {
        Cif.m29468else(singleObserver, "observer is null");
        SingleObserver<? super T> singleObserverT = jp1.t(this, singleObserver);
        Cif.m29468else(singleObserverT, "The RxJavaPlugins.onSubscribe hook returned a null SingleObserver. Please check the handler provided to RxJavaPlugins.setOnSingleSubscribe for invalid null returns. Further reading: https://github.com/ReactiveX/RxJava/wiki/Plugins");
        try {
            g0(singleObserverT);
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
