package org.chromium.base.metrics;

import android.support.v4.lo0;

@lo0("base::android")
/* loaded from: classes3.dex */
public final class StatisticsRecorderAndroid {

    public interface Natives {
        String toJson(int i);
    }

    private StatisticsRecorderAndroid() {
    }

    /* renamed from: do, reason: not valid java name */
    public static String m37153do(int i) {
        return Ccase.m37155if().toJson(i);
    }
}
