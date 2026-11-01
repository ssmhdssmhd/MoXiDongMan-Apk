package com.wsw.cospa.utils.notchtools.helper;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.SystemClock;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;

/* loaded from: classes2.dex */
public class ThreadUtils {

    /* renamed from: do, reason: not valid java name */
    private static Handler f22694do;

    /* renamed from: for, reason: not valid java name */
    private static Handler f22695for;

    /* renamed from: if, reason: not valid java name */
    private static final Object f22696if = new Object();

    /* renamed from: new, reason: not valid java name */
    private static final Object f22697new = new Object();

    /* renamed from: try, reason: not valid java name */
    private static final Executor f22698try = Executors.newFixedThreadPool(4, new Cif());

    public interface Consumer<T> {
        void consume(@Nullable T t);
    }

    public interface Provider<T> {
        @Nullable
        T provide();
    }

    /* renamed from: com.wsw.cospa.utils.notchtools.helper.ThreadUtils$do, reason: invalid class name */
    public class Cdo implements Runnable {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Object f22699do;

        public Cdo(Object obj) {
            this.f22699do = obj;
        }

        @Override // java.lang.Runnable
        public void run() {
            ThreadUtils.m27010this().removeCallbacksAndMessages(this.f22699do);
        }
    }

    /* renamed from: com.wsw.cospa.utils.notchtools.helper.ThreadUtils$for, reason: invalid class name */
    public class Cfor implements Runnable {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Provider f22700do;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ Consumer f22701if;

        /* renamed from: com.wsw.cospa.utils.notchtools.helper.ThreadUtils$for$do, reason: invalid class name */
        public class Cdo implements Runnable {

            /* renamed from: do, reason: not valid java name */
            public final /* synthetic */ Object f22702do;

            public Cdo(Object obj) {
                this.f22702do = obj;
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    Cfor.this.f22701if.consume(this.f22702do);
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
        }

        public Cfor(Provider provider, Consumer consumer) {
            this.f22700do = provider;
            this.f22701if = consumer;
        }

        @Override // java.lang.Runnable
        public void run() {
            Object objProvide;
            try {
                objProvide = this.f22700do.provide();
            } catch (Throwable th) {
                th.printStackTrace();
                objProvide = null;
            }
            if (this.f22701if == null) {
                return;
            }
            ThreadUtils.m27011throw(new Cdo(objProvide));
        }
    }

    /* renamed from: com.wsw.cospa.utils.notchtools.helper.ThreadUtils$if, reason: invalid class name */
    public class Cif implements ThreadFactory {

        /* renamed from: do, reason: not valid java name */
        private int f22704do = -1;

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(@NonNull Runnable runnable) {
            this.f22704do++;
            return new Thread(runnable, "ThreadUtils: " + this.f22704do);
        }
    }

    /* renamed from: break, reason: not valid java name */
    public static String m26991break() {
        return Thread.currentThread().getName() + " : " + Thread.currentThread().getId();
    }

    /* renamed from: case, reason: not valid java name */
    public static void m26992case(Context context, long j) {
        if (context != null) {
            m27002import(new Cdo(Integer.valueOf(context.hashCode())), j);
        }
    }

    /* renamed from: catch, reason: not valid java name */
    private static Handler m26993catch() {
        Handler handler;
        synchronized (f22696if) {
            if (f22694do == null) {
                f22694do = new Handler(Looper.getMainLooper());
            }
            handler = f22694do;
        }
        return handler;
    }

    /* renamed from: class, reason: not valid java name */
    public static boolean m26994class() {
        return Thread.currentThread().getId() == Looper.getMainLooper().getThread().getId();
    }

    /* renamed from: const, reason: not valid java name */
    public static boolean m26995const(Context context, Runnable runnable) {
        return context == null ? m26998final(runnable) : m27010this().postAtTime(runnable, Integer.valueOf(context.hashCode()), SystemClock.uptimeMillis());
    }

    /* renamed from: else, reason: not valid java name */
    public static <T> void m26997else(Provider<T> provider, Consumer<T> consumer) {
        if (provider == null) {
            return;
        }
        f22698try.execute(new Cfor(provider, consumer));
    }

    /* renamed from: final, reason: not valid java name */
    public static boolean m26998final(Runnable runnable) {
        return m27010this().post(runnable);
    }

    /* renamed from: for, reason: not valid java name */
    public static void m26999for(Runnable runnable) {
        m27010this().removeCallbacks(runnable);
    }

    /* renamed from: goto, reason: not valid java name */
    public static void m27000goto(Runnable runnable) {
        if (runnable != null) {
            try {
                f22698try.execute(runnable);
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static void m27001if(Context context) {
        if (context != null) {
            m27010this().removeCallbacksAndMessages(Integer.valueOf(context.hashCode()));
        }
    }

    /* renamed from: import, reason: not valid java name */
    private static boolean m27002import(Runnable runnable, long j) {
        return m27010this().postDelayed(runnable, j);
    }

    /* renamed from: native, reason: not valid java name */
    public static boolean m27003native(Context context, Runnable runnable, long j) {
        return context == null ? m27005public(runnable, j) : m26993catch().postAtTime(runnable, Integer.valueOf(context.hashCode()), SystemClock.uptimeMillis() + j);
    }

    /* renamed from: new, reason: not valid java name */
    public static void m27004new(Context context) {
        if (context != null) {
            m26993catch().removeCallbacksAndMessages(Integer.valueOf(context.hashCode()));
        }
    }

    /* renamed from: public, reason: not valid java name */
    public static boolean m27005public(Runnable runnable, long j) {
        return m26993catch().postDelayed(runnable, j);
    }

    /* renamed from: return, reason: not valid java name */
    public static boolean m27006return() {
        return m27010this().getLooper() == Looper.myLooper();
    }

    /* renamed from: static, reason: not valid java name */
    private static boolean m27007static() {
        return m26993catch().getLooper() == Looper.myLooper();
    }

    /* renamed from: super, reason: not valid java name */
    public static boolean m27008super(Context context, Runnable runnable) {
        return context == null ? m27011throw(runnable) : m26993catch().postAtTime(runnable, Integer.valueOf(context.hashCode()), SystemClock.uptimeMillis());
    }

    /* renamed from: switch, reason: not valid java name */
    public static void m27009switch(String str) {
        if (m27007static()) {
            return;
        }
        throw new RuntimeException("ThreadUtils safeCheck alert " + str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: this, reason: not valid java name */
    public static Handler m27010this() {
        Handler handler;
        synchronized (f22697new) {
            if (f22695for == null) {
                HandlerThread handlerThread = new HandlerThread("daemon-handler-thread");
                handlerThread.start();
                f22695for = new Handler(handlerThread.getLooper());
            }
            handler = f22695for;
        }
        return handler;
    }

    /* renamed from: throw, reason: not valid java name */
    public static boolean m27011throw(Runnable runnable) {
        return m26993catch().post(runnable);
    }

    /* renamed from: try, reason: not valid java name */
    public static void m27012try(Runnable runnable) {
        m26993catch().removeCallbacks(runnable);
    }

    /* renamed from: while, reason: not valid java name */
    public static boolean m27013while(Context context, Runnable runnable, long j) {
        return context == null ? m27002import(runnable, j) : m27010this().postAtTime(runnable, Integer.valueOf(context.hashCode()), SystemClock.uptimeMillis() + j);
    }
}
