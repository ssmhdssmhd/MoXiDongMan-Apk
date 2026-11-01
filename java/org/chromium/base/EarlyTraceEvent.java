package org.chromium.base;

import android.os.Process;
import android.os.StrictMode;
import android.os.SystemClock;
import android.support.v4.cx0;
import android.support.v4.ii0;
import android.support.v4.lo0;
import androidx.annotation.VisibleForTesting;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import org.chromium.base.annotations.CalledByNative;

@lo0("base::android")
@cx0
/* loaded from: classes3.dex */
public class EarlyTraceEvent {

    /* renamed from: break, reason: not valid java name */
    public static final String f32982break = "trace-early-java-in-child";

    /* renamed from: case, reason: not valid java name */
    private static final String f32983case = "bg_startup_tracing";

    /* renamed from: catch, reason: not valid java name */
    private static final Object f32984catch = new Object();

    /* renamed from: class, reason: not valid java name */
    @ii0("sLock")
    @VisibleForTesting
    public static List<Cif> f32985class = null;

    /* renamed from: const, reason: not valid java name */
    @ii0("sLock")
    @VisibleForTesting
    public static List<Cdo> f32986const = null;

    /* renamed from: do, reason: not valid java name */
    @VisibleForTesting
    public static final int f32987do = 0;

    /* renamed from: else, reason: not valid java name */
    private static boolean f32988else = false;

    /* renamed from: final, reason: not valid java name */
    public static final /* synthetic */ boolean f32989final = false;

    /* renamed from: for, reason: not valid java name */
    @VisibleForTesting
    public static final int f32990for = 2;

    /* renamed from: goto, reason: not valid java name */
    private static final String f32991goto = "/data/local/chrome-trace-config.json";

    /* renamed from: if, reason: not valid java name */
    @VisibleForTesting
    public static final int f32992if = 1;

    /* renamed from: new, reason: not valid java name */
    @VisibleForTesting
    public static volatile int f32993new = 0;

    /* renamed from: this, reason: not valid java name */
    private static final String f32994this = "trace-startup";

    /* renamed from: try, reason: not valid java name */
    private static volatile boolean f32995try;

    public interface Natives {
        void recordEarlyAsyncBeginEvent(String str, long j, long j2);

        void recordEarlyAsyncEndEvent(String str, long j, long j2);

        void recordEarlyBeginEvent(String str, long j, int i, long j2);

        void recordEarlyEndEvent(String str, long j, int i, long j2);

        void recordEarlyToplevelBeginEvent(String str, long j, int i, long j2);

        void recordEarlyToplevelEndEvent(String str, long j, int i, long j2);
    }

    @VisibleForTesting
    /* renamed from: org.chromium.base.EarlyTraceEvent$do, reason: invalid class name */
    public static final class Cdo {

        /* renamed from: do, reason: not valid java name */
        public final boolean f32996do;

        /* renamed from: for, reason: not valid java name */
        public final long f32997for;

        /* renamed from: if, reason: not valid java name */
        public final String f32998if;

        /* renamed from: new, reason: not valid java name */
        public final long f32999new = SystemClock.elapsedRealtimeNanos();

        public Cdo(String str, long j, boolean z) {
            this.f32998if = str;
            this.f32997for = j;
            this.f32996do = z;
        }
    }

    @VisibleForTesting
    /* renamed from: org.chromium.base.EarlyTraceEvent$if, reason: invalid class name */
    public static final class Cif {

        /* renamed from: do, reason: not valid java name */
        public final boolean f33001do;

        /* renamed from: for, reason: not valid java name */
        public final String f33002for;

        /* renamed from: if, reason: not valid java name */
        public final boolean f33003if;

        /* renamed from: new, reason: not valid java name */
        public final int f33004new = Process.myTid();

        /* renamed from: try, reason: not valid java name */
        public final long f33005try = SystemClock.elapsedRealtimeNanos();

        /* renamed from: case, reason: not valid java name */
        public final long f33000case = SystemClock.currentThreadTimeMillis();

        public Cif(String str, boolean z, boolean z2) {
            this.f33001do = z;
            this.f33003if = z2;
            this.f33002for = str;
        }
    }

    @VisibleForTesting
    /* renamed from: break, reason: not valid java name */
    public static List<Cif> m36797break(String str) {
        ArrayList arrayList;
        synchronized (f32984catch) {
            arrayList = new ArrayList();
            for (Cif cif : f32985class) {
                if (cif.f33002for.equals(str)) {
                    arrayList.add(cif);
                }
            }
        }
        return arrayList;
    }

    /* renamed from: case, reason: not valid java name */
    public static void m36798case() {
        synchronized (f32984catch) {
            if (f32993new != 0) {
                return;
            }
            f32985class = new ArrayList();
            f32986const = new ArrayList();
            f32993new = 1;
        }
    }

    /* renamed from: catch, reason: not valid java name */
    private static long m36799catch() {
        return (Cimport.m37121if().getTimeTicksNowUs() * 1000) - SystemClock.elapsedRealtimeNanos();
    }

