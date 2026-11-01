package com.google.common.util.concurrent;

import android.support.v4.gm1;
import android.support.v4.ki0;
import com.google.common.collect.c3;
import com.google.common.util.concurrent.AbstractFuture;
import java.util.Set;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import java.util.logging.Level;
import java.util.logging.Logger;

@gm1(gm1.Cdo.FULL)
@ki0(emulated = true)
/* renamed from: com.google.common.util.concurrent.this, reason: invalid class name */
/* loaded from: classes2.dex */
abstract class Cthis<OutputT> extends AbstractFuture.Cthis<OutputT> {

    /* renamed from: catch, reason: not valid java name */
    private static final Cif f15897catch;

    /* renamed from: class, reason: not valid java name */
    private static final Logger f15898class = Logger.getLogger(Cthis.class.getName());

    /* renamed from: break, reason: not valid java name */
    private volatile int f15899break;

    /* renamed from: this, reason: not valid java name */
    private volatile Set<Throwable> f15900this = null;

    /* renamed from: com.google.common.util.concurrent.this$for, reason: invalid class name */
    public static final class Cfor extends Cif {

        /* renamed from: do, reason: not valid java name */
        public final AtomicReferenceFieldUpdater<Cthis, Set<Throwable>> f15901do;

        /* renamed from: if, reason: not valid java name */
        public final AtomicIntegerFieldUpdater<Cthis> f15902if;

        public Cfor(AtomicReferenceFieldUpdater atomicReferenceFieldUpdater, AtomicIntegerFieldUpdater atomicIntegerFieldUpdater) {
            super();
            this.f15901do = atomicReferenceFieldUpdater;
            this.f15902if = atomicIntegerFieldUpdater;
        }

        @Override // com.google.common.util.concurrent.Cthis.Cif
        /* renamed from: do, reason: not valid java name */
        public void mo18325do(Cthis cthis, Set<Throwable> set, Set<Throwable> set2) {
            this.f15901do.compareAndSet(cthis, set, set2);
        }

        @Override // com.google.common.util.concurrent.Cthis.Cif
        /* renamed from: if, reason: not valid java name */
        public int mo18326if(Cthis cthis) {
            return this.f15902if.decrementAndGet(cthis);
        }
    }

    /* renamed from: com.google.common.util.concurrent.this$if, reason: invalid class name */
    public static abstract class Cif {
        private Cif() {
        }

        /* renamed from: do */
        public abstract void mo18325do(Cthis cthis, Set<Throwable> set, Set<Throwable> set2);

        /* renamed from: if */
        public abstract int mo18326if(Cthis cthis);
    }

    /* renamed from: com.google.common.util.concurrent.this$new, reason: invalid class name */
    public static final class Cnew extends Cif {
        private Cnew() {
            super();
        }

        @Override // com.google.common.util.concurrent.Cthis.Cif
        /* renamed from: do */
        public void mo18325do(Cthis cthis, Set<Throwable> set, Set<Throwable> set2) {
            synchronized (cthis) {
                if (cthis.f15900this == set) {
                    cthis.f15900this = set2;
                }
            }
        }

        @Override // com.google.common.util.concurrent.Cthis.Cif
        /* renamed from: if */
        public int mo18326if(Cthis cthis) {
            int iM18319interface;
            synchronized (cthis) {
                iM18319interface = Cthis.m18319interface(cthis);
            }
            return iM18319interface;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    static {
        Cif cfor;
        Throwable th = null;
        Object[] objArr = 0;
        try {
            cfor = new Cfor(AtomicReferenceFieldUpdater.newUpdater(Cthis.class, Set.class, "this"), AtomicIntegerFieldUpdater.newUpdater(Cthis.class, "break"));
        } catch (Throwable th2) {
            Cnew cnew = new Cnew();
            th = th2;
            cfor = cnew;
        }
        f15897catch = cfor;
        if (th != null) {
            f15898class.log(Level.SEVERE, "SafeAtomicHelper is broken!", th);
        }
    }

    public Cthis(int i) {
        this.f15899break = i;
    }

    /* renamed from: interface, reason: not valid java name */
    public static /* synthetic */ int m18319interface(Cthis cthis) {
        int i = cthis.f15899break - 1;
        cthis.f15899break = i;
        return i;
    }

    /* renamed from: implements, reason: not valid java name */
    public final int m18322implements() {
        return f15897catch.mo18326if(this);
    }

    /* renamed from: instanceof, reason: not valid java name */
    public final Set<Throwable> m18323instanceof() {
        Set<Throwable> set = this.f15900this;
        if (set != null) {
            return set;
        }
        Set<Throwable> setM15713throw = c3.m15713throw();
        mo18169protected(setM15713throw);
        f15897catch.mo18325do(this, null, setM15713throw);
        return this.f15900this;
    }

    /* renamed from: protected */
    public abstract void mo18169protected(Set<Throwable> set);

    /* renamed from: transient, reason: not valid java name */
    public final void m18324transient() {
        this.f15900this = null;
    }
}
