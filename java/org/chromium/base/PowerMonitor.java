package org.chromium.base;

import android.annotation.TargetApi;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.BatteryManager;
import android.os.Build;
import android.support.v4.lo0;
import org.chromium.base.annotations.CalledByNative;

@lo0("base::android")
/* loaded from: classes3.dex */
public class PowerMonitor {

    /* renamed from: for, reason: not valid java name */
    public static final /* synthetic */ boolean f33076for = false;

    /* renamed from: if, reason: not valid java name */
    private static PowerMonitor f33077if;

    /* renamed from: do, reason: not valid java name */
    private boolean f33078do;

    public interface Natives {
        void onBatteryChargingChanged();
    }

    /* renamed from: org.chromium.base.PowerMonitor$do, reason: invalid class name */
    public class Cdo extends BroadcastReceiver {
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            PowerMonitor.m36903try(intent.getAction().equals("android.intent.action.ACTION_POWER_DISCONNECTED"));
        }
    }

    private PowerMonitor() {
    }

    /* renamed from: for, reason: not valid java name */
    public static void m36900for() {
        f33077if = new PowerMonitor();
    }

    @CalledByNative
    private static int getRemainingBatteryCapacity() {
        if (Build.VERSION.SDK_INT < 21) {
            return 0;
        }
        if (f33077if == null) {
            m36901if();
        }
        return m36902new();
    }

    /* renamed from: if, reason: not valid java name */
    public static void m36901if() {
        ThreadUtils.m36938for();
        if (f33077if != null) {
            return;
        }
        Context contextM37273case = Ctry.m37273case();
        f33077if = new PowerMonitor();
        Intent intentRegisterReceiver = contextM37273case.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        if (intentRegisterReceiver != null) {
            m36903try(intentRegisterReceiver.getIntExtra("plugged", 0) == 0);
        }
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.ACTION_POWER_CONNECTED");
        intentFilter.addAction("android.intent.action.ACTION_POWER_DISCONNECTED");
        contextM37273case.registerReceiver(new Cdo(), intentFilter);
    }

    @CalledByNative
    private static boolean isBatteryPower() {
        if (f33077if == null) {
            m36901if();
        }
        return f33077if.f33078do;
    }

    @TargetApi(21)
    /* renamed from: new, reason: not valid java name */
    private static int m36902new() {
        return ((BatteryManager) Ctry.m37273case().getSystemService("batterymanager")).getIntProperty(1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: try, reason: not valid java name */
    public static void m36903try(boolean z) {
        f33077if.f33078do = z;
        Cwhile.m37287if().onBatteryChargingChanged();
    }
}
