package android.support.v4;

import io.reactivex.Cnew;
import io.reactivex.Ctry;
import io.reactivex.ObservableSource;
import io.reactivex.SingleSource;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* loaded from: classes2.dex */
public class rp1 {

    /* renamed from: case, reason: not valid java name */
    private static int f5897case = 0;

    /* renamed from: do, reason: not valid java name */
    private static Ctry f5898do = null;

    /* renamed from: for, reason: not valid java name */
    private static final int f5899for = 10;

    /* renamed from: if, reason: not valid java name */
    private static ExecutorService f5900if;

    /* renamed from: new, reason: not valid java name */
    private static int f5901new;

    /* renamed from: try, reason: not valid java name */
    private static int f5902try;

    /* renamed from: android.support.v4.rp1$do, reason: invalid class name */
    public static class Cdo<A, B> {

        /* renamed from: do, reason: not valid java name */
        public final A f5903do;

        /* renamed from: if, reason: not valid java name */
        public final B f5904if;

        public Cdo(A a, B b) {
            this.f5903do = a;
            this.f5904if = b;
        }
    }

    static {
        int iAvailableProcessors = Runtime.getRuntime().availableProcessors();
        f5901new = iAvailableProcessors;
        f5902try = Math.max(2, Math.min(iAvailableProcessors - 1, 4));
        f5897case = (f5901new * 2) + 1;
    }

    /* renamed from: do, reason: not valid java name */
    public static Ctry m7075do() {
        if (f5898do == null) {
            ExecutorService executorServiceNewFixedThreadPool = Executors.newFixedThreadPool(f5897case);
            f5900if = executorServiceNewFixedThreadPool;
            f5898do = io.reactivex.schedulers.Cdo.m29771if(executorServiceNewFixedThreadPool);
        }
        return f5898do;
    }

    /* renamed from: for, reason: not valid java name */
    public static <T> ObservableSource<T> m7076for(Cnew<T> cnew) {
        if (f5898do == null || f5900if == null) {
            ExecutorService executorServiceNewFixedThreadPool = Executors.newFixedThreadPool(f5897case);
            f5900if = executorServiceNewFixedThreadPool;
            f5898do = io.reactivex.schedulers.Cdo.m29771if(executorServiceNewFixedThreadPool);
        }
        return cnew.subscribeOn(f5898do).observeOn(io.reactivex.android.schedulers.Cdo.m29358for()).unsubscribeOn(f5898do);
    }

    /* renamed from: if, reason: not valid java name */
    public static void m7077if() {
        ExecutorService executorService = f5900if;
        if (executorService != null) {
            executorService.shutdown();
            f5900if = null;
        }
        Ctry ctry = f5898do;
        if (ctry != null) {
            ctry.mo29679else();
            f5898do = null;
        }
    }

    /* renamed from: new, reason: not valid java name */
    public static <T> SingleSource<T> m7078new(jz1<T> jz1Var) {
        if (f5898do == null || f5900if == null) {
            ExecutorService executorServiceNewFixedThreadPool = Executors.newFixedThreadPool(f5897case);
            f5900if = executorServiceNewFixedThreadPool;
            f5898do = io.reactivex.schedulers.Cdo.m29771if(executorServiceNewFixedThreadPool);
        }
        return jz1Var.h0(f5898do).Q(io.reactivex.android.schedulers.Cdo.m29358for()).A0(f5898do);
    }

    /* renamed from: try, reason: not valid java name */
    public static <T, R> Cdo<T, R> m7079try(T t, R r) {
        return new Cdo<>(t, r);
    }
}
