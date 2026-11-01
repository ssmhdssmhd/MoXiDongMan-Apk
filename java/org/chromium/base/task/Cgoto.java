package org.chromium.base.task;

import java.util.ArrayDeque;
import java.util.concurrent.Executor;

/* renamed from: org.chromium.base.task.goto, reason: invalid class name */
/* loaded from: classes3.dex */
class Cgoto implements Executor {

    /* renamed from: do, reason: not valid java name */
    public final ArrayDeque<Runnable> f33262do = new ArrayDeque<>();

    /* renamed from: if, reason: not valid java name */
    public Runnable f33263if;

    /* renamed from: org.chromium.base.task.goto$do, reason: invalid class name */
    public class Cdo implements Runnable {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Runnable f33264do;

        public Cdo(Runnable runnable) {
            this.f33264do = runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.f33264do.run();
            } finally {
                Cgoto.this.m37257do();
            }
        }
    }

    /* renamed from: do, reason: not valid java name */
    public synchronized void m37257do() {
        Runnable runnablePoll = this.f33262do.poll();
        this.f33263if = runnablePoll;
        if (runnablePoll != null) {
            org.chromium.base.task.Cdo.f33249else.execute(runnablePoll);
        }
    }

    @Override // java.util.concurrent.Executor
    public synchronized void execute(Runnable runnable) {
        this.f33262do.offer(new Cdo(runnable));
        if (this.f33263if == null) {
            m37257do();
        }
    }
}
