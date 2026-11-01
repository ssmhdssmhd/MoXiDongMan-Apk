package org.chromium.base;

import android.support.v4.lo0;
import org.chromium.base.annotations.CalledByNative;

@lo0("base::android")
/* loaded from: classes3.dex */
public class EventLog {
    @CalledByNative
    public static void writeEvent(int i, int i2) {
        android.util.EventLog.writeEvent(i, i2);
    }
}
