package com.google.android.material.transition;

/* renamed from: com.google.android.material.transition.do, reason: invalid class name */
/* loaded from: classes.dex */
class Cdo {

    /* renamed from: do, reason: not valid java name */
    private static final FadeModeEvaluator f13375do = new C0070do();

    /* renamed from: if, reason: not valid java name */
    private static final FadeModeEvaluator f13377if = new Cif();

    /* renamed from: for, reason: not valid java name */
    private static final FadeModeEvaluator f13376for = new Cfor();

    /* renamed from: new, reason: not valid java name */
    private static final FadeModeEvaluator f13378new = new Cnew();

    /* renamed from: com.google.android.material.transition.do$do, reason: invalid class name and collision with other inner class name */
    public static class C0070do implements FadeModeEvaluator {
        @Override // com.google.android.material.transition.FadeModeEvaluator
        public com.google.android.material.transition.Cif evaluate(float f, float f2, float f3, float f4) {
            return com.google.android.material.transition.Cif.m14790do(255, TransitionUtils.m14768while(0, 255, f2, f3, f));
        }
    }

    /* renamed from: com.google.android.material.transition.do$for, reason: invalid class name */
    public static class Cfor implements FadeModeEvaluator {
        @Override // com.google.android.material.transition.FadeModeEvaluator
        public com.google.android.material.transition.Cif evaluate(float f, float f2, float f3, float f4) {
            return com.google.android.material.transition.Cif.m14791if(TransitionUtils.m14768while(255, 0, f2, f3, f), TransitionUtils.m14768while(0, 255, f2, f3, f));
        }
    }

    /* renamed from: com.google.android.material.transition.do$if, reason: invalid class name */
    public static class Cif implements FadeModeEvaluator {
        @Override // com.google.android.material.transition.FadeModeEvaluator
        public com.google.android.material.transition.Cif evaluate(float f, float f2, float f3, float f4) {
            return com.google.android.material.transition.Cif.m14791if(TransitionUtils.m14768while(255, 0, f2, f3, f), 255);
        }
    }

    /* renamed from: com.google.android.material.transition.do$new, reason: invalid class name */
    public static class Cnew implements FadeModeEvaluator {
        @Override // com.google.android.material.transition.FadeModeEvaluator
        public com.google.android.material.transition.Cif evaluate(float f, float f2, float f3, float f4) {
            float f5 = ((f3 - f2) * f4) + f2;
            return com.google.android.material.transition.Cif.m14791if(TransitionUtils.m14768while(255, 0, f2, f5, f), TransitionUtils.m14768while(0, 255, f5, f3, f));
        }
    }

    private Cdo() {
    }

    /* renamed from: do, reason: not valid java name */
    public static FadeModeEvaluator m14779do(int i, boolean z) {
        if (i == 0) {
            return z ? f13375do : f13377if;
        }
        if (i == 1) {
            return z ? f13377if : f13375do;
        }
        if (i == 2) {
            return f13376for;
        }
        if (i == 3) {
            return f13378new;
        }
        throw new IllegalArgumentException("Invalid fade mode: " + i);
    }
}
