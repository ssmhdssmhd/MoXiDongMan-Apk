package android.support.v4;

import io.reactivex.Ctry;
import io.reactivex.functions.Function;
import java.util.Objects;
import java.util.concurrent.Callable;

/* loaded from: classes3.dex */
public final class dp1 {

    /* renamed from: do, reason: not valid java name */
    private static volatile Function<Callable<Ctry>, Ctry> f1102do;

    /* renamed from: if, reason: not valid java name */
    private static volatile Function<Ctry, Ctry> f1103if;

    private dp1() {
        throw new AssertionError("No instances.");
    }

    /* renamed from: break, reason: not valid java name */
    public static void m1477break(Function<Ctry, Ctry> function) {
        f1103if = function;
    }

    /* renamed from: case, reason: not valid java name */
    public static Ctry m1478case(Callable<Ctry> callable) {
        Objects.requireNonNull(callable, "scheduler == null");
        Function<Callable<Ctry>, Ctry> function = f1102do;
        return function == null ? m1481for(callable) : m1483if(function, callable);
    }

    /* renamed from: do, reason: not valid java name */
    public static <T, R> R m1479do(Function<T, R> function, T t) {
        try {
            return function.apply(t);
        } catch (Throwable th) {
            throw t80.m7780do(th);
        }
    }

    /* renamed from: else, reason: not valid java name */
    public static Ctry m1480else(Ctry ctry) {
        Objects.requireNonNull(ctry, "scheduler == null");
        Function<Ctry, Ctry> function = f1103if;
        return function == null ? ctry : (Ctry) m1479do(function, ctry);
    }

    /* renamed from: for, reason: not valid java name */
    public static Ctry m1481for(Callable<Ctry> callable) {
        try {
            Ctry ctryCall = callable.call();
            if (ctryCall != null) {
                return ctryCall;
            }
            throw new NullPointerException("Scheduler Callable returned null");
        } catch (Throwable th) {
            throw t80.m7780do(th);
        }
    }

    /* renamed from: goto, reason: not valid java name */
    public static void m1482goto() {
        m1485this(null);
        m1477break(null);
    }

    /* renamed from: if, reason: not valid java name */
    public static Ctry m1483if(Function<Callable<Ctry>, Ctry> function, Callable<Ctry> callable) {
        Ctry ctry = (Ctry) m1479do(function, callable);
        Objects.requireNonNull(ctry, "Scheduler Callable returned null");
        return ctry;
    }

    /* renamed from: new, reason: not valid java name */
    public static Function<Callable<Ctry>, Ctry> m1484new() {
        return f1102do;
    }

    /* renamed from: this, reason: not valid java name */
    public static void m1485this(Function<Callable<Ctry>, Ctry> function) {
        f1102do = function;
    }

    /* renamed from: try, reason: not valid java name */
    public static Function<Ctry, Ctry> m1486try() {
        return f1103if;
    }
}
