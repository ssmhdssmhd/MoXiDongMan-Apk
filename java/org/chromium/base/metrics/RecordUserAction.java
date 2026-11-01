package org.chromium.base.metrics;

import android.os.SystemClock;
import android.support.v4.lo0;
import org.chromium.base.annotations.CalledByNative;

@lo0("base::android")
/* loaded from: classes3.dex */
public class RecordUserAction {

    /* renamed from: do, reason: not valid java name */
    private static long f33176do;

    /* renamed from: if, reason: not valid java name */
    public static final /* synthetic */ boolean f33177if = false;

    public interface Natives {
        long addActionCallbackForTesting(UserActionCallback userActionCallback);

        void removeActionCallbackForTesting(long j);
    }

    public interface UserActionCallback {
        @CalledByNative("UserActionCallback")
        void onActionRecorded(String str);
    }

    /* renamed from: do, reason: not valid java name */
    public static void m37150do(String str) {
        Celse.m37167do().recordUserAction(str, SystemClock.elapsedRealtime());
    }

    /* renamed from: for, reason: not valid java name */
    public static void m37151for(UserActionCallback userActionCallback) {
        f33176do = Ctry.m37179if().addActionCallbackForTesting(userActionCallback);
    }

    /* renamed from: if, reason: not valid java name */
    public static void m37152if() {
        Ctry.m37179if().removeActionCallbackForTesting(f33176do);
        f33176do = 0L;
    }
}
