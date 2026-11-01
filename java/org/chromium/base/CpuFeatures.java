package org.chromium.base;

import android.support.v4.lo0;

@lo0("base::android")
/* loaded from: classes3.dex */
public abstract class CpuFeatures {

    public interface Natives {
        int getCoreCount();

        long getCpuFeatures();
    }

    /* renamed from: do, reason: not valid java name */
    public static int m36795do() {
        return Ccase.m37001if().getCoreCount();
    }

    /* renamed from: if, reason: not valid java name */
    public static long m36796if() {
        return Ccase.m37001if().getCpuFeatures();
    }
}
