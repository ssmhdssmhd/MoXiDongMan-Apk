package org.chromium.base;

import android.support.v4.cx0;
import android.support.v4.lo0;

@lo0("base::android")
@cx0
/* loaded from: classes3.dex */
public abstract class Features {

    /* renamed from: do, reason: not valid java name */
    private final String f33006do;

    public interface Natives {
        boolean getFieldTrialParamByFeatureAsBoolean(long j, String str, boolean z);

        boolean isEnabled(long j);
    }

    public Features(String str) {
        this.f33006do = str;
    }

    /* renamed from: do, reason: not valid java name */
    public abstract long m36812do();

    /* renamed from: for, reason: not valid java name */
    public String m36813for() {
        return this.f33006do;
    }

    /* renamed from: if, reason: not valid java name */
    public boolean m36814if(String str, boolean z) {
        return Cthis.m37267if().getFieldTrialParamByFeatureAsBoolean(m36812do(), str, z);
    }

    /* renamed from: new, reason: not valid java name */
    public boolean m36815new() {
        return Cthis.m37267if().isEnabled(m36812do());
    }
}
