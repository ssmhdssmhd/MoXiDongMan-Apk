package android.support.v4;

import android.content.ContentResolver;
import android.os.Build;
import android.provider.Settings;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public class x1 {

    /* renamed from: do, reason: not valid java name */
    private static float f7743do = 1.0f;

    @VisibleForTesting
    /* renamed from: if, reason: not valid java name */
    public static void m9322if(float f) {
        f7743do = f;
    }

    /* renamed from: do, reason: not valid java name */
    public float m9323do(@NonNull ContentResolver contentResolver) {
        int i = Build.VERSION.SDK_INT;
        return i >= 17 ? Settings.Global.getFloat(contentResolver, "animator_duration_scale", 1.0f) : i == 16 ? Settings.System.getFloat(contentResolver, "animator_duration_scale", 1.0f) : f7743do;
    }
}
