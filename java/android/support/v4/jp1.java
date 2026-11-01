package android.support.v4;

import io.reactivex.Cfor;
import io.reactivex.Cnew;
import io.reactivex.CompletableObserver;
import io.reactivex.Ctry;
import io.reactivex.MaybeObserver;
import io.reactivex.Observer;
import io.reactivex.SingleObserver;
import io.reactivex.exceptions.Cdo;
import io.reactivex.functions.BiFunction;
import io.reactivex.functions.BooleanSupplier;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.Function;
import io.reactivex.internal.functions.Cif;
import io.reactivex.internal.schedulers.Celse;
import io.reactivex.internal.schedulers.Cfinal;
import io.reactivex.internal.util.Ccase;
import java.util.concurrent.Callable;
import java.util.concurrent.ThreadFactory;
import org.reactivestreams.Subscriber;

/* loaded from: classes.dex */
public final class jp1 {

    /* renamed from: break, reason: not valid java name */
    @a51
    public static volatile Function<? super Ctry, ? extends Ctry> f3168break;

    /* renamed from: case, reason: not valid java name */
    @a51
    public static volatile Function<? super Callable<Ctry>, ? extends Ctry> f3169case;

    /* renamed from: catch, reason: not valid java name */
    @a51
    public static volatile Function<? super Cfor, ? extends Cfor> f3170catch;

    /* renamed from: class, reason: not valid java name */
    @a51
    public static volatile Function<? super oq, ? extends oq> f3171class;

    /* renamed from: const, reason: not valid java name */
    @a51
    public static volatile Function<? super Cnew, ? extends Cnew> f3172const;

    /* renamed from: default, reason: not valid java name */
    public static volatile boolean f3173default;

    /* renamed from: do, reason: not valid java name */
    @a51
    public static volatile Consumer<? super Throwable> f3174do;

    /* renamed from: else, reason: not valid java name */
    @a51
    public static volatile Function<? super Ctry, ? extends Ctry> f3175else;

    /* renamed from: extends, reason: not valid java name */
    public static volatile boolean f3176extends;

    /* renamed from: final, reason: not valid java name */
    @a51
    public static volatile Function<? super pq, ? extends pq> f3177final;

    /* renamed from: for, reason: not valid java name */
    @a51
    public static volatile Function<? super Callable<Ctry>, ? extends Ctry> f3178for;

    /* renamed from: goto, reason: not valid java name */
    @a51
    public static volatile Function<? super Ctry, ? extends Ctry> f3179goto;

    /* renamed from: if, reason: not valid java name */
    @a51
    public static volatile Function<? super Runnable, ? extends Runnable> f3180if;

    /* renamed from: import, reason: not valid java name */
    @a51
    public static volatile Function<? super ub1, ? extends ub1> f3181import;

    /* renamed from: native, reason: not valid java name */
    @a51
    public static volatile BiFunction<? super Cfor, ? super Subscriber, ? extends Subscriber> f3182native;

    /* renamed from: new, reason: not valid java name */
    @a51
    public static volatile Function<? super Callable<Ctry>, ? extends Ctry> f3183new;

    /* renamed from: public, reason: not valid java name */
    @a51
    public static volatile BiFunction<? super fy0, ? super MaybeObserver, ? extends MaybeObserver> f3184public;

    /* renamed from: return, reason: not valid java name */
    @a51
    public static volatile BiFunction<? super Cnew, ? super Observer, ? extends Observer> f3185return;

    /* renamed from: static, reason: not valid java name */
    @a51
    public static volatile BiFunction<? super jz1, ? super SingleObserver, ? extends SingleObserver> f3186static;

    /* renamed from: super, reason: not valid java name */
    @a51
    public static volatile Function<? super fy0, ? extends fy0> f3187super;

    /* renamed from: switch, reason: not valid java name */
    @a51
    public static volatile BiFunction<? super np, ? super CompletableObserver, ? extends CompletableObserver> f3188switch;

    /* renamed from: this, reason: not valid java name */
    @a51
    public static volatile Function<? super Ctry, ? extends Ctry> f3189this;

    /* renamed from: throw, reason: not valid java name */
    @a51
    public static volatile Function<? super jz1, ? extends jz1> f3190throw;

