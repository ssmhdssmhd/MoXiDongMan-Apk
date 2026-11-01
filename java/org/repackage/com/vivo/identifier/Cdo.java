package org.repackage.com.vivo.identifier;

import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.support.v4.nl0;
import android.support.v4.nw;

/* renamed from: org.repackage.com.vivo.identifier.do, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cdo {

    /* renamed from: break, reason: not valid java name */
    private static final int f34109break = 1;

    /* renamed from: case, reason: not valid java name */
    private static final String f34110case = "OAID";

    /* renamed from: catch, reason: not valid java name */
    private static final int f34111catch = 2;

    /* renamed from: class, reason: not valid java name */
    private static final int f34112class = 4;

    /* renamed from: const, reason: not valid java name */
    private static final int f34113const = 11;

    /* renamed from: default, reason: not valid java name */
    private static String f34114default = null;

    /* renamed from: do, reason: not valid java name */
    private static final String f34115do = "VMS_IDLG_SDK_Client";

    /* renamed from: else, reason: not valid java name */
    private static final String f34116else = "VAID";

    /* renamed from: extends, reason: not valid java name */
    private static String f34117extends = null;

    /* renamed from: final, reason: not valid java name */
    private static final int f34118final = 2000;

    /* renamed from: finally, reason: not valid java name */
    private static String f34119finally = null;

    /* renamed from: for, reason: not valid java name */
    private static final String f34120for = "persist.sys.identifierid.supported";

    /* renamed from: goto, reason: not valid java name */
    private static final String f34121goto = "AAID";

    /* renamed from: if, reason: not valid java name */
    private static final String f34122if = "content://com.vivo.vms.IdProvider/IdentifierId";

    /* renamed from: import, reason: not valid java name */
    private static nl0 f34123import = null;

    /* renamed from: native, reason: not valid java name */
    private static nl0 f34124native = null;

    /* renamed from: new, reason: not valid java name */
    private static final String f34125new = "appid";

    /* renamed from: package, reason: not valid java name */
    private static volatile Cdo f34126package = null;

    /* renamed from: private, reason: not valid java name */
    private static volatile nw f34127private = null;

    /* renamed from: public, reason: not valid java name */
    private static Object f34128public = new Object();

    /* renamed from: return, reason: not valid java name */
    private static HandlerThread f34129return = null;

    /* renamed from: static, reason: not valid java name */
    private static Handler f34130static = null;

    /* renamed from: super, reason: not valid java name */
    private static Context f34131super = null;

    /* renamed from: switch, reason: not valid java name */
    private static String f34132switch = null;

    /* renamed from: this, reason: not valid java name */
    private static final int f34133this = 0;

    /* renamed from: throw, reason: not valid java name */
    private static boolean f34134throw = false;

    /* renamed from: throws, reason: not valid java name */
    private static String f34135throws = null;

    /* renamed from: try, reason: not valid java name */
    private static final String f34136try = "type";

    /* renamed from: while, reason: not valid java name */
    private static nl0 f34137while;

    /* renamed from: org.repackage.com.vivo.identifier.do$do, reason: invalid class name and collision with other inner class name */
    public static class HandlerC0491do extends Handler {
        public HandlerC0491do(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (message.what == 11) {
                String unused = Cdo.f34132switch = Cdo.f34127private.m5393do(message.getData().getInt("type"), message.getData().getString(Cdo.f34125new));
                synchronized (Cdo.f34128public) {
                    Cdo.f34128public.notify();
                }
            }
        }
    }

    private Cdo() {
    }

    /* renamed from: class, reason: not valid java name */
    public static void m38059class() {
        f34134throw = "1".equals(m38063if(f34120for, "0"));
    }

    /* renamed from: for, reason: not valid java name */
    public static Cdo m38062for(Context context) {
        if (f34126package == null) {
            synchronized (Cdo.class) {
                f34131super = context.getApplicationContext();
                f34126package = new Cdo();
            }
        }
        if (f34127private == null) {
            synchronized (Cdo.class) {
                f34131super = context.getApplicationContext();
                m38064super();
                f34127private = new nw(f34131super);
                m38059class();
            }
        }
        return f34126package;
    }

    /* renamed from: if, reason: not valid java name */
    public static String m38063if(String str, String str2) {
        try {
            try {
                Class<?> cls = Class.forName("android.os.SystemProperties");
                return (String) cls.getMethod("get", String.class, String.class).invoke(cls, str, "unknown");
            } catch (Exception e) {
                e.printStackTrace();
                return str2;
            }
        } catch (Throwable unused) {
            return str2;
        }
    }

    /* renamed from: super, reason: not valid java name */
    private static void m38064super() {
        HandlerThread handlerThread = new HandlerThread("SqlWorkThread");
        f34129return = handlerThread;
        handlerThread.start();
        f34130static = new HandlerC0491do(f34129return.getLooper());
    }

    /* renamed from: this, reason: not valid java name */
    private void m38065this(int i, String str) {
        Message messageObtainMessage = f34130static.obtainMessage();
        messageObtainMessage.what = 11;
        Bundle bundle = new Bundle();
        bundle.putInt("type", i);
        if (i == 1 || i == 2) {
            bundle.putString(f34125new, str);
        }
        messageObtainMessage.setData(bundle);
        f34130static.sendMessage(messageObtainMessage);
    }

    /* renamed from: try, reason: not valid java name */
    private static void m38066try(Context context, int i, String str) {
        if (i == 0) {
            f34137while = new nl0(f34126package, 0, null);
            context.getContentResolver().registerContentObserver(Uri.parse("content://com.vivo.vms.IdProvider/IdentifierId/OAID"), true, f34137while);
            return;
        }
        if (i == 1) {
            f34123import = new nl0(f34126package, 1, str);
            context.getContentResolver().registerContentObserver(Uri.parse("content://com.vivo.vms.IdProvider/IdentifierId/VAID_" + str), false, f34123import);
            return;
        }
        if (i != 2) {
            return;
        }
        f34124native = new nl0(f34126package, 2, str);
        context.getContentResolver().registerContentObserver(Uri.parse("content://com.vivo.vms.IdProvider/IdentifierId/AAID_" + str), false, f34124native);
    }

    /* renamed from: break, reason: not valid java name */
    public String m38067break() {
        if (!m38068case()) {
            return null;
        }
        m38072new(4, null);
        return f34119finally;
    }

    /* renamed from: case, reason: not valid java name */
    public boolean m38068case() {
        return f34134throw;
    }

    /* renamed from: do, reason: not valid java name */
    public String m38069do(String str) {
        if (!m38068case()) {
            return null;
        }
        String str2 = f34114default;
        if (str2 != null) {
            return str2;
        }
        m38072new(1, str);
        if (f34123import == null && f34114default != null) {
            m38066try(f34131super, 1, str);
        }
        return f34114default;
    }

    /* renamed from: else, reason: not valid java name */
    public String m38070else() {
        if (!m38068case()) {
            return null;
        }
        String str = f34135throws;
        if (str != null) {
            return str;
        }
        m38072new(0, null);
        if (f34137while == null) {
            m38066try(f34131super, 0, null);
        }
        return f34135throws;
    }

    /* renamed from: goto, reason: not valid java name */
    public String m38071goto(String str) {
        if (!m38068case()) {
            return null;
        }
        String str2 = f34117extends;
        if (str2 != null) {
            return str2;
        }
        m38072new(2, str);
        if (f34124native == null && f34117extends != null) {
            m38066try(f34131super, 2, str);
        }
        return f34117extends;
    }

    /* renamed from: new, reason: not valid java name */
    public void m38072new(int i, String str) {
        synchronized (f34128public) {
            m38065this(i, str);
            long jUptimeMillis = SystemClock.uptimeMillis();
            try {
                f34128public.wait(2000L);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
            if (SystemClock.uptimeMillis() - jUptimeMillis < 2000) {
                if (i == 0) {
                    f34135throws = f34132switch;
                    f34132switch = null;
                } else if (i != 1) {
                    if (i == 2) {
                        String str2 = f34132switch;
                        if (str2 != null) {
                            f34117extends = str2;
                            f34132switch = null;
                        }
                    } else if (i != 4) {
                    }
                    f34119finally = f34132switch;
                    f34132switch = null;
                } else {
                    String str3 = f34132switch;
                    if (str3 != null) {
                        f34114default = str3;
                        f34132switch = null;
                    }
                }
            }
        }
    }
}
