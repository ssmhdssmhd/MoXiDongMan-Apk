package butterknife.internal;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.util.TypedValue;
import android.view.View;
import androidx.annotation.AttrRes;
import androidx.annotation.DimenRes;
import androidx.annotation.DrawableRes;
import androidx.annotation.IdRes;
import androidx.annotation.UiThread;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.drawable.DrawableCompat;
import java.util.Arrays;
import java.util.List;

/* renamed from: butterknife.internal.new, reason: invalid class name */
/* loaded from: classes.dex */
public final class Cnew {

    /* renamed from: do, reason: not valid java name */
    private static final TypedValue f8705do = new TypedValue();

    private Cnew() {
        throw new AssertionError("No instances.");
    }

    @SafeVarargs
    /* renamed from: break, reason: not valid java name */
    public static <T> List<T> m10372break(T... tArr) {
        return new Cdo(m10374do(tArr));
    }

    /* renamed from: case, reason: not valid java name */
    public static <T> T m10373case(View view, @IdRes int i, String str, Class<T> cls) {
        return (T) m10376for(m10381try(view, i, str), i, str, cls);
    }

    @SafeVarargs
    /* renamed from: do, reason: not valid java name */
    public static <T> T[] m10374do(T... tArr) {
        int length = tArr.length;
        int i = 0;
        for (T t : tArr) {
            if (t != null) {
                tArr[i] = t;
                i++;
            }
        }
        return i == length ? tArr : (T[]) Arrays.copyOf(tArr, i);
    }

    @UiThread
    /* renamed from: else, reason: not valid java name */
    public static float m10375else(Context context, @DimenRes int i) throws Resources.NotFoundException {
        TypedValue typedValue = f8705do;
        context.getResources().getValue(i, typedValue, true);
        if (typedValue.type == 4) {
            return typedValue.getFloat();
        }
        throw new Resources.NotFoundException("Resource ID #0x" + Integer.toHexString(i) + " type #0x" + Integer.toHexString(typedValue.type) + " is not valid");
    }

    /* renamed from: for, reason: not valid java name */
    public static <T> T m10376for(View view, @IdRes int i, String str, Class<T> cls) {
        try {
            return cls.cast(view);
        } catch (ClassCastException e) {
            throw new IllegalStateException("View '" + m10377goto(view, i) + "' with ID " + i + " for " + str + " was of the wrong type. See cause for more info.", e);
        }
    }

    /* renamed from: goto, reason: not valid java name */
    private static String m10377goto(View view, @IdRes int i) {
        return view.isInEditMode() ? "<unavailable while editing>" : view.getContext().getResources().getResourceEntryName(i);
    }

    /* renamed from: if, reason: not valid java name */
    public static <T> T m10378if(Object obj, String str, int i, String str2, int i2, Class<T> cls) {
        try {
            return cls.cast(obj);
        } catch (ClassCastException e) {
            throw new IllegalStateException("Parameter #" + (i + 1) + " of method '" + str + "' was of the wrong type for parameter #" + (i2 + 1) + " of method '" + str2 + "'. See cause for more info.", e);
        }
    }

    /* renamed from: new, reason: not valid java name */
    public static <T> T m10379new(View view, @IdRes int i, String str, Class<T> cls) {
        return (T) m10376for(view.findViewById(i), i, str, cls);
    }

    @UiThread
    /* renamed from: this, reason: not valid java name */
    public static Drawable m10380this(Context context, @DrawableRes int i, @AttrRes int i2) {
        Resources.Theme theme = context.getTheme();
        TypedValue typedValue = f8705do;
        if (theme.resolveAttribute(i2, typedValue, true)) {
            Drawable drawableWrap = DrawableCompat.wrap(ContextCompat.getDrawable(context, i).mutate());
            DrawableCompat.setTint(drawableWrap, ContextCompat.getColor(context, typedValue.resourceId));
            return drawableWrap;
        }
        throw new Resources.NotFoundException("Required tint color attribute with name " + context.getResources().getResourceEntryName(i2) + " and attribute ID " + i2 + " was not found.");
    }

    /* renamed from: try, reason: not valid java name */
    public static View m10381try(View view, @IdRes int i, String str) {
        View viewFindViewById = view.findViewById(i);
        if (viewFindViewById != null) {
            return viewFindViewById;
        }
        throw new IllegalStateException("Required view '" + m10377goto(view, i) + "' with ID " + i + " for " + str + " was not found. If this view is optional add '@Nullable' (fields) or '@Optional' (methods) annotation.");
    }
}
