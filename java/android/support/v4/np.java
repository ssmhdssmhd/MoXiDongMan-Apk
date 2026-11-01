package android.support.v4;

import io.reactivex.Cfor;
import io.reactivex.CompletableConverter;
import io.reactivex.CompletableObserver;
import io.reactivex.CompletableOnSubscribe;
import io.reactivex.CompletableOperator;
import io.reactivex.CompletableSource;
import io.reactivex.CompletableTransformer;
import io.reactivex.Ctry;
import io.reactivex.MaybeSource;
import io.reactivex.ObservableSource;
import io.reactivex.SingleSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Action;
import io.reactivex.functions.BiPredicate;
import io.reactivex.functions.BooleanSupplier;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.Function;
import io.reactivex.functions.Predicate;
import io.reactivex.internal.functions.Cif;
import io.reactivex.internal.fuseable.FuseToFlowable;
import io.reactivex.internal.fuseable.FuseToMaybe;
import io.reactivex.internal.fuseable.FuseToObservable;
import io.reactivex.internal.operators.completable.Cabstract;
import io.reactivex.internal.operators.completable.Cbreak;
import io.reactivex.internal.operators.completable.Ccase;
import io.reactivex.internal.operators.completable.Ccatch;
import io.reactivex.internal.operators.completable.Cclass;
import io.reactivex.internal.operators.completable.Cconst;
import io.reactivex.internal.operators.completable.Ccontinue;
import io.reactivex.internal.operators.completable.Cdefault;
import io.reactivex.internal.operators.completable.Celse;
import io.reactivex.internal.operators.completable.Cextends;
import io.reactivex.internal.operators.completable.Cfinal;
import io.reactivex.internal.operators.completable.Cfinally;
import io.reactivex.internal.operators.completable.Cgoto;
import io.reactivex.internal.operators.completable.Cimport;
import io.reactivex.internal.operators.completable.Cnative;
import io.reactivex.internal.operators.completable.Cnew;
import io.reactivex.internal.operators.completable.Cpackage;
import io.reactivex.internal.operators.completable.Cprivate;
import io.reactivex.internal.operators.completable.Cpublic;
import io.reactivex.internal.operators.completable.Creturn;
import io.reactivex.internal.operators.completable.Cstatic;
import io.reactivex.internal.operators.completable.Cstrictfp;
import io.reactivex.internal.operators.completable.Csuper;
import io.reactivex.internal.operators.completable.Cswitch;
import io.reactivex.internal.operators.completable.Cthis;
import io.reactivex.internal.operators.completable.Cthrow;
import io.reactivex.internal.operators.completable.Cthrows;
import io.reactivex.internal.operators.completable.Cwhile;
import io.reactivex.internal.operators.maybe.Cimplements;
import io.reactivex.schedulers.Cdo;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import org.reactivestreams.Publisher;

/* loaded from: classes.dex */
public abstract class np implements CompletableSource {
    @b41
    @cs1(cs1.F5)
    @gl
    private np V(long j, TimeUnit timeUnit, Ctry ctry, CompletableSource completableSource) {
        Cif.m29468else(timeUnit, "unit is null");
        Cif.m29468else(ctry, "scheduler is null");
        return jp1.b(new Cpackage(this, j, timeUnit, ctry, completableSource));
    }

    @cs1(cs1.G5)
    @gl
    public static np W(long j, TimeUnit timeUnit) {
        return X(j, timeUnit, Cdo.m29767do());
    }

    @b41
    @cs1(cs1.F5)
    @gl
    public static np X(long j, TimeUnit timeUnit, Ctry ctry) {
        Cif.m29468else(timeUnit, "unit is null");
        Cif.m29468else(ctry, "scheduler is null");
        return jp1.b(new Cprivate(j, timeUnit, ctry));
    }

    @b41
    @cs1("none")
    @gl
    public static np a(Action action) {
        Cif.m29468else(action, "run is null");
        return jp1.b(new sp(action));
    }

