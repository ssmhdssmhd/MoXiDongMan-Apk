package android.support.v4;

import android.R;
import android.annotation.TargetApi;
import android.content.res.ColorStateList;
import android.graphics.Color;
import android.os.Build;
import android.util.StateSet;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.core.graphics.ColorUtils;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public class no1 {

    /* renamed from: break, reason: not valid java name */
    private static final int[] f4300break;

    /* renamed from: case, reason: not valid java name */
    private static final int[] f4301case;

    /* renamed from: catch, reason: not valid java name */
    private static final int[] f4302catch;

    /* renamed from: class, reason: not valid java name */
    @VisibleForTesting
    public static final String f4303class;

    /* renamed from: const, reason: not valid java name */
    @VisibleForTesting
    public static final String f4304const = "Use a non-transparent color for the default color as it will be used to finish ripple animations.";

    /* renamed from: do, reason: not valid java name */
    public static final boolean f4305do;

    /* renamed from: else, reason: not valid java name */
    private static final int[] f4306else;

    /* renamed from: for, reason: not valid java name */
    private static final int[] f4307for;

    /* renamed from: goto, reason: not valid java name */
    private static final int[] f4308goto;

    /* renamed from: if, reason: not valid java name */
    private static final int[] f4309if;

    /* renamed from: new, reason: not valid java name */
    private static final int[] f4310new;

    /* renamed from: this, reason: not valid java name */
    private static final int[] f4311this;

    /* renamed from: try, reason: not valid java name */
    private static final int[] f4312try;

    static {
        f4305do = Build.VERSION.SDK_INT >= 21;
        f4309if = new int[]{R.attr.state_pressed};
        f4307for = new int[]{R.attr.state_hovered, R.attr.state_focused};
        f4310new = new int[]{R.attr.state_focused};
        f4312try = new int[]{R.attr.state_hovered};
        f4301case = new int[]{R.attr.state_selected, R.attr.state_pressed};
        f4306else = new int[]{R.attr.state_selected, R.attr.state_hovered, R.attr.state_focused};
        f4308goto = new int[]{R.attr.state_selected, R.attr.state_focused};
        f4311this = new int[]{R.attr.state_selected, R.attr.state_hovered};
        f4300break = new int[]{R.attr.state_selected};
        f4302catch = new int[]{R.attr.state_enabled, R.attr.state_pressed};
        f4303class = no1.class.getSimpleName();
    }

    private no1() {
    }

    @NonNull
    /* renamed from: do, reason: not valid java name */
    public static ColorStateList m5291do(@Nullable ColorStateList colorStateList) {
        if (f4305do) {
            return new ColorStateList(new int[][]{f4300break, StateSet.NOTHING}, new int[]{m5292for(colorStateList, f4301case), m5292for(colorStateList, f4309if)});
        }
        int[] iArr = f4301case;
        int[] iArr2 = f4306else;
        int[] iArr3 = f4308goto;
        int[] iArr4 = f4311this;
        int[] iArr5 = f4309if;
        int[] iArr6 = f4307for;
        int[] iArr7 = f4310new;
        int[] iArr8 = f4312try;
        return new ColorStateList(new int[][]{iArr, iArr2, iArr3, iArr4, f4300break, iArr5, iArr6, iArr7, iArr8, StateSet.NOTHING}, new int[]{m5292for(colorStateList, iArr), m5292for(colorStateList, iArr2), m5292for(colorStateList, iArr3), m5292for(colorStateList, iArr4), 0, m5292for(colorStateList, iArr5), m5292for(colorStateList, iArr6), m5292for(colorStateList, iArr7), m5292for(colorStateList, iArr8), 0});
    }

    @ColorInt
    /* renamed from: for, reason: not valid java name */
    private static int m5292for(@Nullable ColorStateList colorStateList, int[] iArr) {
        int colorForState = colorStateList != null ? colorStateList.getColorForState(iArr, colorStateList.getDefaultColor()) : 0;
        return f4305do ? m5293if(colorForState) : colorForState;
    }

    @ColorInt
    @TargetApi(21)
    /* renamed from: if, reason: not valid java name */
    private static int m5293if(@ColorInt int i) {
        return ColorUtils.setAlphaComponent(i, Math.min(Color.alpha(i) * 2, 255));
    }

    @NonNull
    /* renamed from: new, reason: not valid java name */
    public static ColorStateList m5294new(@Nullable ColorStateList colorStateList) {
        if (colorStateList == null) {
            return ColorStateList.valueOf(0);
        }
        int i = Build.VERSION.SDK_INT;
        if (i >= 22 && i <= 27 && Color.alpha(colorStateList.getDefaultColor()) == 0) {
            Color.alpha(colorStateList.getColorForState(f4302catch, 0));
        }
        return colorStateList;
    }

    /* renamed from: try, reason: not valid java name */
    public static boolean m5295try(@NonNull int[] iArr) {
        boolean z = false;
        boolean z2 = false;
        for (int i : iArr) {
            if (i == 16842910) {
                z = true;
            } else if (i == 16842908 || i == 16842919 || i == 16843623) {
                z2 = true;
            }
        }
        return z && z2;
    }
}
