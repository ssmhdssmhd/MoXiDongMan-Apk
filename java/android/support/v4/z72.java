package android.support.v4;

import android.content.Context;
import android.content.pm.PackageManager;

/* loaded from: classes2.dex */
public class z72 {
    /* renamed from: do, reason: not valid java name */
    public static String m10084do(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            return "";
        }
    }
}
