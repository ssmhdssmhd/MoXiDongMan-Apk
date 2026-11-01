package io.reactivex.internal.schedulers;

import android.support.v4.b41;
import android.support.v4.cq;
import android.support.v4.it0;
import io.reactivex.Ctry;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.schedulers.SchedulerMultiWorkerSupport;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

/* renamed from: io.reactivex.internal.schedulers.if, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cif extends Ctry implements SchedulerMultiWorkerSupport {

    /* renamed from: break, reason: not valid java name */
    private static final String f27338break = "rx2.computation-priority";

    /* renamed from: case, reason: not valid java name */
    public static final Cthis f27339case;

    /* renamed from: else, reason: not valid java name */
    public static final String f27340else = "rx2.computation-threads";

    /* renamed from: goto, reason: not valid java name */
    public static final int f27341goto = m29694break(Runtime.getRuntime().availableProcessors(), Integer.getInteger(f27340else, 0).intValue());

    /* renamed from: new, reason: not valid java name */
    public static final C0343if f27342new;

    /* renamed from: this, reason: not valid java name */
    public static final Cfor f27343this;

    /* renamed from: try, reason: not valid java name */
    private static final String f27344try = "RxComputationThreadPool";

    /* renamed from: for, reason: not valid java name */
    public final AtomicReference<C0343if> f27345for;

    /* renamed from: if, reason: not valid java name */
    public final ThreadFactory f27346if;

    /* renamed from: io.reactivex.internal.schedulers.if$do, reason: invalid class name */
    public static final class Cdo extends Ctry.Cfor {

        /* renamed from: do, reason: not valid java name */
        private final it0 f27347do;

        /* renamed from: for, reason: not valid java name */
        private final it0 f27348for;

        /* renamed from: if, reason: not valid java name */
        private final cq f27349if;

        /* renamed from: new, reason: not valid java name */
        private final Cfor f27350new;

        /* renamed from: try, reason: not valid java name */
        public volatile boolean f27351try;

        public Cdo(Cfor cfor) {
            this.f27350new = cfor;
            it0 it0Var = new it0();
            this.f27347do = it0Var;
            cq cqVar = new cq();
            this.f27349if = cqVar;
            it0 it0Var2 = new it0();
            this.f27348for = it0Var2;
            it0Var2.add(it0Var);
            it0Var2.add(cqVar);
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            if (this.f27351try) {
                return;
            }
            this.f27351try = true;
            this.f27348for.dispose();
        }

        @Override // io.reactivex.Ctry.Cfor
        @b41
        /* renamed from: for */
        public Disposable mo29362for(@b41 Runnable runnable, long j, @b41 TimeUnit timeUnit) {
            return this.f27351try ? io.reactivex.internal.disposables.Cif.INSTANCE : this.f27350new.m29693try(runnable, j, timeUnit, this.f27349if);
        }

        @Override // io.reactivex.Ctry.Cfor
        @b41
        /* renamed from: if */
        public Disposable mo29677if(@b41 Runnable runnable) {
            return this.f27351try ? io.reactivex.internal.disposables.Cif.INSTANCE : this.f27350new.m29693try(runnable, 0L, TimeUnit.MILLISECONDS, this.f27347do);
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f27351try;
        }
    }

    /* renamed from: io.reactivex.internal.schedulers.if$for, reason: invalid class name */
    public static final class Cfor extends Cgoto {
        public Cfor(ThreadFactory threadFactory) {
            super(threadFactory);
        }
    }

    /* renamed from: io.reactivex.internal.schedulers.if$if, reason: invalid class name and collision with other inner class name */
    public static final class C0343if implements SchedulerMultiWorkerSupport {

        /* renamed from: do, reason: not valid java name */
        public final int f27352do;

        /* renamed from: for, reason: not valid java name */
        public long f27353for;

        /* renamed from: if, reason: not valid java name */
        public final Cfor[] f27354if;

        public C0343if(int i, ThreadFactory threadFactory) {
            this.f27352do = i;
            this.f27354if = new Cfor[i];
            for (int i2 = 0; i2 < i; i2++) {
                this.f27354if[i2] = new Cfor(threadFactory);
            }
        }

        @Override // io.reactivex.internal.schedulers.SchedulerMultiWorkerSupport
        public void createWorkers(int i, SchedulerMultiWorkerSupport.WorkerCallback workerCallback) {
            int i2 = this.f27352do;
            if (i2 == 0) {
                for (int i3 = 0; i3 < i; i3++) {
                    workerCallback.onWorker(i3, Cif.f27343this);
                }
                return;
            }
            int i4 = ((int) this.f27353for) % i2;
            for (int i5 = 0; i5 < i; i5++) {
                workerCallback.onWorker(i5, new Cdo(this.f27354if[i4]));
                i4++;
                if (i4 == i2) {
                    i4 = 0;
                }
            }
            this.f27353for = i4;
        }

        /* renamed from: do, reason: not valid java name */
        public Cfor m29695do() {
            int i = this.f27352do;
            if (i == 0) {
                return Cif.f27343this;
            }
            Cfor[] cforArr = this.f27354if;
            long j = this.f27353for;
            this.f27353for = 1 + j;
            return cforArr[(int) (j % i)];
        }

        /* renamed from: if, reason: not valid java name */
        public void m29696if() {
            for (Cfor cfor : this.f27354if) {
                cfor.dispose();
            }
        }
    }

    static {
        Cfor cfor = new Cfor(new Cthis("RxComputationShutdown"));
        f27343this = cfor;
        cfor.dispose();
        Cthis cthis = new Cthis(f27344try, Math.max(1, Math.min(10, Integer.getInteger(f27338break, 5).intValue())), true);
        f27339case = cthis;
        C0343if c0343if = new C0343if(0, cthis);
        f27342new = c0343if;
        c0343if.m29696if();
    }

    public Cif() {
        this(f27339case);
    }

    /* renamed from: break, reason: not valid java name */
    public static int m29694break(int i, int i2) {
        return (i2 <= 0 || i2 > i) ? i : i2;
    }

    @Override // io.reactivex.Ctry
    @b41
    /* renamed from: case */
    public Disposable mo29689case(@b41 Runnable runnable, long j, long j2, TimeUnit timeUnit) {
        return this.f27345for.get().m29695do().m29691else(runnable, j, j2, timeUnit);
    }

    @Override // io.reactivex.internal.schedulers.SchedulerMultiWorkerSupport
    public void createWorkers(int i, SchedulerMultiWorkerSupport.WorkerCallback workerCallback) {
        io.reactivex.internal.functions.Cif.m29470goto(i, "number > 0 required");
        this.f27345for.get().createWorkers(i, workerCallback);
    }

    @Override // io.reactivex.Ctry
    /* renamed from: else */
    public void mo29679else() {
        C0343if c0343if;
        C0343if c0343if2;
        do {
            c0343if = this.f27345for.get();
            c0343if2 = f27342new;
            if (c0343if == c0343if2) {
                return;
            }
        } while (!this.f27345for.compareAndSet(c0343if, c0343if2));
        c0343if.m29696if();
    }

    @Override // io.reactivex.Ctry
    /* renamed from: goto */
    public void mo29680goto() {
        C0343if c0343if = new C0343if(f27341goto, this.f27346if);
        if (this.f27345for.compareAndSet(f27342new, c0343if)) {
            return;
        }
        c0343if.m29696if();
    }

    @Override // io.reactivex.Ctry
    @b41
    /* renamed from: if */
    public Ctry.Cfor mo4229if() {
        return new Cdo(this.f27345for.get().m29695do());
    }

    @Override // io.reactivex.Ctry
    @b41
    /* renamed from: try */
    public Disposable mo29361try(@b41 Runnable runnable, long j, TimeUnit timeUnit) {
        return this.f27345for.get().m29695do().m29690case(runnable, j, timeUnit);
    }

    public Cif(ThreadFactory threadFactory) {
        this.f27346if = threadFactory;
        this.f27345for = new AtomicReference<>(f27342new);
        mo29680goto();
    }
}
