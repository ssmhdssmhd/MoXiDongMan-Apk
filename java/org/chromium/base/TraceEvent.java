package org.chromium.base;

import android.os.Looper;
import android.os.MessageQueue;
import android.os.SystemClock;
import android.support.v4.cx0;
import android.support.v4.lo0;
import android.support.v4.o7;
import android.support.v4.on0;
import android.support.v4.rv0;
import android.util.Log;
import android.util.Printer;
import androidx.annotation.AnyThread;
import androidx.annotation.Nullable;
import androidx.annotation.UiThread;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicBoolean;
import org.chromium.base.annotations.CalledByNative;

@lo0("base::android")
@cx0
/* loaded from: classes3.dex */
public class TraceEvent implements AutoCloseable {

    /* renamed from: for, reason: not valid java name */
    public static final long f33103for = 16;

    /* renamed from: if, reason: not valid java name */
    private static volatile boolean f33104if = false;

    /* renamed from: new, reason: not valid java name */
    public static final long f33105new = 4096;

    /* renamed from: try, reason: not valid java name */
    private static Cif f33106try;

    /* renamed from: do, reason: not valid java name */
    private final String f33107do;

    public interface Natives {
        void begin(String str, String str2);

        void beginToplevel(String str);

        void end(String str, String str2);

        void endToplevel(String str);

        void finishAsync(String str, long j);

        void instant(String str, String str2);

        void registerEnabledObserver();

        void setupATraceStartupTrace(String str);

        void startATrace(String str);

        void startAsync(String str, long j);

        void stopATrace();
    }

    /* renamed from: org.chromium.base.TraceEvent$for, reason: invalid class name */
    public static class Cfor implements Printer {

        /* renamed from: for, reason: not valid java name */
        private static final int f33108for = 18;

        /* renamed from: if, reason: not valid java name */
        private static final String f33109if = "Looper.dispatch: ";

        /* renamed from: new, reason: not valid java name */
        public static final /* synthetic */ boolean f33110new = false;

        /* renamed from: do, reason: not valid java name */
        private String f33111do;

        private Cfor() {
        }

        /* renamed from: for, reason: not valid java name */
        private static String m36967for(String str) {
            int iIndexOf = str.indexOf(40, f33108for);
            int iIndexOf2 = iIndexOf == -1 ? -1 : str.indexOf(41, iIndexOf);
            return iIndexOf2 != -1 ? str.substring(iIndexOf + 1, iIndexOf2) : "";
        }

        /* renamed from: new, reason: not valid java name */
        private static String m36968new(String str) {
            int iIndexOf = str.indexOf(125, f33108for);
            int iIndexOf2 = iIndexOf == -1 ? -1 : str.indexOf(58, iIndexOf);
            if (iIndexOf2 == -1) {
                iIndexOf2 = str.length();
            }
            return iIndexOf != -1 ? str.substring(iIndexOf + 2, iIndexOf2) : "";
        }

        /* renamed from: try, reason: not valid java name */
        private static String m36969try(String str) {
            return f33109if + m36967for(str) + "(" + m36968new(str) + ")";
        }

        /* renamed from: do, reason: not valid java name */
        public void mo36970do(String str) {
            boolean zM36803else = EarlyTraceEvent.m36803else();
            if (TraceEvent.f33104if || zM36803else) {
                this.f33111do = m36969try(str);
                if (TraceEvent.f33104if) {
                    Creturn.m37185if().beginToplevel(this.f33111do);
                } else {
                    EarlyTraceEvent.m36802do(this.f33111do, true);
                }
            }
        }

        /* renamed from: if, reason: not valid java name */
        public void mo36971if(String str) {
            boolean zM36803else = EarlyTraceEvent.m36803else();
            if ((TraceEvent.f33104if || zM36803else) && this.f33111do != null) {
                if (TraceEvent.f33104if) {
                    Creturn.m37185if().endToplevel(this.f33111do);
                } else {
                    EarlyTraceEvent.m36806goto(this.f33111do, true);
                }
            }
            this.f33111do = null;
        }

        @Override // android.util.Printer
        public void println(String str) {
            if (str.startsWith(">")) {
                mo36970do(str);
            } else {
                mo36971if(str);
            }
        }
    }