    /* renamed from: class, reason: not valid java name */
    public static void m36800class() {
        boolean zExists;
        ThreadUtils.m36938for();
        if (f32993new != 0) {
            return;
        }
        StrictMode.ThreadPolicy threadPolicyAllowThreadDiskReads = StrictMode.allowThreadDiskReads();
        try {
            boolean z = true;
            if (CommandLine.m36766else().mo36779class(f32994this)) {
                zExists = true;
            } else {
                try {
                    zExists = new File(f32991goto).exists();
                } catch (SecurityException unused) {
                    zExists = false;
                }
            }
            if (!Ctry.m37281new().getBoolean(f32983case, false)) {
                z = zExists;
            } else if (zExists) {
                setBackgroundStartupTracingFlag(false);
                f32988else = false;
                z = zExists;
            } else {
                f32988else = true;
            }
            if (z) {
                m36798case();
            }
        } finally {
            StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskReads);
        }
    }

    /* renamed from: const, reason: not valid java name */
    public static void m36801const() {
        if (f32995try) {
            synchronized (f32984catch) {
                if (!CommandLine.m36766else().mo36779class(f32982break)) {
                    m36804final();
                } else {
                    if (f32993new == 0) {
                        m36798case();
                    }
                }
            }
        }
    }

    /* renamed from: do, reason: not valid java name */
    public static void m36802do(String str, boolean z) {
        if (m36803else()) {
            Cif cif = new Cif(str, true, z);
            synchronized (f32984catch) {
                if (m36803else()) {
                    f32985class.add(cif);
                }
            }
        }
    }

    /* renamed from: else, reason: not valid java name */
    public static boolean m36803else() {
        return f32993new == 1;
    }

    @VisibleForTesting
    /* renamed from: final, reason: not valid java name */
    public static void m36804final() {
        synchronized (f32984catch) {
            f32993new = 0;
            f32985class = null;
            f32986const = null;
        }
    }

    /* renamed from: for, reason: not valid java name */
    private static void m36805for(List<Cdo> list) {
        long jM36799catch = m36799catch();
        for (Cdo cdo : list) {
            if (cdo.f32996do) {
                Cgoto.m37115if().recordEarlyAsyncBeginEvent(cdo.f32998if, cdo.f32997for, cdo.f32999new + jM36799catch);
            } else {
                Cgoto.m37115if().recordEarlyAsyncEndEvent(cdo.f32998if, cdo.f32997for, cdo.f32999new + jM36799catch);
            }
        }
    }

    @CalledByNative
    public static boolean getBackgroundStartupTracingFlag() {
        return f32988else;
    }

    /* renamed from: goto, reason: not valid java name */
    public static void m36806goto(String str, boolean z) {
        if (m36803else()) {
            Cif cif = new Cif(str, false, z);
            synchronized (f32984catch) {
                if (m36803else()) {
                    f32985class.add(cif);
                }
            }
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static void m36807if() {
        synchronized (f32984catch) {
            if (m36803else()) {
                if (!f32985class.isEmpty()) {
                    m36808new(f32985class);
                    f32985class.clear();
                }
                if (!f32986const.isEmpty()) {
                    m36805for(f32986const);
                    f32986const.clear();
                }
                f32993new = 2;
                f32985class = null;
                f32986const = null;
            }
        }
    }

    /* renamed from: new, reason: not valid java name */
    private static void m36808new(List<Cif> list) {
        long jM36799catch = m36799catch();
        for (Cif cif : list) {
            if (cif.f33001do) {
                if (cif.f33003if) {
                    Cgoto.m37115if().recordEarlyToplevelBeginEvent(cif.f33002for, cif.f33005try + jM36799catch, cif.f33004new, cif.f33000case);
                } else {
                    Cgoto.m37115if().recordEarlyBeginEvent(cif.f33002for, cif.f33005try + jM36799catch, cif.f33004new, cif.f33000case);
                }
            } else if (cif.f33003if) {
                Cgoto.m37115if().recordEarlyToplevelEndEvent(cif.f33002for, cif.f33005try + jM36799catch, cif.f33004new, cif.f33000case);
            } else {
                Cgoto.m37115if().recordEarlyEndEvent(cif.f33002for, cif.f33005try + jM36799catch, cif.f33004new, cif.f33000case);
            }
        }
    }

    @CalledByNative
    public static void setBackgroundStartupTracingFlag(boolean z) {
        Ctry.m37281new().edit().putBoolean(f32983case, z).apply();
    }

    /* renamed from: super, reason: not valid java name */
    public static void m36809super(String str, long j) {
        if (m36803else()) {
            Cdo cdo = new Cdo(str, j, true);
            synchronized (f32984catch) {
                if (m36803else()) {
                    f32986const.add(cdo);
                }
            }
        }
    }

    /* renamed from: this, reason: not valid java name */
    public static void m36810this(String str, long j) {
        if (m36803else()) {
            Cdo cdo = new Cdo(str, j, false);
            synchronized (f32984catch) {
                if (m36803else()) {
                    f32986const.add(cdo);
                }
            }
        }
    }

    /* renamed from: try, reason: not valid java name */
    public static void m36811try() {
        f32995try = true;
        m36798case();
    }
}
