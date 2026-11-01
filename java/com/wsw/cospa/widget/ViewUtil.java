package com.wsw.cospa.widget;

import android.content.Context;
import android.util.DisplayMetrics;

/* loaded from: classes2.dex */
public final class ViewUtil {
    private static float density;
    private static int heightPixels;
    private static boolean isInit;
    private static float scaledDensity;
    private static int widthPixels;

    private ViewUtil() {
    }

    private static void confirmInit() {
        if (!isInit) {
            throw new IllegalStateException("ViewUtil还未初始化");
        }
    }

    public static int dpToPx(float f) {
        confirmInit();
        return (int) ((f * getDisplayMetricsDensity()) + 0.5f);
    }

    public static float getDisplayMetricsDensity() {
        confirmInit();
        return density;
    }

    public static float getDisplayMetricsScaledDensity() {
        confirmInit();
        return scaledDensity;
    }

    public static int getScreenHeightPx() {
        confirmInit();
        return heightPixels;
    }

    public static int getScreenWidthPx() {
        confirmInit();
        return widthPixels;
    }

    public static void init(Context context) {
        if (isInit) {
            return;
        }
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        density = displayMetrics.density;
        scaledDensity = displayMetrics.scaledDensity;
        widthPixels = displayMetrics.widthPixels;
        heightPixels = displayMetrics.heightPixels;
        isInit = true;
    }

    public static int pxToDp(float f) {
        confirmInit();
        return (int) ((f / getDisplayMetricsDensity()) + 0.5f);
    }

    public static int pxToSp(float f) {
        confirmInit();
        return (int) ((f / getDisplayMetricsScaledDensity()) + 0.5f);
    }

    public static int spToPx(float f) {
        confirmInit();
        return (int) ((f * getDisplayMetricsScaledDensity()) + 0.5f);
    }
}
