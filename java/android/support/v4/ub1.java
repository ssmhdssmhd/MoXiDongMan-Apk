package android.support.v4;

import io.reactivex.Cfor;
import io.reactivex.functions.Action;
import io.reactivex.functions.BiConsumer;
import io.reactivex.functions.BiFunction;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.Function;
import io.reactivex.functions.LongConsumer;
import io.reactivex.functions.Predicate;
import io.reactivex.internal.functions.Cif;
import io.reactivex.internal.operators.parallel.Cbreak;
import io.reactivex.internal.operators.parallel.Ccase;
import io.reactivex.internal.operators.parallel.Cclass;
import io.reactivex.internal.operators.parallel.Cconst;
import io.reactivex.internal.operators.parallel.Celse;
import io.reactivex.internal.operators.parallel.Cgoto;
import io.reactivex.internal.operators.parallel.Cnew;
import io.reactivex.internal.operators.parallel.Cthis;
import io.reactivex.internal.operators.parallel.Ctry;
import io.reactivex.internal.util.Ccatch;
import io.reactivex.parallel.Cdo;
import io.reactivex.parallel.ParallelFlowableConverter;
import io.reactivex.parallel.ParallelTransformer;
import java.util.Comparator;
import java.util.List;
import java.util.concurrent.Callable;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* loaded from: classes.dex */
public abstract class ub1<T> {
    @gl
    /* renamed from: default, reason: not valid java name */
    public static <T> ub1<T> m8317default(@b41 Publisher<? extends T> publisher) {
        return m8319finally(publisher, Runtime.getRuntime().availableProcessors(), Cfor.g());
    }

    @gl
    /* renamed from: extends, reason: not valid java name */
    public static <T> ub1<T> m8318extends(@b41 Publisher<? extends T> publisher, int i) {
        return m8319finally(publisher, i, Cfor.g());
    }

    @b41
    @gl
    /* renamed from: finally, reason: not valid java name */
    public static <T> ub1<T> m8319finally(@b41 Publisher<? extends T> publisher, int i, int i2) {
        Cif.m29468else(publisher, "source");
        Cif.m29470goto(i, "parallelism");
        Cif.m29470goto(i2, "prefetch");
        return jp1.f(new Ctry(publisher, i, i2));
    }

    @b41
    @gl
    /* renamed from: package, reason: not valid java name */
    public static <T> ub1<T> m8320package(@b41 Publisher<T>... publisherArr) {
        if (publisherArr.length != 0) {
            return jp1.f(new vb1(publisherArr));
        }
        throw new IllegalArgumentException("Zero publishers not supported");
    }

    @b41
    @t6(s6.FULL)
    @cs1("none")
    @gl
    public final Cfor<T> a(int i) {
        Cif.m29470goto(i, "prefetch");
        return jp1.h(new Ccase(this, i, true));
    }

    @b41
    @gl
    /* renamed from: abstract, reason: not valid java name */
    public final <R> ub1<R> m8321abstract(@b41 Function<? super T, ? extends R> function, @b41 BiFunction<? super Long, ? super Throwable, Cdo> biFunction) {
        Cif.m29468else(function, "mapper");
        Cif.m29468else(biFunction, "errorHandler is null");
        return jp1.f(new Cgoto(this, function, biFunction));
    }

    @b41
    @gl
    public final Cfor<T> b(@b41 Comparator<? super T> comparator) {
        return c(comparator, 16);
    }

    @b41
    @gl
    /* renamed from: break, reason: not valid java name */
    public final ub1<T> m8322break(@b41 Action action) {
        Cif.m29468else(action, "onCancel is null");
        Consumer consumerM29427goto = io.reactivex.internal.functions.Cdo.m29427goto();
        Consumer consumerM29427goto2 = io.reactivex.internal.functions.Cdo.m29427goto();
        Consumer consumerM29427goto3 = io.reactivex.internal.functions.Cdo.m29427goto();
        Action action2 = io.reactivex.internal.functions.Cdo.f25282for;
        return jp1.f(new Cthis(this, consumerM29427goto, consumerM29427goto2, consumerM29427goto3, action2, action2, io.reactivex.internal.functions.Cdo.m29427goto(), io.reactivex.internal.functions.Cdo.f25281else, action));
    }

