package com.google.common.util.concurrent;

import android.support.v4.af2;
import android.support.v4.li0;
import java.lang.Thread;
import java.util.Locale;
import java.util.logging.Level;
import java.util.logging.Logger;

@li0
/* loaded from: classes2.dex */
public final class l {

    @af2
    /* renamed from: com.google.common.util.concurrent.l$do, reason: invalid class name */
    public static final class Cdo implements Thread.UncaughtExceptionHandler {

        /* renamed from: if, reason: not valid java name */
        private static final Logger f15864if = Logger.getLogger(Cdo.class.getName());

        /* renamed from: do, reason: not valid java name */
        private final Runtime f15865do;

        public Cdo(Runtime runtime) {
            this.f15865do = runtime;
        }

        @Override // java.lang.Thread.UncaughtExceptionHandler
        public void uncaughtException(Thread thread, Throwable th) {
            try {
                f15864if.log(Level.SEVERE, String.format(Locale.ROOT, "Caught an exception in %s.  Shutting down.", thread), th);
            } finally {
                try {
                } finally {
                }
            }
        }
    }

    private l() {
    }

    /* renamed from: do, reason: not valid java name */
    public static Thread.UncaughtExceptionHandler m18249do() {
        return new Cdo(Runtime.getRuntime());
    }
}