    @b41
    @cs1("none")
    @gl
    public static np b(Callable<?> callable) {
        Cif.m29468else(callable, "callable is null");
        return jp1.b(new tp(callable));
    }

    private static NullPointerException b0(Throwable th) {
        NullPointerException nullPointerException = new NullPointerException("Actually not, but can't pass out an exception otherwise...");
        nullPointerException.initCause(th);
        return nullPointerException;
    }

    @b41
    @cs1("none")
    @gl
    public static np c(Future<?> future) {
        Cif.m29468else(future, "future is null");
        return a(io.reactivex.internal.functions.Cdo.m29414break(future));
    }

    @b41
    @cs1("none")
    @gl
    public static <T> np d(MaybeSource<T> maybeSource) {
        Cif.m29468else(maybeSource, "maybe is null");
        return jp1.b(new Cimplements(maybeSource));
    }

    @b41
    @cs1("none")
    @gl
    /* renamed from: do, reason: not valid java name */
    public static np m5296do(Iterable<? extends CompletableSource> iterable) {
        Cif.m29468else(iterable, "sources is null");
        return jp1.b(new io.reactivex.internal.operators.completable.Cdo(null, iterable));
    }

    @b41
    @cs1("none")
    @gl
    public static <T> np e(ObservableSource<T> observableSource) {
        Cif.m29468else(observableSource, "observable is null");
        return jp1.b(new Cconst(observableSource));
    }

    @b41
    @t6(s6.UNBOUNDED_IN)
    @cs1("none")
    @gl
    public static <T> np f(Publisher<T> publisher) {
        Cif.m29468else(publisher, "publisher is null");
        return jp1.b(new Cfinal(publisher));
    }

    @b41
    @cs1("none")
    @gl
    public static np f0(CompletableSource completableSource) {
        Cif.m29468else(completableSource, "source is null");
        if (completableSource instanceof np) {
            throw new IllegalArgumentException("Use of unsafeCreate(Completable)!");
        }
        return jp1.b(new vp(completableSource));
    }

    @b41
    @cs1("none")
    @gl
    public static np g(Runnable runnable) {
        Cif.m29468else(runnable, "run is null");
        return jp1.b(new up(runnable));
    }

    @b41
    @cs1("none")
    @gl
    public static <T> np h(SingleSource<T> singleSource) {
        Cif.m29468else(singleSource, "single is null");
        return jp1.b(new Csuper(singleSource));
    }

    @cs1("none")
    @gl
    public static <R> np h0(Callable<R> callable, Function<? super R, ? extends CompletableSource> function, Consumer<? super R> consumer) {
        return i0(callable, function, consumer, true);
    }

    @b41
    @cs1("none")
    @gl
    public static <R> np i0(Callable<R> callable, Function<? super R, ? extends CompletableSource> function, Consumer<? super R> consumer, boolean z) {
        Cif.m29468else(callable, "resourceSupplier is null");
        Cif.m29468else(function, "completableFunction is null");
        Cif.m29468else(consumer, "disposer is null");
        return jp1.b(new Cstrictfp(callable, function, consumer, z));
    }

    @b41
    @cs1("none")
    @gl
    /* renamed from: if, reason: not valid java name */
    public static np m5297if(CompletableSource... completableSourceArr) {
        Cif.m29468else(completableSourceArr, "sources is null");
        return completableSourceArr.length == 0 ? m5304super() : completableSourceArr.length == 1 ? j0(completableSourceArr[0]) : jp1.b(new io.reactivex.internal.operators.completable.Cdo(completableSourceArr, null));
    }

    @cs1("none")
    @t6(s6.FULL)
    @gl
    /* renamed from: import, reason: not valid java name */
    public static np m5298import(Publisher<? extends CompletableSource> publisher) {
        return m5300native(publisher, 2);
    }

    @b41
    @cs1("none")
    @gl
    /* renamed from: instanceof, reason: not valid java name */
    public static np m5299instanceof(Throwable th) {
        Cif.m29468else(th, "error is null");
        return jp1.b(new qp(th));
    }

