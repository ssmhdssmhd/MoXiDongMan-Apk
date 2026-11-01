package com.google.android.material.transition.platform;

import android.graphics.RectF;
import androidx.annotation.RequiresApi;

@RequiresApi(21)
/* renamed from: com.google.android.material.transition.platform.try, reason: invalid class name */
/* loaded from: classes.dex */
class Ctry {

    /* renamed from: do, reason: not valid java name */
    private static final FitModeEvaluator f13598do = new Cdo();

    /* renamed from: if, reason: not valid java name */
    private static final FitModeEvaluator f13599if = new Cif();

    /* renamed from: com.google.android.material.transition.platform.try$do, reason: invalid class name */
    public static class Cdo implements FitModeEvaluator {
        @Override // com.google.android.material.transition.platform.FitModeEvaluator
        public void applyMask(RectF rectF, float f, Ccase ccase) {
            rectF.bottom -= Math.abs(ccase.f13439case - ccase.f13443new) * f;
        }

        @Override // com.google.android.material.transition.platform.FitModeEvaluator
        public Ccase evaluate(float f, float f2, float f3, float f4, float f5, float f6, float f7) {
            float fM14834throw = TransitionUtils.m14834throw(f4, f6, f2, f3, f, true);
            float f8 = fM14834throw / f4;
            float f9 = fM14834throw / f6;
            return new Ccase(f8, f9, fM14834throw, f5 * f8, fM14834throw, f7 * f9);
        }

        @Override // com.google.android.material.transition.platform.FitModeEvaluator
        public boolean shouldMaskStartBounds(Ccase ccase) {
            return ccase.f13443new > ccase.f13439case;
        }
    }

    /* renamed from: com.google.android.material.transition.platform.try$if, reason: invalid class name */
    public static class Cif implements FitModeEvaluator {
        @Override // com.google.android.material.transition.platform.FitModeEvaluator
        public void applyMask(RectF rectF, float f, Ccase ccase) {
            float fAbs = (Math.abs(ccase.f13444try - ccase.f13441for) / 2.0f) * f;
            rectF.left += fAbs;
            rectF.right -= fAbs;
        }

        @Override // com.google.android.material.transition.platform.FitModeEvaluator
        public Ccase evaluate(float f, float f2, float f3, float f4, float f5, float f6, float f7) {
            float fM14834throw = TransitionUtils.m14834throw(f5, f7, f2, f3, f, true);
            float f8 = fM14834throw / f5;
            float f9 = fM14834throw / f7;
            return new Ccase(f8, f9, f4 * f8, fM14834throw, f6 * f9, fM14834throw);
        }

        @Override // com.google.android.material.transition.platform.FitModeEvaluator
        public boolean shouldMaskStartBounds(Ccase ccase) {
            return ccase.f13441for > ccase.f13444try;
        }
    }

    private Ctry() {
    }

    /* renamed from: do, reason: not valid java name */
    public static FitModeEvaluator m14960do(int i, boolean z, RectF rectF, RectF rectF2) {
        if (i == 0) {
            return m14961if(z, rectF, rectF2) ? f13598do : f13599if;
        }
        if (i == 1) {
            return f13598do;
        }
        if (i == 2) {
            return f13599if;
        }
        throw new IllegalArgumentException("Invalid fit mode: " + i);
    }

    /* renamed from: if, reason: not valid java name */
    private static boolean m14961if(boolean z, RectF rectF, RectF rectF2) {
        float fWidth = rectF.width();
        float fHeight = rectF.height();
        float fWidth2 = rectF2.width();
        float fHeight2 = rectF2.height();
        float f = (fHeight2 * fWidth) / fWidth2;
        float f2 = (fWidth2 * fHeight) / fWidth;
        if (z) {
            if (f >= fHeight) {
                return true;
            }
        } else if (f2 >= fHeight2) {
            return true;
        }
        return false;
    }
}
