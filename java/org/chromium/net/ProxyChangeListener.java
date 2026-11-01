package org.chromium.net;

import android.annotation.TargetApi;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.ProxyInfo;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.support.v4.ed;
import android.support.v4.lo0;
import android.support.v4.r21;
import android.support.v4.rv0;
import android.text.TextUtils;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import org.chromium.base.Ctry;
import org.chromium.base.annotations.CalledByNative;
import org.chromium.base.annotations.UsedByReflection;

@UsedByReflection("WebView embedders call this to override proxy settings")
@lo0("net")
/* loaded from: classes3.dex */
public class ProxyChangeListener {

    /* renamed from: else, reason: not valid java name */
    private static final String f33391else = "ProxyChangeListener";

    /* renamed from: goto, reason: not valid java name */
    private static boolean f33392goto = true;

    /* renamed from: this, reason: not valid java name */
    public static final /* synthetic */ boolean f33393this = false;

    /* renamed from: case, reason: not valid java name */
    private Delegate f33394case;

    /* renamed from: do, reason: not valid java name */
    private final Looper f33395do;

    /* renamed from: for, reason: not valid java name */
    private long f33396for;

    /* renamed from: if, reason: not valid java name */
    private final Handler f33397if;

    /* renamed from: new, reason: not valid java name */
    private ProxyReceiver f33398new;

    /* renamed from: try, reason: not valid java name */
    private BroadcastReceiver f33399try;

    public interface Delegate {
        void proxySettingsChanged();
    }

    public interface Natives {
        @r21("ProxyConfigServiceAndroid::JNIDelegate")
        void proxySettingsChanged(long j, ProxyChangeListener proxyChangeListener);

        @r21("ProxyConfigServiceAndroid::JNIDelegate")
        void proxySettingsChangedTo(long j, ProxyChangeListener proxyChangeListener, String str, int i, String str2, String[] strArr);
    }

    @UsedByReflection("WebView embedders call this to override proxy settings")
    public class ProxyReceiver extends BroadcastReceiver {
        private ProxyReceiver() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: if, reason: not valid java name */
        public /* synthetic */ void m37411if(Intent intent) {
            ProxyChangeListener.this.m37394break(ProxyChangeListener.m37395case(intent));
        }