    /* renamed from: org.chromium.base.TraceEvent$if, reason: invalid class name */
    public static class Cif implements MessageQueue.IdleHandler {

        /* renamed from: final, reason: not valid java name */
        private static final String f33112final = "ATrace";

        /* renamed from: super, reason: not valid java name */
        public static final /* synthetic */ boolean f33113super = false;

        /* renamed from: case, reason: not valid java name */
        private Method f33115case;

        /* renamed from: class, reason: not valid java name */
        private final long f33117class;

        /* renamed from: const, reason: not valid java name */
        private boolean f33118const;

        /* renamed from: do, reason: not valid java name */
        private Class<?> f33119do;

        /* renamed from: else, reason: not valid java name */
        private Class<?> f33120else;

        /* renamed from: for, reason: not valid java name */
        private Method f33121for;

        /* renamed from: goto, reason: not valid java name */
        private Method f33122goto;

        /* renamed from: if, reason: not valid java name */
        private Method f33123if;

        /* renamed from: new, reason: not valid java name */
        private Method f33124new;

        /* renamed from: try, reason: not valid java name */
        private Method f33126try;

        /* renamed from: this, reason: not valid java name */
        private final AtomicBoolean f33125this = new AtomicBoolean();

        /* renamed from: break, reason: not valid java name */
        private final AtomicBoolean f33114break = new AtomicBoolean();

        /* renamed from: catch, reason: not valid java name */
        private final AtomicBoolean f33116catch = new AtomicBoolean();

        /* renamed from: org.chromium.base.TraceEvent$if$do, reason: invalid class name */
        public static class Cdo {

            /* renamed from: do, reason: not valid java name */
            public String f33127do;

            /* renamed from: if, reason: not valid java name */
            public boolean f33128if;

            private Cdo() {
                this.f33127do = "";
                this.f33128if = true;
            }
        }

        public Cif(long j) throws ClassNotFoundException {
            try {
                Class<?> cls = Class.forName("android.os.Trace");
                this.f33119do = cls;
                Class<?> cls2 = Long.TYPE;
                this.f33123if = cls.getMethod("isTagEnabled", cls2);
                this.f33121for = this.f33119do.getMethod("traceBegin", cls2, String.class);
                this.f33124new = this.f33119do.getMethod("traceEnd", cls2);
                Class<?> cls3 = this.f33119do;
                Class<?> cls4 = Integer.TYPE;
                this.f33126try = cls3.getMethod("asyncTraceBegin", cls2, String.class, cls4);
                this.f33115case = this.f33119do.getMethod("asyncTraceEnd", cls2, String.class, cls4);
                Class<?> cls5 = Class.forName("android.os.SystemProperties");
                this.f33120else = cls5;
                this.f33122goto = cls5.getMethod("get", String.class);
            } catch (Exception e) {
                rv0.m7150const(f33112final, "Reflection error", e);
                this.f33123if = null;
            }
            this.f33117class = j;
            m36974class();
        }

        /* renamed from: case, reason: not valid java name */
        private void m36972case(String str) {
            Creturn.m37185if().startATrace(str);
        }

        /* renamed from: catch, reason: not valid java name */
        private boolean m36973catch(long j) {
            try {
                return ((Boolean) this.f33123if.invoke(this.f33119do, Long.valueOf(j))).booleanValue();
            } catch (Exception unused) {
                return false;
            }
        }

        /* renamed from: else, reason: not valid java name */
        private Cdo m36977else() {
            Cdo cdo = new Cdo();
            Integer numM36978goto = m36978goto("debug.atrace.app_number");
            if (numM36978goto != null && numM36978goto.intValue() > 0 && org.chromium.base.Ctry.m37273case() != null) {
                String packageName = org.chromium.base.Ctry.m37273case().getPackageName();
                for (int i = 0; i < numM36978goto.intValue(); i++) {
                    String strM36981this = m36981this("debug.atrace.app_" + i);
                    if (strM36981this != null && strM36981this.startsWith(packageName)) {
                        String strSubstring = strM36981this.substring(packageName.length());
                        if (strSubstring.startsWith(on0.f4694final)) {
                            for (String str : strSubstring.substring(1).split(":")) {
                                if (str.equals("-atrace")) {
                                    cdo.f33128if = false;
                                } else {
                                    if (cdo.f33127do.length() > 0) {
                                        cdo.f33127do += ",";
                                    }
                                    cdo.f33127do += str;
                                }
                            }
                        }
                    }
                }
            }
            return cdo;
        }

