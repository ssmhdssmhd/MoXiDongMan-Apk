package org.chromium.base;

import android.annotation.TargetApi;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.os.Build;
import android.os.Process;
import android.support.v4.e2;
import android.support.v4.g2;
import android.support.v4.lo0;
import android.telephony.SignalStrength;
import android.telephony.TelephonyManager;
import org.chromium.base.annotations.CalledByNative;

@lo0("base::android")
/* loaded from: classes3.dex */
public class RadioUtils {

    /* renamed from: do, reason: not valid java name */
    private static Boolean f33088do;

    /* renamed from: for, reason: not valid java name */
    public static final /* synthetic */ boolean f33089for = false;

    /* renamed from: if, reason: not valid java name */
    private static Boolean f33090if;

    private RadioUtils() {
    }

    /* renamed from: do, reason: not valid java name */
    private static boolean m36928do() {
        if (f33088do == null) {
            f33088do = Boolean.valueOf(Cdo.m37069do(Ctry.m37273case(), "android.permission.ACCESS_NETWORK_STATE", Process.myPid(), Process.myUid()) == 0);
        }
        return f33088do.booleanValue();
    }

    @TargetApi(28)
    @CalledByNative
    private static int getCellDataActivity() {
        try {
            return ((TelephonyManager) Ctry.m37273case().getSystemService("phone")).getDataActivity();
        } catch (SecurityException unused) {
            return -1;
        }
    }

    @TargetApi(28)
    @CalledByNative
    private static int getCellSignalLevel() {
        try {
            SignalStrength signalStrengthM2509new = g2.m2509new((TelephonyManager) Ctry.m37273case().getSystemService("phone"));
            if (signalStrengthM2509new != null) {
                return signalStrengthM2509new.getLevel();
            }
            return -1;
        } catch (SecurityException unused) {
            return -1;
        }
    }

    /* renamed from: if, reason: not valid java name */
    private static boolean m36929if() {
        if (f33090if == null) {
            f33090if = Boolean.valueOf(Cdo.m37069do(Ctry.m37273case(), "android.permission.ACCESS_WIFI_STATE", Process.myPid(), Process.myUid()) == 0);
        }
        return f33090if.booleanValue();
    }

    @CalledByNative
    private static boolean isSupported() {
        return Build.VERSION.SDK_INT >= 28 && m36928do() && m36929if();
    }

    @TargetApi(28)
    @CalledByNative
    private static boolean isWifiConnected() {
        NetworkCapabilities networkCapabilities;
        ConnectivityManager connectivityManager = (ConnectivityManager) Ctry.m37273case().getSystemService("connectivity");
        Network networkM1631try = e2.m1631try(connectivityManager);
        if (networkM1631try == null || (networkCapabilities = connectivityManager.getNetworkCapabilities(networkM1631try)) == null) {
            return false;
        }
        return networkCapabilities.hasTransport(1);
    }
}
