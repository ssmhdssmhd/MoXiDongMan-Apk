package com.google.android.material.transition.platform;

import androidx.annotation.RequiresApi;

@RequiresApi(21)
/* renamed from: com.google.android.material.transition.platform.do, reason: invalid class name */
/* loaded from: classes.dex */
class Cdo {

    /* renamed from: do, reason: not valid java name */
    private static final FadeModeEvaluator f13458do = new C0071do();

    /* renamed from: if, reason: not valid java name */
    private static final FadeModeEvaluator f13460if = new Cif();

    /* renamed from: for, reason: not valid java name */
    private static final FadeModeEvaluator f13459for = new Cfor();

    /* renamed from: new, reason: not valid java name */
    private static final FadeModeEvaluator f13461new = new Cnew();

    /* renamed from: com.google.android.material.transition.platform.do$do, reason: invalid class name and collision with other inner class name */
    public static class C0071do implements FadeModeEvaluator {
        @Override // com.google.android.material.transition.platform.FadeModeEvaluator
        public com.google.android.material.transition.platform.Cif evaluate(float f, float f2, float f3, float f4) {
            return com.google.android.material.transition.platform.Cif.m14942do(255, TransitionUtils.m14837while(0, 255, f2, f3, f));
        }
    }

    /* renamed from: com.google.android.material.transition.platform.do$for, reason: invalid class name */
    public static class Cfor implements FadeModeEvaluator {
        @Override // com.google.android.material.transition.platform.FadeModeEvaluator
        public com.google.android.material.transition.platform.Cif evaluate(float f, float f2, float f3, float f4) {
            return com.google.android.material.transition.platform.Cif.m14943if(TransitionUtils.m14837while(255, 0, f2, f3, f), TransitionUtils.m14837while(0, 255, f2, f3, f));
        }
    }

    /* renamed from: com.google.android.material.transition.platform.do$if, reason: invalid class name */
    public static class Cif implements FadeModeEvaluator {
        @Override // com.google.android.material.transition.platform.FadeModeEvaluator
        public com.google.android.material.transition.platform.Cif evaluate(float f, float f2, float f3, float f4) {
            return com.google.android.material.transition.platform.Cif.m14943if(TransitionUtils.m14837while(255, 0, f2, f3, f), 255);
        }
    }

    /* renamed from: com.google.android.material.transition.platform.do$new, reason: invalid class name */
    public static class Cnew implements FadeModeEvaluator {
        @Override // com.google.android.material.transition.platform.FadeModeEvaluator
        public com.google.android.material.transition.platform.Cif evaluate(float f, float f2, float f3, float f4) {
            float f5 = ((f3 - f2) * f4) + f2;
            return com.google.android.material.transition.platform.Cif.m14943if(TransitionUtils.m14837while(255, 0, f2, f5, f), TransitionUtils.m14837while(0, 255, f5, f3, f));
        }
    }

    private Cdo() {
    }

    /* renamed from: do, reason: not valid java name */
    public static FadeModeEvaluator m14858do(int i, boolean z) {
        if (i == 0) {
            return z ? f13458do : f13460if;
        }
        if (i == 1) {
            return z ? f13460if : f13458do;
        }
        if (i == 2) {
            return f13459for;
        }
        if (i == 3) {
            return f13461new;
        }
        throw new IllegalArgumentException("Invalid fade mode: " + i);
    }
}
