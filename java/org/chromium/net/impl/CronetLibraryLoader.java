package org.chromium.net.impl;

import android.content.Context;
import android.os.ConditionVariable;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Process;
import android.support.v4.id2;
import android.support.v4.im0;
import android.support.v4.lo0;
import android.support.v4.rv0;
import androidx.annotation.VisibleForTesting;
import org.chromium.base.Ctry;
import org.chromium.base.annotations.CalledByNative;
import org.chromium.net.NetworkChangeNotifier;

@lo0("cronet")
@VisibleForTesting
/* loaded from: classes3.dex */
public class CronetLibraryLoader {

    /* renamed from: case, reason: not valid java name */
    private static volatile boolean f33509case;

    /* renamed from: goto, reason: not valid java name */
    public static final /* synthetic */ boolean f33513goto = false;

    /* renamed from: do, reason: not valid java name */
    private static final Object f33510do = new Object();

    /* renamed from: if, reason: not valid java name */
    private static final String f33514if = "cronet." + im0.m3510if();

    /* renamed from: for, reason: not valid java name */
    private static final String f33512for = CronetLibraryLoader.class.getSimpleName();

    /* renamed from: new, reason: not valid java name */
    private static final HandlerThread f33515new = new HandlerThread("CronetInit");

    /* renamed from: try, reason: not valid java name */
    private static volatile boolean f33516try = false;

    /* renamed from: else, reason: not valid java name */
    private static final ConditionVariable f33511else = new ConditionVariable();

    public interface Natives {
        void cronetInitOnInitThread();

        String getCronetVersion();
    }

    /* renamed from: org.chromium.net.impl.CronetLibraryLoader$do, reason: invalid class name */
    public class Cdo implements Runnable {
        @Override // java.lang.Runnable
        public void run() {
            CronetLibraryLoader.m37563if();
        }
    }

    /* renamed from: do, reason: not valid java name */
    public static void m37561do(Context context, Cif cif) {
        synchronized (f33510do) {
            if (!f33509case) {
                Ctry.m37279goto(context);
                HandlerThread handlerThread = f33515new;
                if (!handlerThread.isAlive()) {
                    handlerThread.start();
                }
                m37564new(new Cdo());
            }
            if (!f33516try) {
                if (cif.mo37669protected() != null) {
                    cif.mo37669protected().mo37512do(f33514if);
                } else {
                    System.loadLibrary(f33514if);
                }
                String strM3510if = im0.m3510if();
                if (!strM3510if.equals(Cfor.m37667if().getCronetVersion())) {
                    throw new RuntimeException(String.format("Expected Cronet version number %s, actual version number %s.", strM3510if, Cfor.m37667if().getCronetVersion()));
                }
                rv0.m7155goto(f33512for, "Cronet version: %s, arch: %s", strM3510if, System.getProperty("os.arch"));
                f33516try = true;
                f33511else.open();
            }
        }
    }

    @CalledByNative
    private static void ensureInitializedFromNative() {
        synchronized (f33510do) {
            f33516try = true;
            f33511else.open();
        }
        m37561do(Ctry.m37273case(), null);
    }

    /* renamed from: for, reason: not valid java name */
    private static boolean m37562for() {
        return f33515new.getLooper() == Looper.myLooper();
    }

    @CalledByNative
    private static String getDefaultUserAgent() {
        return id2.m3386if(Ctry.m37273case());
    }

    /* renamed from: if, reason: not valid java name */
    public static void m37563if() {
        if (f33509case) {
            return;
        }
        NetworkChangeNotifier.init();
        NetworkChangeNotifier.m37318import();
        f33511else.block();
        Cfor.m37667if().cronetInitOnInitThread();
        f33509case = true;
    }

    /* renamed from: new, reason: not valid java name */
    public static void m37564new(Runnable runnable) {
        if (m37562for()) {
            runnable.run();
        } else {
            new Handler(f33515new.getLooper()).post(runnable);
        }
    }

    @CalledByNative
    private static void setNetworkThreadPriorityOnNetworkThread(int i) throws SecurityException, IllegalArgumentException {
        Process.setThreadPriority(i);
    }
}