    @b41
    @cs1("none")
    @gl
    public static np j0(CompletableSource completableSource) {
        Cif.m29468else(completableSource, "source is null");
        return completableSource instanceof np ? jp1.b((np) completableSource) : jp1.b(new vp(completableSource));
    }

    @b41
    @cs1("none")
    @gl
    public static np l(Iterable<? extends CompletableSource> iterable) {
        Cif.m29468else(iterable, "sources is null");
        return jp1.b(new Creturn(iterable));
    }

    @cs1("none")
    @t6(s6.UNBOUNDED_IN)
    @gl
    public static np m(Publisher<? extends CompletableSource> publisher) {
        return o(publisher, Integer.MAX_VALUE, false);
    }

    @cs1("none")
    @t6(s6.FULL)
    @gl
    public static np n(Publisher<? extends CompletableSource> publisher, int i) {
        return o(publisher, i, false);
    }

    @b41
    @t6(s6.FULL)
    @cs1("none")
    @gl
    /* renamed from: native, reason: not valid java name */
    public static np m5300native(Publisher<? extends CompletableSource> publisher, int i) {
        Cif.m29468else(publisher, "sources is null");
        Cif.m29470goto(i, "prefetch");
        return jp1.b(new Cnew(publisher, i));
    }

    @b41
    @t6(s6.FULL)
    @cs1("none")
    @gl
    private static np o(Publisher<? extends CompletableSource> publisher, int i, boolean z) {
        Cif.m29468else(publisher, "sources is null");
        Cif.m29470goto(i, "maxConcurrency");
        return jp1.b(new Cwhile(publisher, i, z));
    }

    @b41
    @cs1("none")
    @gl
    public static np p(CompletableSource... completableSourceArr) {
        Cif.m29468else(completableSourceArr, "sources is null");
        return completableSourceArr.length == 0 ? m5304super() : completableSourceArr.length == 1 ? j0(completableSourceArr[0]) : jp1.b(new Cimport(completableSourceArr));
    }

    @b41
    @cs1("none")
    @gl
    /* renamed from: protected, reason: not valid java name */
    private np m5301protected(Consumer<? super Disposable> consumer, Consumer<? super Throwable> consumer2, Action action, Action action2, Action action3, Action action4) {
        Cif.m29468else(consumer, "onSubscribe is null");
        Cif.m29468else(consumer2, "onError is null");
        Cif.m29468else(action, "onComplete is null");
        Cif.m29468else(action2, "onTerminate is null");
        Cif.m29468else(action3, "onAfterTerminate is null");
        Cif.m29468else(action4, "onDispose is null");
        return jp1.b(new Cthrows(this, consumer, consumer2, action, action2, action3, action4));
    }

    @b41
    @cs1("none")
    @gl
    /* renamed from: public, reason: not valid java name */
    public static np m5302public(CompletableSource... completableSourceArr) {
        Cif.m29468else(completableSourceArr, "sources is null");
        return completableSourceArr.length == 0 ? m5304super() : completableSourceArr.length == 1 ? j0(completableSourceArr[0]) : jp1.b(new io.reactivex.internal.operators.completable.Ctry(completableSourceArr));
    }

    @b41
    @cs1("none")
    @gl
    public static np q(CompletableSource... completableSourceArr) {
        Cif.m29468else(completableSourceArr, "sources is null");
        return jp1.b(new Cnative(completableSourceArr));
    }

    @b41
    @cs1("none")
    @gl
    public static np r(Iterable<? extends CompletableSource> iterable) {
        Cif.m29468else(iterable, "sources is null");
        return jp1.b(new Cpublic(iterable));
    }

    @cs1("none")
    @t6(s6.UNBOUNDED_IN)
    @gl
    public static np s(Publisher<? extends CompletableSource> publisher) {
        return o(publisher, Integer.MAX_VALUE, true);
    }

