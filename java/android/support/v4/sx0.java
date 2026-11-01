package android.support.v4;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.TypedValue;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleableRes;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.widget.TintTypedArray;
import com.google.android.material.resources.Cdo;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public class sx0 {

    /* renamed from: do, reason: not valid java name */
    private static final float f6328do = 1.3f;

    /* renamed from: if, reason: not valid java name */
    private static final float f6329if = 2.0f;

    private sx0() {
    }

    @Nullable
    /* renamed from: case, reason: not valid java name */
    public static Cdo m7648case(@NonNull Context context, @NonNull TypedArray typedArray, @StyleableRes int i) {
        int resourceId;
        if (!typedArray.hasValue(i) || (resourceId = typedArray.getResourceId(i, 0)) == 0) {
            return null;
        }
        return new Cdo(context, resourceId);
    }

    @Nullable
    /* renamed from: do, reason: not valid java name */
    public static ColorStateList m7649do(@NonNull Context context, @NonNull TypedArray typedArray, @StyleableRes int i) {
        int color;
        int resourceId;
        ColorStateList colorStateList;
        return (!typedArray.hasValue(i) || (resourceId = typedArray.getResourceId(i, 0)) == 0 || (colorStateList = AppCompatResources.getColorStateList(context, resourceId)) == null) ? (Build.VERSION.SDK_INT > 15 || (color = typedArray.getColor(i, -1)) == -1) ? typedArray.getColorStateList(i) : ColorStateList.valueOf(color) : colorStateList;
    }

    /* renamed from: else, reason: not valid java name */
    public static boolean m7650else(@NonNull Context context) {
        return context.getResources().getConfiguration().fontScale >= f6328do;
    }

    /* renamed from: for, reason: not valid java name */
    public static int m7651for(@NonNull Context context, @NonNull TypedArray typedArray, @StyleableRes int i, int i2) {
        TypedValue typedValue = new TypedValue();
        if (!typedArray.getValue(i, typedValue) || typedValue.type != 2) {
            return typedArray.getDimensionPixelSize(i, i2);
        }
        TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(new int[]{typedValue.data});
        int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(0, i2);
        typedArrayObtainStyledAttributes.recycle();
        return dimensionPixelSize;
    }

    /* renamed from: goto, reason: not valid java name */
    public static boolean m7652goto(@NonNull Context context) {
        return context.getResources().getConfiguration().fontScale >= f6329if;
    }

    @Nullable
    /* renamed from: if, reason: not valid java name */
    public static ColorStateList m7653if(@NonNull Context context, @NonNull TintTypedArray tintTypedArray, @StyleableRes int i) {
        int color;
        int resourceId;
        ColorStateList colorStateList;
        return (!tintTypedArray.hasValue(i) || (resourceId = tintTypedArray.getResourceId(i, 0)) == 0 || (colorStateList = AppCompatResources.getColorStateList(context, resourceId)) == null) ? (Build.VERSION.SDK_INT > 15 || (color = tintTypedArray.getColor(i, -1)) == -1) ? tintTypedArray.getColorStateList(i) : ColorStateList.valueOf(color) : colorStateList;
    }

    @Nullable
    /* renamed from: new, reason: not valid java name */
    public static Drawable m7654new(@NonNull Context context, @NonNull TypedArray typedArray, @StyleableRes int i) {
        int resourceId;
        Drawable drawable;
        return (!typedArray.hasValue(i) || (resourceId = typedArray.getResourceId(i, 0)) == 0 || (drawable = AppCompatResources.getDrawable(context, resourceId)) == null) ? typedArray.getDrawable(i) : drawable;
    }

    @StyleableRes
    /* renamed from: try, reason: not valid java name */
    public static int m7655try(@NonNull TypedArray typedArray, @StyleableRes int i, @StyleableRes int i2) {
        return typedArray.hasValue(i) ? i : i2;
    }
}