    /* renamed from: throws, reason: not valid java name */
    @a51
    public static volatile BooleanSupplier f3191throws;

    /* renamed from: try, reason: not valid java name */
    @a51
    public static volatile Function<? super Callable<Ctry>, ? extends Ctry> f3192try;

    /* renamed from: while, reason: not valid java name */
    @a51
    public static volatile Function<? super np, ? extends np> f3193while;

    private jp1() {
        throw new IllegalStateException("No instances!");
    }

    public static void A(@a51 Function<? super Callable<Ctry>, ? extends Ctry> function) {
        if (f3173default) {
            throw new IllegalStateException("Plugins can't be changed anymore");
        }
        f3192try = function;
    }

    public static void B(@a51 Function<? super Callable<Ctry>, ? extends Ctry> function) {
        if (f3173default) {
            throw new IllegalStateException("Plugins can't be changed anymore");
        }
        f3169case = function;
    }

    public static void C(@a51 Function<? super Callable<Ctry>, ? extends Ctry> function) {
        if (f3173default) {
            throw new IllegalStateException("Plugins can't be changed anymore");
        }
        f3183new = function;
    }

    public static void D(@a51 Function<? super Ctry, ? extends Ctry> function) {
        if (f3173default) {
            throw new IllegalStateException("Plugins can't be changed anymore");
        }
        f3189this = function;
    }

    public static void E(@a51 Function<? super Ctry, ? extends Ctry> function) {
        if (f3173default) {
            throw new IllegalStateException("Plugins can't be changed anymore");
        }
        f3168break = function;
    }

    public static void F(@a51 BooleanSupplier booleanSupplier) {
        if (f3173default) {
            throw new IllegalStateException("Plugins can't be changed anymore");
        }
        f3191throws = booleanSupplier;
    }

    public static void G(@a51 Function<? super np, ? extends np> function) {
        if (f3173default) {
            throw new IllegalStateException("Plugins can't be changed anymore");
        }
        f3193while = function;
    }

    public static void H(@a51 BiFunction<? super np, ? super CompletableObserver, ? extends CompletableObserver> biFunction) {
        if (f3173default) {
            throw new IllegalStateException("Plugins can't be changed anymore");
        }
        f3188switch = biFunction;
    }

    public static void I(@a51 Function<? super oq, ? extends oq> function) {
        if (f3173default) {
            throw new IllegalStateException("Plugins can't be changed anymore");
        }
        f3171class = function;
    }

    public static void J(@a51 Function<? super pq, ? extends pq> function) {
        if (f3173default) {
            throw new IllegalStateException("Plugins can't be changed anymore");
        }
        f3177final = function;
    }

    public static void K(@a51 Function<? super Cfor, ? extends Cfor> function) {
        if (f3173default) {
            throw new IllegalStateException("Plugins can't be changed anymore");
        }
        f3170catch = function;
    }

    public static void L(@a51 BiFunction<? super Cfor, ? super Subscriber, ? extends Subscriber> biFunction) {
        if (f3173default) {
            throw new IllegalStateException("Plugins can't be changed anymore");
        }
        f3182native = biFunction;
    }

    public static void M(@a51 Function<? super fy0, ? extends fy0> function) {
        if (f3173default) {
            throw new IllegalStateException("Plugins can't be changed anymore");
        }
        f3187super = function;
    }

    public static void N(@a51 BiFunction<? super fy0, MaybeObserver, ? extends MaybeObserver> biFunction) {
        if (f3173default) {
            throw new IllegalStateException("Plugins can't be changed anymore");
        }
        f3184public = biFunction;
    }

    public static void O(@a51 Function<? super Cnew, ? extends Cnew> function) {
        if (f3173default) {
            throw new IllegalStateException("Plugins can't be changed anymore");
        }
        f3172const = function;
    }

    public static void P(@a51 BiFunction<? super Cnew, ? super Observer, ? extends Observer> biFunction) {
        if (f3173default) {
            throw new IllegalStateException("Plugins can't be changed anymore");
        }
        f3185return = biFunction;
    }

    public static void Q(@a51 Function<? super ub1, ? extends ub1> function) {
        if (f3173default) {
            throw new IllegalStateException("Plugins can't be changed anymore");
        }
        f3181import = function;
    }

