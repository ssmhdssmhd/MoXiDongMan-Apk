package android.support.v4;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;

/* loaded from: classes.dex */
public class wi0 {

    /* renamed from: do, reason: not valid java name */
    private static HandlerThread f7534do;

    /* renamed from: for, reason: not valid java name */
    private static Handler f7535for;

    /* renamed from: if, reason: not valid java name */
    private static Handler f7536if;

    /* renamed from: case, reason: not valid java name */
    public static void m9159case(Runnable runnable, long j) {
        Handler handler = f7535for;
        if (handler == null) {
            throw new RuntimeException("HandlerUtils init方法未初始化");
        }
        handler.postDelayed(runnable, j);
    }

    /* renamed from: do, reason: not valid java name */
    public static void m9160do() {
        HandlerThread handlerThread = new HandlerThread("worker");
        f7534do = handlerThread;
        handlerThread.start();
        f7536if = new Handler(f7534do.getLooper());
        f7535for = new Handler(Looper.getMainLooper());
    }

    /* renamed from: else, reason: not valid java name */
    public static void m9161else(Runnable runnable) {
        if (!m9163if()) {
            runnable.run();
            return;
        }
        Handler handler = f7536if;
        if (handler == null) {
            throw new RuntimeException("HandlerUtils init方法未初始化");
        }
        handler.post(runnable);
    }

    /* renamed from: for, reason: not valid java name */
    public static void m9162for() {
        HandlerThread handlerThread = f7534do;
        if (handlerThread != null) {
            handlerThread.quit();
            f7534do = null;
        }
        Handler handler = f7536if;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
            f7536if = null;
        }
        Handler handler2 = f7535for;
        if (handler2 != null) {
            handler2.removeCallbacksAndMessages(null);
            f7535for = null;
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static boolean m9163if() {
        return Looper.myLooper() == Looper.getMainLooper();
    }

    /* renamed from: new, reason: not valid java name */
    public static void m9164new(Runnable runnable) {
        Handler handler = f7535for;
        if (handler == null) {
            throw new RuntimeException("HandlerUtils init方法未初始化");
        }
        handler.removeCallbacks(runnable);
    }

    /* renamed from: try, reason: not valid java name */
    public static void m9165try(Runnable runnable) {
        if (m9163if()) {
            runnable.run();
            return;
        }
        Handler handler = f7535for;
        if (handler == null) {
            throw new RuntimeException("HandlerUtils init方法未初始化");
        }
        handler.post(runnable);
    }
}
