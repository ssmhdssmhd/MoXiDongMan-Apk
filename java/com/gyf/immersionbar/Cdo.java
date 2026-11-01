package com.gyf.immersionbar;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.os.Build;
import android.provider.Settings;
import android.support.v4.n51;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.Display;
import android.view.View;

/* renamed from: com.gyf.immersionbar.do, reason: invalid class name */
/* loaded from: classes2.dex */
class Cdo {

    /* renamed from: case, reason: not valid java name */
    private final boolean f18052case;

    /* renamed from: do, reason: not valid java name */
    private final int f18053do;

    /* renamed from: else, reason: not valid java name */
    private final float f18054else;

    /* renamed from: for, reason: not valid java name */
    private final boolean f18055for;

    /* renamed from: if, reason: not valid java name */
    private final int f18056if;

    /* renamed from: new, reason: not valid java name */
    private final int f18057new;

    /* renamed from: try, reason: not valid java name */
    private final int f18058try;

    public Cdo(Activity activity) {
        this.f18052case = activity.getResources().getConfiguration().orientation == 1;
        this.f18054else = m22682goto(activity);
        this.f18053do = m22681for(activity, Cnew.f18143for);
        this.f18056if = m22683if(activity);
        int iM22684try = m22684try(activity);
        this.f18057new = iM22684try;
        this.f18058try = m22680else(activity);
        this.f18055for = iM22684try > 0;
    }

    @TargetApi(14)
    /* renamed from: break, reason: not valid java name */
    private boolean m22679break(Activity activity) {
        int i = Build.VERSION.SDK_INT;
        if (i >= 17) {
            if (Settings.Global.getInt(activity.getContentResolver(), Cnew.f18141else, 0) != 0) {
                return false;
            }
            if (n51.m5093case()) {
                if (n51.m5104this() || i < 21) {
                    if (Settings.System.getInt(activity.getContentResolver(), Cnew.f18144goto, 0) != 0) {
                        return false;
                    }
                } else if (Settings.Global.getInt(activity.getContentResolver(), Cnew.f18144goto, 0) != 0) {
                    return false;
                }
            }
        }
        Display defaultDisplay = activity.getWindowManager().getDefaultDisplay();
        DisplayMetrics displayMetrics = new DisplayMetrics();
        if (i >= 17) {
            defaultDisplay.getRealMetrics(displayMetrics);
        }
        int i2 = displayMetrics.heightPixels;
        int i3 = displayMetrics.widthPixels;
        DisplayMetrics displayMetrics2 = new DisplayMetrics();
        defaultDisplay.getMetrics(displayMetrics2);
        return i3 - displayMetrics2.widthPixels > 0 || i2 - displayMetrics2.heightPixels > 0;
    }

    @TargetApi(14)
    /* renamed from: else, reason: not valid java name */
    private int m22680else(Context context) {
        if (Build.VERSION.SDK_INT < 14 || !m22679break((Activity) context)) {
            return 0;
        }
        return m22681for(context, Cnew.f18136case);
    }

    /* renamed from: for, reason: not valid java name */
    private int m22681for(Context context, String str) throws Resources.NotFoundException {
        try {
            int identifier = Resources.getSystem().getIdentifier(str, "dimen", "android");
            if (identifier > 0) {
                int dimensionPixelSize = context.getResources().getDimensionPixelSize(identifier);
                int dimensionPixelSize2 = Resources.getSystem().getDimensionPixelSize(identifier);
                if (dimensionPixelSize2 >= dimensionPixelSize) {
                    return dimensionPixelSize2;
                }
                float f = (dimensionPixelSize * Resources.getSystem().getDisplayMetrics().density) / context.getResources().getDisplayMetrics().density;
                return (int) (f >= 0.0f ? f + 0.5f : f - 0.5f);
            }
        } catch (Resources.NotFoundException unused) {
        }
        return 0;
    }

    @SuppressLint({"NewApi"})
    /* renamed from: goto, reason: not valid java name */
    private float m22682goto(Activity activity) {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        if (Build.VERSION.SDK_INT >= 16) {
            activity.getWindowManager().getDefaultDisplay().getRealMetrics(displayMetrics);
        } else {
            activity.getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
        }
        float f = displayMetrics.widthPixels;
        float f2 = displayMetrics.density;
        return Math.min(f / f2, displayMetrics.heightPixels / f2);
    }

    @TargetApi(14)
    /* renamed from: if, reason: not valid java name */
    private int m22683if(Activity activity) {
        if (Build.VERSION.SDK_INT < 14) {
            return 0;
        }
        View viewFindViewById = activity.getWindow().findViewById(R.id.action_bar_container);
        int measuredHeight = viewFindViewById != null ? viewFindViewById.getMeasuredHeight() : 0;
        if (measuredHeight != 0) {
            return measuredHeight;
        }
        TypedValue typedValue = new TypedValue();
        activity.getTheme().resolveAttribute(android.R.attr.actionBarSize, typedValue, true);
        return TypedValue.complexToDimensionPixelSize(typedValue.data, activity.getResources().getDisplayMetrics());
    }

    @TargetApi(14)
    /* renamed from: try, reason: not valid java name */
    private int m22684try(Context context) {
        if (Build.VERSION.SDK_INT < 14 || !m22679break((Activity) context)) {
            return 0;
        }
        return m22681for(context, this.f18052case ? Cnew.f18146new : Cnew.f18150try);
    }

    /* renamed from: case, reason: not valid java name */
    public int m22685case() {
        return this.f18058try;
    }

    /* renamed from: catch, reason: not valid java name */
    public boolean m22686catch() {
        return this.f18055for;
    }

    /* renamed from: class, reason: not valid java name */
    public boolean m22687class() {
        return this.f18054else >= 600.0f || this.f18052case;
    }

    /* renamed from: do, reason: not valid java name */
    public int m22688do() {
        return this.f18056if;
    }

    /* renamed from: new, reason: not valid java name */
    public int m22689new() {
        return this.f18057new;
    }

    /* renamed from: this, reason: not valid java name */
    public int m22690this() {
        return this.f18053do;
    }
}
