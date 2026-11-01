package android.support.v4;

import android.annotation.TargetApi;
import android.content.ClipboardManager;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.location.LocationManager;
import android.net.LinkProperties;
import android.telephony.SignalStrength;
import android.telephony.TelephonyManager;

@TargetApi(28)
@pe2
/* loaded from: classes3.dex */
public final class g2 {
    private g2() {
    }

    /* renamed from: case, reason: not valid java name */
    public static boolean m2504case(LocationManager locationManager) {
        return locationManager.isLocationEnabled();
    }

    /* renamed from: do, reason: not valid java name */
    public static void m2505do(ClipboardManager clipboardManager) {
        clipboardManager.clearPrimaryClip();
    }

    /* renamed from: else, reason: not valid java name */
    public static boolean m2506else(LinkProperties linkProperties) {
        return linkProperties.isPrivateDnsActive();
    }

    /* renamed from: for, reason: not valid java name */
    public static String m2507for(LinkProperties linkProperties) {
        return linkProperties.getPrivateDnsServerName();
    }

    /* renamed from: if, reason: not valid java name */
    public static long m2508if(PackageInfo packageInfo) {
        return packageInfo.getLongVersionCode();
    }

    /* renamed from: new, reason: not valid java name */
    public static SignalStrength m2509new(TelephonyManager telephonyManager) {
        return telephonyManager.getSignalStrength();
    }

    /* renamed from: try, reason: not valid java name */
    public static boolean m2510try(PackageManager packageManager, String str, byte[] bArr, int i) {
        return packageManager.hasSigningCertificate(str, bArr, i);
    }
}
