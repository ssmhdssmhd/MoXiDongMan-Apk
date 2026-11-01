package org.chromium.net.impl;

import android.support.v4.dl;
import android.support.v4.oe0;
import java.nio.ByteBuffer;
import org.chromium.base.JniStaticTestMocker;
import org.chromium.base.NativeLibraryLoadedStatus;
import org.chromium.net.impl.CronetUrlRequest;
import org.chromium.net.impl.VersionSafeCallbacks;

@dl("crbug.com/993421")
/* renamed from: org.chromium.net.impl.case, reason: invalid class name */
/* loaded from: classes3.dex */
final class Ccase implements CronetUrlRequest.Natives {

    /* renamed from: do, reason: not valid java name */
    private static CronetUrlRequest.Natives f33632do;

    /* renamed from: if, reason: not valid java name */
    public static final JniStaticTestMocker<CronetUrlRequest.Natives> f33633if = new Cdo();

    /* renamed from: org.chromium.net.impl.case$do, reason: invalid class name */
    public class Cdo implements JniStaticTestMocker<CronetUrlRequest.Natives> {
        @Override // org.chromium.base.JniStaticTestMocker
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void setInstanceForTesting(CronetUrlRequest.Natives natives) {
            if (!oe0.f4582do) {
                throw new RuntimeException("Tried to set a JNI mock when mocks aren't enabled!");
            }
            CronetUrlRequest.Natives unused = Ccase.f33632do = natives;
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static CronetUrlRequest.Natives m37641if() {
        if (oe0.f4582do) {
            CronetUrlRequest.Natives natives = f33632do;
            if (natives != null) {
                return natives;
            }
            if (oe0.f4583if) {
                throw new UnsupportedOperationException("No mock found for the native implementation for org.chromium.net.impl.CronetUrlRequest.Natives. The current configuration requires all native implementations to have a mock instance.");
            }
        }
        NativeLibraryLoadedStatus.m36863do(false);
        return new Ccase();
    }

    @Override // org.chromium.net.impl.CronetUrlRequest.Natives
    public boolean addRequestHeader(long j, CronetUrlRequest cronetUrlRequest, String str, String str2) {
        return oe0.l0(j, cronetUrlRequest, str, str2);
    }

    @Override // org.chromium.net.impl.CronetUrlRequest.Natives
    public long createRequestAdapter(CronetUrlRequest cronetUrlRequest, long j, String str, int i, boolean z, boolean z2, boolean z3, boolean z4, int i2, boolean z5, int i3, int i4) {
        return oe0.m0(cronetUrlRequest, j, str, i, z, z2, z3, z4, i2, z5, i3, i4);
    }

    @Override // org.chromium.net.impl.CronetUrlRequest.Natives
    public void destroy(long j, CronetUrlRequest cronetUrlRequest, boolean z) {
        oe0.n0(j, cronetUrlRequest, z);
    }

    @Override // org.chromium.net.impl.CronetUrlRequest.Natives
    public void followDeferredRedirect(long j, CronetUrlRequest cronetUrlRequest) {
        oe0.o0(j, cronetUrlRequest);
    }

    @Override // org.chromium.net.impl.CronetUrlRequest.Natives
    public void getStatus(long j, CronetUrlRequest cronetUrlRequest, VersionSafeCallbacks.UrlRequestStatusListener urlRequestStatusListener) {
        oe0.p0(j, cronetUrlRequest, urlRequestStatusListener);
    }

    @Override // org.chromium.net.impl.CronetUrlRequest.Natives
    public boolean readData(long j, CronetUrlRequest cronetUrlRequest, ByteBuffer byteBuffer, int i, int i2) {
        return oe0.q0(j, cronetUrlRequest, byteBuffer, i, i2);
    }

    @Override // org.chromium.net.impl.CronetUrlRequest.Natives
    public boolean setHttpMethod(long j, CronetUrlRequest cronetUrlRequest, String str) {
        return oe0.r0(j, cronetUrlRequest, str);
    }

    @Override // org.chromium.net.impl.CronetUrlRequest.Natives
    public void start(long j, CronetUrlRequest cronetUrlRequest) {
        oe0.s0(j, cronetUrlRequest);
    }
}
