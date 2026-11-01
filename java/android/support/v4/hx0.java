package android.support.v4;

import android.os.Build;
import androidx.annotation.RestrictTo;
import java.util.Locale;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public class hx0 {

    /* renamed from: do, reason: not valid java name */
    private static final String f2549do = "lge";

    /* renamed from: for, reason: not valid java name */
    private static final String f2550for = "meizu";

    /* renamed from: if, reason: not valid java name */
    private static final String f2551if = "samsung";

    private hx0() {
    }

    /* renamed from: do, reason: not valid java name */
    public static boolean m3149do() {
        return m3151if() || m3152new();
    }

    /* renamed from: for, reason: not valid java name */
    public static boolean m3150for() {
        return Build.MANUFACTURER.toLowerCase(Locale.ENGLISH).equals(f2550for);
    }

    /* renamed from: if, reason: not valid java name */
    public static boolean m3151if() {
        return Build.MANUFACTURER.toLowerCase(Locale.ENGLISH).equals(f2549do);
    }

    /* renamed from: new, reason: not valid java name */
    public static boolean m3152new() {
        return Build.MANUFACTURER.toLowerCase(Locale.ENGLISH).equals(f2551if);
    }
}
