package org.chromium.base;

import android.support.v4.cx0;

@cx0
/* loaded from: classes3.dex */
public class FieldTrialList {

    public interface Natives {
        boolean createFieldTrial(String str, String str2);

        String findFullName(String str);

        String getVariationParameter(String str, String str2);

        void logActiveTrials();

        boolean trialExists(String str);
    }

    private FieldTrialList() {
    }

    /* renamed from: do, reason: not valid java name */
    public static boolean m36816do(String str, String str2) {
        return Cbreak.m36998if().createFieldTrial(str, str2);
    }

    /* renamed from: for, reason: not valid java name */
    public static String m36817for(String str, String str2) {
        return Cbreak.m36998if().getVariationParameter(str, str2);
    }

    /* renamed from: if, reason: not valid java name */
    public static String m36818if(String str) {
        return Cbreak.m36998if().findFullName(str);
    }

    /* renamed from: new, reason: not valid java name */
    public static void m36819new() {
        Cbreak.m36998if().logActiveTrials();
    }

    /* renamed from: try, reason: not valid java name */
    public static boolean m36820try(String str) {
        return Cbreak.m36998if().trialExists(str);
    }
}
