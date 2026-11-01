package rx.internal.schedulers;

import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
import rx.functions.Func0;
import rx.internal.util.Ccase;
import rx.plugins.Cif;

/* renamed from: rx.internal.schedulers.try, reason: invalid class name */
/* loaded from: classes4.dex */
enum Ctry {
    ;

    public static final String THREAD_NAME_PREFIX = "RxScheduledExecutorPool-";
    public static final Ccase THREAD_FACTORY = new Ccase(THREAD_NAME_PREFIX);

    public static ScheduledExecutorService create() {
        Func0<? extends ScheduledExecutorService> func0M39128break = Cif.m39128break();
        return func0M39128break == null ? createDefault() : func0M39128break.call();
    }

    public static ScheduledExecutorService createDefault() {
        return Executors.newScheduledThreadPool(1, threadFactory());
    }

    public static ThreadFactory threadFactory() {
        return THREAD_FACTORY;
    }
}
