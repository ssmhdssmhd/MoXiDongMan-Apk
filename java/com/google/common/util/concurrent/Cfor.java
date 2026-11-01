package com.google.common.util.concurrent;

import android.support.v4.lf;
import android.support.v4.li0;
import android.support.v4.o8;
import com.google.common.base.Supplier;
import com.google.common.util.concurrent.Service;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import org.apache.commons.lang3.Cclass;

@li0
@o8
/* renamed from: com.google.common.util.concurrent.for, reason: invalid class name */
/* loaded from: classes2.dex */
public abstract class Cfor implements Service {

    /* renamed from: do, reason: not valid java name */
    private final Supplier<String> f15754do;

    /* renamed from: if, reason: not valid java name */
    private final Service f15755if;

    /* renamed from: com.google.common.util.concurrent.for$do, reason: invalid class name */
    public class Cdo implements Executor {
        public Cdo() {
        }

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            Cimplements.m18220final((String) Cfor.this.f15754do.get(), runnable).start();
        }
    }

    /* renamed from: com.google.common.util.concurrent.for$for, reason: invalid class name and collision with other inner class name */
    public final class C0149for implements Supplier<String> {
        private C0149for() {
        }

        @Override // com.google.common.base.Supplier
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public String get() {
            return Cfor.this.m18158for() + Cclass.f28652do + Cfor.this.state();
        }

        public /* synthetic */ C0149for(Cfor cfor, Cdo cdo) {
            this();
        }
    }

    /* renamed from: com.google.common.util.concurrent.for$if, reason: invalid class name */
    public final class Cif extends Ccase {

        /* renamed from: com.google.common.util.concurrent.for$if$do, reason: invalid class name */
        public class Cdo implements Runnable {
            public Cdo() {
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    Cfor.this.m18161try();
                    Cif.this.m18087const();
                } catch (Throwable th) {
                    Cif.this.m18086class(th);
                }
            }
        }

        /* renamed from: com.google.common.util.concurrent.for$if$if, reason: invalid class name and collision with other inner class name */
        public class RunnableC0150if implements Runnable {
            public RunnableC0150if() {
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    Cfor.this.m18160new();
                    Cif.this.m18088final();
                } catch (Throwable th) {
                    Cif.this.m18086class(th);
                }
            }
        }

        private Cif() {
        }

        @Override // com.google.common.util.concurrent.Ccase
        /* renamed from: case */
        public final void mo18085case() {
            Cimplements.m18234while(Cfor.this.m18159if(), Cfor.this.f15754do).execute(new RunnableC0150if());
        }

        @Override // com.google.common.util.concurrent.Ccase
        public String toString() {
            return Cfor.this.toString();
        }

        @Override // com.google.common.util.concurrent.Ccase
        /* renamed from: try */
        public final void mo18090try() {
            Cimplements.m18234while(Cfor.this.m18159if(), Cfor.this.f15754do).execute(new Cdo());
        }

        public /* synthetic */ Cif(Cfor cfor, Cdo cdo) {
            this();
        }
    }

    public Cfor() {
        Cdo cdo = null;
        this.f15754do = new C0149for(this, cdo);
        this.f15755if = new Cif(this, cdo);
    }

    @Override // com.google.common.util.concurrent.Service
    public final void addListener(Service.Cif cif, Executor executor) {
        this.f15755if.addListener(cif, executor);
    }

    @Override // com.google.common.util.concurrent.Service
    public final void awaitRunning() {
        this.f15755if.awaitRunning();
    }

    @Override // com.google.common.util.concurrent.Service
    public final void awaitTerminated() {
        this.f15755if.awaitTerminated();
    }

    @Override // com.google.common.util.concurrent.Service
    public final Throwable failureCause() {
        return this.f15755if.failureCause();
    }

    /* renamed from: for, reason: not valid java name */
    public String m18158for() {
        return getClass().getSimpleName();
    }

    /* renamed from: if, reason: not valid java name */
    public Executor m18159if() {
        return new Cdo();
    }

    @Override // com.google.common.util.concurrent.Service
    public final boolean isRunning() {
        return this.f15755if.isRunning();
    }

    /* renamed from: new, reason: not valid java name */
    public abstract void m18160new() throws Exception;

    @Override // com.google.common.util.concurrent.Service
    @lf
    public final Service startAsync() {
        this.f15755if.startAsync();
        return this;
    }

    @Override // com.google.common.util.concurrent.Service
    public final Service.Cfor state() {
        return this.f15755if.state();
    }

    @Override // com.google.common.util.concurrent.Service
    @lf
    public final Service stopAsync() {
        this.f15755if.stopAsync();
        return this;
    }

    public String toString() {
        return m18158for() + " [" + state() + "]";
    }

    /* renamed from: try, reason: not valid java name */
    public abstract void m18161try() throws Exception;

    @Override // com.google.common.util.concurrent.Service
    public final void awaitRunning(long j, TimeUnit timeUnit) throws TimeoutException {
        this.f15755if.awaitRunning(j, timeUnit);
    }

    @Override // com.google.common.util.concurrent.Service
    public final void awaitTerminated(long j, TimeUnit timeUnit) throws TimeoutException {
        this.f15755if.awaitTerminated(j, timeUnit);
    }
}