    public static void R(@a51 Function<? super jz1, ? extends jz1> function) {
        if (f3173default) {
            throw new IllegalStateException("Plugins can't be changed anymore");
        }
        f3190throw = function;
    }

    public static void S(@a51 BiFunction<? super jz1, ? super SingleObserver, ? extends SingleObserver> biFunction) {
        if (f3173default) {
            throw new IllegalStateException("Plugins can't be changed anymore");
        }
        f3186static = biFunction;
    }

    public static void T(@a51 Function<? super Runnable, ? extends Runnable> function) {
        if (f3173default) {
            throw new IllegalStateException("Plugins can't be changed anymore");
        }
        f3180if = function;
    }

    public static void U(@a51 Function<? super Ctry, ? extends Ctry> function) {
        if (f3173default) {
            throw new IllegalStateException("Plugins can't be changed anymore");
        }
        f3179goto = function;
    }

    public static void V(@b41 Throwable th) {
        Thread threadCurrentThread = Thread.currentThread();
        threadCurrentThread.getUncaughtExceptionHandler().uncaughtException(threadCurrentThread, th);
    }

    public static void W() {
        f3173default = false;
    }

    public static void a() {
        f3173default = true;
    }

    @a51
    /* renamed from: abstract, reason: not valid java name */
    public static BiFunction<? super jz1, ? super SingleObserver, ? extends SingleObserver> m4012abstract() {
        return f3186static;
    }

    @b41
    public static np b(@b41 np npVar) {
        Function<? super np, ? extends np> function = f3193while;
        return function != null ? (np) m4027if(function, npVar) : npVar;
    }

    @a51
    /* renamed from: break, reason: not valid java name */
    public static Consumer<? super Throwable> m4013break() {
        return f3174do;
    }

    @b41
    public static <T> oq<T> c(@b41 oq<T> oqVar) {
        Function<? super oq, ? extends oq> function = f3171class;
        return function != null ? (oq) m4027if(function, oqVar) : oqVar;
    }

    @b41
    /* renamed from: case, reason: not valid java name */
    public static Ctry m4014case(@b41 ThreadFactory threadFactory) {
        return new Celse((ThreadFactory) Cif.m29468else(threadFactory, "threadFactory is null"));
    }

    @a51
    /* renamed from: catch, reason: not valid java name */
    public static Function<? super Callable<Ctry>, ? extends Ctry> m4015catch() {
        return f3178for;
    }

    @a51
    /* renamed from: class, reason: not valid java name */
    public static Function<? super Callable<Ctry>, ? extends Ctry> m4016class() {
        return f3192try;
    }

    @a51
    /* renamed from: const, reason: not valid java name */
    public static Function<? super Callable<Ctry>, ? extends Ctry> m4017const() {
        return f3169case;
    }

    @a51
    /* renamed from: continue, reason: not valid java name */
    public static Function<? super Runnable, ? extends Runnable> m4018continue() {
        return f3180if;
    }

    @b41
    public static <T> pq<T> d(@b41 pq<T> pqVar) {
        Function<? super pq, ? extends pq> function = f3177final;
        return function != null ? (pq) m4027if(function, pqVar) : pqVar;
    }

    @a51
    /* renamed from: default, reason: not valid java name */
    public static BiFunction<? super fy0, ? super MaybeObserver, ? extends MaybeObserver> m4019default() {
        return f3184public;
    }

    @b41
    /* renamed from: do, reason: not valid java name */
    public static <T, U, R> R m4020do(@b41 BiFunction<T, U, R> biFunction, @b41 T t, @b41 U u) {
        try {
            return biFunction.apply(t, u);
        } catch (Throwable th) {
            throw Ccase.m29712case(th);
        }
    }

    @b41
    public static <T> fy0<T> e(@b41 fy0<T> fy0Var) {
        Function<? super fy0, ? extends fy0> function = f3187super;
        return function != null ? (fy0) m4027if(function, fy0Var) : fy0Var;
    }

    @b41
    /* renamed from: else, reason: not valid java name */
    public static Ctry m4021else(@b41 ThreadFactory threadFactory) {
        return new k31((ThreadFactory) Cif.m29468else(threadFactory, "threadFactory is null"));
    }

