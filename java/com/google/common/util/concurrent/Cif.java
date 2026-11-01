package com.google.common.util.concurrent;

import android.support.v4.lf;
import android.support.v4.li0;
import android.support.v4.o8;
import com.google.common.base.Supplier;
import com.google.common.util.concurrent.Service;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.logging.Level;
import java.util.logging.Logger;

@li0
@o8
/* renamed from: com.google.common.util.concurrent.if, reason: invalid class name */
/* loaded from: classes2.dex */
public abstract class Cif implements Service {

    /* renamed from: if, reason: not valid java name */
    private static final Logger f15812if = Logger.getLogger(Cif.class.getName());

    /* renamed from: do, reason: not valid java name */
    private final Service f15813do = new Cdo();

    /* renamed from: com.google.common.util.concurrent.if$do, reason: invalid class name */
    public class Cdo extends Ccase {

        /* renamed from: com.google.common.util.concurrent.if$do$do, reason: invalid class name and collision with other inner class name */
        public class C0151do implements Supplier<String> {
            public C0151do() {
            }

            @Override // com.google.common.base.Supplier
            /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
            public String get() {
                return Cif.this.m18210new();
            }
        }

        /* renamed from: com.google.common.util.concurrent.if$do$if, reason: invalid class name and collision with other inner class name */
        public class RunnableC0152if implements Runnable {
            public RunnableC0152if() {
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    Cif.this.m18206case();
                    Cdo.this.m18087const();
                    if (Cdo.this.isRunning()) {
                        try {
                            Cif.this.m18208for();
                        } catch (Throwable th) {
                            try {
                                Cif.this.m18211try();
                            } catch (Exception e) {
                                Cif.f15812if.log(Level.WARNING, "Error while attempting to shut down the service after failure.", (Throwable) e);
                            }
                            Cdo.this.m18086class(th);
                            return;
                        }
                    }
                    Cif.this.m18211try();
                    Cdo.this.m18088final();
                } catch (Throwable th2) {
                    Cdo.this.m18086class(th2);
                }
            }
        }

        public Cdo() {
        }

        @Override // com.google.common.util.concurrent.Ccase
        /* renamed from: case */
        public void mo18085case() {
            Cif.this.m18207else();
        }

        @Override // com.google.common.util.concurrent.Ccase
        public String toString() {
            return Cif.this.toString();
        }

        @Override // com.google.common.util.concurrent.Ccase
        /* renamed from: try */
        public final void mo18090try() {
            Cimplements.m18234while(Cif.this.m18209if(), new C0151do()).execute(new RunnableC0152if());
        }
    }

    /* renamed from: com.google.common.util.concurrent.if$if, reason: invalid class name and collision with other inner class name */
    public class ExecutorC0153if implements Executor {
        public ExecutorC0153if() {
        }

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            Cimplements.m18220final(Cif.this.m18210new(), runnable).start();
        }
    }

    @Override // com.google.common.util.concurrent.Service
    public final void addListener(Service.Cif cif, Executor executor) {
        this.f15813do.addListener(cif, executor);
    }

    @Override // com.google.common.util.concurrent.Service
    public final void awaitRunning() {
        this.f15813do.awaitRunning();
    }

    @Override // com.google.common.util.concurrent.Service
    public final void awaitTerminated() {
        this.f15813do.awaitTerminated();
    }

    /* renamed from: case, reason: not valid java name */
    public void m18206case() throws Exception {
    }

    /* renamed from: else, reason: not valid java name */
    public void m18207else() {
    }

    @Override // com.google.common.util.concurrent.Service
    public final Throwable failureCause() {
        return this.f15813do.failureCause();
    }

    /* renamed from: for, reason: not valid java name */
    public abstract void m18208for() throws Exception;

    /* renamed from: if, reason: not valid java name */
    public Executor m18209if() {
        return new ExecutorC0153if();
    }

    @Override // com.google.common.util.concurrent.Service
    public final boolean isRunning() {
        return this.f15813do.isRunning();
    }

    /* renamed from: new, reason: not valid java name */
    public String m18210new() {
        return getClass().getSimpleName();
    }

    @Override // com.google.common.util.concurrent.Service
    @lf
    public final Service startAsync() {
        this.f15813do.startAsync();
        return this;
    }

    @Override // com.google.common.util.concurrent.Service
    public final Service.Cfor state() {
        return this.f15813do.state();
    }

    @Override // com.google.common.util.concurrent.Service
    @lf
    public final Service stopAsync() {
        this.f15813do.stopAsync();
        return this;
    }

    public String toString() {
        return m18210new() + " [" + state() + "]";
    }

    /* renamed from: try, reason: not valid java name */
    public void m18211try() throws Exception {
    }

    @Override // com.google.common.util.concurrent.Service
    public final void awaitRunning(long j, TimeUnit timeUnit) throws TimeoutException {
        this.f15813do.awaitRunning(j, timeUnit);
    }

    @Override // com.google.common.util.concurrent.Service
    public final void awaitTerminated(long j, TimeUnit timeUnit) throws TimeoutException {
        this.f15813do.awaitTerminated(j, timeUnit);
    }
}