    @b41
    @gl
    public final Cfor<T> c(@b41 Comparator<? super T> comparator, int i) {
        Cif.m29468else(comparator, "comparator is null");
        Cif.m29470goto(i, "capacityHint");
        return jp1.h(new Cconst(m8353volatile(io.reactivex.internal.functions.Cdo.m29415case((i / mo7358strictfp()) + 1), io.reactivex.internal.util.Cgoto.instance()).m8340private(new Ccatch(comparator)), comparator));
    }

    @b41
    @gl
    /* renamed from: case, reason: not valid java name */
    public final <R> ub1<R> m8323case(@b41 Function<? super T, ? extends Publisher<? extends R>> function, int i, boolean z) {
        Cif.m29468else(function, "mapper is null");
        Cif.m29470goto(i, "prefetch");
        return jp1.f(new sb1(this, function, i, z ? io.reactivex.internal.util.Ctry.END : io.reactivex.internal.util.Ctry.BOUNDARY));
    }

    @b41
    @gl
    /* renamed from: catch, reason: not valid java name */
    public final ub1<T> m8324catch(@b41 Action action) {
        Cif.m29468else(action, "onComplete is null");
        Consumer consumerM29427goto = io.reactivex.internal.functions.Cdo.m29427goto();
        Consumer consumerM29427goto2 = io.reactivex.internal.functions.Cdo.m29427goto();
        Consumer consumerM29427goto3 = io.reactivex.internal.functions.Cdo.m29427goto();
        Action action2 = io.reactivex.internal.functions.Cdo.f25282for;
        return jp1.f(new Cthis(this, consumerM29427goto, consumerM29427goto2, consumerM29427goto3, action, action2, io.reactivex.internal.functions.Cdo.m29427goto(), io.reactivex.internal.functions.Cdo.f25281else, action2));
    }

    @b41
    @gl
    /* renamed from: class, reason: not valid java name */
    public final ub1<T> m8325class(@b41 Consumer<Throwable> consumer) {
        Cif.m29468else(consumer, "onError is null");
        Consumer consumerM29427goto = io.reactivex.internal.functions.Cdo.m29427goto();
        Consumer consumerM29427goto2 = io.reactivex.internal.functions.Cdo.m29427goto();
        Action action = io.reactivex.internal.functions.Cdo.f25282for;
        return jp1.f(new Cthis(this, consumerM29427goto, consumerM29427goto2, consumer, action, action, io.reactivex.internal.functions.Cdo.m29427goto(), io.reactivex.internal.functions.Cdo.f25281else, action));
    }

    @b41
    @gl
    /* renamed from: const, reason: not valid java name */
    public final ub1<T> m8326const(@b41 Consumer<? super T> consumer) {
        Cif.m29468else(consumer, "onNext is null");
        Consumer consumerM29427goto = io.reactivex.internal.functions.Cdo.m29427goto();
        Consumer consumerM29427goto2 = io.reactivex.internal.functions.Cdo.m29427goto();
        Action action = io.reactivex.internal.functions.Cdo.f25282for;
        return jp1.f(new Cthis(this, consumer, consumerM29427goto, consumerM29427goto2, action, action, io.reactivex.internal.functions.Cdo.m29427goto(), io.reactivex.internal.functions.Cdo.f25281else, action));
    }

    @b41
    @gl
    /* renamed from: continue, reason: not valid java name */
    public final <R> ub1<R> m8327continue(@b41 Function<? super T, ? extends R> function, @b41 Cdo cdo) {
        Cif.m29468else(function, "mapper");
        Cif.m29468else(cdo, "errorHandler is null");
        return jp1.f(new Cgoto(this, function, cdo));
    }

    @b41
    @gl
    public final <U> U d(@b41 Function<? super ub1<T>, U> function) {
        try {
            return (U) ((Function) Cif.m29468else(function, "converter is null")).apply(this);
        } catch (Throwable th) {
            t80.m7781if(th);
            throw io.reactivex.internal.util.Ccase.m29712case(th);
        }
    }

