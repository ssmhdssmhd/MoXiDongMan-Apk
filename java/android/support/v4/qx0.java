package android.support.v4;

import android.content.Context;
import android.graphics.Color;
import android.util.TypedValue;
import android.view.View;
import androidx.annotation.AttrRes;
import androidx.annotation.ColorInt;
import androidx.annotation.FloatRange;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.core.graphics.ColorUtils;
import com.google.common.collect.LinkedHashMultimap;

/* loaded from: classes.dex */
public class qx0 {

    /* renamed from: do, reason: not valid java name */
    public static final float f5527do = 1.0f;

    /* renamed from: for, reason: not valid java name */
    public static final float f5528for = 0.38f;

    /* renamed from: if, reason: not valid java name */
    public static final float f5529if = 0.54f;

    /* renamed from: new, reason: not valid java name */
    public static final float f5530new = 0.32f;

    /* renamed from: try, reason: not valid java name */
    public static final float f5531try = 0.12f;

    private qx0() {
    }

    @ColorInt
    /* renamed from: break, reason: not valid java name */
    public static int m6672break(@NonNull View view, @AttrRes int i, @AttrRes int i2, @FloatRange(from = 0.0d, to = LinkedHashMultimap.VALUE_SET_LOAD_FACTOR) float f) {
        return m6677goto(m6679new(view, i), m6679new(view, i2), f);
    }

    /* renamed from: case, reason: not valid java name */
    public static boolean m6673case(@ColorInt int i) {
        return i != 0 && ColorUtils.calculateLuminance(i) > 0.5d;
    }

    @ColorInt
    /* renamed from: do, reason: not valid java name */
    public static int m6674do(@ColorInt int i, @IntRange(from = 0, to = 255) int i2) {
        return ColorUtils.setAlphaComponent(i, (Color.alpha(i) * i2) / 255);
    }

    @ColorInt
    /* renamed from: else, reason: not valid java name */
    public static int m6675else(@ColorInt int i, @ColorInt int i2) {
        return ColorUtils.compositeColors(i2, i);
    }

    @ColorInt
    /* renamed from: for, reason: not valid java name */
    public static int m6676for(Context context, @AttrRes int i, String str) {
        return px0.m6244else(context, i, str);
    }

    @ColorInt
    /* renamed from: goto, reason: not valid java name */
    public static int m6677goto(@ColorInt int i, @ColorInt int i2, @FloatRange(from = 0.0d, to = LinkedHashMultimap.VALUE_SET_LOAD_FACTOR) float f) {
        return m6675else(i, ColorUtils.setAlphaComponent(i2, Math.round(Color.alpha(i2) * f)));
    }

    @ColorInt
    /* renamed from: if, reason: not valid java name */
    public static int m6678if(@NonNull Context context, @AttrRes int i, @ColorInt int i2) {
        TypedValue typedValueM6243do = px0.m6243do(context, i);
        return typedValueM6243do != null ? typedValueM6243do.data : i2;
    }

    @ColorInt
    /* renamed from: new, reason: not valid java name */
    public static int m6679new(@NonNull View view, @AttrRes int i) {
        return px0.m6246goto(view, i);
    }

    @ColorInt
    /* renamed from: this, reason: not valid java name */
    public static int m6680this(@NonNull View view, @AttrRes int i, @AttrRes int i2) {
        return m6672break(view, i, i2, 1.0f);
    }

    @ColorInt
    /* renamed from: try, reason: not valid java name */
    public static int m6681try(@NonNull View view, @AttrRes int i, @ColorInt int i2) {
        return m6678if(view.getContext(), i, i2);
    }
}
