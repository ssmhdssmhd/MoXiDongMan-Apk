package android.support.v4;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;

/* loaded from: classes.dex */
public class h31 {
    /* renamed from: do, reason: not valid java name */
    private static NetworkInfo m2941do(Context context) {
        return ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
    }

    /* renamed from: if, reason: not valid java name */
    public static boolean m2942if(Context context) {
        NetworkInfo networkInfoM2941do = m2941do(context);
        return networkInfoM2941do != null && networkInfoM2941do.isAvailable() && networkInfoM2941do.getType() == 1;
    }
}
