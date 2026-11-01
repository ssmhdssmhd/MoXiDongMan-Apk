package com.google.common.util.concurrent;

import android.support.v4.ac2;
import android.support.v4.af1;
import android.support.v4.b51;
import android.support.v4.j91;
import android.support.v4.jd0;
import android.support.v4.ki0;
import com.google.common.collect.r0;
import java.util.Set;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.logging.Level;
import java.util.logging.Logger;

@ki0
/* renamed from: com.google.common.util.concurrent.goto, reason: invalid class name */
/* loaded from: classes2.dex */
abstract class Cgoto<InputT, OutputT> extends Cthis<OutputT> {

    /* renamed from: throw, reason: not valid java name */
    private static final Logger f15770throw = Logger.getLogger(Cgoto.class.getName());

    /* renamed from: const, reason: not valid java name */
    @b51
    private r0<? extends ListenableFuture<? extends InputT>> f15771const;

    /* renamed from: final, reason: not valid java name */
    private final boolean f15772final;

    /* renamed from: super, reason: not valid java name */
    private final boolean f15773super;

    /* renamed from: com.google.common.util.concurrent.goto$do, reason: invalid class name */
    public class Cdo implements Runnable {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ ListenableFuture f15774do;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ int f15776if;

        public Cdo(ListenableFuture listenableFuture, int i) {
            this.f15774do = listenableFuture;
            this.f15776if = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (this.f15774do.isCancelled()) {
                    Cgoto.this.f15771const = null;
                    Cgoto.this.cancel(false);
                } else {
                    Cgoto.this.e(this.f15776if, this.f15774do);
                }
            } finally {
                Cgoto.this.f(null);
            }
        }
    }

    /* renamed from: com.google.common.util.concurrent.goto$for, reason: invalid class name */
    public enum Cfor {
        OUTPUT_FUTURE_DONE,
        ALL_INPUT_FUTURES_PROCESSED
    }

    /* renamed from: com.google.common.util.concurrent.goto$if, reason: invalid class name */
    public class Cif implements Runnable {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ r0 f15778do;

        public Cif(r0 r0Var) {
            this.f15778do = r0Var;
        }

        @Override // java.lang.Runnable
        public void run() {
            Cgoto.this.f(this.f15778do);
        }
    }

    public Cgoto(r0<? extends ListenableFuture<? extends InputT>> r0Var, boolean z, boolean z2) {
        super(r0Var.size());
        this.f15771const = (r0) af1.m205continue(r0Var);
        this.f15772final = z;
        this.f15773super = z2;
    }

    private static boolean c(Set<Throwable> set, Throwable th) {
        while (th != null) {
            if (!set.add(th)) {
                return false;
            }
            th = th.getCause();
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public void e(int i, Future<? extends InputT> future) {
        try {
            d(i, Cprivate.m18275goto(future));
        } catch (ExecutionException e) {
            h(e.getCause());
        } catch (Throwable th) {
            h(th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f(@b51 r0<? extends Future<? extends InputT>> r0Var) {
        int iM18322implements = m18322implements();
        af1.u(iM18322implements >= 0, "Less than 0 remaining futures");
        if (iM18322implements == 0) {
            k(r0Var);
        }
    }

    private void h(Throwable th) {
        af1.m205continue(th);
        if (this.f15772final && !mo17980private(th) && c(m18323instanceof(), th)) {
            j(th);
        } else if (th instanceof Error) {
            j(th);
        }
    }

    private static void j(Throwable th) {
        f15770throw.log(Level.SEVERE, th instanceof Error ? "Input Future failed with Error" : "Got more than one input Future failure. Logging failures after the first", th);
    }

    private void k(@b51 r0<? extends Future<? extends InputT>> r0Var) {
        if (r0Var != null) {
            int i = 0;
            ac2<? extends Future<? extends InputT>> it = r0Var.iterator();
            while (it.hasNext()) {
                Future<? extends InputT> next = it.next();
                if (!next.isCancelled()) {
                    e(i, next);
                }
                i++;
            }
        }
        m18324transient();
        g();
        l(Cfor.ALL_INPUT_FUTURES_PROCESSED);
    }

    public abstract void d(int i, @b51 InputT inputt);

    @Override // com.google.common.util.concurrent.AbstractFuture
    /* renamed from: default */
    public final String mo17977default() {
        r0<? extends ListenableFuture<? extends InputT>> r0Var = this.f15771const;
        if (r0Var == null) {
            return super.mo17977default();
        }
        return "futures=" + r0Var;
    }

    @Override // com.google.common.util.concurrent.AbstractFuture
    /* renamed from: final */
    public final void mo17978final() {
        super.mo17978final();
        r0<? extends ListenableFuture<? extends InputT>> r0Var = this.f15771const;
        l(Cfor.OUTPUT_FUTURE_DONE);
        if (isCancelled() && (r0Var != null)) {
            boolean zM17976continue = m17976continue();
            ac2<? extends ListenableFuture<? extends InputT>> it = r0Var.iterator();
            while (it.hasNext()) {
                it.next().cancel(zM17976continue);
            }
        }
    }

    public abstract void g();

    public final void i() {
        if (this.f15771const.isEmpty()) {
            g();
            return;
        }
        if (!this.f15772final) {
            Cif cif = new Cif(this.f15773super ? this.f15771const : null);
            ac2<? extends ListenableFuture<? extends InputT>> it = this.f15771const.iterator();
            while (it.hasNext()) {
                it.next().addListener(cif, Cimplements.m18221for());
            }
            return;
        }
        int i = 0;
        ac2<? extends ListenableFuture<? extends InputT>> it2 = this.f15771const.iterator();
        while (it2.hasNext()) {
            ListenableFuture<? extends InputT> next = it2.next();
            next.addListener(new Cdo(next, i), Cimplements.m18221for());
            i++;
        }
    }

    @j91
    @jd0
    public void l(Cfor cfor) {
        af1.m205continue(cfor);
        this.f15771const = null;
    }

    @Override // com.google.common.util.concurrent.Cthis
    /* renamed from: protected, reason: not valid java name */
    public final void mo18169protected(Set<Throwable> set) {
        af1.m205continue(set);
        if (isCancelled()) {
            return;
        }
        c(set, mo4951do());
    }
}
