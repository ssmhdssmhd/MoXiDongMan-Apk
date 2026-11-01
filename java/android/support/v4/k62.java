package android.support.v4;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.TypedValue;
import androidx.annotation.AttrRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import androidx.annotation.StyleableRes;
import androidx.appcompat.widget.TintTypedArray;
import com.google.android.material.R;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public final class k62 {

    /* renamed from: do, reason: not valid java name */
    private static final int[] f3312do = {R.attr.colorPrimary};

    /* renamed from: for, reason: not valid java name */
    private static final int[] f3313for = {R.attr.colorPrimaryVariant};

    /* renamed from: if, reason: not valid java name */
    private static final String f3314if = "Theme.AppCompat";

    /* renamed from: new, reason: not valid java name */
    private static final String f3315new = "Theme.MaterialComponents";

    private k62() {
    }

    @NonNull
    /* renamed from: break, reason: not valid java name */
    public static TypedArray m4267break(@NonNull Context context, AttributeSet attributeSet, @NonNull @StyleableRes int[] iArr, @AttrRes int i, @StyleRes int i2, @StyleableRes int... iArr2) {
        m4274if(context, attributeSet, i, i2);
        m4275new(context, attributeSet, iArr, i, i2, iArr2);
        return context.obtainStyledAttributes(attributeSet, iArr, i, i2);
    }

    /* renamed from: case, reason: not valid java name */
    public static boolean m4268case(@NonNull Context context) {
        return m4276this(context, f3312do);
    }

    /* renamed from: catch, reason: not valid java name */
    public static TintTypedArray m4269catch(@NonNull Context context, AttributeSet attributeSet, @NonNull @StyleableRes int[] iArr, @AttrRes int i, @StyleRes int i2, @StyleableRes int... iArr2) {
        m4274if(context, attributeSet, i, i2);
        m4275new(context, attributeSet, iArr, i, i2, iArr2);
        return TintTypedArray.obtainStyledAttributes(context, attributeSet, iArr, i, i2);
    }

    /* renamed from: do, reason: not valid java name */
    public static void m4270do(@NonNull Context context) {
        m4277try(context, f3312do, f3314if);
    }

    /* renamed from: else, reason: not valid java name */
    private static boolean m4271else(@NonNull Context context, AttributeSet attributeSet, @NonNull @StyleableRes int[] iArr, @AttrRes int i, @StyleRes int i2, @NonNull @StyleableRes int... iArr2) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr, i, i2);
        for (int i3 : iArr2) {
            if (typedArrayObtainStyledAttributes.getResourceId(i3, -1) == -1) {
                typedArrayObtainStyledAttributes.recycle();
                return false;
            }
        }
        typedArrayObtainStyledAttributes.recycle();
        return true;
    }

    /* renamed from: for, reason: not valid java name */
    public static void m4272for(@NonNull Context context) {
        m4277try(context, f3313for, f3315new);
    }

    /* renamed from: goto, reason: not valid java name */
    public static boolean m4273goto(@NonNull Context context) {
        return m4276this(context, f3313for);
    }

    /* renamed from: if, reason: not valid java name */
    private static void m4274if(@NonNull Context context, AttributeSet attributeSet, @AttrRes int i, @StyleRes int i2) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ThemeEnforcement, i, i2);
        boolean z = typedArrayObtainStyledAttributes.getBoolean(R.styleable.ThemeEnforcement_enforceMaterialTheme, false);
        typedArrayObtainStyledAttributes.recycle();
        if (z) {
            TypedValue typedValue = new TypedValue();
            if (!context.getTheme().resolveAttribute(R.attr.isMaterialTheme, typedValue, true) || (typedValue.type == 18 && typedValue.data == 0)) {
                m4272for(context);
            }
        }
        m4270do(context);
    }

    /* renamed from: new, reason: not valid java name */
    private static void m4275new(@NonNull Context context, AttributeSet attributeSet, @NonNull @StyleableRes int[] iArr, @AttrRes int i, @StyleRes int i2, @Nullable @StyleableRes int... iArr2) {
        boolean zM4271else;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ThemeEnforcement, i, i2);
        if (!typedArrayObtainStyledAttributes.getBoolean(R.styleable.ThemeEnforcement_enforceTextAppearance, false)) {
            typedArrayObtainStyledAttributes.recycle();
            return;
        }
        if (iArr2 == null || iArr2.length == 0) {
            zM4271else = typedArrayObtainStyledAttributes.getResourceId(R.styleable.ThemeEnforcement_android_textAppearance, -1) != -1;
        } else {
            zM4271else = m4271else(context, attributeSet, iArr, i, i2, iArr2);
        }
        typedArrayObtainStyledAttributes.recycle();
        if (!zM4271else) {
            throw new IllegalArgumentException("This component requires that you specify a valid TextAppearance attribute. Update your app theme to inherit from Theme.MaterialComponents (or a descendant).");
        }
    }

    /* renamed from: this, reason: not valid java name */
    private static boolean m4276this(@NonNull Context context, @NonNull int[] iArr) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(iArr);
        for (int i = 0; i < iArr.length; i++) {
            if (!typedArrayObtainStyledAttributes.hasValue(i)) {
                typedArrayObtainStyledAttributes.recycle();
                return false;
            }
        }
        typedArrayObtainStyledAttributes.recycle();
        return true;
    }

    /* renamed from: try, reason: not valid java name */
    private static void m4277try(@NonNull Context context, @NonNull int[] iArr, String str) {
        if (m4276this(context, iArr)) {
            return;
        }
        throw new IllegalArgumentException("The style on this component requires your app theme to be " + str + " (or a descendant).");
    }
}