        /* renamed from: goto, reason: not valid java name */
        private Integer m36978goto(String str) {
            String strM36981this = m36981this(str);
            if (strM36981this == null) {
                return null;
            }
            try {
                return Integer.decode(strM36981this);
            } catch (NumberFormatException unused) {
                return null;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: import, reason: not valid java name and merged with bridge method [inline-methods] */
        public void m36975const() {
            ThreadUtils.m36938for();
            Looper.myQueue().addIdleHandler(this);
            m36974class();
        }

        @Nullable
        /* renamed from: this, reason: not valid java name */
        private String m36981this(String str) {
            try {
                return (String) this.f33122goto.invoke(this.f33120else, str);
            } catch (Exception unused) {
                return null;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        @UiThread
        /* renamed from: throw, reason: not valid java name and merged with bridge method [inline-methods] */
        public boolean m36974class() {
            boolean z = this.f33116catch.get();
            boolean zM36973catch = m36973catch(this.f33117class);
            if (z == zM36973catch) {
                return false;
            }
            this.f33116catch.set(zM36973catch);
            if (!zM36973catch) {
                EarlyTraceEvent.m36807if();
                m36983try();
                this.f33118const = false;
                ThreadUtils.m36931case().setMessageLogging(null);
                return true;
            }
            Cdo cdoM36977else = m36977else();
            this.f33118const = false;
            if (this.f33125this.get()) {
                if (cdoM36977else.f33128if) {
                    m36972case(cdoM36977else.f33127do);
                } else {
                    m36984while(cdoM36977else.f33127do);
                }
            } else if (cdoM36977else.f33128if) {
                this.f33118const = true;
            } else {
                EarlyTraceEvent.m36798case();
            }
            if (!cdoM36977else.f33128if) {
                ThreadUtils.m36931case().setMessageLogging(Ctry.f33140do);
            }
            return true;
        }

        /* renamed from: try, reason: not valid java name */
        private void m36983try() {
            Creturn.m37185if().stopATrace();
        }

        /* renamed from: while, reason: not valid java name */
        private void m36984while(String str) {
            Creturn.m37185if().setupATraceStartupTrace(str);
        }

        /* renamed from: break, reason: not valid java name */
        public boolean m36985break() {
            return this.f33116catch.get();
        }

        @AnyThread
        /* renamed from: final, reason: not valid java name */
        public void m36986final() {
            this.f33125this.set(true);
            this.f33116catch.set(false);
            if (this.f33114break.get()) {
                ThreadUtils.m36939goto(new Runnable() { // from class: org.chromium.base.public
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f33213do.m36974class();
                    }
                });
            }
        }

        /* renamed from: for, reason: not valid java name */
        public void m36987for(String str, int i) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
            if (this.f33118const) {
                try {
                    this.f33126try.invoke(this.f33119do, Long.valueOf(this.f33117class), str, Integer.valueOf(i));
                } catch (Exception unused) {
                }
            }
        }

        /* renamed from: native, reason: not valid java name */
        public void m36988native(String str) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
            if (this.f33118const) {
                try {
                    this.f33121for.invoke(this.f33119do, Long.valueOf(this.f33117class), str);
                } catch (Exception unused) {
                }
            }
        }

        /* renamed from: new, reason: not valid java name */
        public void m36989new(String str, int i) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
            if (this.f33118const) {
                try {
                    this.f33115case.invoke(this.f33119do, Long.valueOf(this.f33117class), str, Integer.valueOf(i));
                } catch (Exception unused) {
                }
            }
        }

        /* renamed from: public, reason: not valid java name */
        public void m36990public() throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
            if (this.f33118const) {
                try {
                    this.f33124new.invoke(this.f33119do, Long.valueOf(this.f33117class));
                } catch (Exception unused) {
                }
            }
        }

