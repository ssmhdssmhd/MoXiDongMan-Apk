package android.support.v4;

import android.content.Context;
import android.util.TypedValue;
import android.view.View;
import androidx.annotation.AttrRes;
import androidx.annotation.DimenRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.RestrictTo;
import com.google.android.material.R;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public class px0 {
    @Px
    /* renamed from: case, reason: not valid java name */
    public static int m6242case(@NonNull Context context) {
        return m6248new(context, R.attr.minTouchTargetSize, R.dimen.mtrl_min_touch_target_size);
    }

    @Nullable
    /* renamed from: do, reason: not valid java name */
    public static TypedValue m6243do(@NonNull Context context, @AttrRes int i) {
        TypedValue typedValue = new TypedValue();
        if (context.getTheme().resolveAttribute(i, typedValue, true)) {
            return typedValue;
        }
        return null;
    }

    /* renamed from: else, reason: not valid java name */
    public static int m6244else(@NonNull Context context, @AttrRes int i, @NonNull String str) {
        TypedValue typedValueM6243do = m6243do(context, i);
        if (typedValueM6243do != null) {
            return typedValueM6243do.data;
        }
        throw new IllegalArgumentException(String.format("%1$s requires a value for the %2$s attribute to be set in your app theme. You can either set the attribute in your theme or update your theme to inherit from Theme.MaterialComponents (or a descendant).", str, context.getResources().getResourceName(i)));
    }

    /* renamed from: for, reason: not valid java name */
    public static boolean m6245for(@NonNull Context context, @AttrRes int i, @NonNull String str) {
        return m6244else(context, i, str) != 0;
    }

    /* renamed from: goto, reason: not valid java name */
    public static int m6246goto(@NonNull View view, @AttrRes int i) {
        return m6244else(view.getContext(), i, view.getClass().getCanonicalName());
    }

    /* renamed from: if, reason: not valid java name */
    public static boolean m6247if(@NonNull Context context, @AttrRes int i, boolean z) {
        TypedValue typedValueM6243do = m6243do(context, i);
        return (typedValueM6243do == null || typedValueM6243do.type != 18) ? z : typedValueM6243do.data != 0;
    }

    @Px
    /* renamed from: new, reason: not valid java name */
    public static int m6248new(@NonNull Context context, @AttrRes int i, @DimenRes int i2) {
        TypedValue typedValueM6243do = m6243do(context, i);
        return (int) ((typedValueM6243do == null || typedValueM6243do.type != 5) ? context.getResources().getDimension(i2) : typedValueM6243do.getDimension(context.getResources().getDisplayMetrics()));
    }

    /* renamed from: try, reason: not valid java name */
    public static int m6249try(@NonNull Context context, @AttrRes int i, int i2) {
        TypedValue typedValueM6243do = m6243do(context, i);
        return (typedValueM6243do == null || typedValueM6243do.type != 16) ? i2 : typedValueM6243do.data;
    }
}
