package org.chromium.base;

import android.support.v4.cx0;
import android.support.v4.dl;
import android.support.v4.oe0;
import org.chromium.base.JavaHandlerThread;

@dl("crbug.com/993421")
@cx0
/* renamed from: org.chromium.base.final, reason: invalid class name */
/* loaded from: classes3.dex */
final class Cfinal implements JavaHandlerThread.Natives {

    /* renamed from: do, reason: not valid java name */
    private static JavaHandlerThread.Natives f33163do;

    /* renamed from: if, reason: not valid java name */
    public static final JniStaticTestMocker<JavaHandlerThread.Natives> f33164if = new Cdo();

    /* renamed from: org.chromium.base.final$do, reason: invalid class name */
    public class Cdo implements JniStaticTestMocker<JavaHandlerThread.Natives> {
        @Override // org.chromium.base.JniStaticTestMocker
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void setInstanceForTesting(JavaHandlerThread.Natives natives) {
            if (!oe0.f4582do) {
                throw new RuntimeException("Tried to set a JNI mock when mocks aren't enabled!");
            }
            JavaHandlerThread.Natives unused = Cfinal.f33163do = natives;
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static JavaHandlerThread.Natives m37111if() {
        if (oe0.f4582do) {
            JavaHandlerThread.Natives natives = f33163do;
            if (natives != null) {
                return natives;
            }
            if (oe0.f4583if) {
                throw new UnsupportedOperationException("No mock found for the native implementation for org.chromium.base.JavaHandlerThread.Natives. The current configuration requires all native implementations to have a mock instance.");
            }
        }
        NativeLibraryLoadedStatus.m36863do(true);
        return new Cfinal();
    }

    @Override // org.chromium.base.JavaHandlerThread.Natives
    public void initializeThread(long j, long j2) {
        oe0.m5600private(j, j2);
    }

    @Override // org.chromium.base.JavaHandlerThread.Natives
    public void onLooperStopped(long j) {
        oe0.m5577abstract(j);
    }
}