    @a51
    /* renamed from: extends, reason: not valid java name */
    public static Function<? super Cnew, ? extends Cnew> m4022extends() {
        return f3172const;
    }

    @b41
    public static <T> ub1<T> f(@b41 ub1<T> ub1Var) {
        Function<? super ub1, ? extends ub1> function = f3181import;
        return function != null ? (ub1) m4027if(function, ub1Var) : ub1Var;
    }

    @a51
    /* renamed from: final, reason: not valid java name */
    public static Function<? super Callable<Ctry>, ? extends Ctry> m4023final() {
        return f3183new;
    }

    @a51
    /* renamed from: finally, reason: not valid java name */
    public static BiFunction<? super Cnew, ? super Observer, ? extends Observer> m4024finally() {
        return f3185return;
    }

    @b41
    /* renamed from: for, reason: not valid java name */
    public static Ctry m4025for(@b41 Function<? super Callable<Ctry>, ? extends Ctry> function, Callable<Ctry> callable) {
        return (Ctry) Cif.m29468else(m4027if(function, callable), "Scheduler Callable result can't be null");
    }

    @b41
    public static <T> jz1<T> g(@b41 jz1<T> jz1Var) {
        Function<? super jz1, ? extends jz1> function = f3190throw;
        return function != null ? (jz1) m4027if(function, jz1Var) : jz1Var;
    }

    @b41
    /* renamed from: goto, reason: not valid java name */
    public static Ctry m4026goto(@b41 ThreadFactory threadFactory) {
        return new Cfinal((ThreadFactory) Cif.m29468else(threadFactory, "threadFactory is null"));
    }

    @b41
    public static <T> Cfor<T> h(@b41 Cfor<T> cfor) {
        Function<? super Cfor, ? extends Cfor> function = f3170catch;
        return function != null ? (Cfor) m4027if(function, cfor) : cfor;
    }

    @b41
    public static <T> Cnew<T> i(@b41 Cnew<T> cnew) {
        Function<? super Cnew, ? extends Cnew> function = f3172const;
        return function != null ? (Cnew) m4027if(function, cnew) : cnew;
    }

    @b41
    /* renamed from: if, reason: not valid java name */
    public static <T, R> R m4027if(@b41 Function<T, R> function, @b41 T t) {
        try {
            return function.apply(t);
        } catch (Throwable th) {
            throw Ccase.m29712case(th);
        }
    }

    /* renamed from: implements, reason: not valid java name */
    public static boolean m4028implements(Throwable th) {
        return (th instanceof z61) || (th instanceof a01) || (th instanceof IllegalStateException) || (th instanceof NullPointerException) || (th instanceof IllegalArgumentException) || (th instanceof Cdo);
    }

    @a51
    /* renamed from: import, reason: not valid java name */
    public static Function<? super np, ? extends np> m4029import() {
        return f3193while;
    }

    /* renamed from: instanceof, reason: not valid java name */
    public static boolean m4030instanceof() {
        return f3176extends;
    }

    @b41
    /* renamed from: interface, reason: not valid java name */
    public static Ctry m4031interface(@b41 Callable<Ctry> callable) {
        Cif.m29468else(callable, "Scheduler Callable can't be null");
        Function<? super Callable<Ctry>, ? extends Ctry> function = f3192try;
        return function == null ? m4033new(callable) : m4025for(function, callable);
    }

    public static boolean j() {
        BooleanSupplier booleanSupplier = f3191throws;
        if (booleanSupplier == null) {
            return false;
        }
        try {
            return booleanSupplier.getAsBoolean();
        } catch (Throwable th) {
            throw Ccase.m29712case(th);
        }
    }

    @b41
    public static Ctry k(@b41 Ctry ctry) {
        Function<? super Ctry, ? extends Ctry> function = f3175else;
        return function == null ? ctry : (Ctry) m4027if(function, ctry);
    }

