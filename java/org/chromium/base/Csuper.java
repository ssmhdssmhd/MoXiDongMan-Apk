package org.chromium.base;

import android.support.v4.cx0;
import android.support.v4.dl;
import android.support.v4.oe0;
import org.chromium.base.MemoryPressureListener;

@dl("crbug.com/993421")
@cx0
/* renamed from: org.chromium.base.super, reason: invalid class name */
/* loaded from: classes3.dex */
final class Csuper implements MemoryPressureListener.Natives {

    /* renamed from: do, reason: not valid java name */
    private static MemoryPressureListener.Natives f33219do;

    /* renamed from: if, reason: not valid java name */
    public static final JniStaticTestMocker<MemoryPressureListener.Natives> f33220if = new Cdo();

    /* renamed from: org.chromium.base.super$do, reason: invalid class name */
    public class Cdo implements JniStaticTestMocker<MemoryPressureListener.Natives> {
        @Override // org.chromium.base.JniStaticTestMocker
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void setInstanceForTesting(MemoryPressureListener.Natives natives) {
            if (!oe0.f4582do) {
                throw new RuntimeException("Tried to set a JNI mock when mocks aren't enabled!");
            }
            MemoryPressureListener.Natives unused = Csuper.f33219do = natives;
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static MemoryPressureListener.Natives m37197if() {
        if (oe0.f4582do) {
            MemoryPressureListener.Natives natives = f33219do;
            if (natives != null) {
                return natives;
            }
            if (oe0.f4583if) {
                throw new UnsupportedOperationException("No mock found for the native implementation for org.chromium.base.MemoryPressureListener.Natives. The current configuration requires all native implementations to have a mock instance.");
            }
        }
        NativeLibraryLoadedStatus.m36863do(true);
        return new Csuper();
    }

    @Override // org.chromium.base.MemoryPressureListener.Natives
    public void onMemoryPressure(int i) {
        oe0.m5583continue(i);
    }
}