    @b41
    @gl
    /* renamed from: do, reason: not valid java name */
    public final <R> R m8328do(@b41 ParallelFlowableConverter<T, R> parallelFlowableConverter) {
        return (R) ((ParallelFlowableConverter) Cif.m29468else(parallelFlowableConverter, "converter is null")).apply(this);
    }

    @b41
    @gl
    public final Cfor<List<T>> e(@b41 Comparator<? super T> comparator) {
        return f(comparator, 16);
    }

    @b41
    @gl
    /* renamed from: else, reason: not valid java name */
    public final <R> ub1<R> m8329else(@b41 Function<? super T, ? extends Publisher<? extends R>> function, boolean z) {
        return m8323case(function, 2, z);
    }

    @b41
    @gl
    public final Cfor<List<T>> f(@b41 Comparator<? super T> comparator, int i) {
        Cif.m29468else(comparator, "comparator is null");
        Cif.m29470goto(i, "capacityHint");
        return jp1.h(m8353volatile(io.reactivex.internal.functions.Cdo.m29415case((i / mo7358strictfp()) + 1), io.reactivex.internal.util.Cgoto.instance()).m8340private(new Ccatch(comparator)).m8337interface(new io.reactivex.internal.util.Cthis(comparator)));
    }

    @b41
    @gl
    /* renamed from: final, reason: not valid java name */
    public final ub1<T> m8330final(@b41 Consumer<? super T> consumer, @b41 BiFunction<? super Long, ? super Throwable, Cdo> biFunction) {
        Cif.m29468else(consumer, "onNext is null");
        Cif.m29468else(biFunction, "errorHandler is null");
        return jp1.f(new io.reactivex.internal.operators.parallel.Cif(this, consumer, biFunction));
    }

    @b41
    @gl
    /* renamed from: for, reason: not valid java name */
    public final <U> ub1<U> m8331for(@b41 ParallelTransformer<T, U> parallelTransformer) {
        return jp1.f(((ParallelTransformer) Cif.m29468else(parallelTransformer, "composer is null")).apply(this));
    }

    public final boolean g(@b41 Subscriber<?>[] subscriberArr) {
        int iMo7358strictfp = mo7358strictfp();
        if (subscriberArr.length == iMo7358strictfp) {
            return true;
        }
        IllegalArgumentException illegalArgumentException = new IllegalArgumentException("parallelism = " + iMo7358strictfp + ", subscribers = " + subscriberArr.length);
        for (Subscriber<?> subscriber : subscriberArr) {
            io.reactivex.internal.subscriptions.Cdo.error(illegalArgumentException, subscriber);
        }
        return false;
    }

    @b41
    @gl
    /* renamed from: goto, reason: not valid java name */
    public final ub1<T> m8332goto(@b41 Consumer<? super T> consumer) {
        Cif.m29468else(consumer, "onAfterNext is null");
        Consumer consumerM29427goto = io.reactivex.internal.functions.Cdo.m29427goto();
        Consumer consumerM29427goto2 = io.reactivex.internal.functions.Cdo.m29427goto();
        Action action = io.reactivex.internal.functions.Cdo.f25282for;
        return jp1.f(new Cthis(this, consumerM29427goto, consumer, consumerM29427goto2, action, action, io.reactivex.internal.functions.Cdo.m29427goto(), io.reactivex.internal.functions.Cdo.f25281else, action));
    }

    @b41
    @gl
    /* renamed from: if, reason: not valid java name */
    public final <C> ub1<C> m8333if(@b41 Callable<? extends C> callable, @b41 BiConsumer<? super C, ? super T> biConsumer) {
        Cif.m29468else(callable, "collectionSupplier is null");
        Cif.m29468else(biConsumer, "collector is null");
        return jp1.f(new io.reactivex.internal.operators.parallel.Cdo(this, callable, biConsumer));
    }

    @cs1("none")
    @t6(s6.FULL)
    @gl
    /* renamed from: implements, reason: not valid java name */
    public final Cfor<T> m8334implements() {
        return m8336instanceof(Cfor.g());
    }

