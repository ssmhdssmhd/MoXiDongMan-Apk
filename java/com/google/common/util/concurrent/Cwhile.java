package com.google.common.util.concurrent;

import android.support.v4.af1;
import android.support.v4.b51;
import android.support.v4.ji0;
import android.support.v4.li0;
import java.util.concurrent.Executor;
import java.util.logging.Level;
import java.util.logging.Logger;

@li0
/* renamed from: com.google.common.util.concurrent.while, reason: invalid class name */
/* loaded from: classes2.dex */
public final class Cwhile {

    /* renamed from: for, reason: not valid java name */
    private static final Logger f15942for = Logger.getLogger(Cwhile.class.getName());

    /* renamed from: do, reason: not valid java name */
    @ji0("this")
    @b51
    private Cdo f15943do;

    /* renamed from: if, reason: not valid java name */
    @ji0("this")
    private boolean f15944if;

    /* renamed from: com.google.common.util.concurrent.while$do, reason: invalid class name */
    public static final class Cdo {

        /* renamed from: do, reason: not valid java name */
        public final Runnable f15945do;

        /* renamed from: for, reason: not valid java name */
        @b51
        public Cdo f15946for;

        /* renamed from: if, reason: not valid java name */
        public final Executor f15947if;

        public Cdo(Runnable runnable, Executor executor, Cdo cdo) {
            this.f15945do = runnable;
            this.f15947if = executor;
            this.f15946for = cdo;
        }
    }

    /* renamed from: for, reason: not valid java name */
    private static void m18388for(Runnable runnable, Executor executor) {
        try {
            executor.execute(runnable);
        } catch (RuntimeException e) {
            f15942for.log(Level.SEVERE, "RuntimeException while executing runnable " + runnable + " with executor " + executor, (Throwable) e);
        }
    }

    /* renamed from: do, reason: not valid java name */
    public void m18389do(Runnable runnable, Executor executor) {
        af1.m227strictfp(runnable, "Runnable was null.");
        af1.m227strictfp(executor, "Executor was null.");
        synchronized (this) {
            if (this.f15944if) {
                m18388for(runnable, executor);
            } else {
                this.f15943do = new Cdo(runnable, executor, this.f15943do);
            }
        }
    }

    /* renamed from: if, reason: not valid java name */
    public void m18390if() {
        synchronized (this) {
            if (this.f15944if) {
                return;
            }
            this.f15944if = true;
            Cdo cdo = this.f15943do;
            Cdo cdo2 = null;
            this.f15943do = null;
            while (cdo != null) {
                Cdo cdo3 = cdo.f15946for;
                cdo.f15946for = cdo2;
                cdo2 = cdo;
                cdo = cdo3;
            }
            while (cdo2 != null) {
                m18388for(cdo2.f15945do, cdo2.f15947if);
                cdo2 = cdo2.f15946for;
            }
        }
    }
}
