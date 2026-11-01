package android.support.v4;

import android.app.Activity;
import androidx.core.content.ContextCompat;

/* loaded from: classes2.dex */
public class ed1 {
    /* renamed from: do, reason: not valid java name */
    public static boolean m1798do(Activity activity) {
        return ContextCompat.checkSelfPermission(activity, "android.permission.WRITE_EXTERNAL_STORAGE") == 0;
    }
}
