package org.chromium.base;

import android.os.StrictMode;
import android.support.v4.cx0;
import android.support.v4.lo0;
import java.util.TimeZone;
import org.chromium.base.annotations.CalledByNative;

@lo0("base::android")
@cx0
/* loaded from: classes3.dex */
class TimezoneUtils {
    private TimezoneUtils() {
    }

    @CalledByNative
    private static String getDefaultTimeZoneId() {
        StrictMode.ThreadPolicy threadPolicyAllowThreadDiskReads = StrictMode.allowThreadDiskReads();
        String id = TimeZone.getDefault().getID();
        StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskReads);
        return id;
    }
}
