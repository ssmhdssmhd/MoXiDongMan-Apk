package android.support.v4;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import androidx.annotation.AttrRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.StyleRes;
import androidx.appcompat.view.ContextThemeWrapper;

/* loaded from: classes.dex */
public class vx0 {

    /* renamed from: do, reason: not valid java name */
    private static final int[] f7352do = {R.attr.theme, com.google.android.material.R.attr.theme};

    /* renamed from: if, reason: not valid java name */
    private static final int[] f7353if = {com.google.android.material.R.attr.materialThemeOverlay};

    private vx0() {
    }

    @StyleRes
    /* renamed from: do, reason: not valid java name */
    private static int m8992do(@NonNull Context context, AttributeSet attributeSet) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, f7352do);
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(0, 0);
        int resourceId2 = typedArrayObtainStyledAttributes.getResourceId(1, 0);
        typedArrayObtainStyledAttributes.recycle();
        return resourceId != 0 ? resourceId : resourceId2;
    }

    @NonNull
    /* renamed from: for, reason: not valid java name */
    public static Context m8993for(@NonNull Context context, @Nullable AttributeSet attributeSet, @AttrRes int i, @StyleRes int i2) {
        int iM8994if = m8994if(context, attributeSet, i, i2);
        boolean z = (context instanceof ContextThemeWrapper) && ((ContextThemeWrapper) context).getThemeResId() == iM8994if;
        if (iM8994if == 0 || z) {
            return context;
        }
        ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(context, iM8994if);
        int iM8992do = m8992do(context, attributeSet);
        if (iM8992do != 0) {
            contextThemeWrapper.getTheme().applyStyle(iM8992do, true);
        }
        return contextThemeWrapper;
    }

    @StyleRes
    /* renamed from: if, reason: not valid java name */
    private static int m8994if(@NonNull Context context, @Nullable AttributeSet attributeSet, @AttrRes int i, @StyleRes int i2) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, f7353if, i, i2);
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(0, 0);
        typedArrayObtainStyledAttributes.recycle();
        return resourceId;
    }
}
