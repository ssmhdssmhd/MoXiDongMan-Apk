package org.chromium.base;

import android.support.v4.dl;
import android.support.v4.oe0;
import org.chromium.base.PowerMonitor;

@dl("crbug.com/993421")
/* renamed from: org.chromium.base.while, reason: invalid class name */
/* loaded from: classes3.dex */
final class Cwhile implements PowerMonitor.Natives {

    /* renamed from: do, reason: not valid java name */
    private static PowerMonitor.Natives f33290do;

    /* renamed from: if, reason: not valid java name */
    public static final JniStaticTestMocker<PowerMonitor.Natives> f33291if = new Cdo();

    /* renamed from: org.chromium.base.while$do, reason: invalid class name */
    public class Cdo implements JniStaticTestMocker<PowerMonitor.Natives> {
        @Override // org.chromium.base.JniStaticTestMocker
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void setInstanceForTesting(PowerMonitor.Natives natives) {
            if (!oe0.f4582do) {
                throw new RuntimeException("Tried to set a JNI mock when mocks aren't enabled!");
            }
            PowerMonitor.Natives unused = Cwhile.f33290do = natives;
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static PowerMonitor.Natives m37287if() {
        if (oe0.f4582do) {
            PowerMonitor.Natives natives = f33290do;
            if (natives != null) {
                return natives;
            }
            if (oe0.f4583if) {
                throw new UnsupportedOperationException("No mock found for the native implementation for org.chromium.base.PowerMonitor.Natives. The current configuration requires all native implementations to have a mock instance.");
            }
        }
        NativeLibraryLoadedStatus.m36863do(false);
        return new Cwhile();
    }

    @Override // org.chromium.base.PowerMonitor.Natives
    public void onBatteryChargingChanged() {
        oe0.m5614volatile();
    }
}