    @gl
    /* renamed from: import, reason: not valid java name */
    public final ub1<T> m8335import(@b41 Predicate<? super T> predicate) {
        Cif.m29468else(predicate, "predicate");
        return jp1.f(new io.reactivex.internal.operators.parallel.Cfor(this, predicate));
    }

    @b41
    @t6(s6.FULL)
    @cs1("none")
    @gl
    /* renamed from: instanceof, reason: not valid java name */
    public final Cfor<T> m8336instanceof(int i) {
        Cif.m29470goto(i, "prefetch");
        return jp1.h(new Ccase(this, i, false));
    }

    @b41
    @gl
    /* renamed from: interface, reason: not valid java name */
    public final Cfor<T> m8337interface(@b41 BiFunction<T, T, T> biFunction) {
        Cif.m29468else(biFunction, "reducer");
        return jp1.h(new io.reactivex.internal.operators.parallel.Ccatch(this, biFunction));
    }

    @gl
    /* renamed from: native, reason: not valid java name */
    public final ub1<T> m8338native(@b41 Predicate<? super T> predicate, @b41 BiFunction<? super Long, ? super Throwable, Cdo> biFunction) {
        Cif.m29468else(predicate, "predicate");
        Cif.m29468else(biFunction, "errorHandler is null");
        return jp1.f(new Cnew(this, predicate, biFunction));
    }

    @b41
    @gl
    /* renamed from: new, reason: not valid java name */
    public final <R> ub1<R> m8339new(@b41 Function<? super T, ? extends Publisher<? extends R>> function) {
        return m8352try(function, 2);
    }

    @b41
    @gl
    /* renamed from: private, reason: not valid java name */
    public final <R> ub1<R> m8340private(@b41 Function<? super T, ? extends R> function) {
        Cif.m29468else(function, "mapper");
        return jp1.f(new Celse(this, function));
    }

    @b41
    @gl
    /* renamed from: protected, reason: not valid java name */
    public final ub1<T> m8341protected(@b41 io.reactivex.Ctry ctry) {
        return m8351transient(ctry, Cfor.g());
    }

    @gl
    /* renamed from: public, reason: not valid java name */
    public final ub1<T> m8342public(@b41 Predicate<? super T> predicate, @b41 Cdo cdo) {
        Cif.m29468else(predicate, "predicate");
        Cif.m29468else(cdo, "errorHandler is null");
        return jp1.f(new Cnew(this, predicate, cdo));
    }

    @b41
    @gl
    /* renamed from: return, reason: not valid java name */
    public final <R> ub1<R> m8343return(@b41 Function<? super T, ? extends Publisher<? extends R>> function) {
        return m8350throws(function, false, Integer.MAX_VALUE, Cfor.g());
    }

    @b41
    @gl
    /* renamed from: static, reason: not valid java name */
    public final <R> ub1<R> m8344static(@b41 Function<? super T, ? extends Publisher<? extends R>> function, boolean z) {
        return m8350throws(function, z, Integer.MAX_VALUE, Cfor.g());
    }

    /* renamed from: strictfp */
    public abstract int mo7358strictfp();

    public abstract void subscribe(@b41 Subscriber<? super T>[] subscriberArr);

    @b41
    @gl
    /* renamed from: super, reason: not valid java name */
    public final ub1<T> m8345super(@b41 Consumer<? super T> consumer, @b41 Cdo cdo) {
        Cif.m29468else(consumer, "onNext is null");
        Cif.m29468else(cdo, "errorHandler is null");
        return jp1.f(new io.reactivex.internal.operators.parallel.Cif(this, consumer, cdo));
    }

    @b41
    @gl
    /* renamed from: switch, reason: not valid java name */
    public final <R> ub1<R> m8346switch(@b41 Function<? super T, ? extends Publisher<? extends R>> function, boolean z, int i) {
        return m8350throws(function, z, i, Cfor.g());
    }

    @b41
    @t6(s6.FULL)
    @cs1("none")
    @gl
    /* renamed from: synchronized, reason: not valid java name */
    public final Cfor<T> m8347synchronized() {
        return a(Cfor.g());
    }