        @Override // android.content.BroadcastReceiver
        @UsedByReflection("WebView embedders call this to override proxy settings")
        public void onReceive(Context context, final Intent intent) {
            if (intent.getAction().equals("android.intent.action.PROXY_CHANGE")) {
                ProxyChangeListener.this.m37397class(new Runnable() { // from class: org.chromium.net.super
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f33730do.m37411if(intent);
                    }
                });
            }
        }
    }

    /* renamed from: org.chromium.net.ProxyChangeListener$if, reason: invalid class name */
    public static class Cif {

        /* renamed from: try, reason: not valid java name */
        public static final Cif f33401try = new Cif("", 0, "", new String[0]);

        /* renamed from: do, reason: not valid java name */
        public final String f33402do;

        /* renamed from: for, reason: not valid java name */
        public final String f33403for;

        /* renamed from: if, reason: not valid java name */
        public final int f33404if;

        /* renamed from: new, reason: not valid java name */
        public final String[] f33405new;

        public Cif(String str, int i, String str2, String[] strArr) {
            this.f33402do = str;
            this.f33404if = i;
            this.f33403for = str2;
            this.f33405new = strArr;
        }

        /* JADX INFO: Access modifiers changed from: private */
        @TargetApi(21)
        /* renamed from: if, reason: not valid java name */
        public static Cif m37413if(ProxyInfo proxyInfo) {
            if (proxyInfo == null) {
                return null;
            }
            Uri pacFileUrl = proxyInfo.getPacFileUrl();
            return new Cif(proxyInfo.getHost(), proxyInfo.getPort(), Uri.EMPTY.equals(pacFileUrl) ? null : pacFileUrl.toString(), proxyInfo.getExclusionList());
        }
    }

    private ProxyChangeListener() {
        Looper looperMyLooper = Looper.myLooper();
        this.f33395do = looperMyLooper;
        this.f33397if = new Handler(looperMyLooper);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: break, reason: not valid java name */
    public void m37394break(Cif cif) {
        m37407try();
        if (f33392goto) {
            Delegate delegate = this.f33394case;
            if (delegate != null) {
                delegate.proxySettingsChanged();
            }
            if (this.f33396for == 0) {
                return;
            }
            if (cif != null) {
                Cthrow.m37722if().proxySettingsChangedTo(this.f33396for, this, cif.f33402do, cif.f33404if, cif.f33403for, cif.f33405new);
            } else {
                Cthrow.m37722if().proxySettingsChanged(this.f33396for, this);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: case, reason: not valid java name */
    public static Cif m37395case(Intent intent) throws NoSuchMethodException, ClassNotFoundException, SecurityException {
        Bundle extras = intent.getExtras();
        if (extras == null) {
            return null;
        }
        int i = Build.VERSION.SDK_INT;
        if (i >= 21) {
            return Cif.m37413if((ProxyInfo) extras.get("android.intent.extra.PROXY_INFO"));
        }
        try {
            Object obj = extras.get("proxy");
            if (obj == null) {
                return null;
            }
            Class<?> cls = Class.forName("android.net.ProxyProperties");
            Method declaredMethod = cls.getDeclaredMethod("getHost", new Class[0]);
            Method declaredMethod2 = cls.getDeclaredMethod("getPort", new Class[0]);
            Method declaredMethod3 = cls.getDeclaredMethod("getExclusionList", new Class[0]);
            String str = (String) declaredMethod.invoke(obj, new Object[0]);
            int iIntValue = ((Integer) declaredMethod2.invoke(obj, new Object[0])).intValue();
            String[] strArrSplit = ((String) declaredMethod3.invoke(obj, new Object[0])).split(",");
            if (i >= 19) {
                String str2 = (String) cls.getDeclaredMethod("getPacFileUrl", new Class[0]).invoke(obj, new Object[0]);
                if (!TextUtils.isEmpty(str2)) {
                    return new Cif(str, iIntValue, str2, strArrSplit);
                }
            }
            return new Cif(str, iIntValue, null, strArrSplit);
        } catch (ClassNotFoundException | IllegalAccessException | NoSuchMethodException | NullPointerException | InvocationTargetException e) {
            rv0.m7156if(f33391else, "Using no proxy configuration due to exception:" + e, new Object[0]);
            return null;
        }
    }

    /* renamed from: catch, reason: not valid java name */
    private void m37396catch() {
        m37407try();
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.PROXY_CHANGE");
        this.f33398new = new ProxyReceiver();
        if (Build.VERSION.SDK_INT < 23) {
            Ctry.m37273case().registerReceiver(this.f33398new, intentFilter);
            return;
        }
        Ctry.m37273case().registerReceiver(this.f33398new, new IntentFilter());
        this.f33399try = new Cfinal(this);
        Ctry.m37273case().registerReceiver(this.f33399try, intentFilter);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: class, reason: not valid java name */
    public void m37397class(Runnable runnable) {
        if (m37406this()) {
            runnable.run();
        } else {
            this.f33397if.post(runnable);
        }
    }

    @CalledByNative
    public static ProxyChangeListener create() {
        return new ProxyChangeListener();
    }

    @TargetApi(23)
    /* renamed from: else, reason: not valid java name */
    private Cif m37399else(Intent intent) {
        ProxyInfo defaultProxy = ((ConnectivityManager) Ctry.m37273case().getSystemService("connectivity")).getDefaultProxy();
        return defaultProxy == null ? Cif.f33401try : (Build.VERSION.SDK_INT >= 29 && defaultProxy.getHost().equals("localhost") && defaultProxy.getPort() == -1) ? m37395case(intent) : Cif.m37413if(defaultProxy);
    }

    /* renamed from: final, reason: not valid java name */
    public static void m37400final(boolean z) {
        f33392goto = z;
    }

    @CalledByNative
    public static String getProperty(String str) {
        return System.getProperty(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: goto, reason: not valid java name */
    public /* synthetic */ void m37402goto(Intent intent) {
        m37394break(m37399else(intent));
    }

    /* renamed from: super, reason: not valid java name */
    private void m37405super() {
        m37407try();
        Ctry.m37273case().unregisterReceiver(this.f33398new);
        if (this.f33399try != null) {
            Ctry.m37273case().unregisterReceiver(this.f33399try);
        }
        this.f33398new = null;
        this.f33399try = null;
    }

    /* renamed from: this, reason: not valid java name */
    private boolean m37406this() {
        return this.f33395do == Looper.myLooper();
    }

    /* renamed from: try, reason: not valid java name */
    private void m37407try() {
        if (ed.f1398if && !m37406this()) {
            throw new IllegalStateException("Must be called on ProxyChangeListener thread.");
        }
    }

    /* renamed from: const, reason: not valid java name */
    public void m37408const(Delegate delegate) {
        this.f33394case = delegate;
    }

    @CalledByNative
    public void start(long j) {
        m37407try();
        this.f33396for = j;
        m37396catch();
    }

    @CalledByNative
    public void stop() {
        m37407try();
        this.f33396for = 0L;
        m37405super();
    }

    /* renamed from: throw, reason: not valid java name */
    public void m37409throw(final Intent intent) {
        m37397class(new Runnable() { // from class: android.support.v4.rg1
            @Override // java.lang.Runnable
            public final void run() {
                this.f5788do.m37402goto(intent);
            }
        });
    }
}
