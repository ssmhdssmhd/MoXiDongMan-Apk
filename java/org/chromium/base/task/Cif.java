package org.chromium.base.task;

import android.view.Choreographer;

/* renamed from: org.chromium.base.task.if, reason: invalid class name */
/* loaded from: classes3.dex */
final class Cif implements SingleThreadTaskRunner {

    /* renamed from: do, reason: not valid java name */
    private final Choreographer f33266do;

    /* renamed from: org.chromium.base.task.if$do, reason: invalid class name */
    public class Cdo implements Choreographer.FrameCallback {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Runnable f33267do;

        public Cdo(Runnable runnable) {
            this.f33267do = runnable;
        }

        @Override // android.view.Choreographer.FrameCallback
        public void doFrame(long j) {
            this.f33267do.run();
        }
    }

    /* renamed from: org.chromium.base.task.if$if, reason: invalid class name and collision with other inner class name */
    public class ChoreographerFrameCallbackC0476if implements Choreographer.FrameCallback {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Runnable f33269do;

        public ChoreographerFrameCallbackC0476if(Runnable runnable) {
            this.f33269do = runnable;
        }

        @Override // android.view.Choreographer.FrameCallback
        public void doFrame(long j) {
            this.f33269do.run();
        }
    }

    public Cif(Choreographer choreographer) {
        this.f33266do = choreographer;
    }

    @Override // org.chromium.base.task.SingleThreadTaskRunner
    public boolean belongsToCurrentThread() {
        try {
            return this.f33266do == Choreographer.getInstance();
        } catch (IllegalStateException unused) {
            return false;
        }
    }

    @Override // org.chromium.base.task.TaskRunner
    public void postDelayedTask(Runnable runnable, long j) {
        this.f33266do.postFrameCallbackDelayed(new ChoreographerFrameCallbackC0476if(runnable), j);
    }

    @Override // org.chromium.base.task.TaskRunner
    public void postTask(Runnable runnable) {
        this.f33266do.postFrameCallback(new Cdo(runnable));
    }
}