    @b41
    @gl
    /* renamed from: this, reason: not valid java name */
    public final ub1<T> m8348this(@b41 Action action) {
        Cif.m29468else(action, "onAfterTerminate is null");
        Consumer consumerM29427goto = io.reactivex.internal.functions.Cdo.m29427goto();
        Consumer consumerM29427goto2 = io.reactivex.internal.functions.Cdo.m29427goto();
        Consumer consumerM29427goto3 = io.reactivex.internal.functions.Cdo.m29427goto();
        Action action2 = io.reactivex.internal.functions.Cdo.f25282for;
        return jp1.f(new Cthis(this, consumerM29427goto, consumerM29427goto2, consumerM29427goto3, action2, action, io.reactivex.internal.functions.Cdo.m29427goto(), io.reactivex.internal.functions.Cdo.f25281else, action2));
    }

    @b41
    @gl
    /* renamed from: throw, reason: not valid java name */
    public final ub1<T> m8349throw(@b41 LongConsumer longConsumer) {
        Cif.m29468else(longConsumer, "onRequest is null");
        Consumer consumerM29427goto = io.reactivex.internal.functions.Cdo.m29427goto();
        Consumer consumerM29427goto2 = io.reactivex.internal.functions.Cdo.m29427goto();
        Consumer consumerM29427goto3 = io.reactivex.internal.functions.Cdo.m29427goto();
        Action action = io.reactivex.internal.functions.Cdo.f25282for;
        return jp1.f(new Cthis(this, consumerM29427goto, consumerM29427goto2, consumerM29427goto3, action, action, io.reactivex.internal.functions.Cdo.m29427goto(), longConsumer, action));
    }

    @b41
    @gl
    /* renamed from: throws, reason: not valid java name */
    public final <R> ub1<R> m8350throws(@b41 Function<? super T, ? extends Publisher<? extends R>> function, boolean z, int i, int i2) {
        Cif.m29468else(function, "mapper is null");
        Cif.m29470goto(i, "maxConcurrency");
        Cif.m29470goto(i2, "prefetch");
        return jp1.f(new tb1(this, function, z, i, i2));
    }

    @b41
    @gl
    /* renamed from: transient, reason: not valid java name */
    public final ub1<T> m8351transient(@b41 io.reactivex.Ctry ctry, int i) {
        Cif.m29468else(ctry, "scheduler");
        Cif.m29470goto(i, "prefetch");
        return jp1.f(new Cclass(this, ctry, i));
    }

    @b41
    @gl
    /* renamed from: try, reason: not valid java name */
    public final <R> ub1<R> m8352try(@b41 Function<? super T, ? extends Publisher<? extends R>> function, int i) {
        Cif.m29468else(function, "mapper is null");
        Cif.m29470goto(i, "prefetch");
        return jp1.f(new sb1(this, function, i, io.reactivex.internal.util.Ctry.IMMEDIATE));
    }

    @b41
    @gl
    /* renamed from: volatile, reason: not valid java name */
    public final <R> ub1<R> m8353volatile(@b41 Callable<R> callable, @b41 BiFunction<R, ? super T, R> biFunction) {
        Cif.m29468else(callable, "initialSupplier");
        Cif.m29468else(biFunction, "reducer");
        return jp1.f(new Cbreak(this, callable, biFunction));
    }

    @b41
    @gl
    /* renamed from: while, reason: not valid java name */
    public final ub1<T> m8354while(@b41 Consumer<? super Subscription> consumer) {
        Cif.m29468else(consumer, "onSubscribe is null");
        Consumer consumerM29427goto = io.reactivex.internal.functions.Cdo.m29427goto();
        Consumer consumerM29427goto2 = io.reactivex.internal.functions.Cdo.m29427goto();
        Consumer consumerM29427goto3 = io.reactivex.internal.functions.Cdo.m29427goto();
        Action action = io.reactivex.internal.functions.Cdo.f25282for;
        return jp1.f(new Cthis(this, consumerM29427goto, consumerM29427goto2, consumerM29427goto3, action, action, consumer, io.reactivex.internal.functions.Cdo.f25281else, action));
    }
}
