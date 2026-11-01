package org.chromium.base.compat;

import android.animation.ValueAnimator;
import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Notification;
import android.content.ClipDescription;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.net.ConnectivityManager;
import android.net.NetworkRequest;
import android.os.Handler;
import android.support.v4.b22;
import android.support.v4.ne2;
import android.view.Display;
import android.view.View;
import android.view.Window;
import android.view.autofill.AutofillManager;

@ne2
@TargetApi(26)
/* renamed from: org.chromium.base.compat.if, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cif {
    private Cif() {
    }

    /* renamed from: break, reason: not valid java name */
    public static void m37041break(View view) {
        AutofillManager autofillManager = (AutofillManager) view.getContext().getSystemService(AutofillManager.class);
        if (autofillManager != null) {
            autofillManager.notifyValueChanged(view);
        }
    }

    /* renamed from: case, reason: not valid java name */
    public static long m37042case(ClipDescription clipDescription) {
        return clipDescription.getTimestamp();
    }

    /* renamed from: catch, reason: not valid java name */
    public static void m37043catch(ConnectivityManager connectivityManager, ConnectivityManager.NetworkCallback networkCallback, Handler handler) {
        connectivityManager.registerDefaultNetworkCallback(networkCallback, handler);
    }

    /* renamed from: class, reason: not valid java name */
    public static void m37044class(ConnectivityManager connectivityManager, NetworkRequest networkRequest, ConnectivityManager.NetworkCallback networkCallback, Handler handler) {
        connectivityManager.registerNetworkCallback(networkRequest, networkCallback, handler);
    }

    /* renamed from: const, reason: not valid java name */
    public static Notification.Builder m37045const(Notification.Builder builder, String str) {
        return builder.setChannelId(str);
    }

    /* renamed from: do, reason: not valid java name */
    public static boolean m37046do() {
        return ValueAnimator.areAnimatorsEnabled();
    }

    /* renamed from: else, reason: not valid java name */
    public static boolean m37047else(PackageManager packageManager) {
        return packageManager.isInstantApp();
    }

    /* renamed from: final, reason: not valid java name */
    public static void m37048final(Window window, int i) {
        window.setColorMode(i);
    }

    /* renamed from: for, reason: not valid java name */
    public static Context m37049for(Context context, String str) throws PackageManager.NameNotFoundException {
        b22 b22VarM428for = b22.m428for();
        try {
            Context contextCreateContextForSplit = context.createContextForSplit(str);
            if (b22VarM428for != null) {
                b22VarM428for.close();
            }
            return contextCreateContextForSplit;
        } catch (Throwable th) {
            if (b22VarM428for != null) {
                try {
                    b22VarM428for.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    /* renamed from: goto, reason: not valid java name */
    public static boolean m37050goto(Configuration configuration) {
        return configuration.isScreenWideColorGamut();
    }

    /* renamed from: if, reason: not valid java name */
    public static void m37051if(Activity activity) {
        AutofillManager autofillManager = (AutofillManager) activity.getSystemService(AutofillManager.class);
        if (autofillManager != null) {
            autofillManager.cancel();
        }
    }

    /* renamed from: new, reason: not valid java name */
    public static String m37052new(Notification notification) {
        return notification.getChannelId();
    }

    /* renamed from: super, reason: not valid java name */
    public static void m37053super(View view, boolean z) {
        view.setDefaultFocusHighlightEnabled(z);
    }

    /* renamed from: this, reason: not valid java name */
    public static boolean m37054this(Display display) {
        return display.isWideColorGamut();
    }

    /* renamed from: throw, reason: not valid java name */
    public static Notification.Builder m37055throw(Notification.Builder builder, long j) {
        return builder.setTimeoutAfter(j);
    }

    /* renamed from: try, reason: not valid java name */
    public static String[] m37056try(ApplicationInfo applicationInfo) {
        return applicationInfo.splitNames;
    }
}
