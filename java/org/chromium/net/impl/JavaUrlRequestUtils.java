package org.chromium.net.impl;

import android.support.v4.sm0;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.concurrent.Executor;

/* loaded from: classes3.dex */
public final class JavaUrlRequestUtils {

    public interface CheckedRunnable {
        void run() throws Exception;
    }

    @Retention(RetentionPolicy.SOURCE)
    /* renamed from: org.chromium.net.impl.JavaUrlRequestUtils$for, reason: invalid class name */
    /* loaded from: classes.dex */
    public @interface Cfor {
        public static final int d7 = 0;
        public static final int e7 = 1;
        public static final int f7 = 2;
        public static final int g7 = 3;
        public static final int h7 = 4;
        public static final int i7 = 5;
        public static final int j7 = 6;
        public static final int k7 = 7;
        public static final int l7 = 8;
    }

    /* renamed from: org.chromium.net.impl.JavaUrlRequestUtils$if, reason: invalid class name */
    public static final class Cif implements Executor {

        /* renamed from: do, reason: not valid java name */
        private final Executor f33620do;

        /* renamed from: org.chromium.net.impl.JavaUrlRequestUtils$if$do, reason: invalid class name */
        public static final class Cdo implements Runnable {

            /* renamed from: do, reason: not valid java name */
            private final Runnable f33621do;

            /* renamed from: for, reason: not valid java name */
            private sm0 f33622for;

            /* renamed from: if, reason: not valid java name */
            private Thread f33623if;

            @Override // java.lang.Runnable
            public void run() {
                if (Thread.currentThread() == this.f33623if) {
                    this.f33622for = new sm0();
                } else {
                    this.f33621do.run();
                }
            }

            private Cdo(Runnable runnable, Thread thread) {
                this.f33621do = runnable;
                this.f33623if = thread;
            }
        }

        public Cif(Executor executor) {
            this.f33620do = executor;
        }

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            Cdo cdo = new Cdo(runnable, Thread.currentThread());
            this.f33620do.execute(cdo);
            if (cdo.f33622for != null) {
                throw cdo.f33622for;
            }
            cdo.f33623if = null;
        }
    }
}
