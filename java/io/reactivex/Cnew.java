package io.reactivex;

import android.support.v4.a61;
import android.support.v4.b41;
import android.support.v4.b61;
import android.support.v4.c61;
import android.support.v4.cs1;
import android.support.v4.d61;
import android.support.v4.e61;
import android.support.v4.e72;
import android.support.v4.f90;
import android.support.v4.fy0;
import android.support.v4.gi0;
import android.support.v4.gl;
import android.support.v4.ha;
import android.support.v4.hd0;
import android.support.v4.jp1;
import android.support.v4.jz1;
import android.support.v4.ka;
import android.support.v4.np;
import android.support.v4.pq;
import android.support.v4.rr1;
import android.support.v4.s6;
import android.support.v4.t41;
import android.support.v4.t6;
import android.support.v4.t80;
import android.support.v4.y51;
import android.support.v4.z51;
import android.support.v4.zr0;
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
import io.reactivex.internal.functions.Cif;
import io.reactivex.internal.fuseable.ScalarCallable;
import io.reactivex.internal.operators.flowable.o;
import io.reactivex.internal.operators.mixed.Ccatch;
import io.reactivex.internal.operators.mixed.Cclass;
import io.reactivex.internal.operators.mixed.Cconst;
import io.reactivex.internal.operators.mixed.Cfinal;
import io.reactivex.internal.operators.mixed.Csuper;
import io.reactivex.internal.operators.observable.Cabstract;
import io.reactivex.internal.operators.observable.Cbreak;
import io.reactivex.internal.operators.observable.Ccontinue;
import io.reactivex.internal.operators.observable.Celse;
import io.reactivex.internal.operators.observable.Cextends;
import io.reactivex.internal.operators.observable.Cfinally;
import io.reactivex.internal.operators.observable.Cfor;
import io.reactivex.internal.operators.observable.Cgoto;
import io.reactivex.internal.operators.observable.Cimplements;
import io.reactivex.internal.operators.observable.Cimport;
import io.reactivex.internal.operators.observable.Cinstanceof;
import io.reactivex.internal.operators.observable.Cinterface;
import io.reactivex.internal.operators.observable.Cnative;
import io.reactivex.internal.operators.observable.Cpackage;
import io.reactivex.internal.operators.observable.Cprivate;
import io.reactivex.internal.operators.observable.Cprotected;
import io.reactivex.internal.operators.observable.Cpublic;
import io.reactivex.internal.operators.observable.Creturn;
import io.reactivex.internal.operators.observable.Cstatic;
import io.reactivex.internal.operators.observable.Cstrictfp;
import io.reactivex.internal.operators.observable.Cswitch;
import io.reactivex.internal.operators.observable.Csynchronized;
import io.reactivex.internal.operators.observable.Cthrow;
import io.reactivex.internal.operators.observable.Cthrows;
import io.reactivex.internal.operators.observable.Ctransient;
import io.reactivex.internal.operators.observable.Cvolatile;
import io.reactivex.internal.operators.observable.ObservableGroupJoin;
import io.reactivex.internal.operators.observable.ObservableReplay;
import io.reactivex.internal.operators.observable.ObservableTimeout;
import io.reactivex.internal.operators.observable.ObservableTimeoutTimed;
import io.reactivex.internal.operators.observable.a0;
import io.reactivex.internal.operators.observable.a1;
import io.reactivex.internal.operators.observable.a2;
import io.reactivex.internal.operators.observable.b;
import io.reactivex.internal.operators.observable.b0;
import io.reactivex.internal.operators.observable.b1;
import io.reactivex.internal.operators.observable.b2;
import io.reactivex.internal.operators.observable.c;
import io.reactivex.internal.operators.observable.c0;
import io.reactivex.internal.operators.observable.c1;
import io.reactivex.internal.operators.observable.c2;
import io.reactivex.internal.operators.observable.d;
import io.reactivex.internal.operators.observable.d0;
import io.reactivex.internal.operators.observable.d1;
import io.reactivex.internal.operators.observable.d2;
import io.reactivex.internal.operators.observable.e;
import io.reactivex.internal.operators.observable.e0;
import io.reactivex.internal.operators.observable.e2;
import io.reactivex.internal.operators.observable.f0;
import io.reactivex.internal.operators.observable.f1;
import io.reactivex.internal.operators.observable.f2;
import io.reactivex.internal.operators.observable.g;
import io.reactivex.internal.operators.observable.g0;
import io.reactivex.internal.operators.observable.g1;
import io.reactivex.internal.operators.observable.g2;
import io.reactivex.internal.operators.observable.h;
import io.reactivex.internal.operators.observable.h0;
import io.reactivex.internal.operators.observable.h1;
import io.reactivex.internal.operators.observable.h2;
import io.reactivex.internal.operators.observable.i;
import io.reactivex.internal.operators.observable.i0;
import io.reactivex.internal.operators.observable.i1;
import io.reactivex.internal.operators.observable.i2;
import io.reactivex.internal.operators.observable.j;
import io.reactivex.internal.operators.observable.j0;
import io.reactivex.internal.operators.observable.j1;
import io.reactivex.internal.operators.observable.j2;
import io.reactivex.internal.operators.observable.k;
import io.reactivex.internal.operators.observable.k0;
import io.reactivex.internal.operators.observable.k1;
import io.reactivex.internal.operators.observable.k2;
import io.reactivex.internal.operators.observable.l;
import io.reactivex.internal.operators.observable.l1;
import io.reactivex.internal.operators.observable.l2;
import io.reactivex.internal.operators.observable.m;
import io.reactivex.internal.operators.observable.m0;
import io.reactivex.internal.operators.observable.m1;
import io.reactivex.internal.operators.observable.m2;
import io.reactivex.internal.operators.observable.n;
import io.reactivex.internal.operators.observable.n0;
import io.reactivex.internal.operators.observable.n1;
import io.reactivex.internal.operators.observable.n2;
import io.reactivex.internal.operators.observable.o0;
import io.reactivex.internal.operators.observable.o1;
import io.reactivex.internal.operators.observable.o2;
import io.reactivex.internal.operators.observable.p;
import io.reactivex.internal.operators.observable.p0;
import io.reactivex.internal.operators.observable.p1;
import io.reactivex.internal.operators.observable.q;
import io.reactivex.internal.operators.observable.q0;
import io.reactivex.internal.operators.observable.q1;
import io.reactivex.internal.operators.observable.r;
import io.reactivex.internal.operators.observable.r0;
import io.reactivex.internal.operators.observable.r1;
import io.reactivex.internal.operators.observable.s;
import io.reactivex.internal.operators.observable.s1;
import io.reactivex.internal.operators.observable.t;
import io.reactivex.internal.operators.observable.t0;
import io.reactivex.internal.operators.observable.t1;
import io.reactivex.internal.operators.observable.u;
import io.reactivex.internal.operators.observable.u0;
import io.reactivex.internal.operators.observable.u1;
import io.reactivex.internal.operators.observable.v;
import io.reactivex.internal.operators.observable.v0;
import io.reactivex.internal.operators.observable.v1;
import io.reactivex.internal.operators.observable.w;
import io.reactivex.internal.operators.observable.w0;
import io.reactivex.internal.operators.observable.w1;
import io.reactivex.internal.operators.observable.x;
import io.reactivex.internal.operators.observable.x0;
import io.reactivex.internal.operators.observable.x1;
import io.reactivex.internal.operators.observable.y;
import io.reactivex.internal.operators.observable.y0;
import io.reactivex.internal.operators.observable.y1;
import io.reactivex.internal.operators.observable.z;
import io.reactivex.internal.operators.observable.z0;
import io.reactivex.internal.operators.observable.z1;
import io.reactivex.internal.util.Ccase;
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

/* renamed from: io.reactivex.new, reason: invalid class name */
/* loaded from: classes.dex */
public abstract class Cnew<T> implements ObservableSource<T> {

