package android.support.v4;

import androidx.annotation.NonNull;
import com.google.android.material.slider.LabelFormatter;
import java.util.Locale;

/* loaded from: classes.dex */
public final class d8 implements LabelFormatter {

    /* renamed from: do, reason: not valid java name */
    private static final long f948do = 1000000000000L;

    /* renamed from: for, reason: not valid java name */
    private static final int f949for = 1000000;

    /* renamed from: if, reason: not valid java name */
    private static final int f950if = 1000000000;

    /* renamed from: new, reason: not valid java name */
    private static final int f951new = 1000;

    @Override // com.google.android.material.slider.LabelFormatter
    @NonNull
    public String getFormattedValue(float f) {
        return f >= 1.0E12f ? String.format(Locale.US, "%.1fT", Float.valueOf(f / 1.0E12f)) : f >= 1.0E9f ? String.format(Locale.US, "%.1fB", Float.valueOf(f / 1.0E9f)) : f >= 1000000.0f ? String.format(Locale.US, "%.1fM", Float.valueOf(f / 1000000.0f)) : f >= 1000.0f ? String.format(Locale.US, "%.1fK", Float.valueOf(f / 1000.0f)) : String.format(Locale.US, "%.0f", Float.valueOf(f));
    }
}
