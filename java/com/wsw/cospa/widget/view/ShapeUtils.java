package com.wsw.cospa.widget.view;

import android.graphics.Path;

/* loaded from: classes2.dex */
final class ShapeUtils {
    public static Path roundedRect(float f, float f2, float f3, float f4, float f5, float f6, boolean z, boolean z2, boolean z3, boolean z4) {
        Path path = new Path();
        if (f5 < 0.0f) {
            f5 = 0.0f;
        }
        if (f6 < 0.0f) {
            f6 = 0.0f;
        }
        float f7 = f3 - f;
        float f8 = f4 - f2;
        float f9 = f7 / 2.0f;
        if (f5 > f9) {
            f5 = f9;
        }
        float f10 = f8 / 2.0f;
        if (f6 > f10) {
            f6 = f10;
        }
        float f11 = f7 - (f5 * 2.0f);
        float f12 = f8 - (2.0f * f6);
        path.moveTo(f3, f2 + f6);
        if (z2) {
            float f13 = -f6;
            path.rQuadTo(0.0f, f13, -f5, f13);
        } else {
            path.rLineTo(0.0f, -f6);
            path.rLineTo(-f5, 0.0f);
        }
        path.rLineTo(-f11, 0.0f);
        if (z) {
            float f14 = -f5;
            path.rQuadTo(f14, 0.0f, f14, f6);
        } else {
            path.rLineTo(-f5, 0.0f);
            path.rLineTo(0.0f, f6);
        }
        path.rLineTo(0.0f, f12);
        if (z4) {
            path.rQuadTo(0.0f, f6, f5, f6);
        } else {
            path.rLineTo(0.0f, f6);
            path.rLineTo(f5, 0.0f);
        }
        path.rLineTo(f11, 0.0f);
        if (z3) {
            path.rQuadTo(f5, 0.0f, f5, -f6);
        } else {
            path.rLineTo(f5, 0.0f);
            path.rLineTo(0.0f, -f6);
        }
        path.rLineTo(0.0f, -f12);
        path.close();
        return path;
    }

    public static Path roundedRect(float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8) {
        Path path = new Path();
        if (f5 < 0.0f) {
            f5 = 0.0f;
        }
        if (f6 < 0.0f) {
            f6 = 0.0f;
        }
        if (f7 < 0.0f) {
            f7 = 0.0f;
        }
        if (f8 < 0.0f) {
            f8 = 0.0f;
        }
        float f9 = f3 - f;
        float f10 = f4 - f2;
        float fMin = Math.min(f9, f10) / 2.0f;
        if (f5 > fMin) {
            f5 = fMin;
        }
        if (f6 > fMin) {
            f6 = fMin;
        }
        if (f7 > fMin) {
            f7 = fMin;
        }
        if (f8 > fMin) {
            f8 = fMin;
        }
        if (f5 == f6 && f6 == f7 && f7 == f8 && f5 == fMin) {
            path.addCircle(f + fMin, f2 + fMin, fMin, Path.Direction.CW);
            return path;
        }
        path.moveTo(f3, f2 + f6);
        if (f6 > 0.0f) {
            float f11 = -f6;
            path.rQuadTo(0.0f, f11, f11, f11);
        } else {
            float f12 = -f6;
            path.rLineTo(0.0f, f12);
            path.rLineTo(f12, 0.0f);
        }
        path.rLineTo(-((f9 - f6) - f5), 0.0f);
        if (f5 > 0.0f) {
            float f13 = -f5;
            path.rQuadTo(f13, 0.0f, f13, f5);
        } else {
            path.rLineTo(-f5, 0.0f);
            path.rLineTo(0.0f, f5);
        }
        path.rLineTo(0.0f, (f10 - f5) - f8);
        if (f8 > 0.0f) {
            path.rQuadTo(0.0f, f8, f8, f8);
        } else {
            path.rLineTo(0.0f, f8);
            path.rLineTo(f8, 0.0f);
        }
        path.rLineTo((f9 - f8) - f7, 0.0f);
        if (f7 > 0.0f) {
            path.rQuadTo(f7, 0.0f, f7, -f7);
        } else {
            path.rLineTo(f7, 0.0f);
            path.rLineTo(0.0f, -f7);
        }
        path.rLineTo(0.0f, -((f10 - f7) - f6));
        path.close();
        return path;
    }
}
