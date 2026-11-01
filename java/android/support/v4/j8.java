package android.support.v4;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;

/* loaded from: classes2.dex */
public class j8 {
    /* renamed from: do, reason: not valid java name */
    public static int m3742do(Context context) {
        Intent intentRegisterReceiver = context.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        if (intentRegisterReceiver != null) {
            return intentRegisterReceiver.getIntExtra("level", -1);
        }
        return -1;
    }
}
