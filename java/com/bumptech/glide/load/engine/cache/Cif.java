package com.bumptech.glide.load.engine.cache;

import android.support.v4.cf1;
import java.util.ArrayDeque;
import java.util.HashMap;
import java.util.Map;
import java.util.Queue;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

/* renamed from: com.bumptech.glide.load.engine.cache.if, reason: invalid class name */
/* loaded from: classes.dex */
final class Cif {

    /* renamed from: do, reason: not valid java name */
    private final Map<String, Cdo> f9719do = new HashMap();

    /* renamed from: if, reason: not valid java name */
    private final C0028if f9720if = new C0028if();

    /* renamed from: com.bumptech.glide.load.engine.cache.if$do, reason: invalid class name */
    public static class Cdo {

        /* renamed from: do, reason: not valid java name */
        public final Lock f9721do = new ReentrantLock();

        /* renamed from: if, reason: not valid java name */
        public int f9722if;
    }

    /* renamed from: com.bumptech.glide.load.engine.cache.if$if, reason: invalid class name and collision with other inner class name */
    public static class C0028if {

        /* renamed from: if, reason: not valid java name */
        private static final int f9723if = 10;

        /* renamed from: do, reason: not valid java name */
        private final Queue<Cdo> f9724do = new ArrayDeque();

        /* renamed from: do, reason: not valid java name */
        public Cdo m11449do() {
            Cdo cdoPoll;
            synchronized (this.f9724do) {
                cdoPoll = this.f9724do.poll();
            }
            return cdoPoll == null ? new Cdo() : cdoPoll;
        }

        /* renamed from: if, reason: not valid java name */
        public void m11450if(Cdo cdo) {
            synchronized (this.f9724do) {
                if (this.f9724do.size() < 10) {
                    this.f9724do.offer(cdo);
                }
            }
        }
    }

    /* renamed from: do, reason: not valid java name */
    public void m11447do(String str) {
        Cdo cdoM11449do;
        synchronized (this) {
            cdoM11449do = this.f9719do.get(str);
            if (cdoM11449do == null) {
                cdoM11449do = this.f9720if.m11449do();
                this.f9719do.put(str, cdoM11449do);
            }
            cdoM11449do.f9722if++;
        }
        cdoM11449do.f9721do.lock();
    }

    /* renamed from: if, reason: not valid java name */
    public void m11448if(String str) {
        Cdo cdo;
        synchronized (this) {
            cdo = (Cdo) cf1.m900new(this.f9719do.get(str));
            int i = cdo.f9722if;
            if (i < 1) {
                throw new IllegalStateException("Cannot release a lock that is not held, safeKey: " + str + ", interestedThreads: " + cdo.f9722if);
            }
            int i2 = i - 1;
            cdo.f9722if = i2;
            if (i2 == 0) {
                Cdo cdoRemove = this.f9719do.remove(str);
                if (!cdoRemove.equals(cdo)) {
                    throw new IllegalStateException("Removed the wrong lock, expected to remove: " + cdo + ", but actually removed: " + cdoRemove + ", safeKey: " + str);
                }
                this.f9720if.m11450if(cdoRemove);
            }
        }
        cdo.f9721do.unlock();
    }
}
