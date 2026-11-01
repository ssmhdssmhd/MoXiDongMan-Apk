package org.chromium.base;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.support.v4.cx0;
import android.support.v4.lo0;
import java.lang.Thread;
import org.chromium.base.annotations.CalledByNative;

@lo0("base::android")
@cx0
/* loaded from: classes3.dex */
public class JavaHandlerThread {

    /* renamed from: for, reason: not valid java name */
    public static final /* synthetic */ boolean f33014for = false;

    /* renamed from: do, reason: not valid java name */
    private final HandlerThread f33015do;

    /* renamed from: if, reason: not valid java name */
    private Throwable f33016if;

    public interface Natives {
        void initializeThread(long j, long j2);

        void onLooperStopped(long j);
    }

    /* renamed from: org.chromium.base.JavaHandlerThread$do, reason: invalid class name */
    public class Cdo implements Runnable {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ long f33017do;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ long f33019if;

        public Cdo(long j, long j2) {
            this.f33017do = j;
            this.f33019if = j2;
        }

        @Override // java.lang.Runnable
        public void run() {
            Cfinal.m37111if().initializeThread(this.f33017do, this.f33019if);
        }
    }

    /* renamed from: org.chromium.base.JavaHandlerThread$for, reason: invalid class name */
    public class Cfor implements Thread.UncaughtExceptionHandler {
        public Cfor() {
        }

        @Override // java.lang.Thread.UncaughtExceptionHandler
        public void uncaughtException(Thread thread, Throwable th) {
            JavaHandlerThread.this.f33016if = th;
        }
    }

    /* renamed from: org.chromium.base.JavaHandlerThread$if, reason: invalid class name */
    public class Cif implements Runnable {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ long f33021do;

        public Cif(long j) {
            this.f33021do = j;
        }

        @Override // java.lang.Runnable
        public void run() {
            JavaHandlerThread.this.f33015do.quit();
            Cfinal.m37111if().onLooperStopped(this.f33021do);
        }
    }

    public JavaHandlerThread(String str, int i) {
        this.f33015do = new HandlerThread(str, i);
    }

    @CalledByNative
    private static JavaHandlerThread create(String str, int i) {
        return new JavaHandlerThread(str, i);
    }

    @CalledByNative
    private Throwable getUncaughtExceptionIfAny() {
        return this.f33016if;
    }

    @CalledByNative
    private boolean isAlive() {
        return this.f33015do.isAlive();
    }

    @CalledByNative
    private void joinThread() {
        boolean z = false;
        while (!z) {
            try {
                this.f33015do.join();
                z = true;
            } catch (InterruptedException unused) {
            }
        }
    }

    @CalledByNative
    private void listenForUncaughtExceptionsForTesting() {
        this.f33015do.setUncaughtExceptionHandler(new Cfor());
    }

    /* renamed from: new, reason: not valid java name */
    private boolean m36829new() {
        return this.f33015do.getState() != Thread.State.NEW;
    }

    @CalledByNative
    private void quitThreadSafely(long j) {
        new Handler(this.f33015do.getLooper()).post(new Cif(j));
        this.f33015do.getLooper().quitSafely();
    }

    @CalledByNative
    private void startAndInitialize(long j, long j2) {
        m36831try();
        new Handler(this.f33015do.getLooper()).post(new Cdo(j, j2));
    }

    /* renamed from: for, reason: not valid java name */
    public Looper m36830for() {
        return this.f33015do.getLooper();
    }

    /* renamed from: try, reason: not valid java name */
    public void m36831try() {
        if (m36829new()) {
            return;
        }
        this.f33015do.start();
    }
}
