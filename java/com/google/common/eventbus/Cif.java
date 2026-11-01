package com.google.common.eventbus;

import android.support.v4.af1;
import com.google.common.collect.m2;
import java.util.Iterator;
import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;

/* renamed from: com.google.common.eventbus.if, reason: invalid class name */
/* loaded from: classes2.dex */
abstract class Cif {

    /* renamed from: com.google.common.eventbus.if$for, reason: invalid class name */
    public static final class Cfor extends Cif {

        /* renamed from: do, reason: not valid java name */
        private final ConcurrentLinkedQueue<Cdo> f14936do;

        /* renamed from: com.google.common.eventbus.if$for$do, reason: invalid class name */
        public static final class Cdo {

            /* renamed from: do, reason: not valid java name */
            private final Object f14937do;

            /* renamed from: if, reason: not valid java name */
            private final com.google.common.eventbus.Cnew f14938if;

            private Cdo(Object obj, com.google.common.eventbus.Cnew cnew) {
                this.f14937do = obj;
                this.f14938if = cnew;
            }
        }

        private Cfor() {
            this.f14936do = m2.m16038case();
        }

        @Override // com.google.common.eventbus.Cif
        /* renamed from: do */
        public void mo16628do(Object obj, Iterator<com.google.common.eventbus.Cnew> it) {
            af1.m205continue(obj);
            while (it.hasNext()) {
                this.f14936do.add(new Cdo(obj, it.next()));
            }
            while (true) {
                Cdo cdoPoll = this.f14936do.poll();
                if (cdoPoll == null) {
                    return;
                } else {
                    cdoPoll.f14938if.m16642try(cdoPoll.f14937do);
                }
            }
        }
    }

    /* renamed from: com.google.common.eventbus.if$if, reason: invalid class name and collision with other inner class name */
    public static final class C0112if extends Cif {

        /* renamed from: do, reason: not valid java name */
        private static final C0112if f14939do = new C0112if();

        private C0112if() {
        }

        @Override // com.google.common.eventbus.Cif
        /* renamed from: do */
        public void mo16628do(Object obj, Iterator<com.google.common.eventbus.Cnew> it) {
            af1.m205continue(obj);
            while (it.hasNext()) {
                it.next().m16642try(obj);
            }
        }
    }

    /* renamed from: com.google.common.eventbus.if$new, reason: invalid class name */
    public static final class Cnew extends Cif {

        /* renamed from: do, reason: not valid java name */
        private final ThreadLocal<Queue<Cfor>> f14940do;

        /* renamed from: if, reason: not valid java name */
        private final ThreadLocal<Boolean> f14941if;

        /* renamed from: com.google.common.eventbus.if$new$do, reason: invalid class name */
        public class Cdo extends ThreadLocal<Queue<Cfor>> {
            public Cdo() {
            }

            @Override // java.lang.ThreadLocal
            /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
            public Queue<Cfor> initialValue() {
                return m2.m16050new();
            }
        }

        /* renamed from: com.google.common.eventbus.if$new$for, reason: invalid class name */
        public static final class Cfor {

            /* renamed from: do, reason: not valid java name */
            private final Object f14943do;

            /* renamed from: if, reason: not valid java name */
            private final Iterator<com.google.common.eventbus.Cnew> f14944if;

            private Cfor(Object obj, Iterator<com.google.common.eventbus.Cnew> it) {
                this.f14943do = obj;
                this.f14944if = it;
            }
        }

        /* renamed from: com.google.common.eventbus.if$new$if, reason: invalid class name and collision with other inner class name */
        public class C0113if extends ThreadLocal<Boolean> {
            public C0113if() {
            }

            @Override // java.lang.ThreadLocal
            /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
            public Boolean initialValue() {
                return Boolean.FALSE;
            }
        }

        private Cnew() {
            this.f14940do = new Cdo();
            this.f14941if = new C0113if();
        }

        @Override // com.google.common.eventbus.Cif
        /* renamed from: do */
        public void mo16628do(Object obj, Iterator<com.google.common.eventbus.Cnew> it) {
            af1.m205continue(obj);
            af1.m205continue(it);
            Queue<Cfor> queue = this.f14940do.get();
            queue.offer(new Cfor(obj, it));
            if (this.f14941if.get().booleanValue()) {
                return;
            }
            this.f14941if.set(Boolean.TRUE);
            while (true) {
                try {
                    Cfor cforPoll = queue.poll();
                    if (cforPoll == null) {
                        return;
                    }
                    while (cforPoll.f14944if.hasNext()) {
                        ((com.google.common.eventbus.Cnew) cforPoll.f14944if.next()).m16642try(cforPoll.f14943do);
                    }
                } finally {
                    this.f14941if.remove();
                    this.f14940do.remove();
                }
            }
        }
    }

    /* renamed from: for, reason: not valid java name */
    public static Cif m16625for() {
        return new Cfor();
    }

    /* renamed from: if, reason: not valid java name */
    public static Cif m16626if() {
        return C0112if.f14939do;
    }

    /* renamed from: new, reason: not valid java name */
    public static Cif m16627new() {
        return new Cnew();
    }

    /* renamed from: do, reason: not valid java name */
    public abstract void mo16628do(Object obj, Iterator<com.google.common.eventbus.Cnew> it);
}
