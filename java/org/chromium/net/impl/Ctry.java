package org.chromium.net.impl;

import android.support.v4.dl;
import android.support.v4.oe0;
import org.chromium.base.JniStaticTestMocker;
import org.chromium.base.NativeLibraryLoadedStatus;
import org.chromium.net.impl.CronetUrlRequestContext;

@dl("crbug.com/993421")
/* renamed from: org.chromium.net.impl.try, reason: invalid class name */
/* loaded from: classes3.dex */
final class Ctry implements CronetUrlRequestContext.Natives {

    /* renamed from: do, reason: not valid java name */
    private static CronetUrlRequestContext.Natives f33693do;

    /* renamed from: if, reason: not valid java name */
    public static final JniStaticTestMocker<CronetUrlRequestContext.Natives> f33694if = new Cdo();

    /* renamed from: org.chromium.net.impl.try$do, reason: invalid class name */
    public class Cdo implements JniStaticTestMocker<CronetUrlRequestContext.Natives> {
        @Override // org.chromium.base.JniStaticTestMocker
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void setInstanceForTesting(CronetUrlRequestContext.Natives natives) {
            if (!oe0.f4582do) {
                throw new RuntimeException("Tried to set a JNI mock when mocks aren't enabled!");
            }
            CronetUrlRequestContext.Natives unused = Ctry.f33693do = natives;
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static CronetUrlRequestContext.Natives m37709if() {
        if (oe0.f4582do) {
            CronetUrlRequestContext.Natives natives = f33693do;
            if (natives != null) {
                return natives;
            }
            if (oe0.f4583if) {
                throw new UnsupportedOperationException("No mock found for the native implementation for org.chromium.net.impl.CronetUrlRequestContext.Natives. The current configuration requires all native implementations to have a mock instance.");
            }
        }
        NativeLibraryLoadedStatus.m36863do(false);
        return new Ctry();
    }

    @Override // org.chromium.net.impl.CronetUrlRequestContext.Natives
    public void addPkp(long j, String str, byte[][] bArr, boolean z, long j2) {
        oe0.X(j, str, bArr, z, j2);
    }

    @Override // org.chromium.net.impl.CronetUrlRequestContext.Natives
    public void addQuicHint(long j, String str, int i, int i2) {
        oe0.Y(j, str, i, i2);
    }

    @Override // org.chromium.net.impl.CronetUrlRequestContext.Natives
    public void configureNetworkQualityEstimatorForTesting(long j, CronetUrlRequestContext cronetUrlRequestContext, boolean z, boolean z2, boolean z3) {
        oe0.Z(j, cronetUrlRequestContext, z, z2, z3);
    }

    @Override // org.chromium.net.impl.CronetUrlRequestContext.Natives
    public long createRequestContextAdapter(long j) {
        return oe0.a0(j);
    }

    @Override // org.chromium.net.impl.CronetUrlRequestContext.Natives
    public long createRequestContextConfig(String str, String str2, boolean z, String str3, boolean z2, boolean z3, boolean z4, int i, long j, String str4, long j2, boolean z5, boolean z6, int i2) {
        return oe0.b0(str, str2, z, str3, z2, z3, z4, i, j, str4, j2, z5, z6, i2);
    }

    @Override // org.chromium.net.impl.CronetUrlRequestContext.Natives
    public void destroy(long j, CronetUrlRequestContext cronetUrlRequestContext) {
        oe0.c0(j, cronetUrlRequestContext);
    }

    @Override // org.chromium.net.impl.CronetUrlRequestContext.Natives
    public byte[] getHistogramDeltas() {
        return oe0.d0();
    }

    @Override // org.chromium.net.impl.CronetUrlRequestContext.Natives
    public void initRequestContextOnInitThread(long j, CronetUrlRequestContext cronetUrlRequestContext) {
        oe0.e0(j, cronetUrlRequestContext);
    }

    @Override // org.chromium.net.impl.CronetUrlRequestContext.Natives
    public void provideRTTObservations(long j, CronetUrlRequestContext cronetUrlRequestContext, boolean z) {
        oe0.f0(j, cronetUrlRequestContext, z);
    }

    @Override // org.chromium.net.impl.CronetUrlRequestContext.Natives
    public void provideThroughputObservations(long j, CronetUrlRequestContext cronetUrlRequestContext, boolean z) {
        oe0.g0(j, cronetUrlRequestContext, z);
    }

    @Override // org.chromium.net.impl.CronetUrlRequestContext.Natives
    public int setMinLogLevel(int i) {
        return oe0.h0(i);
    }

    @Override // org.chromium.net.impl.CronetUrlRequestContext.Natives
    public void startNetLogToDisk(long j, CronetUrlRequestContext cronetUrlRequestContext, String str, boolean z, int i) {
        oe0.i0(j, cronetUrlRequestContext, str, z, i);
    }

    @Override // org.chromium.net.impl.CronetUrlRequestContext.Natives
    public boolean startNetLogToFile(long j, CronetUrlRequestContext cronetUrlRequestContext, String str, boolean z) {
        return oe0.j0(j, cronetUrlRequestContext, str, z);
    }

    @Override // org.chromium.net.impl.CronetUrlRequestContext.Natives
    public void stopNetLog(long j, CronetUrlRequestContext cronetUrlRequestContext) {
        oe0.k0(j, cronetUrlRequestContext);
    }
}
