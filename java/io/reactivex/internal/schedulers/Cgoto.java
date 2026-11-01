package io.reactivex.internal.schedulers;

import android.support.v4.a51;
import android.support.v4.b41;
import android.support.v4.bs1;
import android.support.v4.jp1;
import io.reactivex.Ctry;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.Cif;
import io.reactivex.internal.disposables.DisposableContainer;
import java.util.concurrent.Callable;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;

/* renamed from: io.reactivex.internal.schedulers.goto, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cgoto extends Ctry.Cfor implements Disposable {

    /* renamed from: do, reason: not valid java name */
    private final ScheduledExecutorService f27336do;

    /* renamed from: if, reason: not valid java name */
    public volatile boolean f27337if;

    public Cgoto(ThreadFactory threadFactory) {
        this.f27336do = Cclass.m29669do(threadFactory);
    }

    /* renamed from: case, reason: not valid java name */
    public Disposable m29690case(Runnable runnable, long j, TimeUnit timeUnit) {
        Ccatch ccatch = new Ccatch(jp1.o(runnable));
        try {
            ccatch.setFuture(j <= 0 ? this.f27336do.submit(ccatch) : this.f27336do.schedule(ccatch, j, timeUnit));
            return ccatch;
        } catch (RejectedExecutionException e) {
            jp1.l(e);
            return Cif.INSTANCE;
        }
    }

    @Override // io.reactivex.disposables.Disposable
    public void dispose() {
        if (this.f27337if) {
            return;
        }
        this.f27337if = true;
        this.f27336do.shutdownNow();
    }

    /* renamed from: else, reason: not valid java name */
    public Disposable m29691else(Runnable runnable, long j, long j2, TimeUnit timeUnit) {
        Runnable runnableO = jp1.o(runnable);
        if (j2 <= 0) {
            Ccase ccase = new Ccase(runnableO, this.f27336do);
            try {
                ccase.m29667if(j <= 0 ? this.f27336do.submit(ccase) : this.f27336do.schedule(ccase, j, timeUnit));
                return ccase;
            } catch (RejectedExecutionException e) {
                jp1.l(e);
                return Cif.INSTANCE;
            }
        }
        Cbreak cbreak = new Cbreak(runnableO);
        try {
            cbreak.setFuture(this.f27336do.scheduleAtFixedRate(cbreak, j, j2, timeUnit));
            return cbreak;
        } catch (RejectedExecutionException e2) {
            jp1.l(e2);
            return Cif.INSTANCE;
        }
    }

    @Override // io.reactivex.Ctry.Cfor
    @b41
    /* renamed from: for */
    public Disposable mo29362for(@b41 Runnable runnable, long j, @b41 TimeUnit timeUnit) {
        return this.f27337if ? Cif.INSTANCE : m29693try(runnable, j, timeUnit, null);
    }

    /* renamed from: goto, reason: not valid java name */
    public void m29692goto() {
        if (this.f27337if) {
            return;
        }
        this.f27337if = true;
        this.f27336do.shutdown();
    }

    @Override // io.reactivex.Ctry.Cfor
    @b41
    /* renamed from: if */
    public Disposable mo29677if(@b41 Runnable runnable) {
        return mo29362for(runnable, 0L, null);
    }

    @Override // io.reactivex.disposables.Disposable
    public boolean isDisposed() {
        return this.f27337if;
    }

    @b41
    /* renamed from: try, reason: not valid java name */
    public bs1 m29693try(Runnable runnable, long j, @b41 TimeUnit timeUnit, @a51 DisposableContainer disposableContainer) {
        bs1 bs1Var = new bs1(jp1.o(runnable), disposableContainer);
        if (disposableContainer != null && !disposableContainer.add(bs1Var)) {
            return bs1Var;
        }
        try {
            bs1Var.setFuture(j <= 0 ? this.f27336do.submit((Callable) bs1Var) : this.f27336do.schedule((Callable) bs1Var, j, timeUnit));
        } catch (RejectedExecutionException e) {
            if (disposableContainer != null) {
                disposableContainer.remove(bs1Var);
            }
            jp1.l(e);
        }
        return bs1Var;
    }
}