    @b41
    @cs1("none")
    @gl
    /* renamed from: static, reason: not valid java name */
    public static np m5303static(CompletableOnSubscribe completableOnSubscribe) {
        Cif.m29468else(completableOnSubscribe, "source is null");
        return jp1.b(new Celse(completableOnSubscribe));
    }

    @b41
    @cs1("none")
    @gl
    /* renamed from: super, reason: not valid java name */
    public static np m5304super() {
        return jp1.b(pp.f5167do);
    }

    @b41
    @cs1("none")
    @gl
    /* renamed from: switch, reason: not valid java name */
    public static np m5305switch(Callable<? extends CompletableSource> callable) {
        Cif.m29468else(callable, "completableSupplier");
        return jp1.b(new op(callable));
    }

    @b41
    @cs1("none")
    @gl
    /* renamed from: synchronized, reason: not valid java name */
    public static np m5306synchronized(Callable<? extends Throwable> callable) {
        Cif.m29468else(callable, "errorSupplier is null");
        return jp1.b(new rp(callable));
    }

    @cs1("none")
    @t6(s6.FULL)
    @gl
    public static np t(Publisher<? extends CompletableSource> publisher, int i) {
        return o(publisher, i, true);
    }

    @cs1("none")
    @gl
    public static np v() {
        return jp1.b(yp.f8279do);
    }

    @b41
    @cs1("none")
    @gl
    /* renamed from: while, reason: not valid java name */
    public static np m5307while(Iterable<? extends CompletableSource> iterable) {
        Cif.m29468else(iterable, "sources is null");
        return jp1.b(new Ccase(iterable));
    }

    @cs1("none")
    @gl
    public final np A() {
        return jp1.b(new Cthis(this));
    }

    @cs1("none")
    @gl
    public final np B() {
        return f(Z().b4());
    }

    @cs1("none")
    @gl
    public final np C(long j) {
        return f(Z().c4(j));
    }

    @cs1("none")
    @gl
    public final np D(BooleanSupplier booleanSupplier) {
        return f(Z().d4(booleanSupplier));
    }

    @cs1("none")
    @gl
    public final np E(Function<? super Cfor<Object>, ? extends Publisher<?>> function) {
        return f(Z().e4(function));
    }

    @cs1("none")
    @gl
    public final np F() {
        return f(Z().v4());
    }

    @cs1("none")
    @gl
    public final np G(long j) {
        return f(Z().w4(j));
    }

    @cs1("none")
    @gl
    public final np H(long j, Predicate<? super Throwable> predicate) {
        return f(Z().x4(j, predicate));
    }

    @cs1("none")
    @gl
    public final np I(BiPredicate<? super Integer, ? super Throwable> biPredicate) {
        return f(Z().y4(biPredicate));
    }

    @cs1("none")
    @gl
    public final np J(Predicate<? super Throwable> predicate) {
        return f(Z().z4(predicate));
    }

    @cs1("none")
    @gl
    public final np K(Function<? super Cfor<Throwable>, ? extends Publisher<?>> function) {
        return f(Z().B4(function));
    }

