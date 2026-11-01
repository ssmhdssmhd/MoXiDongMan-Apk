package com.google.common.util.concurrent;

import android.support.v4.af1;
import android.support.v4.ji0;
import android.support.v4.li0;
import androidx.core.app.NotificationCompat;
import com.google.common.collect.m2;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Queue;
import java.util.concurrent.Executor;
import java.util.logging.Level;
import java.util.logging.Logger;

@li0
/* loaded from: classes2.dex */
final class ListenerCallQueue<L> {

    /* renamed from: if, reason: not valid java name */
    private static final Logger f15653if = Logger.getLogger(ListenerCallQueue.class.getName());

    /* renamed from: do, reason: not valid java name */
    private final List<Cdo<L>> f15654do = Collections.synchronizedList(new ArrayList());

    public interface Event<L> {
        void call(L l);
    }

    /* renamed from: com.google.common.util.concurrent.ListenerCallQueue$do, reason: invalid class name */
    public static final class Cdo<L> implements Runnable {

        /* renamed from: do, reason: not valid java name */
        public final L f15655do;

        /* renamed from: if, reason: not valid java name */
        public final Executor f15657if;

        /* renamed from: try, reason: not valid java name */
        @ji0("this")
        public boolean f15659try;

        /* renamed from: for, reason: not valid java name */
        @ji0("this")
        public final Queue<Event<L>> f15656for = m2.m16050new();

        /* renamed from: new, reason: not valid java name */
        @ji0("this")
        public final Queue<Object> f15658new = m2.m16050new();

        public Cdo(L l, Executor executor) {
            this.f15655do = (L) af1.m205continue(l);
            this.f15657if = (Executor) af1.m205continue(executor);
        }

        /* renamed from: do, reason: not valid java name */
        public synchronized void m18037do(Event<L> event, Object obj) {
            this.f15656for.add(event);
            this.f15658new.add(obj);
        }

        /* renamed from: if, reason: not valid java name */
        public void m18038if() {
            boolean z;
            synchronized (this) {
                z = true;
                if (this.f15659try) {
                    z = false;
                } else {
                    this.f15659try = true;
                }
            }
            if (z) {
                try {
                    this.f15657if.execute(this);
                } catch (RuntimeException e) {
                    synchronized (this) {
                        this.f15659try = false;
                        ListenerCallQueue.f15653if.log(Level.SEVERE, "Exception while running callbacks for " + this.f15655do + " on " + this.f15657if, (Throwable) e);
                        throw e;
                    }
                }
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:12:0x0020, code lost:
        
            r2.call(r9.f15655do);
         */
        /* JADX WARN: Code restructure failed: missing block: B:14:0x0026, code lost:
        
            r2 = move-exception;
         */
        /* JADX WARN: Code restructure failed: missing block: B:15:0x0027, code lost:
        
            com.google.common.util.concurrent.ListenerCallQueue.f15653if.log(java.util.logging.Level.SEVERE, "Exception while executing callback: " + r9.f15655do + org.apache.commons.lang3.Cclass.f28652do + r3, (java.lang.Throwable) r2);
         */
        /* JADX WARN: Removed duplicated region for block: B:27:0x005b  */
        @Override // java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void run() throws Throwable {
            Throwable th;
            boolean z;
            while (true) {
                boolean z2 = true;
                try {
                    synchronized (this) {
                        try {
                            af1.t(this.f15659try);
                            Event<L> eventPoll = this.f15656for.poll();
                            Object objPoll = this.f15658new.poll();
                            if (eventPoll == null) {
                                this.f15659try = false;
                                try {
                                    return;
                                } catch (Throwable th2) {
                                    th = th2;
                                    z = false;
                                    while (true) {
                                        try {
                                            throw th;
                                        } catch (Throwable th3) {
                                            th = th3;
                                        }
                                    }
                                }
                            }
                        } catch (Throwable th4) {
                            th = th4;
                            z = true;
                        }
                    }
                    try {
                        throw th;
                    } catch (Throwable th5) {
                        boolean z3 = z;
                        th = th5;
                        z2 = z3;
                        if (z2) {
                            synchronized (this) {
                                this.f15659try = false;
                            }
                        }
                        throw th;
                    }
                } catch (Throwable th6) {
                    th = th6;
                    if (z2) {
                    }
                    throw th;
                }
            }
        }
    }

    /* renamed from: case, reason: not valid java name */
    private void m18031case(Event<L> event, Object obj) {
        af1.m227strictfp(event, NotificationCompat.CATEGORY_EVENT);
        af1.m227strictfp(obj, "label");
        synchronized (this.f15654do) {
            Iterator<Cdo<L>> it = this.f15654do.iterator();
            while (it.hasNext()) {
                it.next().m18037do(event, obj);
            }
        }
    }

    /* renamed from: for, reason: not valid java name */
    public void m18033for() {
        for (int i = 0; i < this.f15654do.size(); i++) {
            this.f15654do.get(i).m18038if();
        }
    }

    /* renamed from: if, reason: not valid java name */
    public void m18034if(L l, Executor executor) {
        af1.m227strictfp(l, "listener");
        af1.m227strictfp(executor, "executor");
        this.f15654do.add(new Cdo<>(l, executor));
    }

    /* renamed from: new, reason: not valid java name */
    public void m18035new(Event<L> event) {
        m18031case(event, event);
    }

    /* renamed from: try, reason: not valid java name */
    public void m18036try(Event<L> event, String str) {
        m18031case(event, str);
    }
}