        @Override // android.os.MessageQueue.IdleHandler
        public final boolean queueIdle() {
            m36974class();
            return true;
        }

        @AnyThread
        /* renamed from: super, reason: not valid java name */
        public void m36991super() {
            this.f33114break.set(true);
            if (ThreadUtils.m36946throw()) {
                m36975const();
            } else {
                ThreadUtils.m36939goto(new Runnable() { // from class: org.chromium.base.native
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f33210do.m36975const();
                    }
                });
            }
        }
    }

    /* renamed from: org.chromium.base.TraceEvent$new, reason: invalid class name */
    public static final class Cnew extends Cfor implements MessageQueue.IdleHandler {

        /* renamed from: catch, reason: not valid java name */
        private static final String f33129catch = "TraceEvent_LooperMonitor";

        /* renamed from: class, reason: not valid java name */
        private static final String f33130class = "Looper.queueIdle";

        /* renamed from: const, reason: not valid java name */
        private static final long f33131const = 16;

        /* renamed from: final, reason: not valid java name */
        private static final long f33132final = 16;

        /* renamed from: super, reason: not valid java name */
        private static final long f33133super = 48;

        /* renamed from: break, reason: not valid java name */
        private boolean f33134break;

        /* renamed from: case, reason: not valid java name */
        private long f33135case;

        /* renamed from: else, reason: not valid java name */
        private int f33136else;

        /* renamed from: goto, reason: not valid java name */
        private int f33137goto;

        /* renamed from: this, reason: not valid java name */
        private int f33138this;

        /* renamed from: try, reason: not valid java name */
        private long f33139try;

        private Cnew() {
            super();
        }

        /* renamed from: case, reason: not valid java name */
        private final void m36992case() {
            if (TraceEvent.f33104if && !this.f33134break) {
                this.f33139try = SystemClock.elapsedRealtime();
                Looper.myQueue().addIdleHandler(this);
                this.f33134break = true;
            } else {
                if (!this.f33134break || TraceEvent.f33104if) {
                    return;
                }
                Looper.myQueue().removeIdleHandler(this);
                this.f33134break = false;
            }
        }

        /* renamed from: else, reason: not valid java name */
        private static void m36993else(int i, String str) {
            TraceEvent.m36965this("TraceEvent.LooperMonitor:IdleStats", str);
            Log.println(i, f33129catch, str);
        }

        @Override // org.chromium.base.TraceEvent.Cfor
        /* renamed from: do */
        public final void mo36970do(String str) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
            if (this.f33138this == 0) {
                TraceEvent.m36966try(f33130class);
            }
            this.f33135case = SystemClock.elapsedRealtime();
            m36992case();
            super.mo36970do(str);
        }

        @Override // org.chromium.base.TraceEvent.Cfor
        /* renamed from: if */
        public final void mo36971if(String str) {
            long jElapsedRealtime = SystemClock.elapsedRealtime() - this.f33135case;
            if (jElapsedRealtime > 16) {
                m36993else(5, "observed a task that took " + jElapsedRealtime + "ms: " + str);
            }
            super.mo36971if(str);
            m36992case();
            this.f33136else++;
            this.f33138this++;
        }

        @Override // android.os.MessageQueue.IdleHandler
        public final boolean queueIdle() throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            if (this.f33139try == 0) {
                this.f33139try = jElapsedRealtime;
            }
            long j = jElapsedRealtime - this.f33139try;
            this.f33137goto++;
            TraceEvent.m36960for(f33130class, this.f33138this + " tasks since last idle.");
            if (j > f33133super) {
                m36993else(3, this.f33136else + " tasks and " + this.f33137goto + " idles processed so far, " + this.f33138this + " tasks bursted and " + j + "ms elapsed since last idle");
            }
            this.f33139try = jElapsedRealtime;
            this.f33138this = 0;
            return true;
        }
    }

    /* renamed from: org.chromium.base.TraceEvent$try, reason: invalid class name */
    public static final class Ctry {

        /* renamed from: do, reason: not valid java name */
        private static final Cfor f33140do;

        static {
            f33140do = CommandLine.m36766else().mo36779class(o7.f4435abstract) ? new Cnew() : new Cfor();
        }

        private Ctry() {
        }
    }

    private TraceEvent(String str, String str2) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        this.f33107do = str;
        m36960for(str, str2);
    }

    /* renamed from: break, reason: not valid java name */
    public static void m36952break(long j, boolean z) {
        if (z) {
            EarlyTraceEvent.m36800class();
        }
        if (j != 0) {
            f33106try = new Cif(j);
        }
        if (EarlyTraceEvent.m36803else()) {
            Cif cif = f33106try;
            if (cif == null || !cif.m36985break()) {
                ThreadUtils.m36931case().setMessageLogging(Ctry.f33140do);
            }
        }
    }

    /* renamed from: case, reason: not valid java name */
    public static void m36953case(String str, String str2) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        EarlyTraceEvent.m36806goto(str, false);
        if (f33104if) {
            Creturn.m37185if().end(str, str2);
            return;
        }
        Cif cif = f33106try;
        if (cif != null) {
            cif.m36990public();
        }
    }

    /* renamed from: catch, reason: not valid java name */
    public static void m36954catch() {
        Creturn.m37185if().registerEnabledObserver();
        Cif cif = f33106try;
        if (cif != null) {
            cif.m36986final();
        }
    }

    /* renamed from: class, reason: not valid java name */
    public static void m36955class() {
        Cif cif = f33106try;
        if (cif != null) {
            cif.m36991super();
        }
    }

    /* renamed from: const, reason: not valid java name */
    public static TraceEvent m36956const(String str) {
        return m36959final(str, null);
    }

    /* renamed from: else, reason: not valid java name */
    public static void m36958else(String str, long j) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        EarlyTraceEvent.m36810this(str, j);
        if (f33104if) {
            Creturn.m37185if().finishAsync(str, j);
            return;
        }
        Cif cif = f33106try;
        if (cif != null) {
            cif.m36989new(str, (int) j);
        }
    }

    /* renamed from: final, reason: not valid java name */
    public static TraceEvent m36959final(String str, String str2) {
        if (EarlyTraceEvent.m36803else() || m36963new()) {
            return new TraceEvent(str, str2);
        }
        return null;
    }

    /* renamed from: for, reason: not valid java name */
    public static void m36960for(String str, String str2) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        EarlyTraceEvent.m36802do(str, false);
        if (f33104if) {
            Creturn.m37185if().begin(str, str2);
            return;
        }
        Cif cif = f33106try;
        if (cif != null) {
            cif.m36988native(str);
        }
    }

    /* renamed from: goto, reason: not valid java name */
    public static void m36961goto(String str) {
        if (f33104if) {
            Creturn.m37185if().instant(str, null);
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static void m36962if(String str) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        m36960for(str, null);
    }

    /* renamed from: new, reason: not valid java name */
    public static boolean m36963new() {
        return f33104if;
    }

    @CalledByNative
    public static void setEnabled(boolean z) {
        if (z) {
            EarlyTraceEvent.m36807if();
        }
        if (f33104if != z) {
            f33104if = z;
            Cif cif = f33106try;
            if (cif == null || !cif.m36985break()) {
                ThreadUtils.m36931case().setMessageLogging(z ? Ctry.f33140do : null);
            }
        }
    }

    /* renamed from: super, reason: not valid java name */
    public static void m36964super(String str, long j) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        EarlyTraceEvent.m36809super(str, j);
        if (f33104if) {
            Creturn.m37185if().startAsync(str, j);
            return;
        }
        Cif cif = f33106try;
        if (cif != null) {
            cif.m36987for(str, (int) j);
        }
    }

    /* renamed from: this, reason: not valid java name */
    public static void m36965this(String str, String str2) {
        if (f33104if) {
            Creturn.m37185if().instant(str, str2);
        }
    }

    /* renamed from: try, reason: not valid java name */
    public static void m36966try(String str) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        m36953case(str, null);
    }

    @Override // java.lang.AutoCloseable
    public void close() throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        m36966try(this.f33107do);
    }
}
