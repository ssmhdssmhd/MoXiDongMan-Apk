package com.google.android.material.transition;

import android.graphics.RectF;

/* renamed from: com.google.android.material.transition.try, reason: invalid class name */
/* loaded from: classes.dex */
class Ctry {

    /* renamed from: do, reason: not valid java name */
    private static final FitModeEvaluator f13609do = new Cdo();

    /* renamed from: if, reason: not valid java name */
    private static final FitModeEvaluator f13610if = new Cif();

    /* renamed from: com.google.android.material.transition.try$do, reason: invalid class name */
    public static class Cdo implements FitModeEvaluator {
        @Override // com.google.android.material.transition.FitModeEvaluator
        public void applyMask(RectF rectF, float f, Ccase ccase) {
            rectF.bottom -= Math.abs(ccase.f13369case - ccase.f13373new) * f;
        }

        @Override // com.google.android.material.transition.FitModeEvaluator
        public Ccase evaluate(float f, float f2, float f3, float f4, float f5, float f6, float f7) {
            float fM14765throw = TransitionUtils.m14765throw(f4, f6, f2, f3, f, true);
            float f8 = fM14765throw / f4;
            float f9 = fM14765throw / f6;
            return new Ccase(f8, f9, fM14765throw, f5 * f8, fM14765throw, f7 * f9);
        }

        @Override // com.google.android.material.transition.FitModeEvaluator
        public boolean shouldMaskStartBounds(Ccase ccase) {
            return ccase.f13373new > ccase.f13369case;
        }
    }

    /* renamed from: com.google.android.material.transition.try$if, reason: invalid class name */
    public static class Cif implements FitModeEvaluator {
        @Override // com.google.android.material.transition.FitModeEvaluator
        public void applyMask(RectF rectF, float f, Ccase ccase) {
            float fAbs = (Math.abs(ccase.f13374try - ccase.f13371for) / 2.0f) * f;
            rectF.left += fAbs;
            rectF.right -= fAbs;
        }

        @Override // com.google.android.material.transition.FitModeEvaluator
        public Ccase evaluate(float f, float f2, float f3, float f4, float f5, float f6, float f7) {
            float fM14765throw = TransitionUtils.m14765throw(f5, f7, f2, f3, f, true);
            float f8 = fM14765throw / f5;
            float f9 = fM14765throw / f7;
            return new Ccase(f8, f9, f4 * f8, fM14765throw, f6 * f9, fM14765throw);
        }

        @Override // com.google.android.material.transition.FitModeEvaluator
        public boolean shouldMaskStartBounds(Ccase ccase) {
            return ccase.f13371for > ccase.f13374try;
        }
    }

    private Ctry() {
    }

    /* renamed from: do, reason: not valid java name */
    public static FitModeEvaluator m14975do(int i, boolean z, RectF rectF, RectF rectF2) {
        if (i == 0) {
            return m14976if(z, rectF, rectF2) ? f13609do : f13610if;
        }
        if (i == 1) {
            return f13609do;
        }
        if (i == 2) {
            return f13610if;
        }
        throw new IllegalArgumentException("Invalid fit mode: " + i);
    }

    /* renamed from: if, reason: not valid java name */
    private static boolean m14976if(boolean z, RectF rectF, RectF rectF2) {
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