    public static void l(@b41 Throwable th) {
        Consumer<? super Throwable> consumer = f3174do;
        if (th == null) {
            th = new NullPointerException("onError called with null. Null values are generally not allowed in 2.x operators and sources.");
        } else if (!m4028implements(th)) {
            th = new nb2(th);
        }
        if (consumer != null) {
            try {
                consumer.accept(th);
                return;
            } catch (Throwable th2) {
                th2.printStackTrace();
                V(th2);
            }
        }
        th.printStackTrace();
        V(th);
    }

    @b41
    public static Ctry m(@b41 Ctry ctry) {
        Function<? super Ctry, ? extends Ctry> function = f3189this;
        return function == null ? ctry : (Ctry) m4027if(function, ctry);
    }

    @b41
    public static Ctry n(@b41 Ctry ctry) {
        Function<? super Ctry, ? extends Ctry> function = f3168break;
        return function == null ? ctry : (Ctry) m4027if(function, ctry);
    }

    @a51
    /* renamed from: native, reason: not valid java name */
    public static BiFunction<? super np, ? super CompletableObserver, ? extends CompletableObserver> m4032native() {
        return f3188switch;
    }

    @b41
    /* renamed from: new, reason: not valid java name */
    public static Ctry m4033new(@b41 Callable<Ctry> callable) {
        try {
            return (Ctry) Cif.m29468else(callable.call(), "Scheduler Callable result can't be null");
        } catch (Throwable th) {
            throw Ccase.m29712case(th);
        }
    }

    @b41
    public static Runnable o(@b41 Runnable runnable) {
        Cif.m29468else(runnable, "run is null");
        Function<? super Runnable, ? extends Runnable> function = f3180if;
        return function == null ? runnable : (Runnable) m4027if(function, runnable);
    }

    @b41
    public static Ctry p(@b41 Ctry ctry) {
        Function<? super Ctry, ? extends Ctry> function = f3179goto;
        return function == null ? ctry : (Ctry) m4027if(function, ctry);
    }

    @a51
    /* renamed from: package, reason: not valid java name */
    public static Function<? super ub1, ? extends ub1> m4034package() {
        return f3181import;
    }

    @a51
    /* renamed from: private, reason: not valid java name */
    public static Function<? super jz1, ? extends jz1> m4035private() {
        return f3190throw;
    }

    @b41
    /* renamed from: protected, reason: not valid java name */
    public static Ctry m4036protected(@b41 Callable<Ctry> callable) {
        Cif.m29468else(callable, "Scheduler Callable can't be null");
        Function<? super Callable<Ctry>, ? extends Ctry> function = f3169case;
        return function == null ? m4033new(callable) : m4025for(function, callable);
    }

    @a51
    /* renamed from: public, reason: not valid java name */
    public static Function<? super oq, ? extends oq> m4037public() {
        return f3171class;
    }

    @b41
    public static CompletableObserver q(@b41 np npVar, @b41 CompletableObserver completableObserver) {
        BiFunction<? super np, ? super CompletableObserver, ? extends CompletableObserver> biFunction = f3188switch;
        return biFunction != null ? (CompletableObserver) m4020do(biFunction, npVar, completableObserver) : completableObserver;
    }

    @b41
    public static <T> MaybeObserver<? super T> r(@b41 fy0<T> fy0Var, @b41 MaybeObserver<? super T> maybeObserver) {
        BiFunction<? super fy0, ? super MaybeObserver, ? extends MaybeObserver> biFunction = f3184public;
        return biFunction != null ? (MaybeObserver) m4020do(biFunction, fy0Var, maybeObserver) : maybeObserver;
    }

    @a51
    /* renamed from: return, reason: not valid java name */
    public static Function<? super pq, ? extends pq> m4038return() {
        return f3177final;
    }

    @b41
    public static <T> Observer<? super T> s(@b41 Cnew<T> cnew, @b41 Observer<? super T> observer) {
        BiFunction<? super Cnew, ? super Observer, ? extends Observer> biFunction = f3185return;
        return biFunction != null ? (Observer) m4020do(biFunction, cnew, observer) : observer;
    }

    @a51
    /* renamed from: static, reason: not valid java name */
    public static Function<? super Cfor, ? extends Cfor> m4039static() {
        return f3170catch;
    }

    @a51
    /* renamed from: strictfp, reason: not valid java name */
    public static Function<? super Ctry, ? extends Ctry> m4040strictfp() {
        return f3179goto;
    }

