package org.chromium.base;

import android.support.v4.cx0;
import android.support.v4.lo0;

@lo0("base::android")
@cx0
/* loaded from: classes3.dex */
public class TimeUtils {

    /* renamed from: do, reason: not valid java name */
    public static final int f33099do = 1000000;

    /* renamed from: for, reason: not valid java name */
    public static final int f33100for = 3600;

    /* renamed from: if, reason: not valid java name */
    public static final int f33101if = 60;

    /* renamed from: new, reason: not valid java name */
    public static final int f33102new = 86400;

    public interface Natives {
        long getTimeTicksNowUs();
    }

    private TimeUtils() {
    }
}