    /* renamed from: io.reactivex.new$do, reason: invalid class name */
    /* loaded from: classes3.dex */
    public static /* synthetic */ class Cdo {

        /* renamed from: do, reason: not valid java name */
        public static final /* synthetic */ int[] f27445do;

        static {
            int[] iArr = new int[Cif.values().length];
            f27445do = iArr;
            try {
                iArr[Cif.DROP.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f27445do[Cif.LATEST.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f27445do[Cif.MISSING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f27445do[Cif.ERROR.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    @b41
    @cs1("none")
    @gl
    public static <T> Cnew<T> amb(Iterable<? extends ObservableSource<? extends T>> iterable) {
        Cif.m29468else(iterable, "sources is null");
        return jp1.i(new Cgoto(null, iterable));
    }

    @b41
    @cs1("none")
    @gl
    public static <T> Cnew<T> ambArray(ObservableSource<? extends T>... observableSourceArr) {
        Cif.m29468else(observableSourceArr, "sources is null");
        int length = observableSourceArr.length;
        return length == 0 ? empty() : length == 1 ? wrap(observableSourceArr[0]) : jp1.i(new Cgoto(observableSourceArr, null));
    }

    public static int bufferSize() {
        return Cfor.g();
    }

    @cs1("none")
    @gl
    public static <T, R> Cnew<R> combineLatest(Function<? super Object[], ? extends R> function, int i, ObservableSource<? extends T>... observableSourceArr) {
        return combineLatest(observableSourceArr, function, i);
    }

    @cs1("none")
    @gl
    public static <T, R> Cnew<R> combineLatestDelayError(ObservableSource<? extends T>[] observableSourceArr, Function<? super Object[], ? extends R> function) {
        return combineLatestDelayError(observableSourceArr, function, bufferSize());
    }

    @b41
    @cs1("none")
    @gl
    public static <T> Cnew<T> concat(Iterable<? extends ObservableSource<? extends T>> iterable) {
        Cif.m29468else(iterable, "sources is null");
        return fromIterable(iterable).concatMapDelayError(io.reactivex.internal.functions.Cdo.m29416catch(), bufferSize(), false);
    }

    @cs1("none")
    @gl
    public static <T> Cnew<T> concatArray(ObservableSource<? extends T>... observableSourceArr) {
        return observableSourceArr.length == 0 ? empty() : observableSourceArr.length == 1 ? wrap(observableSourceArr[0]) : jp1.i(new Cpublic(fromArray(observableSourceArr), io.reactivex.internal.functions.Cdo.m29416catch(), bufferSize(), Ctry.BOUNDARY));
    }

    @cs1("none")
    @gl
    public static <T> Cnew<T> concatArrayDelayError(ObservableSource<? extends T>... observableSourceArr) {
        return observableSourceArr.length == 0 ? empty() : observableSourceArr.length == 1 ? wrap(observableSourceArr[0]) : concatDelayError(fromArray(observableSourceArr));
    }

    @cs1("none")
    @gl
    public static <T> Cnew<T> concatArrayEager(ObservableSource<? extends T>... observableSourceArr) {
        return concatArrayEager(bufferSize(), bufferSize(), observableSourceArr);
    }

    @cs1("none")
    @gl
    public static <T> Cnew<T> concatArrayEagerDelayError(ObservableSource<? extends T>... observableSourceArr) {
        return concatArrayEagerDelayError(bufferSize(), bufferSize(), observableSourceArr);
    }

    @b41
    @cs1("none")
    @gl
    public static <T> Cnew<T> concatDelayError(Iterable<? extends ObservableSource<? extends T>> iterable) {
        Cif.m29468else(iterable, "sources is null");
        return concatDelayError(fromIterable(iterable));
    }

    @cs1("none")
    @gl
    public static <T> Cnew<T> concatEager(ObservableSource<? extends ObservableSource<? extends T>> observableSource) {
        return concatEager(observableSource, bufferSize(), bufferSize());
    }

    @b41
    @cs1("none")
    @gl
    public static <T> Cnew<T> create(ObservableOnSubscribe<T> observableOnSubscribe) {
        Cif.m29468else(observableOnSubscribe, "source is null");
        return jp1.i(new Cfinally(observableOnSubscribe));
    }

    @b41
    @cs1("none")
    @gl
    public static <T> Cnew<T> defer(Callable<? extends ObservableSource<? extends T>> callable) {
        Cif.m29468else(callable, "supplier is null");
        return jp1.i(new z51(callable));
    }

    @cs1("none")
    @gl
    private Cnew<T> doOnEach(Consumer<? super T> consumer, Consumer<? super Throwable> consumer2, Action action, Action action2) {
        Cif.m29468else(consumer, "onNext is null");
        Cif.m29468else(consumer2, "onError is null");
        Cif.m29468else(action, "onComplete is null");
        Cif.m29468else(action2, "onAfterTerminate is null");
        return jp1.i(new Cinstanceof(this, consumer, consumer2, action, action2));
    }

    @cs1("none")
    @gl
    public static <T> Cnew<T> empty() {
        return jp1.i(a61.f47do);
    }

    @b41
    @cs1("none")
    @gl
    public static <T> Cnew<T> error(Callable<? extends Throwable> callable) {
        Cif.m29468else(callable, "errorSupplier is null");
        return jp1.i(new b61(callable));
    }

    @b41
    @cs1("none")
    @gl
    public static <T> Cnew<T> fromArray(T... tArr) {
        Cif.m29468else(tArr, "items is null");
        return tArr.length == 0 ? empty() : tArr.length == 1 ? just(tArr[0]) : jp1.i(new k(tArr));
    }

    @b41
    @cs1("none")
    @gl
    public static <T> Cnew<T> fromCallable(Callable<? extends T> callable) {
        Cif.m29468else(callable, "supplier is null");
        return jp1.i(new l(callable));
    }

    @b41
    @cs1("none")
    @gl
    public static <T> Cnew<T> fromFuture(Future<? extends T> future) {
        Cif.m29468else(future, "future is null");
        return jp1.i(new c61(future, 0L, null));
    }

    @b41
    @cs1("none")
    @gl
    public static <T> Cnew<T> fromIterable(Iterable<? extends T> iterable) {
        Cif.m29468else(iterable, "source is null");
        return jp1.i(new m(iterable));
    }

    @b41
    @t6(s6.UNBOUNDED_IN)
    @cs1("none")
    @gl
    public static <T> Cnew<T> fromPublisher(Publisher<? extends T> publisher) {
        Cif.m29468else(publisher, "publisher is null");
        return jp1.i(new n(publisher));
    }

    @b41
    @cs1("none")
    @gl
    public static <T> Cnew<T> generate(Consumer<Emitter<T>> consumer) {
        Cif.m29468else(consumer, "generator is null");
        return generate(io.reactivex.internal.functions.Cdo.m29436return(), t.m29620const(consumer), io.reactivex.internal.functions.Cdo.m29427goto());
    }

    @cs1(cs1.G5)
    @gl
    public static Cnew<Long> interval(long j, long j2, TimeUnit timeUnit) {
        return interval(j, j2, timeUnit, io.reactivex.schedulers.Cdo.m29767do());
    }

    @cs1(cs1.G5)
    @gl
    public static Cnew<Long> intervalRange(long j, long j2, long j3, long j4, TimeUnit timeUnit) {
        return intervalRange(j, j2, j3, j4, timeUnit, io.reactivex.schedulers.Cdo.m29767do());
    }

    @b41
    @cs1("none")
    @gl
    public static <T> Cnew<T> just(T t) {
        Cif.m29468else(t, "item is null");
        return jp1.i(new x(t));
    }

    @cs1("none")
    @gl
    public static <T> Cnew<T> merge(Iterable<? extends ObservableSource<? extends T>> iterable, int i, int i2) {
        return fromIterable(iterable).flatMap(io.reactivex.internal.functions.Cdo.m29416catch(), false, i, i2);
    }

    @cs1("none")
    @gl
    public static <T> Cnew<T> mergeArray(int i, int i2, ObservableSource<? extends T>... observableSourceArr) {
        return fromArray(observableSourceArr).flatMap(io.reactivex.internal.functions.Cdo.m29416catch(), false, i, i2);
    }

    @cs1("none")
    @gl
    public static <T> Cnew<T> mergeArrayDelayError(int i, int i2, ObservableSource<? extends T>... observableSourceArr) {
        return fromArray(observableSourceArr).flatMap(io.reactivex.internal.functions.Cdo.m29416catch(), true, i, i2);
    }

    @cs1("none")
    @gl
    public static <T> Cnew<T> mergeDelayError(Iterable<? extends ObservableSource<? extends T>> iterable) {
        return fromIterable(iterable).flatMap(io.reactivex.internal.functions.Cdo.m29416catch(), true);
    }

    @cs1("none")
    @gl
    public static <T> Cnew<T> never() {
        return jp1.i(e61.f1268do);
    }

    @cs1("none")
    @gl
    public static Cnew<Integer> range(int i, int i2) {
        if (i2 < 0) {
            throw new IllegalArgumentException("count >= 0 required but it was " + i2);
        }
        if (i2 == 0) {
            return empty();
        }
        if (i2 == 1) {
            return just(Integer.valueOf(i));
        }
        if (i + (i2 - 1) <= 2147483647L) {
            return jp1.i(new n0(i, i2));
        }
        throw new IllegalArgumentException("Integer overflow");
    }

    @cs1("none")
    @gl
    public static Cnew<Long> rangeLong(long j, long j2) {
        if (j2 < 0) {
            throw new IllegalArgumentException("count >= 0 required but it was " + j2);
        }
        if (j2 == 0) {
            return empty();
        }
        if (j2 == 1) {
            return just(Long.valueOf(j));
        }
        long j3 = (j2 - 1) + j;
        if (j <= 0 || j3 >= 0) {
            return jp1.i(new o0(j, j2));
        }
        throw new IllegalArgumentException("Overflow! start + count is bigger than Long.MAX_VALUE");
    }

    @cs1("none")
    @gl
    public static <T> jz1<Boolean> sequenceEqual(ObservableSource<? extends T> observableSource, ObservableSource<? extends T> observableSource2) {
        return sequenceEqual(observableSource, observableSource2, Cif.m29472new(), bufferSize());
    }

    @cs1("none")
    @gl
    public static <T> Cnew<T> switchOnNext(ObservableSource<? extends ObservableSource<? extends T>> observableSource, int i) {
        Cif.m29468else(observableSource, "sources is null");
        Cif.m29470goto(i, "bufferSize");
        return jp1.i(new q1(observableSource, io.reactivex.internal.functions.Cdo.m29416catch(), i, false));
    }

    @cs1("none")
    @gl
    public static <T> Cnew<T> switchOnNextDelayError(ObservableSource<? extends ObservableSource<? extends T>> observableSource) {
        return switchOnNextDelayError(observableSource, bufferSize());
    }

    private Cnew<T> timeout0(long j, TimeUnit timeUnit, ObservableSource<? extends T> observableSource, Ctry ctry) {
        Cif.m29468else(timeUnit, "timeUnit is null");
        Cif.m29468else(ctry, "scheduler is null");
        return jp1.i(new ObservableTimeoutTimed(this, j, timeUnit, ctry, observableSource));
    }

    @cs1(cs1.G5)
    @gl
    public static Cnew<Long> timer(long j, TimeUnit timeUnit) {
        return timer(j, timeUnit, io.reactivex.schedulers.Cdo.m29767do());
    }

    @cs1("none")
    @gl
    public static <T> Cnew<T> unsafeCreate(ObservableSource<T> observableSource) {
        Cif.m29468else(observableSource, "onSubscribe is null");
        if (observableSource instanceof Cnew) {
            throw new IllegalArgumentException("unsafeCreate(Observable) should be upgraded");
        }
        return jp1.i(new d61(observableSource));
    }

    @cs1("none")
    @gl
    public static <T, D> Cnew<T> using(Callable<? extends D> callable, Function<? super D, ? extends ObservableSource<? extends T>> function, Consumer<? super D> consumer) {
        return using(callable, function, consumer, true);
    }

    @cs1("none")
    @gl
    public static <T> Cnew<T> wrap(ObservableSource<T> observableSource) {
        Cif.m29468else(observableSource, "source is null");
        return observableSource instanceof Cnew ? jp1.i((Cnew) observableSource) : jp1.i(new d61(observableSource));
    }

    @cs1("none")
    @gl
    public static <T, R> Cnew<R> zip(Iterable<? extends ObservableSource<? extends T>> iterable, Function<? super Object[], ? extends R> function) {
        Cif.m29468else(function, "zipper is null");
        Cif.m29468else(iterable, "sources is null");
        return jp1.i(new n2(null, iterable, function, bufferSize(), false));
    }

    @cs1("none")
    @gl
    public static <T, R> Cnew<R> zipArray(Function<? super Object[], ? extends R> function, boolean z, int i, ObservableSource<? extends T>... observableSourceArr) {
        if (observableSourceArr.length == 0) {
            return empty();
        }
        Cif.m29468else(function, "zipper is null");
        Cif.m29470goto(i, "bufferSize");
        return jp1.i(new n2(observableSourceArr, null, function, i, z));
    }

    @cs1("none")
    @gl
    public static <T, R> Cnew<R> zipIterable(Iterable<? extends ObservableSource<? extends T>> iterable, Function<? super Object[], ? extends R> function, boolean z, int i) {
        Cif.m29468else(function, "zipper is null");
        Cif.m29468else(iterable, "sources is null");
        Cif.m29470goto(i, "bufferSize");
        return jp1.i(new n2(null, iterable, function, i, z));
    }

    @cs1("none")
    @gl
    public final jz1<Boolean> all(Predicate<? super T> predicate) {
        Cif.m29468else(predicate, "predicate is null");
        return jp1.g(new Celse(this, predicate));
    }

    @cs1("none")
    @gl
    public final Cnew<T> ambWith(ObservableSource<? extends T> observableSource) {
        Cif.m29468else(observableSource, "other is null");
        return ambArray(this, observableSource);
    }

    @cs1("none")
    @gl
    public final jz1<Boolean> any(Predicate<? super T> predicate) {
        Cif.m29468else(predicate, "predicate is null");
        return jp1.g(new Cbreak(this, predicate));
    }

    @cs1("none")
    @gl
    public final <R> R as(@b41 ObservableConverter<T, ? extends R> observableConverter) {
        return (R) ((ObservableConverter) Cif.m29468else(observableConverter, "converter is null")).apply(this);
    }

    @cs1("none")
    @gl
    public final T blockingFirst() throws InterruptedException {
        ha haVar = new ha();
        subscribe(haVar);
        T tM2231do = haVar.m2231do();
        if (tM2231do != null) {
            return tM2231do;
        }
        throw new NoSuchElementException();
    }

    @cs1("none")
    public final void blockingForEach(Consumer<? super T> consumer) {
        Iterator<T> it = blockingIterable().iterator();
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
    @gl
    public final Iterable<T> blockingIterable() {
        return blockingIterable(bufferSize());
    }

    @cs1("none")
    @gl
    public final T blockingLast() throws InterruptedException {
        ka kaVar = new ka();
        subscribe(kaVar);
        T tM2231do = kaVar.m2231do();
        if (tM2231do != null) {
            return tM2231do;
        }
        throw new NoSuchElementException();
    }

    @cs1("none")
    @gl
    public final Iterable<T> blockingLatest() {
        return new Cfor(this);
    }

    @cs1("none")
    @gl
    public final Iterable<T> blockingMostRecent(T t) {
        return new io.reactivex.internal.operators.observable.Cnew(this, t);
    }

    @cs1("none")
    @gl
    public final Iterable<T> blockingNext() {
        return new io.reactivex.internal.operators.observable.Ctry(this);
    }

    @cs1("none")
    @gl
    public final T blockingSingle() {
        T tM2486try = singleElement().m2486try();
        if (tM2486try != null) {
            return tM2486try;
        }
        throw new NoSuchElementException();
    }

    @cs1("none")
    public final void blockingSubscribe() {
        y51.m9757do(this);
    }

    @cs1("none")
    @gl
    public final Cnew<List<T>> buffer(int i) {
        return buffer(i, i);
    }

    @cs1("none")
    @gl
    public final Cnew<T> cache() {
        return cacheWithInitialCapacity(16);
    }

    @cs1("none")
    @gl
    public final Cnew<T> cacheWithInitialCapacity(int i) {
        Cif.m29470goto(i, "initialCapacity");
        return jp1.i(new Cthrow(this, i));
    }

    @cs1("none")
    @gl
    public final <U> Cnew<U> cast(Class<U> cls) {
        Cif.m29468else(cls, "clazz is null");
        return (Cnew<U>) map(io.reactivex.internal.functions.Cdo.m29444try(cls));
    }

    @cs1("none")
    @gl
    public final <U> jz1<U> collect(Callable<? extends U> callable, BiConsumer<? super U, ? super T> biConsumer) {
        Cif.m29468else(callable, "initialValueSupplier is null");
        Cif.m29468else(biConsumer, "collector is null");
        return jp1.g(new Cimport(this, callable, biConsumer));
    }

    @cs1("none")
    @gl
    public final <U> jz1<U> collectInto(U u, BiConsumer<? super U, ? super T> biConsumer) {
        Cif.m29468else(u, "initialValue is null");
        return collect(io.reactivex.internal.functions.Cdo.m29418const(u), biConsumer);
    }

    @cs1("none")
    @gl
    public final <R> Cnew<R> compose(ObservableTransformer<? super T, ? extends R> observableTransformer) {
        return wrap(((ObservableTransformer) Cif.m29468else(observableTransformer, "composer is null")).apply(this));
    }

    @cs1("none")
    @gl
    public final <R> Cnew<R> concatMap(Function<? super T, ? extends ObservableSource<? extends R>> function) {
        return concatMap(function, 2);
    }

    @cs1("none")
    @gl
    public final np concatMapCompletable(Function<? super T, ? extends CompletableSource> function) {
        return concatMapCompletable(function, 2);
    }

    @cs1("none")
    @gl
    public final np concatMapCompletableDelayError(Function<? super T, ? extends CompletableSource> function) {
        return concatMapCompletableDelayError(function, true, 2);
    }

    @cs1("none")
    @gl
    public final <R> Cnew<R> concatMapDelayError(Function<? super T, ? extends ObservableSource<? extends R>> function) {
        return concatMapDelayError(function, bufferSize(), true);
    }

    @cs1("none")
    @gl
    public final <R> Cnew<R> concatMapEager(Function<? super T, ? extends ObservableSource<? extends R>> function) {
        return concatMapEager(function, Integer.MAX_VALUE, bufferSize());
    }

    @cs1("none")
    @gl
    public final <R> Cnew<R> concatMapEagerDelayError(Function<? super T, ? extends ObservableSource<? extends R>> function, boolean z) {
        return concatMapEagerDelayError(function, Integer.MAX_VALUE, bufferSize(), z);
    }

    @cs1("none")
    @gl
    public final <U> Cnew<U> concatMapIterable(Function<? super T, ? extends Iterable<? extends U>> function) {
        Cif.m29468else(function, "mapper is null");
        return jp1.i(new j(this, function));
    }

    @cs1("none")
    @gl
    public final <R> Cnew<R> concatMapMaybe(Function<? super T, ? extends MaybeSource<? extends R>> function) {
        return concatMapMaybe(function, 2);
    }

    @cs1("none")
    @gl
    public final <R> Cnew<R> concatMapMaybeDelayError(Function<? super T, ? extends MaybeSource<? extends R>> function) {
        return concatMapMaybeDelayError(function, true, 2);
    }

    @cs1("none")
    @gl
    public final <R> Cnew<R> concatMapSingle(Function<? super T, ? extends SingleSource<? extends R>> function) {
        return concatMapSingle(function, 2);
    }

    @cs1("none")
    @gl
    public final <R> Cnew<R> concatMapSingleDelayError(Function<? super T, ? extends SingleSource<? extends R>> function) {
        return concatMapSingleDelayError(function, true, 2);
    }

    @cs1("none")
    @gl
    public final Cnew<T> concatWith(ObservableSource<? extends T> observableSource) {
        Cif.m29468else(observableSource, "other is null");
        return concat(this, observableSource);
    }

    @cs1("none")
    @gl
    public final jz1<Boolean> contains(Object obj) {
        Cif.m29468else(obj, "element is null");
        return any(io.reactivex.internal.functions.Cdo.m29441this(obj));
    }

    @cs1("none")
    @gl
    public final jz1<Long> count() {
        return jp1.g(new Cextends(this));
    }

    @cs1("none")
    @gl
    public final <U> Cnew<T> debounce(Function<? super T, ? extends ObservableSource<U>> function) {
        Cif.m29468else(function, "debounceSelector is null");
        return jp1.i(new Cpackage(this, function));
    }

    @cs1("none")
    @gl
    public final Cnew<T> defaultIfEmpty(T t) {
        Cif.m29468else(t, "defaultItem is null");
        return switchIfEmpty(just(t));
    }

    @cs1("none")
    @gl
    public final <U> Cnew<T> delay(Function<? super T, ? extends ObservableSource<U>> function) {
        Cif.m29468else(function, "itemDelay is null");
        return (Cnew<T>) flatMap(t.m29624for(function));
    }

    @cs1("none")
    @gl
    public final <U> Cnew<T> delaySubscription(ObservableSource<U> observableSource) {
        Cif.m29468else(observableSource, "other is null");
        return jp1.i(new Ccontinue(this, observableSource));
    }

    @cs1("none")
    @gl
    @Deprecated
    public final <T2> Cnew<T2> dematerialize() {
        return jp1.i(new Cstrictfp(this, io.reactivex.internal.functions.Cdo.m29416catch()));
    }

    @cs1("none")
    @gl
    public final Cnew<T> distinct() {
        return distinct(io.reactivex.internal.functions.Cdo.m29416catch(), io.reactivex.internal.functions.Cdo.m29422else());
    }

    @cs1("none")
    @gl
    public final Cnew<T> distinctUntilChanged() {
        return distinctUntilChanged(io.reactivex.internal.functions.Cdo.m29416catch());
    }

    @cs1("none")
    @gl
    public final Cnew<T> doAfterNext(Consumer<? super T> consumer) {
        Cif.m29468else(consumer, "onAfterNext is null");
        return jp1.i(new Ctransient(this, consumer));
    }

    @cs1("none")
    @gl
    public final Cnew<T> doAfterTerminate(Action action) {
        Cif.m29468else(action, "onFinally is null");
        return doOnEach(io.reactivex.internal.functions.Cdo.m29427goto(), io.reactivex.internal.functions.Cdo.m29427goto(), io.reactivex.internal.functions.Cdo.f25282for, action);
    }

    @cs1("none")
    @gl
    public final Cnew<T> doFinally(Action action) {
        Cif.m29468else(action, "onFinally is null");
        return jp1.i(new Cimplements(this, action));
    }

    @cs1("none")
    @gl
    public final Cnew<T> doOnComplete(Action action) {
        return doOnEach(io.reactivex.internal.functions.Cdo.m29427goto(), io.reactivex.internal.functions.Cdo.m29427goto(), action, io.reactivex.internal.functions.Cdo.f25282for);
    }

    @cs1("none")
    @gl
    public final Cnew<T> doOnDispose(Action action) {
        return doOnLifecycle(io.reactivex.internal.functions.Cdo.m29427goto(), action);
    }

    @cs1("none")
    @gl
    public final Cnew<T> doOnError(Consumer<? super Throwable> consumer) {
        Consumer<? super T> consumerM29427goto = io.reactivex.internal.functions.Cdo.m29427goto();
        Action action = io.reactivex.internal.functions.Cdo.f25282for;
        return doOnEach(consumerM29427goto, consumer, action, action);
    }

    @cs1("none")
    @gl
    public final Cnew<T> doOnLifecycle(Consumer<? super Disposable> consumer, Action action) {
        Cif.m29468else(consumer, "onSubscribe is null");
        Cif.m29468else(action, "onDispose is null");
        return jp1.i(new Csynchronized(this, consumer, action));
    }

    @cs1("none")
    @gl
    public final Cnew<T> doOnNext(Consumer<? super T> consumer) {
        Consumer<? super Throwable> consumerM29427goto = io.reactivex.internal.functions.Cdo.m29427goto();
        Action action = io.reactivex.internal.functions.Cdo.f25282for;
        return doOnEach(consumer, consumerM29427goto, action, action);
    }

    @cs1("none")
    @gl
    public final Cnew<T> doOnSubscribe(Consumer<? super Disposable> consumer) {
        return doOnLifecycle(consumer, io.reactivex.internal.functions.Cdo.f25282for);
    }

    @cs1("none")
    @gl
    public final Cnew<T> doOnTerminate(Action action) {
        Cif.m29468else(action, "onTerminate is null");
        return doOnEach(io.reactivex.internal.functions.Cdo.m29427goto(), io.reactivex.internal.functions.Cdo.m29421do(action), action, io.reactivex.internal.functions.Cdo.f25282for);
    }

    @cs1("none")
    @gl
    public final fy0<T> elementAt(long j) {
        if (j >= 0) {
            return jp1.e(new b(this, j));
        }
        throw new IndexOutOfBoundsException("index >= 0 required but it was " + j);
    }

    @cs1("none")
    @gl
    public final jz1<T> elementAtOrError(long j) {
        if (j >= 0) {
            return jp1.g(new c(this, j, null));
        }
        throw new IndexOutOfBoundsException("index >= 0 required but it was " + j);
    }

    @cs1("none")
    @gl
    public final Cnew<T> filter(Predicate<? super T> predicate) {
        Cif.m29468else(predicate, "predicate is null");
        return jp1.i(new d(this, predicate));
    }

    @cs1("none")
    @gl
    public final jz1<T> first(T t) {
        return elementAt(0L, t);
    }

    @cs1("none")
    @gl
    public final fy0<T> firstElement() {
        return elementAt(0L);
    }

    @cs1("none")
    @gl
    public final jz1<T> firstOrError() {
        return elementAtOrError(0L);
    }

    @cs1("none")
    @gl
    public final <R> Cnew<R> flatMap(Function<? super T, ? extends ObservableSource<? extends R>> function) {
        return flatMap((Function) function, false);
    }

    @cs1("none")
    @gl
    public final np flatMapCompletable(Function<? super T, ? extends CompletableSource> function) {
        return flatMapCompletable(function, false);
    }

    @cs1("none")
    @gl
    public final <U> Cnew<U> flatMapIterable(Function<? super T, ? extends Iterable<? extends U>> function) {
        Cif.m29468else(function, "mapper is null");
        return jp1.i(new j(this, function));
    }

    @cs1("none")
    @gl
    public final <R> Cnew<R> flatMapMaybe(Function<? super T, ? extends MaybeSource<? extends R>> function) {
        return flatMapMaybe(function, false);
    }

    @cs1("none")
    @gl
    public final <R> Cnew<R> flatMapSingle(Function<? super T, ? extends SingleSource<? extends R>> function) {
        return flatMapSingle(function, false);
    }

    @cs1("none")
    @gl
    public final Disposable forEach(Consumer<? super T> consumer) {
        return subscribe(consumer);
    }

    @cs1("none")
    @gl
    public final Disposable forEachWhile(Predicate<? super T> predicate) {
        return forEachWhile(predicate, io.reactivex.internal.functions.Cdo.f25277case, io.reactivex.internal.functions.Cdo.f25282for);
    }

    @cs1("none")
    @gl
    public final <K> Cnew<gi0<K, T>> groupBy(Function<? super T, ? extends K> function) {
        return (Cnew<gi0<K, T>>) groupBy(function, io.reactivex.internal.functions.Cdo.m29416catch(), false, bufferSize());
    }

    @cs1("none")
    @gl
    public final <TRight, TLeftEnd, TRightEnd, R> Cnew<R> groupJoin(ObservableSource<? extends TRight> observableSource, Function<? super T, ? extends ObservableSource<TLeftEnd>> function, Function<? super TRight, ? extends ObservableSource<TRightEnd>> function2, BiFunction<? super T, ? super Cnew<TRight>, ? extends R> biFunction) {
        Cif.m29468else(observableSource, "other is null");
        Cif.m29468else(function, "leftEnd is null");
        Cif.m29468else(function2, "rightEnd is null");
        Cif.m29468else(biFunction, "resultSelector is null");
        return jp1.i(new ObservableGroupJoin(this, observableSource, function, function2, biFunction));
    }

    @cs1("none")
    @gl
    public final Cnew<T> hide() {
        return jp1.i(new q(this));
    }

    @cs1("none")
    @gl
    public final np ignoreElements() {
        return jp1.b(new s(this));
    }

    @cs1("none")
    @gl
    public final jz1<Boolean> isEmpty() {
        return all(io.reactivex.internal.functions.Cdo.m29428if());
    }

    @cs1("none")
    @gl
    public final <TRight, TLeftEnd, TRightEnd, R> Cnew<R> join(ObservableSource<? extends TRight> observableSource, Function<? super T, ? extends ObservableSource<TLeftEnd>> function, Function<? super TRight, ? extends ObservableSource<TRightEnd>> function2, BiFunction<? super T, ? super TRight, ? extends R> biFunction) {
        Cif.m29468else(observableSource, "other is null");
        Cif.m29468else(function, "leftEnd is null");
        Cif.m29468else(function2, "rightEnd is null");
        Cif.m29468else(biFunction, "resultSelector is null");
        return jp1.i(new w(this, observableSource, function, function2, biFunction));
    }

    @cs1("none")
    @gl
    public final jz1<T> last(T t) {
        Cif.m29468else(t, "defaultItem is null");
        return jp1.g(new z(this, t));
    }

    @cs1("none")
    @gl
    public final fy0<T> lastElement() {
        return jp1.e(new y(this));
    }

    @cs1("none")
    @gl
    public final jz1<T> lastOrError() {
        return jp1.g(new z(this, null));
    }

    @cs1("none")
    @gl
    public final <R> Cnew<R> lift(ObservableOperator<? extends R, ? super T> observableOperator) {
        Cif.m29468else(observableOperator, "lifter is null");
        return jp1.i(new a0(this, observableOperator));
    }

    @cs1("none")
    @gl
    public final <R> Cnew<R> map(Function<? super T, ? extends R> function) {
        Cif.m29468else(function, "mapper is null");
        return jp1.i(new b0(this, function));
    }

    @cs1("none")
    @gl
    public final Cnew<t41<T>> materialize() {
        return jp1.i(new d0(this));
    }

    @cs1("none")
    @gl
    public final Cnew<T> mergeWith(ObservableSource<? extends T> observableSource) {
        Cif.m29468else(observableSource, "other is null");
        return merge(this, observableSource);
    }

    @cs1(cs1.F5)
    @gl
    public final Cnew<T> observeOn(Ctry ctry) {
        return observeOn(ctry, false, bufferSize());
    }

    @cs1("none")
    @gl
    public final <U> Cnew<U> ofType(Class<U> cls) {
        Cif.m29468else(cls, "clazz is null");
        return filter(io.reactivex.internal.functions.Cdo.m29417class(cls)).cast(cls);
    }

    @cs1("none")
    @gl
    public final Cnew<T> onErrorResumeNext(Function<? super Throwable, ? extends ObservableSource<? extends T>> function) {
        Cif.m29468else(function, "resumeFunction is null");
        return jp1.i(new i0(this, function, false));
    }

    @cs1("none")
    @gl
    public final Cnew<T> onErrorReturn(Function<? super Throwable, ? extends T> function) {
        Cif.m29468else(function, "valueSupplier is null");
        return jp1.i(new j0(this, function));
    }

    @cs1("none")
    @gl
    public final Cnew<T> onErrorReturnItem(T t) {
        Cif.m29468else(t, "item is null");
        return onErrorReturn(io.reactivex.internal.functions.Cdo.m29424final(t));
    }

    @cs1("none")
    @gl
    public final Cnew<T> onExceptionResumeNext(ObservableSource<? extends T> observableSource) {
        Cif.m29468else(observableSource, "next is null");
        return jp1.i(new i0(this, io.reactivex.internal.functions.Cdo.m29424final(observableSource), true));
    }

    @cs1("none")
    @gl
    public final Cnew<T> onTerminateDetach() {
        return jp1.i(new Cvolatile(this));
    }

    @cs1("none")
    @gl
    public final pq<T> publish() {
        return k0.m29585const(this);
    }

    @cs1("none")
    @gl
    public final fy0<T> reduce(BiFunction<T, T, T> biFunction) {
        Cif.m29468else(biFunction, "reducer is null");
        return jp1.e(new p0(this, biFunction));
    }

    @cs1("none")
    @gl
    public final <R> jz1<R> reduceWith(Callable<R> callable, BiFunction<R, ? super T, R> biFunction) {
        Cif.m29468else(callable, "seedSupplier is null");
        Cif.m29468else(biFunction, "reducer is null");
        return jp1.g(new r0(this, callable, biFunction));
    }

    @cs1("none")
    @gl
    public final Cnew<T> repeat() {
        return repeat(Long.MAX_VALUE);
    }

    @cs1("none")
    @gl
    public final Cnew<T> repeatUntil(BooleanSupplier booleanSupplier) {
        Cif.m29468else(booleanSupplier, "stop is null");
        return jp1.i(new u0(this, booleanSupplier));
    }

    @cs1("none")
    @gl
    public final Cnew<T> repeatWhen(Function<? super Cnew<Object>, ? extends ObservableSource<?>> function) {
        Cif.m29468else(function, "handler is null");
        return jp1.i(new v0(this, function));
    }

    @cs1("none")
    @gl
    public final pq<T> replay() {
        return ObservableReplay.m29566while(this);
    }

    @cs1("none")
    @gl
    public final Cnew<T> retry() {
        return retry(Long.MAX_VALUE, io.reactivex.internal.functions.Cdo.m29426for());
    }

    @cs1("none")
    @gl
    public final Cnew<T> retryUntil(BooleanSupplier booleanSupplier) {
        Cif.m29468else(booleanSupplier, "stop is null");
        return retry(Long.MAX_VALUE, io.reactivex.internal.functions.Cdo.m29437static(booleanSupplier));
    }

    @cs1("none")
    @gl
    public final Cnew<T> retryWhen(Function<? super Cnew<Throwable>, ? extends ObservableSource<?>> function) {
        Cif.m29468else(function, "handler is null");
        return jp1.i(new y0(this, function));
    }

    @cs1("none")
    public final void safeSubscribe(Observer<? super T> observer) {
        Cif.m29468else(observer, "observer is null");
        if (observer instanceof rr1) {
            subscribe(observer);
        } else {
            subscribe(new rr1(observer));
        }
    }

    @cs1(cs1.G5)
    @gl
    public final Cnew<T> sample(long j, TimeUnit timeUnit) {
        return sample(j, timeUnit, io.reactivex.schedulers.Cdo.m29767do());
    }

    @cs1("none")
    @gl
    public final Cnew<T> scan(BiFunction<T, T, T> biFunction) {
        Cif.m29468else(biFunction, "accumulator is null");
        return jp1.i(new c1(this, biFunction));
    }

    @cs1("none")
    @gl
    public final <R> Cnew<R> scanWith(Callable<R> callable, BiFunction<R, ? super T, R> biFunction) {
        Cif.m29468else(callable, "seedSupplier is null");
        Cif.m29468else(biFunction, "accumulator is null");
        return jp1.i(new d1(this, callable, biFunction));
    }

    @cs1("none")
    @gl
    public final Cnew<T> serialize() {
        return jp1.i(new g1(this));
    }

    @cs1("none")
    @gl
    public final Cnew<T> share() {
        return publish().m6173else();
    }

    @cs1("none")
    @gl
    public final jz1<T> single(T t) {
        Cif.m29468else(t, "defaultItem is null");
        return jp1.g(new i1(this, t));
    }

    @cs1("none")
    @gl
    public final fy0<T> singleElement() {
        return jp1.e(new h1(this));
    }

    @cs1("none")
    @gl
    public final jz1<T> singleOrError() {
        return jp1.g(new i1(this, null));
    }

    @cs1("none")
    @gl
    public final Cnew<T> skip(long j) {
        return j <= 0 ? jp1.i(this) : jp1.i(new j1(this, j));
    }

    @cs1("none")
    @gl
    public final Cnew<T> skipLast(int i) {
        if (i >= 0) {
            return i == 0 ? jp1.i(this) : jp1.i(new k1(this, i));
        }
        throw new IndexOutOfBoundsException("count >= 0 required but it was " + i);
    }

    @cs1("none")
    @gl
    public final <U> Cnew<T> skipUntil(ObservableSource<U> observableSource) {
        Cif.m29468else(observableSource, "other is null");
        return jp1.i(new m1(this, observableSource));
    }

    @cs1("none")
    @gl
    public final Cnew<T> skipWhile(Predicate<? super T> predicate) {
        Cif.m29468else(predicate, "predicate is null");
        return jp1.i(new n1(this, predicate));
    }

    @cs1("none")
    @gl
    public final Cnew<T> sorted() {
        return toList().x0().map(io.reactivex.internal.functions.Cdo.m29439super(io.reactivex.internal.functions.Cdo.m29442throw())).flatMapIterable(io.reactivex.internal.functions.Cdo.m29416catch());
    }

    @cs1("none")
    @gl
    public final Cnew<T> startWith(Iterable<? extends T> iterable) {
        return concatArray(fromIterable(iterable), this);
    }

    @cs1("none")
    @gl
    public final Cnew<T> startWithArray(T... tArr) {
        Cnew cnewFromArray = fromArray(tArr);
        return cnewFromArray == empty() ? jp1.i(this) : concatArray(cnewFromArray, this);
    }

    @cs1("none")
    public final Disposable subscribe() {
        return subscribe(io.reactivex.internal.functions.Cdo.m29427goto(), io.reactivex.internal.functions.Cdo.f25277case, io.reactivex.internal.functions.Cdo.f25282for, io.reactivex.internal.functions.Cdo.m29427goto());
    }

    public abstract void subscribeActual(Observer<? super T> observer);

    @cs1(cs1.F5)
    @gl
    public final Cnew<T> subscribeOn(Ctry ctry) {
        Cif.m29468else(ctry, "scheduler is null");
        return jp1.i(new o1(this, ctry));
    }

    @cs1("none")
    @gl
    public final <E extends Observer<? super T>> E subscribeWith(E e) {
        subscribe(e);
        return e;
    }

    @cs1("none")
    @gl
    public final Cnew<T> switchIfEmpty(ObservableSource<? extends T> observableSource) {
        Cif.m29468else(observableSource, "other is null");
        return jp1.i(new p1(this, observableSource));
    }

    @cs1("none")
    @gl
    public final <R> Cnew<R> switchMap(Function<? super T, ? extends ObservableSource<? extends R>> function) {
        return switchMap(function, bufferSize());
    }

    @cs1("none")
    @gl
    public final np switchMapCompletable(@b41 Function<? super T, ? extends CompletableSource> function) {
        Cif.m29468else(function, "mapper is null");
        return jp1.b(new Cfinal(this, function, false));
    }

    @cs1("none")
    @gl
    public final np switchMapCompletableDelayError(@b41 Function<? super T, ? extends CompletableSource> function) {
        Cif.m29468else(function, "mapper is null");
        return jp1.b(new Cfinal(this, function, true));
    }

    @cs1("none")
    @gl
    public final <R> Cnew<R> switchMapDelayError(Function<? super T, ? extends ObservableSource<? extends R>> function) {
        return switchMapDelayError(function, bufferSize());
    }

    @cs1("none")
    @gl
    public final <R> Cnew<R> switchMapMaybe(@b41 Function<? super T, ? extends MaybeSource<? extends R>> function) {
        Cif.m29468else(function, "mapper is null");
        return jp1.i(new Csuper(this, function, false));
    }

    @cs1("none")
    @gl
    public final <R> Cnew<R> switchMapMaybeDelayError(@b41 Function<? super T, ? extends MaybeSource<? extends R>> function) {
        Cif.m29468else(function, "mapper is null");
        return jp1.i(new Csuper(this, function, true));
    }

    @b41
    @cs1("none")
    @gl
    public final <R> Cnew<R> switchMapSingle(@b41 Function<? super T, ? extends SingleSource<? extends R>> function) {
        Cif.m29468else(function, "mapper is null");
        return jp1.i(new io.reactivex.internal.operators.mixed.Cthrow(this, function, false));
    }

    @b41
    @cs1("none")
    @gl
    public final <R> Cnew<R> switchMapSingleDelayError(@b41 Function<? super T, ? extends SingleSource<? extends R>> function) {
        Cif.m29468else(function, "mapper is null");
        return jp1.i(new io.reactivex.internal.operators.mixed.Cthrow(this, function, true));
    }

    @cs1("none")
    @gl
    public final Cnew<T> take(long j) {
        if (j >= 0) {
            return jp1.i(new r1(this, j));
        }
        throw new IllegalArgumentException("count >= 0 required but it was " + j);
    }

    @cs1("none")
    @gl
    public final Cnew<T> takeLast(int i) {
        if (i >= 0) {
            return i == 0 ? jp1.i(new r(this)) : i == 1 ? jp1.i(new t1(this)) : jp1.i(new s1(this, i));
        }
        throw new IndexOutOfBoundsException("count >= 0 required but it was " + i);
    }

    @cs1("none")
    @gl
    public final <U> Cnew<T> takeUntil(ObservableSource<U> observableSource) {
        Cif.m29468else(observableSource, "other is null");
        return jp1.i(new v1(this, observableSource));
    }

    @cs1("none")
    @gl
    public final Cnew<T> takeWhile(Predicate<? super T> predicate) {
        Cif.m29468else(predicate, "predicate is null");
        return jp1.i(new x1(this, predicate));
    }

    @cs1("none")
    @gl
    public final io.reactivex.observers.Cif<T> test() {
        io.reactivex.observers.Cif<T> cif = new io.reactivex.observers.Cif<>();
        subscribe(cif);
        return cif;
    }

    @cs1(cs1.G5)
    @gl
    public final Cnew<T> throttleFirst(long j, TimeUnit timeUnit) {
        return throttleFirst(j, timeUnit, io.reactivex.schedulers.Cdo.m29767do());
    }

    @cs1(cs1.G5)
    @gl
    public final Cnew<T> throttleLast(long j, TimeUnit timeUnit) {
        return sample(j, timeUnit);
    }

    @cs1(cs1.G5)
    @gl
    public final Cnew<T> throttleLatest(long j, TimeUnit timeUnit) {
        return throttleLatest(j, timeUnit, io.reactivex.schedulers.Cdo.m29767do(), false);
    }

    @cs1(cs1.G5)
    @gl
    public final Cnew<T> throttleWithTimeout(long j, TimeUnit timeUnit) {
        return debounce(j, timeUnit);
    }

    @cs1("none")
    @gl
    public final Cnew<e72<T>> timeInterval() {
        return timeInterval(TimeUnit.MILLISECONDS, io.reactivex.schedulers.Cdo.m29767do());
    }

    @cs1("none")
    @gl
    public final <V> Cnew<T> timeout(Function<? super T, ? extends ObservableSource<V>> function) {
        return timeout0(null, function, null);
    }

    @cs1("none")
    @gl
    public final Cnew<e72<T>> timestamp() {
        return timestamp(TimeUnit.MILLISECONDS, io.reactivex.schedulers.Cdo.m29767do());
    }

    @cs1("none")
    @gl
    public final <R> R to(Function<? super Cnew<T>, R> function) {
        try {
            return (R) ((Function) Cif.m29468else(function, "converter is null")).apply(this);
        } catch (Throwable th) {
            t80.m7781if(th);
            throw Ccase.m29712case(th);
        }
    }

    @cs1("none")
    @t6(s6.SPECIAL)
    @gl
    public final Cfor<T> toFlowable(Cif cif) {
        o oVar = new o(this);
        int i = Cdo.f27445do[cif.ordinal()];
        return i != 1 ? i != 2 ? i != 3 ? i != 4 ? oVar.x3() : jp1.h(new io.reactivex.internal.operators.flowable.n0(oVar)) : oVar : oVar.H3() : oVar.F3();
    }

    @cs1("none")
    @gl
    public final Future<T> toFuture() {
        return (Future) subscribeWith(new io.reactivex.internal.observers.Cfor());
    }

    @cs1("none")
    @gl
    public final jz1<List<T>> toList() {
        return toList(16);
    }

    @cs1("none")
    @gl
    public final <K> jz1<Map<K, T>> toMap(Function<? super T, ? extends K> function) {
        Cif.m29468else(function, "keySelector is null");
        return (jz1<Map<K, T>>) collect(io.reactivex.internal.util.Celse.asCallable(), io.reactivex.internal.functions.Cdo.m29438strictfp(function));
    }

    @cs1("none")
    @gl
    public final <K> jz1<Map<K, Collection<T>>> toMultimap(Function<? super T, ? extends K> function) {
        return (jz1<Map<K, Collection<T>>>) toMultimap(function, io.reactivex.internal.functions.Cdo.m29416catch(), io.reactivex.internal.util.Celse.asCallable(), io.reactivex.internal.util.Cdo.asFunction());
    }

    @cs1("none")
    @gl
    public final jz1<List<T>> toSortedList() {
        return toSortedList(io.reactivex.internal.functions.Cdo.m29446while());
    }

    @cs1(cs1.F5)
    @gl
    public final Cnew<T> unsubscribeOn(Ctry ctry) {
        Cif.m29468else(ctry, "scheduler is null");
        return jp1.i(new e2(this, ctry));
    }

    @cs1("none")
    @gl
    public final Cnew<Cnew<T>> window(long j) {
        return window(j, j, bufferSize());
    }

    @cs1("none")
    @gl
    public final <U, R> Cnew<R> withLatestFrom(ObservableSource<? extends U> observableSource, BiFunction<? super T, ? super U, ? extends R> biFunction) {
        Cif.m29468else(observableSource, "other is null");
        Cif.m29468else(biFunction, "combiner is null");
        return jp1.i(new l2(this, biFunction, observableSource));
    }

    @cs1("none")
    @gl
    public final <U, R> Cnew<R> zipWith(Iterable<U> iterable, BiFunction<? super T, ? super U, ? extends R> biFunction) {
        Cif.m29468else(iterable, "other is null");
        Cif.m29468else(biFunction, "zipper is null");
        return jp1.i(new o2(this, iterable, biFunction));
    }

    @cs1("none")
    @gl
    public static <T, R> Cnew<R> combineLatest(Iterable<? extends ObservableSource<? extends T>> iterable, Function<? super Object[], ? extends R> function) {
        return combineLatest(iterable, function, bufferSize());
    }

    @cs1("none")
    @gl
    public static <T, R> Cnew<R> combineLatestDelayError(Function<? super Object[], ? extends R> function, int i, ObservableSource<? extends T>... observableSourceArr) {
        return combineLatestDelayError(observableSourceArr, function, i);
    }

    @cs1("none")
    @gl
    public static <T> Cnew<T> concatArrayEager(int i, int i2, ObservableSource<? extends T>... observableSourceArr) {
        return fromArray(observableSourceArr).concatMapEagerDelayError(io.reactivex.internal.functions.Cdo.m29416catch(), i, i2, false);
    }

    @cs1("none")
    @gl
    public static <T> Cnew<T> concatArrayEagerDelayError(int i, int i2, ObservableSource<? extends T>... observableSourceArr) {
        return fromArray(observableSourceArr).concatMapEagerDelayError(io.reactivex.internal.functions.Cdo.m29416catch(), i, i2, true);
    }

    @cs1("none")
    @gl
    public static <T> Cnew<T> concatEager(ObservableSource<? extends ObservableSource<? extends T>> observableSource, int i, int i2) {
        return wrap(observableSource).concatMapEager(io.reactivex.internal.functions.Cdo.m29416catch(), i, i2);
    }

    @b41
    @cs1(cs1.F5)
    @gl
    public static Cnew<Long> interval(long j, long j2, TimeUnit timeUnit, Ctry ctry) {
        Cif.m29468else(timeUnit, "unit is null");
        Cif.m29468else(ctry, "scheduler is null");
        return jp1.i(new u(Math.max(0L, j), Math.max(0L, j2), timeUnit, ctry));
    }

    @b41
    @cs1(cs1.F5)
    @gl
    public static Cnew<Long> intervalRange(long j, long j2, long j3, long j4, TimeUnit timeUnit, Ctry ctry) {
        if (j2 < 0) {
            throw new IllegalArgumentException("count >= 0 required but it was " + j2);
        }
        if (j2 == 0) {
            return empty().delay(j3, timeUnit, ctry);
        }
        long j5 = j + (j2 - 1);
        if (j > 0 && j5 < 0) {
            throw new IllegalArgumentException("Overflow! start + count is bigger than Long.MAX_VALUE");
        }
        Cif.m29468else(timeUnit, "unit is null");
        Cif.m29468else(ctry, "scheduler is null");
        return jp1.i(new v(j, j5, Math.max(0L, j3), Math.max(0L, j4), timeUnit, ctry));
    }

    @cs1("none")
    @gl
    public static <T> Cnew<T> merge(Iterable<? extends ObservableSource<? extends T>> iterable) {
        return fromIterable(iterable).flatMap(io.reactivex.internal.functions.Cdo.m29416catch());
    }

    @cs1("none")
    @gl
    public static <T> Cnew<T> mergeArray(ObservableSource<? extends T>... observableSourceArr) {
        return fromArray(observableSourceArr).flatMap(io.reactivex.internal.functions.Cdo.m29416catch(), observableSourceArr.length);
    }

    @cs1("none")
    @gl
    public static <T> Cnew<T> mergeArrayDelayError(ObservableSource<? extends T>... observableSourceArr) {
        return fromArray(observableSourceArr).flatMap(io.reactivex.internal.functions.Cdo.m29416catch(), true, observableSourceArr.length);
    }

    @cs1("none")
    @gl
    public static <T> Cnew<T> mergeDelayError(Iterable<? extends ObservableSource<? extends T>> iterable, int i, int i2) {
        return fromIterable(iterable).flatMap(io.reactivex.internal.functions.Cdo.m29416catch(), true, i, i2);
    }

    @cs1("none")
    @gl
    public static <T> jz1<Boolean> sequenceEqual(ObservableSource<? extends T> observableSource, ObservableSource<? extends T> observableSource2, BiPredicate<? super T, ? super T> biPredicate) {
        return sequenceEqual(observableSource, observableSource2, biPredicate, bufferSize());
    }

    @cs1("none")
    @gl
    public static <T> Cnew<T> switchOnNextDelayError(ObservableSource<? extends ObservableSource<? extends T>> observableSource, int i) {
        Cif.m29468else(observableSource, "sources is null");
        Cif.m29470goto(i, "prefetch");
        return jp1.i(new q1(observableSource, io.reactivex.internal.functions.Cdo.m29416catch(), i, true));
    }

    @cs1(cs1.F5)
    @gl
    public static Cnew<Long> timer(long j, TimeUnit timeUnit, Ctry ctry) {
        Cif.m29468else(timeUnit, "unit is null");
        Cif.m29468else(ctry, "scheduler is null");
        return jp1.i(new b2(Math.max(j, 0L), timeUnit, ctry));
    }

    @cs1("none")
    @gl
    public static <T, D> Cnew<T> using(Callable<? extends D> callable, Function<? super D, ? extends ObservableSource<? extends T>> function, Consumer<? super D> consumer, boolean z) {
        Cif.m29468else(callable, "resourceSupplier is null");
        Cif.m29468else(function, "sourceSupplier is null");
        Cif.m29468else(consumer, "disposer is null");
        return jp1.i(new f2(callable, function, consumer, z));
    }

    @cs1("none")
    @gl
    public final Iterable<T> blockingIterable(int i) {
        Cif.m29470goto(i, "bufferSize");
        return new io.reactivex.internal.operators.observable.Cif(this, i);
    }

    @cs1("none")
    public final void blockingSubscribe(Consumer<? super T> consumer) {
        y51.m9758for(this, consumer, io.reactivex.internal.functions.Cdo.f25277case, io.reactivex.internal.functions.Cdo.f25282for);
    }

    @cs1("none")
    @gl
    public final Cnew<List<T>> buffer(int i, int i2) {
        return (Cnew<List<T>>) buffer(i, i2, io.reactivex.internal.util.Cdo.asCallable());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @cs1("none")
    @gl
    public final <R> Cnew<R> concatMap(Function<? super T, ? extends ObservableSource<? extends R>> function, int i) {
        Cif.m29468else(function, "mapper is null");
        Cif.m29470goto(i, "prefetch");
        if (!(this instanceof ScalarCallable)) {
            return jp1.i(new Cpublic(this, function, i, Ctry.IMMEDIATE));
        }
        Object objCall = ((ScalarCallable) this).call();
        return objCall == null ? empty() : b1.m29568do(objCall, function);
    }

    @cs1("none")
    @gl
    public final np concatMapCompletable(Function<? super T, ? extends CompletableSource> function, int i) {
        Cif.m29468else(function, "mapper is null");
        Cif.m29470goto(i, "capacityHint");
        return jp1.b(new Ccatch(this, function, Ctry.IMMEDIATE, i));
    }

    @cs1("none")
    @gl
    public final np concatMapCompletableDelayError(Function<? super T, ? extends CompletableSource> function, boolean z) {
        return concatMapCompletableDelayError(function, z, 2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @cs1("none")
    @gl
    public final <R> Cnew<R> concatMapDelayError(Function<? super T, ? extends ObservableSource<? extends R>> function, int i, boolean z) {
        Cif.m29468else(function, "mapper is null");
        Cif.m29470goto(i, "prefetch");
        if (!(this instanceof ScalarCallable)) {
            return jp1.i(new Cpublic(this, function, i, z ? Ctry.END : Ctry.BOUNDARY));
        }
        Object objCall = ((ScalarCallable) this).call();
        return objCall == null ? empty() : b1.m29568do(objCall, function);
    }

    @cs1("none")
    @gl
    public final <R> Cnew<R> concatMapEager(Function<? super T, ? extends ObservableSource<? extends R>> function, int i, int i2) {
        Cif.m29468else(function, "mapper is null");
        Cif.m29470goto(i, "maxConcurrency");
        Cif.m29470goto(i2, "prefetch");
        return jp1.i(new Creturn(this, function, Ctry.IMMEDIATE, i, i2));
    }

    @cs1("none")
    @gl
    public final <R> Cnew<R> concatMapEagerDelayError(Function<? super T, ? extends ObservableSource<? extends R>> function, int i, int i2, boolean z) {
        Cif.m29468else(function, "mapper is null");
        Cif.m29470goto(i, "maxConcurrency");
        Cif.m29470goto(i2, "prefetch");
        return jp1.i(new Creturn(this, function, z ? Ctry.END : Ctry.BOUNDARY, i, i2));
    }

    @cs1("none")
    @gl
    public final <R> Cnew<R> concatMapMaybe(Function<? super T, ? extends MaybeSource<? extends R>> function, int i) {
        Cif.m29468else(function, "mapper is null");
        Cif.m29470goto(i, "prefetch");
        return jp1.i(new Cclass(this, function, Ctry.IMMEDIATE, i));
    }

    @cs1("none")
    @gl
    public final <R> Cnew<R> concatMapMaybeDelayError(Function<? super T, ? extends MaybeSource<? extends R>> function, boolean z) {
        return concatMapMaybeDelayError(function, z, 2);
    }

    @cs1("none")
    @gl
    public final <R> Cnew<R> concatMapSingle(Function<? super T, ? extends SingleSource<? extends R>> function, int i) {
        Cif.m29468else(function, "mapper is null");
        Cif.m29470goto(i, "prefetch");
        return jp1.i(new Cconst(this, function, Ctry.IMMEDIATE, i));
    }

    @cs1("none")
    @gl
    public final <R> Cnew<R> concatMapSingleDelayError(Function<? super T, ? extends SingleSource<? extends R>> function, boolean z) {
        return concatMapSingleDelayError(function, z, 2);
    }

    @cs1("none")
    @f90
    @gl
    public final <R> Cnew<R> dematerialize(Function<? super T, t41<R>> function) {
        Cif.m29468else(function, "selector is null");
        return jp1.i(new Cstrictfp(this, function));
    }

    @cs1("none")
    @gl
    public final <K> Cnew<T> distinct(Function<? super T, K> function) {
        return distinct(function, io.reactivex.internal.functions.Cdo.m29422else());
    }

    @cs1("none")
    @gl
    public final <K> Cnew<T> distinctUntilChanged(Function<? super T, K> function) {
        Cif.m29468else(function, "keySelector is null");
        return jp1.i(new Cprotected(this, function, Cif.m29472new()));
    }

    @cs1("none")
    @gl
    public final <R> Cnew<R> flatMap(Function<? super T, ? extends ObservableSource<? extends R>> function, boolean z) {
        return flatMap(function, z, Integer.MAX_VALUE);
    }

    @cs1("none")
    @gl
    public final np flatMapCompletable(Function<? super T, ? extends CompletableSource> function, boolean z) {
        Cif.m29468else(function, "mapper is null");
        return jp1.b(new g(this, function, z));
    }

    @cs1("none")
    @gl
    public final <R> Cnew<R> flatMapMaybe(Function<? super T, ? extends MaybeSource<? extends R>> function, boolean z) {
        Cif.m29468else(function, "mapper is null");
        return jp1.i(new h(this, function, z));
    }

    @cs1("none")
    @gl
    public final <R> Cnew<R> flatMapSingle(Function<? super T, ? extends SingleSource<? extends R>> function, boolean z) {
        Cif.m29468else(function, "mapper is null");
        return jp1.i(new i(this, function, z));
    }

    @cs1("none")
    @gl
    public final Disposable forEachWhile(Predicate<? super T> predicate, Consumer<? super Throwable> consumer) {
        return forEachWhile(predicate, consumer, io.reactivex.internal.functions.Cdo.f25282for);
    }

    @cs1("none")
    @gl
    public final <K> Cnew<gi0<K, T>> groupBy(Function<? super T, ? extends K> function, boolean z) {
        return (Cnew<gi0<K, T>>) groupBy(function, io.reactivex.internal.functions.Cdo.m29416catch(), z, bufferSize());
    }

    @cs1(cs1.F5)
    @gl
    public final Cnew<T> observeOn(Ctry ctry, boolean z) {
        return observeOn(ctry, z, bufferSize());
    }

    @cs1("none")
    @gl
    public final <R> Cnew<R> publish(Function<? super Cnew<T>, ? extends ObservableSource<R>> function) {
        Cif.m29468else(function, "selector is null");
        return jp1.i(new m0(this, function));
    }

    @cs1("none")
    @gl
    public final Cnew<T> repeat(long j) {
        if (j >= 0) {
            return j == 0 ? empty() : jp1.i(new t0(this, j));
        }
        throw new IllegalArgumentException("times >= 0 required but it was " + j);
    }

    @cs1("none")
    @gl
    public final <R> Cnew<R> replay(Function<? super Cnew<T>, ? extends ObservableSource<R>> function) {
        Cif.m29468else(function, "selector is null");
        return ObservableReplay.m29562import(t.m29622else(this), function);
    }

    @cs1("none")
    @gl
    public final Cnew<T> retry(BiPredicate<? super Integer, ? super Throwable> biPredicate) {
        Cif.m29468else(biPredicate, "predicate is null");
        return jp1.i(new w0(this, biPredicate));
    }

    @cs1(cs1.G5)
    @gl
    public final Cnew<T> sample(long j, TimeUnit timeUnit, boolean z) {
        return sample(j, timeUnit, io.reactivex.schedulers.Cdo.m29767do(), z);
    }

    @cs1("none")
    @gl
    public final Cnew<T> sorted(Comparator<? super T> comparator) {
        Cif.m29468else(comparator, "sortFunction is null");
        return toList().x0().map(io.reactivex.internal.functions.Cdo.m29439super(comparator)).flatMapIterable(io.reactivex.internal.functions.Cdo.m29416catch());
    }

    @cs1("none")
    @gl
    public final Cnew<T> startWith(ObservableSource<? extends T> observableSource) {
        Cif.m29468else(observableSource, "other is null");
        return concatArray(observableSource, this);
    }

    @cs1("none")
    @gl
    public final Disposable subscribe(Consumer<? super T> consumer) {
        return subscribe(consumer, io.reactivex.internal.functions.Cdo.f25277case, io.reactivex.internal.functions.Cdo.f25282for, io.reactivex.internal.functions.Cdo.m29427goto());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @cs1("none")
    @gl
    public final <R> Cnew<R> switchMap(Function<? super T, ? extends ObservableSource<? extends R>> function, int i) {
        Cif.m29468else(function, "mapper is null");
        Cif.m29470goto(i, "bufferSize");
        if (!(this instanceof ScalarCallable)) {
            return jp1.i(new q1(this, function, i, false));
        }
        Object objCall = ((ScalarCallable) this).call();
        return objCall == null ? empty() : b1.m29568do(objCall, function);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @cs1("none")
    @gl
    public final <R> Cnew<R> switchMapDelayError(Function<? super T, ? extends ObservableSource<? extends R>> function, int i) {
        Cif.m29468else(function, "mapper is null");
        Cif.m29470goto(i, "bufferSize");
        if (!(this instanceof ScalarCallable)) {
            return jp1.i(new q1(this, function, i, true));
        }
        Object objCall = ((ScalarCallable) this).call();
        return objCall == null ? empty() : b1.m29568do(objCall, function);
    }

    @cs1(cs1.F5)
    @gl
    public final Cnew<T> throttleFirst(long j, TimeUnit timeUnit, Ctry ctry) {
        Cif.m29468else(timeUnit, "unit is null");
        Cif.m29468else(ctry, "scheduler is null");
        return jp1.i(new y1(this, j, timeUnit, ctry));
    }

    @cs1(cs1.F5)
    @gl
    public final Cnew<T> throttleLast(long j, TimeUnit timeUnit, Ctry ctry) {
        return sample(j, timeUnit, ctry);
    }

    @cs1(cs1.G5)
    @gl
    public final Cnew<T> throttleLatest(long j, TimeUnit timeUnit, boolean z) {
        return throttleLatest(j, timeUnit, io.reactivex.schedulers.Cdo.m29767do(), z);
    }

    @cs1(cs1.F5)
    @gl
    public final Cnew<T> throttleWithTimeout(long j, TimeUnit timeUnit, Ctry ctry) {
        return debounce(j, timeUnit, ctry);
    }

    @cs1("none")
    @gl
    public final Cnew<e72<T>> timeInterval(Ctry ctry) {
        return timeInterval(TimeUnit.MILLISECONDS, ctry);
    }

    @cs1("none")
    @gl
    public final <V> Cnew<T> timeout(Function<? super T, ? extends ObservableSource<V>> function, ObservableSource<? extends T> observableSource) {
        Cif.m29468else(observableSource, "other is null");
        return timeout0(null, function, observableSource);
    }

    @cs1("none")
    @gl
    public final Cnew<e72<T>> timestamp(Ctry ctry) {
        return timestamp(TimeUnit.MILLISECONDS, ctry);
    }

    @cs1("none")
    @gl
    public final jz1<List<T>> toList(int i) {
        Cif.m29470goto(i, "capacityHint");
        return jp1.g(new d2(this, i));
    }

    @cs1("none")
    @gl
    public final jz1<List<T>> toSortedList(Comparator<? super T> comparator) {
        Cif.m29468else(comparator, "comparator is null");
        return (jz1<List<T>>) toList().B(io.reactivex.internal.functions.Cdo.m29439super(comparator));
    }

    @cs1("none")
    @gl
    public final Cnew<Cnew<T>> window(long j, long j2) {
        return window(j, j2, bufferSize());
    }

    @b41
    @cs1("none")
    @gl
    public static <T, R> Cnew<R> combineLatest(Iterable<? extends ObservableSource<? extends T>> iterable, Function<? super Object[], ? extends R> function, int i) {
        Cif.m29468else(iterable, "sources is null");
        Cif.m29468else(function, "combiner is null");
        Cif.m29470goto(i, "bufferSize");
        return jp1.i(new Cnative(null, iterable, function, i << 1, false));
    }

    @b41
    @cs1("none")
    @gl
    public static <T, R> Cnew<R> combineLatestDelayError(ObservableSource<? extends T>[] observableSourceArr, Function<? super Object[], ? extends R> function, int i) {
        Cif.m29470goto(i, "bufferSize");
        Cif.m29468else(function, "combiner is null");
        if (observableSourceArr.length == 0) {
            return empty();
        }
        return jp1.i(new Cnative(observableSourceArr, null, function, i << 1, true));
    }

    @cs1("none")
    @gl
    public static <T> Cnew<T> concat(ObservableSource<? extends ObservableSource<? extends T>> observableSource) {
        return concat(observableSource, bufferSize());
    }

    @cs1("none")
    @gl
    public static <T> Cnew<T> concatDelayError(ObservableSource<? extends ObservableSource<? extends T>> observableSource) {
        return concatDelayError(observableSource, bufferSize(), true);
    }

    @cs1("none")
    @gl
    public static <T> Cnew<T> concatEager(Iterable<? extends ObservableSource<? extends T>> iterable) {
        return concatEager(iterable, bufferSize(), bufferSize());
    }

    @b41
    @cs1("none")
    @gl
    public static <T> Cnew<T> error(Throwable th) {
        Cif.m29468else(th, "exception is null");
        return error((Callable<? extends Throwable>) io.reactivex.internal.functions.Cdo.m29418const(th));
    }

    @b41
    @cs1("none")
    @gl
    public static <T> Cnew<T> fromFuture(Future<? extends T> future, long j, TimeUnit timeUnit) {
        Cif.m29468else(future, "future is null");
        Cif.m29468else(timeUnit, "unit is null");
        return jp1.i(new c61(future, j, timeUnit));
    }

    @b41
    @cs1("none")
    @gl
    public static <T> Cnew<T> just(T t, T t2) {
        Cif.m29468else(t, "item1 is null");
        Cif.m29468else(t2, "item2 is null");
        return fromArray(t, t2);
    }

    @cs1("none")
    @gl
    public static <T> Cnew<T> merge(Iterable<? extends ObservableSource<? extends T>> iterable, int i) {
        return fromIterable(iterable).flatMap(io.reactivex.internal.functions.Cdo.m29416catch(), i);
    }

    @cs1("none")
    @gl
    public static <T> Cnew<T> mergeDelayError(Iterable<? extends ObservableSource<? extends T>> iterable, int i) {
        return fromIterable(iterable).flatMap(io.reactivex.internal.functions.Cdo.m29416catch(), true, i);
    }

    @cs1("none")
    @gl
    public static <T> jz1<Boolean> sequenceEqual(ObservableSource<? extends T> observableSource, ObservableSource<? extends T> observableSource2, BiPredicate<? super T, ? super T> biPredicate, int i) {
        Cif.m29468else(observableSource, "source1 is null");
        Cif.m29468else(observableSource2, "source2 is null");
        Cif.m29468else(biPredicate, "isEqual is null");
        Cif.m29470goto(i, "bufferSize");
        return jp1.g(new f1(observableSource, observableSource2, biPredicate, i));
    }

    @cs1("none")
    @gl
    public final T blockingSingle(T t) {
        return single(t).m4165try();
    }

    @cs1("none")
    public final void blockingSubscribe(Consumer<? super T> consumer, Consumer<? super Throwable> consumer2) {
        y51.m9758for(this, consumer, consumer2, io.reactivex.internal.functions.Cdo.f25282for);
    }

    @cs1("none")
    @gl
    public final <U extends Collection<? super T>> Cnew<U> buffer(int i, int i2, Callable<U> callable) {
        Cif.m29470goto(i, "count");
        Cif.m29470goto(i2, "skip");
        Cif.m29468else(callable, "bufferSupplier is null");
        return jp1.i(new io.reactivex.internal.operators.observable.Ccatch(this, i, i2, callable));
    }

    @cs1("none")
    @gl
    public final np concatMapCompletableDelayError(Function<? super T, ? extends CompletableSource> function, boolean z, int i) {
        Cif.m29468else(function, "mapper is null");
        Cif.m29470goto(i, "prefetch");
        return jp1.b(new Ccatch(this, function, z ? Ctry.END : Ctry.BOUNDARY, i));
    }

    @cs1("none")
    @gl
    public final <U> Cnew<U> concatMapIterable(Function<? super T, ? extends Iterable<? extends U>> function, int i) {
        Cif.m29468else(function, "mapper is null");
        Cif.m29470goto(i, "prefetch");
        return (Cnew<U>) concatMap(t.m29621do(function), i);
    }

    @cs1("none")
    @gl
    public final <R> Cnew<R> concatMapMaybeDelayError(Function<? super T, ? extends MaybeSource<? extends R>> function, boolean z, int i) {
        Cif.m29468else(function, "mapper is null");
        Cif.m29470goto(i, "prefetch");
        return jp1.i(new Cclass(this, function, z ? Ctry.END : Ctry.BOUNDARY, i));
    }

    @cs1("none")
    @gl
    public final <R> Cnew<R> concatMapSingleDelayError(Function<? super T, ? extends SingleSource<? extends R>> function, boolean z, int i) {
        Cif.m29468else(function, "mapper is null");
        Cif.m29470goto(i, "prefetch");
        return jp1.i(new Cconst(this, function, z ? Ctry.END : Ctry.BOUNDARY, i));
    }

    @cs1("none")
    @gl
    public final Cnew<T> concatWith(@b41 SingleSource<? extends T> singleSource) {
        Cif.m29468else(singleSource, "other is null");
        return jp1.i(new Cthrows(this, singleSource));
    }

    @cs1(cs1.G5)
    @gl
    public final Cnew<T> debounce(long j, TimeUnit timeUnit) {
        return debounce(j, timeUnit, io.reactivex.schedulers.Cdo.m29767do());
    }

    @cs1(cs1.G5)
    @gl
    public final Cnew<T> delay(long j, TimeUnit timeUnit) {
        return delay(j, timeUnit, io.reactivex.schedulers.Cdo.m29767do(), false);
    }

    @cs1(cs1.G5)
    @gl
    public final Cnew<T> delaySubscription(long j, TimeUnit timeUnit) {
        return delaySubscription(j, timeUnit, io.reactivex.schedulers.Cdo.m29767do());
    }

    @cs1("none")
    @gl
    public final <K> Cnew<T> distinct(Function<? super T, K> function, Callable<? extends Collection<? super K>> callable) {
        Cif.m29468else(function, "keySelector is null");
        Cif.m29468else(callable, "collectionSupplier is null");
        return jp1.i(new Cinterface(this, function, callable));
    }

    @cs1("none")
    @gl
    public final jz1<T> elementAt(long j, T t) {
        if (j >= 0) {
            Cif.m29468else(t, "defaultItem is null");
            return jp1.g(new c(this, j, t));
        }
        throw new IndexOutOfBoundsException("index >= 0 required but it was " + j);
    }

    @cs1("none")
    @gl
    public final <R> Cnew<R> flatMap(Function<? super T, ? extends ObservableSource<? extends R>> function, boolean z, int i) {
        return flatMap(function, z, i, bufferSize());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @cs1("none")
    @gl
    public final <U, V> Cnew<V> flatMapIterable(Function<? super T, ? extends Iterable<? extends U>> function, BiFunction<? super T, ? super U, ? extends V> biFunction) {
        Cif.m29468else(function, "mapper is null");
        Cif.m29468else(biFunction, "resultSelector is null");
        return (Cnew<V>) flatMap(t.m29621do(function), biFunction, false, bufferSize(), bufferSize());
    }

    @cs1("none")
    @gl
    public final Disposable forEachWhile(Predicate<? super T> predicate, Consumer<? super Throwable> consumer, Action action) {
        Cif.m29468else(predicate, "onNext is null");
        Cif.m29468else(consumer, "onError is null");
        Cif.m29468else(action, "onComplete is null");
        hd0 hd0Var = new hd0(predicate, consumer, action);
        subscribe(hd0Var);
        return hd0Var;
    }

    @cs1("none")
    @gl
    public final <K, V> Cnew<gi0<K, V>> groupBy(Function<? super T, ? extends K> function, Function<? super T, ? extends V> function2) {
        return groupBy(function, function2, false, bufferSize());
    }

    @cs1("none")
    @gl
    public final Cnew<T> mergeWith(@b41 SingleSource<? extends T> singleSource) {
        Cif.m29468else(singleSource, "other is null");
        return jp1.i(new g0(this, singleSource));
    }

    @cs1(cs1.F5)
    @gl
    public final Cnew<T> observeOn(Ctry ctry, boolean z, int i) {
        Cif.m29468else(ctry, "scheduler is null");
        Cif.m29470goto(i, "bufferSize");
        return jp1.i(new h0(this, ctry, z, i));
    }

    @cs1("none")
    @gl
    public final Cnew<T> onErrorResumeNext(ObservableSource<? extends T> observableSource) {
        Cif.m29468else(observableSource, "next is null");
        return onErrorResumeNext(io.reactivex.internal.functions.Cdo.m29424final(observableSource));
    }

    @cs1("none")
    @gl
    public final <R> jz1<R> reduce(R r, BiFunction<R, ? super T, R> biFunction) {
        Cif.m29468else(r, "seed is null");
        Cif.m29468else(biFunction, "reducer is null");
        return jp1.g(new q0(this, r, biFunction));
    }

    @cs1(cs1.F5)
    @gl
    public final Cnew<T> sample(long j, TimeUnit timeUnit, Ctry ctry) {
        Cif.m29468else(timeUnit, "unit is null");
        Cif.m29468else(ctry, "scheduler is null");
        return jp1.i(new z0(this, j, timeUnit, ctry, false));
    }

    @cs1("none")
    @gl
    public final <R> Cnew<R> scan(R r, BiFunction<R, ? super T, R> biFunction) {
        Cif.m29468else(r, "initialValue is null");
        return scanWith(io.reactivex.internal.functions.Cdo.m29418const(r), biFunction);
    }

    @cs1(cs1.G5)
    @gl
    public final Cnew<T> skip(long j, TimeUnit timeUnit) {
        return skipUntil(timer(j, timeUnit));
    }

    @cs1("none")
    @gl
    public final Disposable subscribe(Consumer<? super T> consumer, Consumer<? super Throwable> consumer2) {
        return subscribe(consumer, consumer2, io.reactivex.internal.functions.Cdo.f25282for, io.reactivex.internal.functions.Cdo.m29427goto());
    }

    @cs1("none")
    @gl
    public final Cnew<T> take(long j, TimeUnit timeUnit) {
        return takeUntil(timer(j, timeUnit));
    }

    @cs1("none")
    @gl
    public final Cnew<T> takeUntil(Predicate<? super T> predicate) {
        Cif.m29468else(predicate, "stopPredicate is null");
        return jp1.i(new w1(this, predicate));
    }

    @cs1("none")
    @gl
    public final io.reactivex.observers.Cif<T> test(boolean z) {
        io.reactivex.observers.Cif<T> cif = new io.reactivex.observers.Cif<>();
        if (z) {
            cif.dispose();
        }
        subscribe(cif);
        return cif;
    }

    @cs1(cs1.F5)
    @gl
    public final Cnew<T> throttleLatest(long j, TimeUnit timeUnit, Ctry ctry) {
        return throttleLatest(j, timeUnit, ctry, false);
    }

    @cs1("none")
    @gl
    public final Cnew<e72<T>> timeInterval(TimeUnit timeUnit) {
        return timeInterval(timeUnit, io.reactivex.schedulers.Cdo.m29767do());
    }

    @cs1("none")
    @gl
    public final Cnew<e72<T>> timestamp(TimeUnit timeUnit) {
        return timestamp(timeUnit, io.reactivex.schedulers.Cdo.m29767do());
    }

    @cs1("none")
    @gl
    public final <K, V> jz1<Map<K, V>> toMap(Function<? super T, ? extends K> function, Function<? super T, ? extends V> function2) {
        Cif.m29468else(function, "keySelector is null");
        Cif.m29468else(function2, "valueSelector is null");
        return (jz1<Map<K, V>>) collect(io.reactivex.internal.util.Celse.asCallable(), io.reactivex.internal.functions.Cdo.m29445volatile(function, function2));
    }

    @cs1("none")
    @gl
    public final Cnew<Cnew<T>> window(long j, long j2, int i) {
        Cif.m29473this(j, "count");
        Cif.m29473this(j2, "skip");
        Cif.m29470goto(i, "bufferSize");
        return jp1.i(new g2(this, j, j2, i));
    }

    @b41
    @cs1("none")
    @gl
    public static <T> Cnew<T> concat(ObservableSource<? extends ObservableSource<? extends T>> observableSource, int i) {
        Cif.m29468else(observableSource, "sources is null");
        Cif.m29470goto(i, "prefetch");
        return jp1.i(new Cpublic(observableSource, io.reactivex.internal.functions.Cdo.m29416catch(), i, Ctry.IMMEDIATE));
    }

    @b41
    @cs1("none")
    @gl
    public static <T> Cnew<T> concatDelayError(ObservableSource<? extends ObservableSource<? extends T>> observableSource, int i, boolean z) {
        Cif.m29468else(observableSource, "sources is null");
        Cif.m29470goto(i, "prefetch is null");
        return jp1.i(new Cpublic(observableSource, io.reactivex.internal.functions.Cdo.m29416catch(), i, z ? Ctry.END : Ctry.BOUNDARY));
    }

    @cs1("none")
    @gl
    public static <T> Cnew<T> concatEager(Iterable<? extends ObservableSource<? extends T>> iterable, int i, int i2) {
        return fromIterable(iterable).concatMapEagerDelayError(io.reactivex.internal.functions.Cdo.m29416catch(), i, i2, false);
    }

    @cs1("none")
    @gl
    public static <T> Cnew<T> merge(ObservableSource<? extends ObservableSource<? extends T>> observableSource) {
        Cif.m29468else(observableSource, "sources is null");
        return jp1.i(new e(observableSource, io.reactivex.internal.functions.Cdo.m29416catch(), false, Integer.MAX_VALUE, bufferSize()));
    }

    @cs1("none")
    @gl
    public static <T> Cnew<T> mergeDelayError(ObservableSource<? extends ObservableSource<? extends T>> observableSource) {
        Cif.m29468else(observableSource, "sources is null");
        return jp1.i(new e(observableSource, io.reactivex.internal.functions.Cdo.m29416catch(), true, Integer.MAX_VALUE, bufferSize()));
    }

    @cs1("none")
    @gl
    public static <T> Cnew<T> switchOnNext(ObservableSource<? extends ObservableSource<? extends T>> observableSource) {
        return switchOnNext(observableSource, bufferSize());
    }

    private <U, V> Cnew<T> timeout0(ObservableSource<U> observableSource, Function<? super T, ? extends ObservableSource<V>> function, ObservableSource<? extends T> observableSource2) {
        Cif.m29468else(function, "itemTimeoutIndicator is null");
        return jp1.i(new ObservableTimeout(this, observableSource, function, observableSource2));
    }

    @cs1("none")
    @gl
    public static <T, R> Cnew<R> zip(ObservableSource<? extends ObservableSource<? extends T>> observableSource, Function<? super Object[], ? extends R> function) {
        Cif.m29468else(function, "zipper is null");
        Cif.m29468else(observableSource, "sources is null");
        return jp1.i(new c2(observableSource, 16).flatMap(t.m29623final(function)));
    }

    @cs1("none")
    public final void blockingSubscribe(Consumer<? super T> consumer, Consumer<? super Throwable> consumer2, Action action) {
        y51.m9758for(this, consumer, consumer2, action);
    }

    @cs1(cs1.F5)
    @gl
    public final Cnew<T> debounce(long j, TimeUnit timeUnit, Ctry ctry) {
        Cif.m29468else(timeUnit, "unit is null");
        Cif.m29468else(ctry, "scheduler is null");
        return jp1.i(new Cprivate(this, j, timeUnit, ctry));
    }

    @cs1(cs1.G5)
    @gl
    public final Cnew<T> delay(long j, TimeUnit timeUnit, boolean z) {
        return delay(j, timeUnit, io.reactivex.schedulers.Cdo.m29767do(), z);
    }

    @cs1(cs1.F5)
    @gl
    public final Cnew<T> delaySubscription(long j, TimeUnit timeUnit, Ctry ctry) {
        return delaySubscription(timer(j, timeUnit, ctry));
    }

    @cs1("none")
    @gl
    public final Cnew<T> distinctUntilChanged(BiPredicate<? super T, ? super T> biPredicate) {
        Cif.m29468else(biPredicate, "comparer is null");
        return jp1.i(new Cprotected(this, io.reactivex.internal.functions.Cdo.m29416catch(), biPredicate));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @cs1("none")
    @gl
    public final <R> Cnew<R> flatMap(Function<? super T, ? extends ObservableSource<? extends R>> function, boolean z, int i, int i2) {
        Cif.m29468else(function, "mapper is null");
        Cif.m29470goto(i, "maxConcurrency");
        Cif.m29470goto(i2, "bufferSize");
        if (this instanceof ScalarCallable) {
            Object objCall = ((ScalarCallable) this).call();
            if (objCall == null) {
                return empty();
            }
            return b1.m29568do(objCall, function);
        }
        return jp1.i(new e(this, function, z, i, i2));
    }

    @cs1("none")
    @gl
    public final <K, V> Cnew<gi0<K, V>> groupBy(Function<? super T, ? extends K> function, Function<? super T, ? extends V> function2, boolean z) {
        return groupBy(function, function2, z, bufferSize());
    }

    @cs1("none")
    @gl
    public final <R> Cnew<R> replay(Function<? super Cnew<T>, ? extends ObservableSource<R>> function, int i) {
        Cif.m29468else(function, "selector is null");
        Cif.m29470goto(i, "bufferSize");
        return ObservableReplay.m29562import(t.m29625goto(this, i), function);
    }

    @cs1("none")
    @gl
    public final Cnew<T> retry(long j) {
        return retry(j, io.reactivex.internal.functions.Cdo.m29426for());
    }

    @cs1(cs1.F5)
    @gl
    public final Cnew<T> skip(long j, TimeUnit timeUnit, Ctry ctry) {
        return skipUntil(timer(j, timeUnit, ctry));
    }

    @cs1(cs1.J5)
    @gl
    public final Cnew<T> skipLast(long j, TimeUnit timeUnit) {
        return skipLast(j, timeUnit, io.reactivex.schedulers.Cdo.m29773this(), false, bufferSize());
    }

    @cs1("none")
    @gl
    public final Cnew<T> startWith(T t) {
        Cif.m29468else(t, "item is null");
        return concatArray(just(t), this);
    }

    @cs1("none")
    @gl
    public final Disposable subscribe(Consumer<? super T> consumer, Consumer<? super Throwable> consumer2, Action action) {
        return subscribe(consumer, consumer2, action, io.reactivex.internal.functions.Cdo.m29427goto());
    }

    @cs1(cs1.F5)
    @gl
    public final Cnew<T> take(long j, TimeUnit timeUnit, Ctry ctry) {
        return takeUntil(timer(j, timeUnit, ctry));
    }

    @cs1(cs1.F5)
    @gl
    public final Cnew<T> throttleLatest(long j, TimeUnit timeUnit, Ctry ctry, boolean z) {
        Cif.m29468else(timeUnit, "unit is null");
        Cif.m29468else(ctry, "scheduler is null");
        return jp1.i(new z1(this, j, timeUnit, ctry, z));
    }

    @cs1("none")
    @gl
    public final Cnew<e72<T>> timeInterval(TimeUnit timeUnit, Ctry ctry) {
        Cif.m29468else(timeUnit, "unit is null");
        Cif.m29468else(ctry, "scheduler is null");
        return jp1.i(new a2(this, timeUnit, ctry));
    }

    @cs1(cs1.G5)
    @gl
    public final Cnew<T> timeout(long j, TimeUnit timeUnit) {
        return timeout0(j, timeUnit, null, io.reactivex.schedulers.Cdo.m29767do());
    }

    @cs1("none")
    @gl
    public final Cnew<e72<T>> timestamp(TimeUnit timeUnit, Ctry ctry) {
        Cif.m29468else(timeUnit, "unit is null");
        Cif.m29468else(ctry, "scheduler is null");
        return (Cnew<e72<T>>) map(io.reactivex.internal.functions.Cdo.m29440switch(timeUnit, ctry));
    }

    @cs1("none")
    @gl
    public final <U extends Collection<? super T>> jz1<U> toList(Callable<U> callable) {
        Cif.m29468else(callable, "collectionSupplier is null");
        return jp1.g(new d2(this, callable));
    }

    @cs1("none")
    @gl
    public final jz1<List<T>> toSortedList(Comparator<? super T> comparator, int i) {
        Cif.m29468else(comparator, "comparator is null");
        return (jz1<List<T>>) toList(i).B(io.reactivex.internal.functions.Cdo.m29439super(comparator));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @cs1("none")
    @gl
    public final <T1, T2, R> Cnew<R> withLatestFrom(ObservableSource<T1> observableSource, ObservableSource<T2> observableSource2, Function3<? super T, ? super T1, ? super T2, R> function3) {
        Cif.m29468else(observableSource, "o1 is null");
        Cif.m29468else(observableSource2, "o2 is null");
        Cif.m29468else(function3, "combiner is null");
        return withLatestFrom((ObservableSource<?>[]) new ObservableSource[]{observableSource, observableSource2}, io.reactivex.internal.functions.Cdo.m29420default(function3));
    }

    @cs1("none")
    @gl
    public final <U, R> Cnew<R> zipWith(ObservableSource<? extends U> observableSource, BiFunction<? super T, ? super U, ? extends R> biFunction) {
        Cif.m29468else(observableSource, "other is null");
        return zip(this, observableSource, biFunction);
    }

    @b41
    @cs1("none")
    @gl
    public static <T, S> Cnew<T> generate(Callable<S> callable, BiConsumer<S, Emitter<T>> biConsumer) {
        Cif.m29468else(biConsumer, "generator is null");
        return generate(callable, t.m29619class(biConsumer), io.reactivex.internal.functions.Cdo.m29427goto());
    }

    @cs1(cs1.G5)
    @gl
    public static Cnew<Long> interval(long j, TimeUnit timeUnit) {
        return interval(j, j, timeUnit, io.reactivex.schedulers.Cdo.m29767do());
    }

    @cs1("none")
    @gl
    public final T blockingFirst(T t) throws InterruptedException {
        ha haVar = new ha();
        subscribe(haVar);
        T tM2231do = haVar.m2231do();
        return tM2231do != null ? tM2231do : t;
    }

    @cs1("none")
    @gl
    public final T blockingLast(T t) throws InterruptedException {
        ka kaVar = new ka();
        subscribe(kaVar);
        T tM2231do = kaVar.m2231do();
        return tM2231do != null ? tM2231do : t;
    }

    @cs1("none")
    public final void blockingSubscribe(Observer<? super T> observer) {
        y51.m9759if(this, observer);
    }

    @cs1("none")
    @gl
    public final Cnew<T> concatWith(@b41 MaybeSource<? extends T> maybeSource) {
        Cif.m29468else(maybeSource, "other is null");
        return jp1.i(new Cswitch(this, maybeSource));
    }

    @cs1(cs1.F5)
    @gl
    public final Cnew<T> delay(long j, TimeUnit timeUnit, Ctry ctry) {
        return delay(j, timeUnit, ctry, false);
    }

    @cs1("none")
    @gl
    public final <K, V> Cnew<gi0<K, V>> groupBy(Function<? super T, ? extends K> function, Function<? super T, ? extends V> function2, boolean z, int i) {
        Cif.m29468else(function, "keySelector is null");
        Cif.m29468else(function2, "valueSelector is null");
        Cif.m29470goto(i, "bufferSize");
        return jp1.i(new p(this, function, function2, i, z));
    }

    @cs1("none")
    @gl
    public final Cnew<T> mergeWith(@b41 MaybeSource<? extends T> maybeSource) {
        Cif.m29468else(maybeSource, "other is null");
        return jp1.i(new f0(this, maybeSource));
    }

    @cs1("none")
    @gl
    public final Cnew<T> retry(long j, Predicate<? super Throwable> predicate) {
        if (j >= 0) {
            Cif.m29468else(predicate, "predicate is null");
            return jp1.i(new x0(this, j, predicate));
        }
        throw new IllegalArgumentException("times >= 0 required but it was " + j);
    }

    @cs1(cs1.J5)
    @gl
    public final Cnew<T> skipLast(long j, TimeUnit timeUnit, boolean z) {
        return skipLast(j, timeUnit, io.reactivex.schedulers.Cdo.m29773this(), z, bufferSize());
    }

    @cs1("none")
    @gl
    public final Disposable subscribe(Consumer<? super T> consumer, Consumer<? super Throwable> consumer2, Action action, Consumer<? super Disposable> consumer3) {
        Cif.m29468else(consumer, "onNext is null");
        Cif.m29468else(consumer2, "onError is null");
        Cif.m29468else(action, "onComplete is null");
        Cif.m29468else(consumer3, "onSubscribe is null");
        zr0 zr0Var = new zr0(consumer, consumer2, action, consumer3);
        subscribe(zr0Var);
        return zr0Var;
    }

    @cs1(cs1.J5)
    @gl
    public final Cnew<T> takeLast(long j, long j2, TimeUnit timeUnit) {
        return takeLast(j, j2, timeUnit, io.reactivex.schedulers.Cdo.m29773this(), false, bufferSize());
    }

    @cs1(cs1.G5)
    @gl
    public final Cnew<T> timeout(long j, TimeUnit timeUnit, ObservableSource<? extends T> observableSource) {
        Cif.m29468else(observableSource, "other is null");
        return timeout0(j, timeUnit, observableSource, io.reactivex.schedulers.Cdo.m29767do());
    }

    @cs1("none")
    @gl
    public final <K, V> jz1<Map<K, Collection<V>>> toMultimap(Function<? super T, ? extends K> function, Function<? super T, ? extends V> function2) {
        return toMultimap(function, function2, io.reactivex.internal.util.Celse.asCallable(), io.reactivex.internal.util.Cdo.asFunction());
    }

    @b41
    @cs1(cs1.F5)
    @gl
    public static <T> Cnew<T> fromFuture(Future<? extends T> future, long j, TimeUnit timeUnit, Ctry ctry) {
        Cif.m29468else(ctry, "scheduler is null");
        return fromFuture(future, j, timeUnit).subscribeOn(ctry);
    }

    @cs1(cs1.F5)
    @gl
    public static Cnew<Long> interval(long j, TimeUnit timeUnit, Ctry ctry) {
        return interval(j, j, timeUnit, ctry);
    }

    @b41
    @cs1("none")
    @gl
    public static <T> Cnew<T> just(T t, T t2, T t3) {
        Cif.m29468else(t, "item1 is null");
        Cif.m29468else(t2, "item2 is null");
        Cif.m29468else(t3, "item3 is null");
        return fromArray(t, t2, t3);
    }

    @cs1("none")
    @gl
    public static <T> Cnew<T> merge(ObservableSource<? extends ObservableSource<? extends T>> observableSource, int i) {
        Cif.m29468else(observableSource, "sources is null");
        Cif.m29470goto(i, "maxConcurrency");
        return jp1.i(new e(observableSource, io.reactivex.internal.functions.Cdo.m29416catch(), false, i, bufferSize()));
    }

    @cs1("none")
    @gl
    public static <T> Cnew<T> mergeDelayError(ObservableSource<? extends ObservableSource<? extends T>> observableSource, int i) {
        Cif.m29468else(observableSource, "sources is null");
        Cif.m29470goto(i, "maxConcurrency");
        return jp1.i(new e(observableSource, io.reactivex.internal.functions.Cdo.m29416catch(), true, i, bufferSize()));
    }

    @cs1(cs1.F5)
    @gl
    public final Cnew<T> delay(long j, TimeUnit timeUnit, Ctry ctry, boolean z) {
        Cif.m29468else(timeUnit, "unit is null");
        Cif.m29468else(ctry, "scheduler is null");
        return jp1.i(new Cabstract(this, j, timeUnit, ctry, z));
    }

    @cs1("none")
    @gl
    public final Cnew<T> doOnEach(Consumer<? super t41<T>> consumer) {
        Cif.m29468else(consumer, "onNotification is null");
        return doOnEach(io.reactivex.internal.functions.Cdo.m29435public(consumer), io.reactivex.internal.functions.Cdo.m29431native(consumer), io.reactivex.internal.functions.Cdo.m29429import(consumer), io.reactivex.internal.functions.Cdo.f25282for);
    }

    @cs1(cs1.F5)
    @gl
    public final Cnew<T> sample(long j, TimeUnit timeUnit, Ctry ctry, boolean z) {
        Cif.m29468else(timeUnit, "unit is null");
        Cif.m29468else(ctry, "scheduler is null");
        return jp1.i(new z0(this, j, timeUnit, ctry, z));
    }

    @cs1(cs1.F5)
    @gl
    public final Cnew<T> skipLast(long j, TimeUnit timeUnit, Ctry ctry) {
        return skipLast(j, timeUnit, ctry, false, bufferSize());
    }

    @cs1(cs1.F5)
    @gl
    public final Cnew<T> takeLast(long j, long j2, TimeUnit timeUnit, Ctry ctry) {
        return takeLast(j, j2, timeUnit, ctry, false, bufferSize());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @cs1("none")
    @gl
    public final <K, V> jz1<Map<K, V>> toMap(Function<? super T, ? extends K> function, Function<? super T, ? extends V> function2, Callable<? extends Map<K, V>> callable) {
        Cif.m29468else(function, "keySelector is null");
        Cif.m29468else(function2, "valueSelector is null");
        Cif.m29468else(callable, "mapSupplier is null");
        return (jz1<Map<K, V>>) collect(callable, io.reactivex.internal.functions.Cdo.m29445volatile(function, function2));
    }

    @cs1("none")
    @gl
    public final jz1<List<T>> toSortedList(int i) {
        return toSortedList(io.reactivex.internal.functions.Cdo.m29446while(), i);
    }

    @cs1("none")
    @gl
    public final <U, R> Cnew<R> zipWith(ObservableSource<? extends U> observableSource, BiFunction<? super T, ? super U, ? extends R> biFunction, boolean z) {
        return zip(this, observableSource, biFunction, z);
    }

    @cs1("none")
    @gl
    public static <T, R> Cnew<R> combineLatest(ObservableSource<? extends T>[] observableSourceArr, Function<? super Object[], ? extends R> function) {
        return combineLatest(observableSourceArr, function, bufferSize());
    }

    @b41
    @cs1("none")
    @gl
    public static <T> Cnew<T> concat(ObservableSource<? extends T> observableSource, ObservableSource<? extends T> observableSource2) {
        Cif.m29468else(observableSource, "source1 is null");
        Cif.m29468else(observableSource2, "source2 is null");
        return concatArray(observableSource, observableSource2);
    }

    @b41
    @cs1("none")
    @gl
    public static <T, S> Cnew<T> generate(Callable<S> callable, BiConsumer<S, Emitter<T>> biConsumer, Consumer<? super S> consumer) {
        Cif.m29468else(biConsumer, "generator is null");
        return generate(callable, t.m29619class(biConsumer), consumer);
    }

    @cs1("none")
    @gl
    public final <U extends Collection<? super T>> Cnew<U> buffer(int i, Callable<U> callable) {
        return buffer(i, i, callable);
    }

    @cs1("none")
    @gl
    public final Cnew<T> concatWith(@b41 CompletableSource completableSource) {
        Cif.m29468else(completableSource, "other is null");
        return jp1.i(new Cstatic(this, completableSource));
    }

    @cs1("none")
    @gl
    public final Cnew<T> mergeWith(@b41 CompletableSource completableSource) {
        Cif.m29468else(completableSource, "other is null");
        return jp1.i(new e0(this, completableSource));
    }

    @cs1(cs1.G5)
    @gl
    public final <R> Cnew<R> replay(Function<? super Cnew<T>, ? extends ObservableSource<R>> function, int i, long j, TimeUnit timeUnit) {
        return replay(function, i, j, timeUnit, io.reactivex.schedulers.Cdo.m29767do());
    }

    @cs1(cs1.F5)
    @gl
    public final Cnew<T> skipLast(long j, TimeUnit timeUnit, Ctry ctry, boolean z) {
        return skipLast(j, timeUnit, ctry, z, bufferSize());
    }

    @cs1(cs1.F5)
    @gl
    public final Cnew<T> takeLast(long j, long j2, TimeUnit timeUnit, Ctry ctry, boolean z, int i) {
        Cif.m29468else(timeUnit, "unit is null");
        Cif.m29468else(ctry, "scheduler is null");
        Cif.m29470goto(i, "bufferSize");
        if (j >= 0) {
            return jp1.i(new u1(this, j, j2, timeUnit, ctry, i, z));
        }
        throw new IndexOutOfBoundsException("count >= 0 required but it was " + j);
    }

    @cs1(cs1.F5)
    @gl
    public final Cnew<T> timeout(long j, TimeUnit timeUnit, Ctry ctry, ObservableSource<? extends T> observableSource) {
        Cif.m29468else(observableSource, "other is null");
        return timeout0(j, timeUnit, observableSource, ctry);
    }

    @cs1(cs1.G5)
    @gl
    public final Cnew<Cnew<T>> window(long j, long j2, TimeUnit timeUnit) {
        return window(j, j2, timeUnit, io.reactivex.schedulers.Cdo.m29767do(), bufferSize());
    }

    @cs1("none")
    @gl
    public final <U, R> Cnew<R> zipWith(ObservableSource<? extends U> observableSource, BiFunction<? super T, ? super U, ? extends R> biFunction, boolean z, int i) {
        return zip(this, observableSource, biFunction, z, i);
    }

    @b41
    @cs1("none")
    @gl
    public static <T, R> Cnew<R> combineLatest(ObservableSource<? extends T>[] observableSourceArr, Function<? super Object[], ? extends R> function, int i) {
        Cif.m29468else(observableSourceArr, "sources is null");
        if (observableSourceArr.length == 0) {
            return empty();
        }
        Cif.m29468else(function, "combiner is null");
        Cif.m29470goto(i, "bufferSize");
        return jp1.i(new Cnative(observableSourceArr, null, function, i << 1, false));
    }

    @cs1("none")
    @gl
    public static <T, R> Cnew<R> combineLatestDelayError(Iterable<? extends ObservableSource<? extends T>> iterable, Function<? super Object[], ? extends R> function) {
        return combineLatestDelayError(iterable, function, bufferSize());
    }

    @cs1("none")
    @gl
    public static <T> jz1<Boolean> sequenceEqual(ObservableSource<? extends T> observableSource, ObservableSource<? extends T> observableSource2, int i) {
        return sequenceEqual(observableSource, observableSource2, Cif.m29472new(), i);
    }

    @cs1(cs1.G5)
    @gl
    public final Cnew<List<T>> buffer(long j, long j2, TimeUnit timeUnit) {
        return (Cnew<List<T>>) buffer(j, j2, timeUnit, io.reactivex.schedulers.Cdo.m29767do(), io.reactivex.internal.util.Cdo.asCallable());
    }

    @cs1(cs1.F5)
    @gl
    public final <R> Cnew<R> replay(Function<? super Cnew<T>, ? extends ObservableSource<R>> function, int i, long j, TimeUnit timeUnit, Ctry ctry) {
        Cif.m29468else(function, "selector is null");
        Cif.m29470goto(i, "bufferSize");
        Cif.m29468else(timeUnit, "unit is null");
        Cif.m29468else(ctry, "scheduler is null");
        return ObservableReplay.m29562import(t.m29628this(this, i, j, timeUnit, ctry), function);
    }

    @cs1("none")
    @gl
    public final Cnew<T> retry(Predicate<? super Throwable> predicate) {
        return retry(Long.MAX_VALUE, predicate);
    }

    @cs1(cs1.F5)
    @gl
    public final Cnew<T> skipLast(long j, TimeUnit timeUnit, Ctry ctry, boolean z, int i) {
        Cif.m29468else(timeUnit, "unit is null");
        Cif.m29468else(ctry, "scheduler is null");
        Cif.m29470goto(i, "bufferSize");
        return jp1.i(new l1(this, j, timeUnit, ctry, i << 1, z));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @cs1("none")
    @gl
    public final <K, V> jz1<Map<K, Collection<V>>> toMultimap(Function<? super T, ? extends K> function, Function<? super T, ? extends V> function2, Callable<? extends Map<K, Collection<V>>> callable, Function<? super K, ? extends Collection<? super V>> function3) {
        Cif.m29468else(function, "keySelector is null");
        Cif.m29468else(function2, "valueSelector is null");
        Cif.m29468else(callable, "mapSupplier is null");
        Cif.m29468else(function3, "collectionFactory is null");
        return (jz1<Map<K, Collection<V>>>) collect(callable, io.reactivex.internal.functions.Cdo.m29430interface(function, function2, function3));
    }

    @cs1(cs1.F5)
    @gl
    public final Cnew<Cnew<T>> window(long j, long j2, TimeUnit timeUnit, Ctry ctry) {
        return window(j, j2, timeUnit, ctry, bufferSize());
    }

    @b41
    @cs1("none")
    @gl
    public static <T, R> Cnew<R> combineLatestDelayError(Iterable<? extends ObservableSource<? extends T>> iterable, Function<? super Object[], ? extends R> function, int i) {
        Cif.m29468else(iterable, "sources is null");
        Cif.m29468else(function, "combiner is null");
        Cif.m29470goto(i, "bufferSize");
        return jp1.i(new Cnative(null, iterable, function, i << 1, true));
    }

    @b41
    @cs1(cs1.F5)
    @gl
    public static <T> Cnew<T> fromFuture(Future<? extends T> future, Ctry ctry) {
        Cif.m29468else(ctry, "scheduler is null");
        return fromFuture(future).subscribeOn(ctry);
    }

    @cs1("none")
    @gl
    public static <T, S> Cnew<T> generate(Callable<S> callable, BiFunction<S, Emitter<T>, S> biFunction) {
        return generate(callable, biFunction, io.reactivex.internal.functions.Cdo.m29427goto());
    }

    @cs1("none")
    @gl
    public static <T> Cnew<T> merge(ObservableSource<? extends T> observableSource, ObservableSource<? extends T> observableSource2) {
        Cif.m29468else(observableSource, "source1 is null");
        Cif.m29468else(observableSource2, "source2 is null");
        return fromArray(observableSource, observableSource2).flatMap(io.reactivex.internal.functions.Cdo.m29416catch(), false, 2);
    }

    @cs1("none")
    @gl
    public static <T> Cnew<T> mergeDelayError(ObservableSource<? extends T> observableSource, ObservableSource<? extends T> observableSource2) {
        Cif.m29468else(observableSource, "source1 is null");
        Cif.m29468else(observableSource2, "source2 is null");
        return fromArray(observableSource, observableSource2).flatMap(io.reactivex.internal.functions.Cdo.m29416catch(), true, 2);
    }

    @cs1("none")
    @gl
    public static <T1, T2, R> Cnew<R> zip(ObservableSource<? extends T1> observableSource, ObservableSource<? extends T2> observableSource2, BiFunction<? super T1, ? super T2, ? extends R> biFunction) {
        Cif.m29468else(observableSource, "source1 is null");
        Cif.m29468else(observableSource2, "source2 is null");
        return zipArray(io.reactivex.internal.functions.Cdo.m29443throws(biFunction), false, bufferSize(), observableSource, observableSource2);
    }

    @cs1(cs1.F5)
    @gl
    public final Cnew<List<T>> buffer(long j, long j2, TimeUnit timeUnit, Ctry ctry) {
        return (Cnew<List<T>>) buffer(j, j2, timeUnit, ctry, io.reactivex.internal.util.Cdo.asCallable());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @cs1("none")
    @gl
    public final <U, V> Cnew<T> delay(ObservableSource<U> observableSource, Function<? super T, ? extends ObservableSource<V>> function) {
        return delaySubscription(observableSource).delay(function);
    }

    @cs1("none")
    @gl
    public final <U> Cnew<T> sample(ObservableSource<U> observableSource) {
        Cif.m29468else(observableSource, "sampler is null");
        return jp1.i(new a1(this, observableSource, false));
    }

    @cs1(cs1.F5)
    @gl
    public final Cnew<T> timeout(long j, TimeUnit timeUnit, Ctry ctry) {
        return timeout0(j, timeUnit, null, ctry);
    }

    @cs1(cs1.F5)
    @gl
    public final Cnew<Cnew<T>> window(long j, long j2, TimeUnit timeUnit, Ctry ctry, int i) {
        Cif.m29473this(j, "timespan");
        Cif.m29473this(j2, "timeskip");
        Cif.m29470goto(i, "bufferSize");
        Cif.m29468else(ctry, "scheduler is null");
        Cif.m29468else(timeUnit, "unit is null");
        return jp1.i(new k2(this, j, j2, timeUnit, ctry, Long.MAX_VALUE, i, false));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @cs1("none")
    @gl
    public final <T1, T2, T3, R> Cnew<R> withLatestFrom(ObservableSource<T1> observableSource, ObservableSource<T2> observableSource2, ObservableSource<T3> observableSource3, Function4<? super T, ? super T1, ? super T2, ? super T3, R> function4) {
        Cif.m29468else(observableSource, "o1 is null");
        Cif.m29468else(observableSource2, "o2 is null");
        Cif.m29468else(observableSource3, "o3 is null");
        Cif.m29468else(function4, "combiner is null");
        return withLatestFrom((ObservableSource<?>[]) new ObservableSource[]{observableSource, observableSource2, observableSource3}, io.reactivex.internal.functions.Cdo.m29423extends(function4));
    }

    @b41
    @cs1("none")
    @gl
    public static <T> Cnew<T> concat(ObservableSource<? extends T> observableSource, ObservableSource<? extends T> observableSource2, ObservableSource<? extends T> observableSource3) {
        Cif.m29468else(observableSource, "source1 is null");
        Cif.m29468else(observableSource2, "source2 is null");
        Cif.m29468else(observableSource3, "source3 is null");
        return concatArray(observableSource, observableSource2, observableSource3);
    }

    @b41
    @cs1("none")
    @gl
    public static <T, S> Cnew<T> generate(Callable<S> callable, BiFunction<S, Emitter<T>, S> biFunction, Consumer<? super S> consumer) {
        Cif.m29468else(callable, "initialState is null");
        Cif.m29468else(biFunction, "generator is null");
        Cif.m29468else(consumer, "disposeState is null");
        return jp1.i(new io.reactivex.internal.operators.observable.o(callable, biFunction, consumer));
    }

    @b41
    @cs1("none")
    @gl
    public static <T> Cnew<T> just(T t, T t2, T t3, T t4) {
        Cif.m29468else(t, "item1 is null");
        Cif.m29468else(t2, "item2 is null");
        Cif.m29468else(t3, "item3 is null");
        Cif.m29468else(t4, "item4 is null");
        return fromArray(t, t2, t3, t4);
    }

    @cs1(cs1.F5)
    @gl
    public final <U extends Collection<? super T>> Cnew<U> buffer(long j, long j2, TimeUnit timeUnit, Ctry ctry, Callable<U> callable) {
        Cif.m29468else(timeUnit, "unit is null");
        Cif.m29468else(ctry, "scheduler is null");
        Cif.m29468else(callable, "bufferSupplier is null");
        return jp1.i(new io.reactivex.internal.operators.observable.Csuper(this, j, j2, timeUnit, ctry, callable, Integer.MAX_VALUE, false));
    }

    @cs1("none")
    @gl
    public final <U, V> Cnew<T> timeout(ObservableSource<U> observableSource, Function<? super T, ? extends ObservableSource<V>> function) {
        Cif.m29468else(observableSource, "firstTimeoutIndicator is null");
        return timeout0(observableSource, function, null);
    }

    @cs1("none")
    @gl
    public final Cnew<T> doOnEach(Observer<? super T> observer) {
        Cif.m29468else(observer, "observer is null");
        return doOnEach(t.m29617case(observer), t.m29629try(observer), t.m29627new(observer), io.reactivex.internal.functions.Cdo.f25282for);
    }

    @cs1("none")
    @gl
    public final <U> Cnew<T> sample(ObservableSource<U> observableSource, boolean z) {
        Cif.m29468else(observableSource, "sampler is null");
        return jp1.i(new a1(this, observableSource, z));
    }

    @Override // io.reactivex.ObservableSource
    @cs1("none")
    public final void subscribe(Observer<? super T> observer) {
        Cif.m29468else(observer, "observer is null");
        try {
            Observer<? super T> observerS = jp1.s(this, observer);
            Cif.m29468else(observerS, "The RxJavaPlugins.onSubscribe hook returned a null Observer. Please change the handler provided to RxJavaPlugins.setOnObservableSubscribe for invalid null returns. Further reading: https://github.com/ReactiveX/RxJava/wiki/Plugins");
            subscribeActual(observerS);
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

    @cs1("none")
    @gl
    public static <T> Cnew<T> merge(ObservableSource<? extends T> observableSource, ObservableSource<? extends T> observableSource2, ObservableSource<? extends T> observableSource3) {
        Cif.m29468else(observableSource, "source1 is null");
        Cif.m29468else(observableSource2, "source2 is null");
        Cif.m29468else(observableSource3, "source3 is null");
        return fromArray(observableSource, observableSource2, observableSource3).flatMap(io.reactivex.internal.functions.Cdo.m29416catch(), false, 3);
    }

    @cs1("none")
    @gl
    public static <T> Cnew<T> mergeDelayError(ObservableSource<? extends T> observableSource, ObservableSource<? extends T> observableSource2, ObservableSource<? extends T> observableSource3) {
        Cif.m29468else(observableSource, "source1 is null");
        Cif.m29468else(observableSource2, "source2 is null");
        Cif.m29468else(observableSource3, "source3 is null");
        return fromArray(observableSource, observableSource2, observableSource3).flatMap(io.reactivex.internal.functions.Cdo.m29416catch(), true, 3);
    }

    @cs1("none")
    @gl
    public static <T1, T2, R> Cnew<R> zip(ObservableSource<? extends T1> observableSource, ObservableSource<? extends T2> observableSource2, BiFunction<? super T1, ? super T2, ? extends R> biFunction, boolean z) {
        Cif.m29468else(observableSource, "source1 is null");
        Cif.m29468else(observableSource2, "source2 is null");
        return zipArray(io.reactivex.internal.functions.Cdo.m29443throws(biFunction), z, bufferSize(), observableSource, observableSource2);
    }

    @cs1("none")
    @gl
    public final <R> Cnew<R> flatMap(Function<? super T, ? extends ObservableSource<? extends R>> function, Function<? super Throwable, ? extends ObservableSource<? extends R>> function2, Callable<? extends ObservableSource<? extends R>> callable) {
        Cif.m29468else(function, "onNextMapper is null");
        Cif.m29468else(function2, "onErrorMapper is null");
        Cif.m29468else(callable, "onCompleteSupplier is null");
        return merge(new c0(this, function, function2, callable));
    }

    @cs1(cs1.J5)
    @gl
    public final Cnew<T> takeLast(long j, TimeUnit timeUnit) {
        return takeLast(j, timeUnit, io.reactivex.schedulers.Cdo.m29773this(), false, bufferSize());
    }

    @cs1("none")
    @gl
    public final <U, V> Cnew<T> timeout(ObservableSource<U> observableSource, Function<? super T, ? extends ObservableSource<V>> function, ObservableSource<? extends T> observableSource2) {
        Cif.m29468else(observableSource, "firstTimeoutIndicator is null");
        Cif.m29468else(observableSource2, "other is null");
        return timeout0(observableSource, function, observableSource2);
    }

    @cs1(cs1.J5)
    @gl
    public final Cnew<T> takeLast(long j, TimeUnit timeUnit, boolean z) {
        return takeLast(j, timeUnit, io.reactivex.schedulers.Cdo.m29773this(), z, bufferSize());
    }

    @cs1("none")
    @gl
    public final <K, V> jz1<Map<K, Collection<V>>> toMultimap(Function<? super T, ? extends K> function, Function<? super T, ? extends V> function2, Callable<Map<K, Collection<V>>> callable) {
        return toMultimap(function, function2, callable, io.reactivex.internal.util.Cdo.asFunction());
    }

    @b41
    @cs1("none")
    @gl
    public static <T1, T2, R> Cnew<R> combineLatest(ObservableSource<? extends T1> observableSource, ObservableSource<? extends T2> observableSource2, BiFunction<? super T1, ? super T2, ? extends R> biFunction) {
        Cif.m29468else(observableSource, "source1 is null");
        Cif.m29468else(observableSource2, "source2 is null");
        return combineLatest(io.reactivex.internal.functions.Cdo.m29443throws(biFunction), bufferSize(), observableSource, observableSource2);
    }

    @b41
    @cs1("none")
    @gl
    public static <T> Cnew<T> concat(ObservableSource<? extends T> observableSource, ObservableSource<? extends T> observableSource2, ObservableSource<? extends T> observableSource3, ObservableSource<? extends T> observableSource4) {
        Cif.m29468else(observableSource, "source1 is null");
        Cif.m29468else(observableSource2, "source2 is null");
        Cif.m29468else(observableSource3, "source3 is null");
        Cif.m29468else(observableSource4, "source4 is null");
        return concatArray(observableSource, observableSource2, observableSource3, observableSource4);
    }

    @cs1(cs1.G5)
    @gl
    public final Cnew<List<T>> buffer(long j, TimeUnit timeUnit) {
        return buffer(j, timeUnit, io.reactivex.schedulers.Cdo.m29767do(), Integer.MAX_VALUE);
    }

    @cs1(cs1.F5)
    @gl
    public final <R> Cnew<R> replay(Function<? super Cnew<T>, ? extends ObservableSource<R>> function, int i, Ctry ctry) {
        Cif.m29468else(function, "selector is null");
        Cif.m29468else(ctry, "scheduler is null");
        Cif.m29470goto(i, "bufferSize");
        return ObservableReplay.m29562import(t.m29625goto(this, i), t.m29618catch(function, ctry));
    }

    @cs1(cs1.F5)
    @gl
    public final Cnew<T> takeLast(long j, TimeUnit timeUnit, Ctry ctry) {
        return takeLast(j, timeUnit, ctry, false, bufferSize());
    }

    @b41
    @cs1("none")
    @gl
    public static <T> Cnew<T> just(T t, T t2, T t3, T t4, T t5) {
        Cif.m29468else(t, "item1 is null");
        Cif.m29468else(t2, "item2 is null");
        Cif.m29468else(t3, "item3 is null");
        Cif.m29468else(t4, "item4 is null");
        Cif.m29468else(t5, "item5 is null");
        return fromArray(t, t2, t3, t4, t5);
    }

    @cs1("none")
    @gl
    public static <T1, T2, R> Cnew<R> zip(ObservableSource<? extends T1> observableSource, ObservableSource<? extends T2> observableSource2, BiFunction<? super T1, ? super T2, ? extends R> biFunction, boolean z, int i) {
        Cif.m29468else(observableSource, "source1 is null");
        Cif.m29468else(observableSource2, "source2 is null");
        return zipArray(io.reactivex.internal.functions.Cdo.m29443throws(biFunction), z, i, observableSource, observableSource2);
    }

    @cs1(cs1.G5)
    @gl
    public final Cnew<List<T>> buffer(long j, TimeUnit timeUnit, int i) {
        return buffer(j, timeUnit, io.reactivex.schedulers.Cdo.m29767do(), i);
    }

    @cs1(cs1.F5)
    @gl
    public final Cnew<T> takeLast(long j, TimeUnit timeUnit, Ctry ctry, boolean z) {
        return takeLast(j, timeUnit, ctry, z, bufferSize());
    }

    @cs1(cs1.G5)
    @gl
    public final Cnew<Cnew<T>> window(long j, TimeUnit timeUnit) {
        return window(j, timeUnit, io.reactivex.schedulers.Cdo.m29767do(), Long.MAX_VALUE, false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @cs1("none")
    @gl
    public final <T1, T2, T3, T4, R> Cnew<R> withLatestFrom(ObservableSource<T1> observableSource, ObservableSource<T2> observableSource2, ObservableSource<T3> observableSource3, ObservableSource<T4> observableSource4, Function5<? super T, ? super T1, ? super T2, ? super T3, ? super T4, R> function5) {
        Cif.m29468else(observableSource, "o1 is null");
        Cif.m29468else(observableSource2, "o2 is null");
        Cif.m29468else(observableSource3, "o3 is null");
        Cif.m29468else(observableSource4, "o4 is null");
        Cif.m29468else(function5, "combiner is null");
        return withLatestFrom((ObservableSource<?>[]) new ObservableSource[]{observableSource, observableSource2, observableSource3, observableSource4}, io.reactivex.internal.functions.Cdo.m29425finally(function5));
    }

    @cs1("none")
    @gl
    public static <T> Cnew<T> merge(ObservableSource<? extends T> observableSource, ObservableSource<? extends T> observableSource2, ObservableSource<? extends T> observableSource3, ObservableSource<? extends T> observableSource4) {
        Cif.m29468else(observableSource, "source1 is null");
        Cif.m29468else(observableSource2, "source2 is null");
        Cif.m29468else(observableSource3, "source3 is null");
        Cif.m29468else(observableSource4, "source4 is null");
        return fromArray(observableSource, observableSource2, observableSource3, observableSource4).flatMap(io.reactivex.internal.functions.Cdo.m29416catch(), false, 4);
    }

    @cs1("none")
    @gl
    public static <T> Cnew<T> mergeDelayError(ObservableSource<? extends T> observableSource, ObservableSource<? extends T> observableSource2, ObservableSource<? extends T> observableSource3, ObservableSource<? extends T> observableSource4) {
        Cif.m29468else(observableSource, "source1 is null");
        Cif.m29468else(observableSource2, "source2 is null");
        Cif.m29468else(observableSource3, "source3 is null");
        Cif.m29468else(observableSource4, "source4 is null");
        return fromArray(observableSource, observableSource2, observableSource3, observableSource4).flatMap(io.reactivex.internal.functions.Cdo.m29416catch(), true, 4);
    }

    @cs1(cs1.F5)
    @gl
    public final Cnew<List<T>> buffer(long j, TimeUnit timeUnit, Ctry ctry, int i) {
        return (Cnew<List<T>>) buffer(j, timeUnit, ctry, i, io.reactivex.internal.util.Cdo.asCallable(), false);
    }

    @cs1("none")
    @gl
    public final <R> Cnew<R> flatMap(Function<? super T, ? extends ObservableSource<? extends R>> function, Function<Throwable, ? extends ObservableSource<? extends R>> function2, Callable<? extends ObservableSource<? extends R>> callable, int i) {
        Cif.m29468else(function, "onNextMapper is null");
        Cif.m29468else(function2, "onErrorMapper is null");
        Cif.m29468else(callable, "onCompleteSupplier is null");
        return merge(new c0(this, function, function2, callable), i);
    }

    @cs1(cs1.F5)
    @gl
    public final Cnew<T> takeLast(long j, TimeUnit timeUnit, Ctry ctry, boolean z, int i) {
        return takeLast(Long.MAX_VALUE, j, timeUnit, ctry, z, i);
    }

    @cs1(cs1.G5)
    @gl
    public final Cnew<Cnew<T>> window(long j, TimeUnit timeUnit, long j2) {
        return window(j, timeUnit, io.reactivex.schedulers.Cdo.m29767do(), j2, false);
    }

    @b41
    @cs1("none")
    @gl
    public static <T1, T2, T3, R> Cnew<R> combineLatest(ObservableSource<? extends T1> observableSource, ObservableSource<? extends T2> observableSource2, ObservableSource<? extends T3> observableSource3, Function3<? super T1, ? super T2, ? super T3, ? extends R> function3) {
        Cif.m29468else(observableSource, "source1 is null");
        Cif.m29468else(observableSource2, "source2 is null");
        Cif.m29468else(observableSource3, "source3 is null");
        return combineLatest(io.reactivex.internal.functions.Cdo.m29420default(function3), bufferSize(), observableSource, observableSource2, observableSource3);
    }

    @cs1(cs1.F5)
    @gl
    public final <U extends Collection<? super T>> Cnew<U> buffer(long j, TimeUnit timeUnit, Ctry ctry, int i, Callable<U> callable, boolean z) {
        Cif.m29468else(timeUnit, "unit is null");
        Cif.m29468else(ctry, "scheduler is null");
        Cif.m29468else(callable, "bufferSupplier is null");
        Cif.m29470goto(i, "count");
        return jp1.i(new io.reactivex.internal.operators.observable.Csuper(this, j, j, timeUnit, ctry, callable, i, z));
    }

    @cs1(cs1.G5)
    @gl
    public final Cnew<Cnew<T>> window(long j, TimeUnit timeUnit, long j2, boolean z) {
        return window(j, timeUnit, io.reactivex.schedulers.Cdo.m29767do(), j2, z);
    }

    @cs1("none")
    @gl
    public static <T1, T2, T3, R> Cnew<R> zip(ObservableSource<? extends T1> observableSource, ObservableSource<? extends T2> observableSource2, ObservableSource<? extends T3> observableSource3, Function3<? super T1, ? super T2, ? super T3, ? extends R> function3) {
        Cif.m29468else(observableSource, "source1 is null");
        Cif.m29468else(observableSource2, "source2 is null");
        Cif.m29468else(observableSource3, "source3 is null");
        return zipArray(io.reactivex.internal.functions.Cdo.m29420default(function3), false, bufferSize(), observableSource, observableSource2, observableSource3);
    }

    @cs1(cs1.F5)
    @gl
    public final Cnew<Cnew<T>> window(long j, TimeUnit timeUnit, Ctry ctry) {
        return window(j, timeUnit, ctry, Long.MAX_VALUE, false);
    }

    @cs1(cs1.F5)
    @gl
    public final Cnew<Cnew<T>> window(long j, TimeUnit timeUnit, Ctry ctry, long j2) {
        return window(j, timeUnit, ctry, j2, false);
    }

    @cs1("none")
    @gl
    public final <R> Cnew<R> flatMap(Function<? super T, ? extends ObservableSource<? extends R>> function, int i) {
        return flatMap((Function) function, false, i, bufferSize());
    }

    @cs1(cs1.G5)
    @gl
    public final <R> Cnew<R> replay(Function<? super Cnew<T>, ? extends ObservableSource<R>> function, long j, TimeUnit timeUnit) {
        return replay(function, j, timeUnit, io.reactivex.schedulers.Cdo.m29767do());
    }

    @cs1(cs1.F5)
    @gl
    public final Cnew<Cnew<T>> window(long j, TimeUnit timeUnit, Ctry ctry, long j2, boolean z) {
        return window(j, timeUnit, ctry, j2, z, bufferSize());
    }

    @b41
    @cs1("none")
    @gl
    public static <T1, T2, T3, T4, R> Cnew<R> combineLatest(ObservableSource<? extends T1> observableSource, ObservableSource<? extends T2> observableSource2, ObservableSource<? extends T3> observableSource3, ObservableSource<? extends T4> observableSource4, Function4<? super T1, ? super T2, ? super T3, ? super T4, ? extends R> function4) {
        Cif.m29468else(observableSource, "source1 is null");
        Cif.m29468else(observableSource2, "source2 is null");
        Cif.m29468else(observableSource3, "source3 is null");
        Cif.m29468else(observableSource4, "source4 is null");
        return combineLatest(io.reactivex.internal.functions.Cdo.m29423extends(function4), bufferSize(), observableSource, observableSource2, observableSource3, observableSource4);
    }

    @b41
    @cs1("none")
    @gl
    public static <T> Cnew<T> just(T t, T t2, T t3, T t4, T t5, T t6) {
        Cif.m29468else(t, "item1 is null");
        Cif.m29468else(t2, "item2 is null");
        Cif.m29468else(t3, "item3 is null");
        Cif.m29468else(t4, "item4 is null");
        Cif.m29468else(t5, "item5 is null");
        Cif.m29468else(t6, "item6 is null");
        return fromArray(t, t2, t3, t4, t5, t6);
    }

    @cs1("none")
    @gl
    public final <U, R> Cnew<R> flatMap(Function<? super T, ? extends ObservableSource<? extends U>> function, BiFunction<? super T, ? super U, ? extends R> biFunction) {
        return flatMap(function, biFunction, false, bufferSize(), bufferSize());
    }

    @cs1(cs1.F5)
    @gl
    public final <R> Cnew<R> replay(Function<? super Cnew<T>, ? extends ObservableSource<R>> function, long j, TimeUnit timeUnit, Ctry ctry) {
        Cif.m29468else(function, "selector is null");
        Cif.m29468else(timeUnit, "unit is null");
        Cif.m29468else(ctry, "scheduler is null");
        return ObservableReplay.m29562import(t.m29616break(this, j, timeUnit, ctry), function);
    }

    @cs1(cs1.F5)
    @gl
    public final Cnew<Cnew<T>> window(long j, TimeUnit timeUnit, Ctry ctry, long j2, boolean z, int i) {
        Cif.m29470goto(i, "bufferSize");
        Cif.m29468else(ctry, "scheduler is null");
        Cif.m29468else(timeUnit, "unit is null");
        Cif.m29473this(j2, "count");
        return jp1.i(new k2(this, j, j, timeUnit, ctry, j2, i, z));
    }

    @cs1("none")
    @gl
    public static <T1, T2, T3, T4, R> Cnew<R> zip(ObservableSource<? extends T1> observableSource, ObservableSource<? extends T2> observableSource2, ObservableSource<? extends T3> observableSource3, ObservableSource<? extends T4> observableSource4, Function4<? super T1, ? super T2, ? super T3, ? super T4, ? extends R> function4) {
        Cif.m29468else(observableSource, "source1 is null");
        Cif.m29468else(observableSource2, "source2 is null");
        Cif.m29468else(observableSource3, "source3 is null");
        Cif.m29468else(observableSource4, "source4 is null");
        return zipArray(io.reactivex.internal.functions.Cdo.m29423extends(function4), false, bufferSize(), observableSource, observableSource2, observableSource3, observableSource4);
    }

    @cs1(cs1.F5)
    @gl
    public final Cnew<List<T>> buffer(long j, TimeUnit timeUnit, Ctry ctry) {
        return (Cnew<List<T>>) buffer(j, timeUnit, ctry, Integer.MAX_VALUE, io.reactivex.internal.util.Cdo.asCallable(), false);
    }

    @cs1("none")
    @gl
    public final <U, R> Cnew<R> flatMap(Function<? super T, ? extends ObservableSource<? extends U>> function, BiFunction<? super T, ? super U, ? extends R> biFunction, boolean z) {
        return flatMap(function, biFunction, z, bufferSize(), bufferSize());
    }

    @cs1("none")
    @gl
    public final <R> Cnew<R> withLatestFrom(ObservableSource<?>[] observableSourceArr, Function<? super Object[], R> function) {
        Cif.m29468else(observableSourceArr, "others is null");
        Cif.m29468else(function, "combiner is null");
        return jp1.i(new m2(this, observableSourceArr, function));
    }

    @cs1("none")
    @gl
    public final <TOpening, TClosing> Cnew<List<T>> buffer(ObservableSource<? extends TOpening> observableSource, Function<? super TOpening, ? extends ObservableSource<? extends TClosing>> function) {
        return (Cnew<List<T>>) buffer(observableSource, function, io.reactivex.internal.util.Cdo.asCallable());
    }

    @cs1("none")
    @gl
    public final <U, R> Cnew<R> flatMap(Function<? super T, ? extends ObservableSource<? extends U>> function, BiFunction<? super T, ? super U, ? extends R> biFunction, boolean z, int i) {
        return flatMap(function, biFunction, z, i, bufferSize());
    }

    @cs1("none")
    @gl
    public final <TOpening, TClosing, U extends Collection<? super T>> Cnew<U> buffer(ObservableSource<? extends TOpening> observableSource, Function<? super TOpening, ? extends ObservableSource<? extends TClosing>> function, Callable<U> callable) {
        Cif.m29468else(observableSource, "openingIndicator is null");
        Cif.m29468else(function, "closingIndicator is null");
        Cif.m29468else(callable, "bufferSupplier is null");
        return jp1.i(new io.reactivex.internal.operators.observable.Cclass(this, observableSource, function, callable));
    }

    @cs1("none")
    @gl
    public final <U, R> Cnew<R> flatMap(Function<? super T, ? extends ObservableSource<? extends U>> function, BiFunction<? super T, ? super U, ? extends R> biFunction, boolean z, int i, int i2) {
        Cif.m29468else(function, "mapper is null");
        Cif.m29468else(biFunction, "combiner is null");
        return flatMap(t.m29626if(function, biFunction), z, i, i2);
    }

    @cs1(cs1.F5)
    @gl
    public final <R> Cnew<R> replay(Function<? super Cnew<T>, ? extends ObservableSource<R>> function, Ctry ctry) {
        Cif.m29468else(function, "selector is null");
        Cif.m29468else(ctry, "scheduler is null");
        return ObservableReplay.m29562import(t.m29622else(this), t.m29618catch(function, ctry));
    }

    @cs1("none")
    @gl
    public final <R> Cnew<R> withLatestFrom(Iterable<? extends ObservableSource<?>> iterable, Function<? super Object[], R> function) {
        Cif.m29468else(iterable, "others is null");
        Cif.m29468else(function, "combiner is null");
        return jp1.i(new m2(this, iterable, function));
    }

    @b41
    @cs1("none")
    @gl
    public static <T1, T2, T3, T4, T5, R> Cnew<R> combineLatest(ObservableSource<? extends T1> observableSource, ObservableSource<? extends T2> observableSource2, ObservableSource<? extends T3> observableSource3, ObservableSource<? extends T4> observableSource4, ObservableSource<? extends T5> observableSource5, Function5<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? extends R> function5) {
        Cif.m29468else(observableSource, "source1 is null");
        Cif.m29468else(observableSource2, "source2 is null");
        Cif.m29468else(observableSource3, "source3 is null");
        Cif.m29468else(observableSource4, "source4 is null");
        Cif.m29468else(observableSource5, "source5 is null");
        return combineLatest(io.reactivex.internal.functions.Cdo.m29425finally(function5), bufferSize(), observableSource, observableSource2, observableSource3, observableSource4, observableSource5);
    }

    @cs1("none")
    @gl
    public final <B> Cnew<Cnew<T>> window(ObservableSource<B> observableSource) {
        return window(observableSource, bufferSize());
    }

    @cs1("none")
    @gl
    public static <T1, T2, T3, T4, T5, R> Cnew<R> zip(ObservableSource<? extends T1> observableSource, ObservableSource<? extends T2> observableSource2, ObservableSource<? extends T3> observableSource3, ObservableSource<? extends T4> observableSource4, ObservableSource<? extends T5> observableSource5, Function5<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? extends R> function5) {
        Cif.m29468else(observableSource, "source1 is null");
        Cif.m29468else(observableSource2, "source2 is null");
        Cif.m29468else(observableSource3, "source3 is null");
        Cif.m29468else(observableSource4, "source4 is null");
        Cif.m29468else(observableSource5, "source5 is null");
        return zipArray(io.reactivex.internal.functions.Cdo.m29425finally(function5), false, bufferSize(), observableSource, observableSource2, observableSource3, observableSource4, observableSource5);
    }

    @cs1("none")
    @gl
    public final <U, R> Cnew<R> flatMap(Function<? super T, ? extends ObservableSource<? extends U>> function, BiFunction<? super T, ? super U, ? extends R> biFunction, int i) {
        return flatMap(function, biFunction, false, i, bufferSize());
    }

    @cs1("none")
    @gl
    public final <B> Cnew<Cnew<T>> window(ObservableSource<B> observableSource, int i) {
        Cif.m29468else(observableSource, "boundary is null");
        Cif.m29470goto(i, "bufferSize");
        return jp1.i(new h2(this, observableSource, i));
    }

    @b41
    @cs1("none")
    @gl
    public static <T> Cnew<T> just(T t, T t2, T t3, T t4, T t5, T t6, T t7) {
        Cif.m29468else(t, "item1 is null");
        Cif.m29468else(t2, "item2 is null");
        Cif.m29468else(t3, "item3 is null");
        Cif.m29468else(t4, "item4 is null");
        Cif.m29468else(t5, "item5 is null");
        Cif.m29468else(t6, "item6 is null");
        Cif.m29468else(t7, "item7 is null");
        return fromArray(t, t2, t3, t4, t5, t6, t7);
    }

    @cs1("none")
    @gl
    public final <B> Cnew<List<T>> buffer(ObservableSource<B> observableSource) {
        return (Cnew<List<T>>) buffer(observableSource, io.reactivex.internal.util.Cdo.asCallable());
    }

    @cs1("none")
    @gl
    public final <B> Cnew<List<T>> buffer(ObservableSource<B> observableSource, int i) {
        Cif.m29470goto(i, "initialCapacity");
        return (Cnew<List<T>>) buffer(observableSource, io.reactivex.internal.functions.Cdo.m29415case(i));
    }

    @cs1("none")
    @gl
    public final pq<T> replay(int i) {
        Cif.m29470goto(i, "bufferSize");
        return ObservableReplay.m29560const(this, i);
    }

    @cs1("none")
    @gl
    public final <U, V> Cnew<Cnew<T>> window(ObservableSource<U> observableSource, Function<? super U, ? extends ObservableSource<V>> function) {
        return window(observableSource, function, bufferSize());
    }

    @cs1("none")
    @gl
    public final <B, U extends Collection<? super T>> Cnew<U> buffer(ObservableSource<B> observableSource, Callable<U> callable) {
        Cif.m29468else(observableSource, "boundary is null");
        Cif.m29468else(callable, "bufferSupplier is null");
        return jp1.i(new io.reactivex.internal.operators.observable.Cfinal(this, observableSource, callable));
    }

    @cs1("none")
    @gl
    public final <U, V> Cnew<Cnew<T>> window(ObservableSource<U> observableSource, Function<? super U, ? extends ObservableSource<V>> function, int i) {
        Cif.m29468else(observableSource, "openingIndicator is null");
        Cif.m29468else(function, "closingIndicator is null");
        Cif.m29470goto(i, "bufferSize");
        return jp1.i(new i2(this, observableSource, function, i));
    }

    @b41
    @cs1("none")
    @gl
    public static <T1, T2, T3, T4, T5, T6, R> Cnew<R> combineLatest(ObservableSource<? extends T1> observableSource, ObservableSource<? extends T2> observableSource2, ObservableSource<? extends T3> observableSource3, ObservableSource<? extends T4> observableSource4, ObservableSource<? extends T5> observableSource5, ObservableSource<? extends T6> observableSource6, Function6<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? extends R> function6) {
        Cif.m29468else(observableSource, "source1 is null");
        Cif.m29468else(observableSource2, "source2 is null");
        Cif.m29468else(observableSource3, "source3 is null");
        Cif.m29468else(observableSource4, "source4 is null");
        Cif.m29468else(observableSource5, "source5 is null");
        Cif.m29468else(observableSource6, "source6 is null");
        return combineLatest(io.reactivex.internal.functions.Cdo.m29433package(function6), bufferSize(), observableSource, observableSource2, observableSource3, observableSource4, observableSource5, observableSource6);
    }

    @cs1(cs1.G5)
    @gl
    public final pq<T> replay(int i, long j, TimeUnit timeUnit) {
        return replay(i, j, timeUnit, io.reactivex.schedulers.Cdo.m29767do());
    }

    @cs1("none")
    @gl
    public static <T1, T2, T3, T4, T5, T6, R> Cnew<R> zip(ObservableSource<? extends T1> observableSource, ObservableSource<? extends T2> observableSource2, ObservableSource<? extends T3> observableSource3, ObservableSource<? extends T4> observableSource4, ObservableSource<? extends T5> observableSource5, ObservableSource<? extends T6> observableSource6, Function6<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? extends R> function6) {
        Cif.m29468else(observableSource, "source1 is null");
        Cif.m29468else(observableSource2, "source2 is null");
        Cif.m29468else(observableSource3, "source3 is null");
        Cif.m29468else(observableSource4, "source4 is null");
        Cif.m29468else(observableSource5, "source5 is null");
        Cif.m29468else(observableSource6, "source6 is null");
        return zipArray(io.reactivex.internal.functions.Cdo.m29433package(function6), false, bufferSize(), observableSource, observableSource2, observableSource3, observableSource4, observableSource5, observableSource6);
    }

    @cs1(cs1.F5)
    @gl
    public final pq<T> replay(int i, long j, TimeUnit timeUnit, Ctry ctry) {
        Cif.m29470goto(i, "bufferSize");
        Cif.m29468else(timeUnit, "unit is null");
        Cif.m29468else(ctry, "scheduler is null");
        return ObservableReplay.m29564super(this, j, timeUnit, ctry, i);
    }

    @cs1("none")
    @gl
    public final <B> Cnew<List<T>> buffer(Callable<? extends ObservableSource<B>> callable) {
        return (Cnew<List<T>>) buffer(callable, io.reactivex.internal.util.Cdo.asCallable());
    }

    @cs1("none")
    @gl
    public final <B, U extends Collection<? super T>> Cnew<U> buffer(Callable<? extends ObservableSource<B>> callable, Callable<U> callable2) {
        Cif.m29468else(callable, "boundarySupplier is null");
        Cif.m29468else(callable2, "bufferSupplier is null");
        return jp1.i(new io.reactivex.internal.operators.observable.Cconst(this, callable, callable2));
    }

    @cs1("none")
    @gl
    public final <B> Cnew<Cnew<T>> window(Callable<? extends ObservableSource<B>> callable) {
        return window(callable, bufferSize());
    }

    @b41
    @cs1("none")
    @gl
    public static <T> Cnew<T> just(T t, T t2, T t3, T t4, T t5, T t6, T t7, T t8) {
        Cif.m29468else(t, "item1 is null");
        Cif.m29468else(t2, "item2 is null");
        Cif.m29468else(t3, "item3 is null");
        Cif.m29468else(t4, "item4 is null");
        Cif.m29468else(t5, "item5 is null");
        Cif.m29468else(t6, "item6 is null");
        Cif.m29468else(t7, "item7 is null");
        Cif.m29468else(t8, "item8 is null");
        return fromArray(t, t2, t3, t4, t5, t6, t7, t8);
    }

    @cs1("none")
    @gl
    public final <B> Cnew<Cnew<T>> window(Callable<? extends ObservableSource<B>> callable, int i) {
        Cif.m29468else(callable, "boundary is null");
        Cif.m29470goto(i, "bufferSize");
        return jp1.i(new j2(this, callable, i));
    }

    @cs1(cs1.F5)
    @gl
    public final pq<T> replay(int i, Ctry ctry) {
        Cif.m29470goto(i, "bufferSize");
        return ObservableReplay.m29563native(replay(i), ctry);
    }

    @b41
    @cs1("none")
    @gl
    public static <T1, T2, T3, T4, T5, T6, T7, R> Cnew<R> combineLatest(ObservableSource<? extends T1> observableSource, ObservableSource<? extends T2> observableSource2, ObservableSource<? extends T3> observableSource3, ObservableSource<? extends T4> observableSource4, ObservableSource<? extends T5> observableSource5, ObservableSource<? extends T6> observableSource6, ObservableSource<? extends T7> observableSource7, Function7<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? extends R> function7) {
        Cif.m29468else(observableSource, "source1 is null");
        Cif.m29468else(observableSource2, "source2 is null");
        Cif.m29468else(observableSource3, "source3 is null");
        Cif.m29468else(observableSource4, "source4 is null");
        Cif.m29468else(observableSource5, "source5 is null");
        Cif.m29468else(observableSource6, "source6 is null");
        Cif.m29468else(observableSource7, "source7 is null");
        return combineLatest(io.reactivex.internal.functions.Cdo.m29434private(function7), bufferSize(), observableSource, observableSource2, observableSource3, observableSource4, observableSource5, observableSource6, observableSource7);
    }

    @cs1(cs1.G5)
    @gl
    public final pq<T> replay(long j, TimeUnit timeUnit) {
        return replay(j, timeUnit, io.reactivex.schedulers.Cdo.m29767do());
    }

    @cs1("none")
    @gl
    public static <T1, T2, T3, T4, T5, T6, T7, R> Cnew<R> zip(ObservableSource<? extends T1> observableSource, ObservableSource<? extends T2> observableSource2, ObservableSource<? extends T3> observableSource3, ObservableSource<? extends T4> observableSource4, ObservableSource<? extends T5> observableSource5, ObservableSource<? extends T6> observableSource6, ObservableSource<? extends T7> observableSource7, Function7<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? extends R> function7) {
        Cif.m29468else(observableSource, "source1 is null");
        Cif.m29468else(observableSource2, "source2 is null");
        Cif.m29468else(observableSource3, "source3 is null");
        Cif.m29468else(observableSource4, "source4 is null");
        Cif.m29468else(observableSource5, "source5 is null");
        Cif.m29468else(observableSource6, "source6 is null");
        Cif.m29468else(observableSource7, "source7 is null");
        return zipArray(io.reactivex.internal.functions.Cdo.m29434private(function7), false, bufferSize(), observableSource, observableSource2, observableSource3, observableSource4, observableSource5, observableSource6, observableSource7);
    }

    @cs1(cs1.F5)
    @gl
    public final pq<T> replay(long j, TimeUnit timeUnit, Ctry ctry) {
        Cif.m29468else(timeUnit, "unit is null");
        Cif.m29468else(ctry, "scheduler is null");
        return ObservableReplay.m29561final(this, j, timeUnit, ctry);
    }

    @cs1(cs1.F5)
    @gl
    public final pq<T> replay(Ctry ctry) {
        Cif.m29468else(ctry, "scheduler is null");
        return ObservableReplay.m29563native(replay(), ctry);
    }

    @b41
    @cs1("none")
    @gl
    public static <T> Cnew<T> just(T t, T t2, T t3, T t4, T t5, T t6, T t7, T t8, T t9) {
        Cif.m29468else(t, "item1 is null");
        Cif.m29468else(t2, "item2 is null");
        Cif.m29468else(t3, "item3 is null");
        Cif.m29468else(t4, "item4 is null");
        Cif.m29468else(t5, "item5 is null");
        Cif.m29468else(t6, "item6 is null");
        Cif.m29468else(t7, "item7 is null");
        Cif.m29468else(t8, "item8 is null");
        Cif.m29468else(t9, "item9 is null");
        return fromArray(t, t2, t3, t4, t5, t6, t7, t8, t9);
    }

    @b41
    @cs1("none")
    @gl
    public static <T1, T2, T3, T4, T5, T6, T7, T8, R> Cnew<R> combineLatest(ObservableSource<? extends T1> observableSource, ObservableSource<? extends T2> observableSource2, ObservableSource<? extends T3> observableSource3, ObservableSource<? extends T4> observableSource4, ObservableSource<? extends T5> observableSource5, ObservableSource<? extends T6> observableSource6, ObservableSource<? extends T7> observableSource7, ObservableSource<? extends T8> observableSource8, Function8<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? super T8, ? extends R> function8) {
        Cif.m29468else(observableSource, "source1 is null");
        Cif.m29468else(observableSource2, "source2 is null");
        Cif.m29468else(observableSource3, "source3 is null");
        Cif.m29468else(observableSource4, "source4 is null");
        Cif.m29468else(observableSource5, "source5 is null");
        Cif.m29468else(observableSource6, "source6 is null");
        Cif.m29468else(observableSource7, "source7 is null");
        Cif.m29468else(observableSource8, "source8 is null");
        return combineLatest(io.reactivex.internal.functions.Cdo.m29413abstract(function8), bufferSize(), observableSource, observableSource2, observableSource3, observableSource4, observableSource5, observableSource6, observableSource7, observableSource8);
    }

    @cs1("none")
    @gl
    public static <T1, T2, T3, T4, T5, T6, T7, T8, R> Cnew<R> zip(ObservableSource<? extends T1> observableSource, ObservableSource<? extends T2> observableSource2, ObservableSource<? extends T3> observableSource3, ObservableSource<? extends T4> observableSource4, ObservableSource<? extends T5> observableSource5, ObservableSource<? extends T6> observableSource6, ObservableSource<? extends T7> observableSource7, ObservableSource<? extends T8> observableSource8, Function8<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? super T8, ? extends R> function8) {
        Cif.m29468else(observableSource, "source1 is null");
        Cif.m29468else(observableSource2, "source2 is null");
        Cif.m29468else(observableSource3, "source3 is null");
        Cif.m29468else(observableSource4, "source4 is null");
        Cif.m29468else(observableSource5, "source5 is null");
        Cif.m29468else(observableSource6, "source6 is null");
        Cif.m29468else(observableSource7, "source7 is null");
        Cif.m29468else(observableSource8, "source8 is null");
        return zipArray(io.reactivex.internal.functions.Cdo.m29413abstract(function8), false, bufferSize(), observableSource, observableSource2, observableSource3, observableSource4, observableSource5, observableSource6, observableSource7, observableSource8);
    }

    @b41
    @cs1("none")
    @gl
    public static <T> Cnew<T> just(T t, T t2, T t3, T t4, T t5, T t6, T t7, T t8, T t9, T t10) {
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
        return fromArray(t, t2, t3, t4, t5, t6, t7, t8, t9, t10);
    }

    @b41
    @cs1("none")
    @gl
    public static <T1, T2, T3, T4, T5, T6, T7, T8, T9, R> Cnew<R> combineLatest(ObservableSource<? extends T1> observableSource, ObservableSource<? extends T2> observableSource2, ObservableSource<? extends T3> observableSource3, ObservableSource<? extends T4> observableSource4, ObservableSource<? extends T5> observableSource5, ObservableSource<? extends T6> observableSource6, ObservableSource<? extends T7> observableSource7, ObservableSource<? extends T8> observableSource8, ObservableSource<? extends T9> observableSource9, Function9<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? super T8, ? super T9, ? extends R> function9) {
        Cif.m29468else(observableSource, "source1 is null");
        Cif.m29468else(observableSource2, "source2 is null");
        Cif.m29468else(observableSource3, "source3 is null");
        Cif.m29468else(observableSource4, "source4 is null");
        Cif.m29468else(observableSource5, "source5 is null");
        Cif.m29468else(observableSource6, "source6 is null");
        Cif.m29468else(observableSource7, "source7 is null");
        Cif.m29468else(observableSource8, "source8 is null");
        Cif.m29468else(observableSource9, "source9 is null");
        return combineLatest(io.reactivex.internal.functions.Cdo.m29419continue(function9), bufferSize(), observableSource, observableSource2, observableSource3, observableSource4, observableSource5, observableSource6, observableSource7, observableSource8, observableSource9);
    }

    @cs1("none")
    @gl
    public static <T1, T2, T3, T4, T5, T6, T7, T8, T9, R> Cnew<R> zip(ObservableSource<? extends T1> observableSource, ObservableSource<? extends T2> observableSource2, ObservableSource<? extends T3> observableSource3, ObservableSource<? extends T4> observableSource4, ObservableSource<? extends T5> observableSource5, ObservableSource<? extends T6> observableSource6, ObservableSource<? extends T7> observableSource7, ObservableSource<? extends T8> observableSource8, ObservableSource<? extends T9> observableSource9, Function9<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? super T8, ? super T9, ? extends R> function9) {
        Cif.m29468else(observableSource, "source1 is null");
        Cif.m29468else(observableSource2, "source2 is null");
        Cif.m29468else(observableSource3, "source3 is null");
        Cif.m29468else(observableSource4, "source4 is null");
        Cif.m29468else(observableSource5, "source5 is null");
        Cif.m29468else(observableSource6, "source6 is null");
        Cif.m29468else(observableSource7, "source7 is null");
        Cif.m29468else(observableSource8, "source8 is null");
        Cif.m29468else(observableSource9, "source9 is null");
        return zipArray(io.reactivex.internal.functions.Cdo.m29419continue(function9), false, bufferSize(), observableSource, observableSource2, observableSource3, observableSource4, observableSource5, observableSource6, observableSource7, observableSource8, observableSource9);
    }
}