    @a51
    /* renamed from: super, reason: not valid java name */
    public static Function<? super Ctry, ? extends Ctry> m4041super() {
        return f3189this;
    }

    @a51
    /* renamed from: switch, reason: not valid java name */
    public static BiFunction<? super Cfor, ? super Subscriber, ? extends Subscriber> m4042switch() {
        return f3182native;
    }

    /* renamed from: synchronized, reason: not valid java name */
    public static boolean m4043synchronized() {
        return f3173default;
    }

    @b41
    public static <T> SingleObserver<? super T> t(@b41 jz1<T> jz1Var, @b41 SingleObserver<? super T> singleObserver) {
        BiFunction<? super jz1, ? super SingleObserver, ? extends SingleObserver> biFunction = f3186static;
        return biFunction != null ? (SingleObserver) m4020do(biFunction, jz1Var, singleObserver) : singleObserver;
    }

    @a51
    /* renamed from: this, reason: not valid java name */
    public static Function<? super Ctry, ? extends Ctry> m4044this() {
        return f3175else;
    }

    @a51
    /* renamed from: throw, reason: not valid java name */
    public static Function<? super Ctry, ? extends Ctry> m4045throw() {
        return f3168break;
    }

    @a51
    /* renamed from: throws, reason: not valid java name */
    public static Function<? super fy0, ? extends fy0> m4046throws() {
        return f3187super;
    }

    @b41
    /* renamed from: transient, reason: not valid java name */
    public static Ctry m4047transient(@b41 Callable<Ctry> callable) {
        Cif.m29468else(callable, "Scheduler Callable can't be null");
        Function<? super Callable<Ctry>, ? extends Ctry> function = f3183new;
        return function == null ? m4033new(callable) : m4025for(function, callable);
    }

    @b41
    /* renamed from: try, reason: not valid java name */
    public static Ctry m4048try(@b41 ThreadFactory threadFactory) {
        return new io.reactivex.internal.schedulers.Cif((ThreadFactory) Cif.m29468else(threadFactory, "threadFactory is null"));
    }

    @b41
    public static <T> Subscriber<? super T> u(@b41 Cfor<T> cfor, @b41 Subscriber<? super T> subscriber) {
        BiFunction<? super Cfor, ? super Subscriber, ? extends Subscriber> biFunction = f3182native;
        return biFunction != null ? (Subscriber) m4020do(biFunction, cfor, subscriber) : subscriber;
    }

    public static void v() {
        x(null);
        T(null);
        w(null);
        z(null);
        D(null);
        A(null);
        U(null);
        C(null);
        E(null);
        B(null);
        K(null);
        L(null);
        O(null);
        P(null);
        R(null);
        S(null);
        G(null);
        H(null);
        I(null);
        J(null);
        M(null);
        N(null);
        Q(null);
        y(false);
        F(null);
    }

    @b41
    /* renamed from: volatile, reason: not valid java name */
    public static Ctry m4049volatile(@b41 Callable<Ctry> callable) {
        Cif.m29468else(callable, "Scheduler Callable can't be null");
        Function<? super Callable<Ctry>, ? extends Ctry> function = f3178for;
        return function == null ? m4033new(callable) : m4025for(function, callable);
    }

    public static void w(@a51 Function<? super Ctry, ? extends Ctry> function) {
        if (f3173default) {
            throw new IllegalStateException("Plugins can't be changed anymore");
        }
        f3175else = function;
    }

    @a51
    /* renamed from: while, reason: not valid java name */
    public static BooleanSupplier m4050while() {
        return f3191throws;
    }

    public static void x(@a51 Consumer<? super Throwable> consumer) {
        if (f3173default) {
            throw new IllegalStateException("Plugins can't be changed anymore");
        }
        f3174do = consumer;
    }

    public static void y(boolean z) {
        if (f3173default) {
            throw new IllegalStateException("Plugins can't be changed anymore");
        }
        f3176extends = z;
    }

    public static void z(@a51 Function<? super Callable<Ctry>, ? extends Ctry> function) {
        if (f3173default) {
            throw new IllegalStateException("Plugins can't be changed anymore");
        }
        f3178for = function;
    }
}