    @b41
    @cs1("none")
    @gl
    public final np L(CompletableSource completableSource) {
        Cif.m29468else(completableSource, "other is null");
        return m5302public(completableSource, this);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @b41
    @t6(s6.FULL)
    @cs1("none")
    @gl
    public final <T> Cfor<T> M(Publisher<T> publisher) {
        Cif.m29468else(publisher, "other is null");
        return Z().k5(publisher);
    }

    @b41
    @cs1("none")
    @gl
    public final <T> io.reactivex.Cnew<T> N(io.reactivex.Cnew<T> cnew) {
        Cif.m29468else(cnew, "other is null");
        return cnew.concatWith(c0());
    }

    public abstract void O(CompletableObserver completableObserver);

    @b41
    @cs1(cs1.F5)
    @gl
    public final np P(Ctry ctry) {
        Cif.m29468else(ctry, "scheduler is null");
        return jp1.b(new Cextends(this, ctry));
    }

    @b41
    @cs1("none")
    @gl
    public final np Q(CompletableSource completableSource) {
        Cif.m29468else(completableSource, "other is null");
        return jp1.b(new Cfinally(this, completableSource));
    }

    @cs1(cs1.G5)
    @gl
    public final np R(long j, TimeUnit timeUnit) {
        return V(j, timeUnit, Cdo.m29767do(), null);
    }

    @b41
    @cs1(cs1.G5)
    @gl
    public final np S(long j, TimeUnit timeUnit, CompletableSource completableSource) {
        Cif.m29468else(completableSource, "other is null");
        return V(j, timeUnit, Cdo.m29767do(), completableSource);
    }

    @cs1(cs1.F5)
    @gl
    public final np T(long j, TimeUnit timeUnit, Ctry ctry) {
        return V(j, timeUnit, ctry, null);
    }

    @b41
    @cs1(cs1.F5)
    @gl
    public final np U(long j, TimeUnit timeUnit, Ctry ctry, CompletableSource completableSource) {
        Cif.m29468else(completableSource, "other is null");
        return V(j, timeUnit, ctry, completableSource);
    }

    @cs1("none")
    @gl
    public final <U> U Y(Function<? super np, U> function) {
        try {
            return (U) ((Function) Cif.m29468else(function, "converter is null")).apply(this);
        } catch (Throwable th) {
            t80.m7781if(th);
            throw io.reactivex.internal.util.Ccase.m29712case(th);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @cs1("none")
    @t6(s6.FULL)
    @gl
    public final <T> Cfor<T> Z() {
        return this instanceof FuseToFlowable ? ((FuseToFlowable) this).fuseToFlowable() : jp1.h(new zp(this));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @cs1("none")
    @gl
    public final <T> fy0<T> a0() {
        return this instanceof FuseToMaybe ? ((FuseToMaybe) this).fuseToMaybe() : jp1.e(new io.reactivex.internal.operators.maybe.Cstrictfp(this));
    }

    @b41
    @cs1("none")
    @gl
    /* renamed from: abstract, reason: not valid java name */
    public final np m5308abstract(Action action) {
        Cif.m29468else(action, "onFinally is null");
        return jp1.b(new Ccatch(this, action));
    }

    @cs1("none")
    /* renamed from: break, reason: not valid java name */
    public final void m5309break() throws InterruptedException {
        ma maVar = new ma();
        subscribe(maVar);
        maVar.m4880if();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @cs1("none")
    @gl
    public final <T> io.reactivex.Cnew<T> c0() {
        return this instanceof FuseToObservable ? ((FuseToObservable) this).fuseToObservable() : jp1.i(new Cabstract(this));
    }

    @b41
    @cs1("none")
    @gl
    /* renamed from: case, reason: not valid java name */
    public final <T> jz1<T> m5310case(SingleSource<T> singleSource) {
        Cif.m29468else(singleSource, "next is null");
        return jp1.g(new io.reactivex.internal.operators.single.Ccase(singleSource, this));
    }

    @b41
    @cs1("none")
    @gl
    /* renamed from: catch, reason: not valid java name */
    public final boolean m5311catch(long j, TimeUnit timeUnit) {
        Cif.m29468else(timeUnit, "unit is null");
        ma maVar = new ma();
        subscribe(maVar);
        return maVar.m4878do(j, timeUnit);
    }

    @cs1("none")
    @a51
    @gl
    /* renamed from: class, reason: not valid java name */
    public final Throwable m5312class() {
        ma maVar = new ma();
        subscribe(maVar);
        return maVar.m4881new();
    }

    @cs1("none")
    @a51
    @gl
    /* renamed from: const, reason: not valid java name */
    public final Throwable m5313const(long j, TimeUnit timeUnit) {
        Cif.m29468else(timeUnit, "unit is null");
        ma maVar = new ma();
        subscribe(maVar);
        return maVar.m4882try(j, timeUnit);
    }

    @cs1("none")
    @gl
    /* renamed from: continue, reason: not valid java name */
    public final np m5314continue(Action action) {
        Consumer<? super Disposable> consumerM29427goto = io.reactivex.internal.functions.Cdo.m29427goto();
        Consumer<? super Throwable> consumerM29427goto2 = io.reactivex.internal.functions.Cdo.m29427goto();
        Action action2 = io.reactivex.internal.functions.Cdo.f25282for;
        return m5301protected(consumerM29427goto, consumerM29427goto2, action, action2, action2, action2);
    }

    @b41
    @cs1("none")
    @gl
    public final <T> jz1<T> d0(Callable<? extends T> callable) {
        Cif.m29468else(callable, "completionValueSupplier is null");
        return jp1.g(new Ccontinue(this, callable, null));
    }

    @cs1(cs1.F5)
    @gl
    /* renamed from: default, reason: not valid java name */
    public final np m5315default(long j, TimeUnit timeUnit, Ctry ctry) {
        return m5317extends(j, timeUnit, ctry, false);
    }

    @b41
    @cs1("none")
    @gl
    public final <T> jz1<T> e0(T t) {
        Cif.m29468else(t, "completionValue is null");
        return jp1.g(new Ccontinue(this, null, t));
    }

    @b41
    @t6(s6.FULL)
    @cs1("none")
    @gl
    /* renamed from: else, reason: not valid java name */
    public final <T> Cfor<T> m5316else(Publisher<T> publisher) {
        Cif.m29468else(publisher, "next is null");
        return jp1.h(new io.reactivex.internal.operators.mixed.Cif(this, publisher));
    }

    @b41
    @cs1(cs1.F5)
    @gl
    /* renamed from: extends, reason: not valid java name */
    public final np m5317extends(long j, TimeUnit timeUnit, Ctry ctry, boolean z) {
        Cif.m29468else(timeUnit, "unit is null");
        Cif.m29468else(ctry, "scheduler is null");
        return jp1.b(new Cgoto(this, j, timeUnit, ctry, z));
    }

    @cs1("none")
    @gl
    /* renamed from: final, reason: not valid java name */
    public final np m5318final() {
        return jp1.b(new io.reactivex.internal.operators.completable.Cfor(this));
    }

    @cs1(cs1.G5)
    @f90
    @gl
    /* renamed from: finally, reason: not valid java name */
    public final np m5319finally(long j, TimeUnit timeUnit) {
        return m5325package(j, timeUnit, Cdo.m29767do());
    }

    @b41
    @cs1("none")
    @gl
    /* renamed from: for, reason: not valid java name */
    public final np m5320for(CompletableSource completableSource) {
        Cif.m29468else(completableSource, "other is null");
        return m5297if(this, completableSource);
    }

    @b41
    @cs1(cs1.F5)
    @gl
    public final np g0(Ctry ctry) {
        Cif.m29468else(ctry, "scheduler is null");
        return jp1.b(new Cbreak(this, ctry));
    }

    @b41
    @cs1("none")
    @gl
    /* renamed from: goto, reason: not valid java name */
    public final <T> io.reactivex.Cnew<T> m5321goto(ObservableSource<T> observableSource) {
        Cif.m29468else(observableSource, "next is null");
        return jp1.i(new io.reactivex.internal.operators.mixed.Cdo(this, observableSource));
    }

    @cs1("none")
    @gl
    public final np i() {
        return jp1.b(new Cthrow(this));
    }

    @cs1("none")
    @gl
    /* renamed from: implements, reason: not valid java name */
    public final np m5322implements(Action action) {
        Consumer<? super Disposable> consumerM29427goto = io.reactivex.internal.functions.Cdo.m29427goto();
        Consumer<? super Throwable> consumerM29427goto2 = io.reactivex.internal.functions.Cdo.m29427goto();
        Action action2 = io.reactivex.internal.functions.Cdo.f25282for;
        return m5301protected(consumerM29427goto, consumerM29427goto2, action2, action, action2, action2);
    }

    @b41
    @cs1("none")
    @gl
    /* renamed from: interface, reason: not valid java name */
    public final np m5323interface(Consumer<? super Throwable> consumer) {
        Cif.m29468else(consumer, "onEvent is null");
        return jp1.b(new Cclass(this, consumer));
    }

    @b41
    @cs1("none")
    @gl
    public final np j(CompletableOperator completableOperator) {
        Cif.m29468else(completableOperator, "onLift is null");
        return jp1.b(new wp(this, completableOperator));
    }

    @cs1("none")
    @f90
    @gl
    public final <T> jz1<t41<T>> k() {
        return jp1.g(new xp(this));
    }

    @cs1("none")
    @gl
    /* renamed from: new, reason: not valid java name */
    public final np m5324new(CompletableSource completableSource) {
        Cif.m29468else(completableSource, "next is null");
        return jp1.b(new io.reactivex.internal.operators.completable.Cif(this, completableSource));
    }

    @cs1(cs1.F5)
    @f90
    @gl
    /* renamed from: package, reason: not valid java name */
    public final np m5325package(long j, TimeUnit timeUnit, Ctry ctry) {
        return X(j, timeUnit, ctry).m5324new(this);
    }

    @cs1("none")
    @gl
    /* renamed from: private, reason: not valid java name */
    public final np m5326private(Action action) {
        Consumer<? super Disposable> consumerM29427goto = io.reactivex.internal.functions.Cdo.m29427goto();
        Consumer<? super Throwable> consumerM29427goto2 = io.reactivex.internal.functions.Cdo.m29427goto();
        Action action2 = io.reactivex.internal.functions.Cdo.f25282for;
        return m5301protected(consumerM29427goto, consumerM29427goto2, action2, action2, action, action2);
    }

    @b41
    @cs1("none")
    @gl
    /* renamed from: return, reason: not valid java name */
    public final np m5327return(CompletableSource completableSource) {
        Cif.m29468else(completableSource, "other is null");
        return jp1.b(new io.reactivex.internal.operators.completable.Cif(this, completableSource));
    }

    @cs1("none")
    @gl
    /* renamed from: strictfp, reason: not valid java name */
    public final np m5328strictfp(Action action) {
        Consumer<? super Disposable> consumerM29427goto = io.reactivex.internal.functions.Cdo.m29427goto();
        Consumer<? super Throwable> consumerM29427goto2 = io.reactivex.internal.functions.Cdo.m29427goto();
        Action action2 = io.reactivex.internal.functions.Cdo.f25282for;
        return m5301protected(consumerM29427goto, consumerM29427goto2, action2, action2, action2, action);
    }

    @cs1("none")
    public final Disposable subscribe() {
        u60 u60Var = new u60();
        subscribe(u60Var);
        return u60Var;
    }

    @cs1("none")
    @gl
    public final <E extends CompletableObserver> E subscribeWith(E e) {
        subscribe(e);
        return e;
    }

    @cs1("none")
    @gl
    public final io.reactivex.observers.Cif<Void> test() {
        io.reactivex.observers.Cif<Void> cif = new io.reactivex.observers.Cif<>();
        subscribe(cif);
        return cif;
    }

    @cs1("none")
    @gl
    /* renamed from: this, reason: not valid java name */
    public final <R> R m5329this(@b41 CompletableConverter<? extends R> completableConverter) {
        return (R) ((CompletableConverter) Cif.m29468else(completableConverter, "converter is null")).apply(this);
    }

    @cs1("none")
    @gl
    /* renamed from: throw, reason: not valid java name */
    public final np m5330throw(CompletableTransformer completableTransformer) {
        return j0(((CompletableTransformer) Cif.m29468else(completableTransformer, "transformer is null")).apply(this));
    }

    @cs1(cs1.G5)
    @gl
    /* renamed from: throws, reason: not valid java name */
    public final np m5331throws(long j, TimeUnit timeUnit) {
        return m5317extends(j, timeUnit, Cdo.m29767do(), false);
    }

    @cs1("none")
    @gl
    /* renamed from: transient, reason: not valid java name */
    public final np m5332transient(Consumer<? super Disposable> consumer) {
        Consumer<? super Throwable> consumerM29427goto = io.reactivex.internal.functions.Cdo.m29427goto();
        Action action = io.reactivex.internal.functions.Cdo.f25282for;
        return m5301protected(consumer, consumerM29427goto, action, action, action, action);
    }

    @b41
    @cs1("none")
    @gl
    /* renamed from: try, reason: not valid java name */
    public final <T> fy0<T> m5333try(MaybeSource<T> maybeSource) {
        Cif.m29468else(maybeSource, "next is null");
        return jp1.e(new io.reactivex.internal.operators.maybe.Cconst(maybeSource, this));
    }

    @b41
    @cs1("none")
    @gl
    public final np u(CompletableSource completableSource) {
        Cif.m29468else(completableSource, "other is null");
        return p(this, completableSource);
    }

    @cs1("none")
    @gl
    /* renamed from: volatile, reason: not valid java name */
    public final np m5334volatile(Consumer<? super Throwable> consumer) {
        Consumer<? super Disposable> consumerM29427goto = io.reactivex.internal.functions.Cdo.m29427goto();
        Action action = io.reactivex.internal.functions.Cdo.f25282for;
        return m5301protected(consumerM29427goto, consumer, action, action, action, action);
    }

    @b41
    @cs1(cs1.F5)
    @gl
    public final np w(Ctry ctry) {
        Cif.m29468else(ctry, "scheduler is null");
        return jp1.b(new Cstatic(this, ctry));
    }

    @cs1("none")
    @gl
    public final np x() {
        return y(io.reactivex.internal.functions.Cdo.m29426for());
    }

    @b41
    @cs1("none")
    @gl
    public final np y(Predicate<? super Throwable> predicate) {
        Cif.m29468else(predicate, "predicate is null");
        return jp1.b(new Cswitch(this, predicate));
    }

    @b41
    @cs1("none")
    @gl
    public final np z(Function<? super Throwable, ? extends CompletableSource> function) {
        Cif.m29468else(function, "errorMapper is null");
        return jp1.b(new Cdefault(this, function));
    }

    @Override // io.reactivex.CompletableSource
    @cs1("none")
    public final void subscribe(CompletableObserver completableObserver) {
        Cif.m29468else(completableObserver, "observer is null");
        try {
            CompletableObserver completableObserverQ = jp1.q(this, completableObserver);
            Cif.m29468else(completableObserverQ, "The RxJavaPlugins.onSubscribe hook returned a null CompletableObserver. Please check the handler provided to RxJavaPlugins.setOnCompletableSubscribe for invalid null returns. Further reading: https://github.com/ReactiveX/RxJava/wiki/Plugins");
            O(completableObserverQ);
        } catch (NullPointerException e) {
            throw e;
        } catch (Throwable th) {
            t80.m7781if(th);
            jp1.l(th);
            throw b0(th);
        }
    }

    @cs1("none")
    @gl
    public final io.reactivex.observers.Cif<Void> test(boolean z) {
        io.reactivex.observers.Cif<Void> cif = new io.reactivex.observers.Cif<>();
        if (z) {
            cif.cancel();
        }
        subscribe(cif);
        return cif;
    }

    @b41
    @cs1("none")
    @gl
    public final Disposable subscribe(Action action, Consumer<? super Throwable> consumer) {
        Cif.m29468else(consumer, "onError is null");
        Cif.m29468else(action, "onComplete is null");
        io.reactivex.internal.observers.Cdo cdo = new io.reactivex.internal.observers.Cdo(consumer, action);
        subscribe(cdo);
        return cdo;
    }

    @b41
    @cs1("none")
    @gl
    public final Disposable subscribe(Action action) {
        Cif.m29468else(action, "onComplete is null");
        io.reactivex.internal.observers.Cdo cdo = new io.reactivex.internal.observers.Cdo(action);
        subscribe(cdo);
        return cdo;
    }
}
