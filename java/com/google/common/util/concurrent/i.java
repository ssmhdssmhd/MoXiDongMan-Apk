package com.google.common.util.concurrent;

import android.support.v4.af1;
import android.support.v4.il;
import android.support.v4.lf;
import android.support.v4.li0;
import java.lang.Thread;
import java.util.Locale;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicLong;

@lf
@li0
/* loaded from: classes2.dex */
public final class i {

    /* renamed from: do, reason: not valid java name */
    private String f15801do = null;

    /* renamed from: if, reason: not valid java name */
    private Boolean f15803if = null;

    /* renamed from: for, reason: not valid java name */
    private Integer f15802for = null;

    /* renamed from: new, reason: not valid java name */
    private Thread.UncaughtExceptionHandler f15804new = null;

    /* renamed from: try, reason: not valid java name */
    private ThreadFactory f15805try = null;

    /* renamed from: com.google.common.util.concurrent.i$do, reason: invalid class name */
    public static class Cdo implements ThreadFactory {

        /* renamed from: case, reason: not valid java name */
        public final /* synthetic */ Thread.UncaughtExceptionHandler f15806case;

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ ThreadFactory f15807do;

        /* renamed from: for, reason: not valid java name */
        public final /* synthetic */ AtomicLong f15808for;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ String f15809if;

        /* renamed from: new, reason: not valid java name */
        public final /* synthetic */ Boolean f15810new;

        /* renamed from: try, reason: not valid java name */
        public final /* synthetic */ Integer f15811try;

        public Cdo(ThreadFactory threadFactory, String str, AtomicLong atomicLong, Boolean bool, Integer num, Thread.UncaughtExceptionHandler uncaughtExceptionHandler) {
            this.f15807do = threadFactory;
            this.f15809if = str;
            this.f15808for = atomicLong;
            this.f15810new = bool;
            this.f15811try = num;
            this.f15806case = uncaughtExceptionHandler;
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            Thread threadNewThread = this.f15807do.newThread(runnable);
            String str = this.f15809if;
            if (str != null) {
                threadNewThread.setName(i.m18198new(str, Long.valueOf(this.f15808for.getAndIncrement())));
            }
            Boolean bool = this.f15810new;
            if (bool != null) {
                threadNewThread.setDaemon(bool.booleanValue());
            }
            Integer num = this.f15811try;
            if (num != null) {
                threadNewThread.setPriority(num.intValue());
            }
            Thread.UncaughtExceptionHandler uncaughtExceptionHandler = this.f15806case;
            if (uncaughtExceptionHandler != null) {
                threadNewThread.setUncaughtExceptionHandler(uncaughtExceptionHandler);
            }
            return threadNewThread;
        }
    }

    /* renamed from: for, reason: not valid java name */
    private static ThreadFactory m18197for(i iVar) {
        String str = iVar.f15801do;
        Boolean bool = iVar.f15803if;
        Integer num = iVar.f15802for;
        Thread.UncaughtExceptionHandler uncaughtExceptionHandler = iVar.f15804new;
        ThreadFactory threadFactoryDefaultThreadFactory = iVar.f15805try;
        if (threadFactoryDefaultThreadFactory == null) {
            threadFactoryDefaultThreadFactory = Executors.defaultThreadFactory();
        }
        return new Cdo(threadFactoryDefaultThreadFactory, str, str != null ? new AtomicLong(0L) : null, bool, num, uncaughtExceptionHandler);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: new, reason: not valid java name */
    public static String m18198new(String str, Object... objArr) {
        return String.format(Locale.ROOT, str, objArr);
    }

    /* renamed from: case, reason: not valid java name */
    public i m18199case(String str) {
        m18198new(str, 0);
        this.f15801do = str;
        return this;
    }

    /* renamed from: else, reason: not valid java name */
    public i m18200else(int i) {
        af1.m204const(i >= 1, "Thread priority (%s) must be >= %s", i, 1);
        af1.m204const(i <= 10, "Thread priority (%s) must be <= %s", i, 10);
        this.f15802for = Integer.valueOf(i);
        return this;
    }

    /* renamed from: goto, reason: not valid java name */
    public i m18201goto(ThreadFactory threadFactory) {
        this.f15805try = (ThreadFactory) af1.m205continue(threadFactory);
        return this;
    }

    @il
    /* renamed from: if, reason: not valid java name */
    public ThreadFactory m18202if() {
        return m18197for(this);
    }

    /* renamed from: this, reason: not valid java name */
    public i m18203this(Thread.UncaughtExceptionHandler uncaughtExceptionHandler) {
        this.f15804new = (Thread.UncaughtExceptionHandler) af1.m205continue(uncaughtExceptionHandler);
        return this;
    }

    /* renamed from: try, reason: not valid java name */
    public i m18204try(boolean z) {
        this.f15803if = Boolean.valueOf(z);
        return this;
    }
}
