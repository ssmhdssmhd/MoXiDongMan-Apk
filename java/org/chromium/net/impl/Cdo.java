package org.chromium.net.impl;

import android.support.v4.dl;
import android.support.v4.oe0;
import java.nio.ByteBuffer;
import org.chromium.base.JniStaticTestMocker;
import org.chromium.base.NativeLibraryLoadedStatus;
import org.chromium.net.impl.CronetBidirectionalStream;

@dl("crbug.com/993421")
/* renamed from: org.chromium.net.impl.do, reason: invalid class name */
/* loaded from: classes3.dex */
final class Cdo implements CronetBidirectionalStream.Natives {

    /* renamed from: do, reason: not valid java name */
    private static CronetBidirectionalStream.Natives f33634do;

    /* renamed from: if, reason: not valid java name */
    public static final JniStaticTestMocker<CronetBidirectionalStream.Natives> f33635if = new C0481do();

    /* renamed from: org.chromium.net.impl.do$do, reason: invalid class name and collision with other inner class name */
    public class C0481do implements JniStaticTestMocker<CronetBidirectionalStream.Natives> {
        @Override // org.chromium.base.JniStaticTestMocker
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void setInstanceForTesting(CronetBidirectionalStream.Natives natives) {
            if (!oe0.f4582do) {
                throw new RuntimeException("Tried to set a JNI mock when mocks aren't enabled!");
            }
            CronetBidirectionalStream.Natives unused = Cdo.f33634do = natives;
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static CronetBidirectionalStream.Natives m37644if() {
        if (oe0.f4582do) {
            CronetBidirectionalStream.Natives natives = f33634do;
            if (natives != null) {
                return natives;
            }
            if (oe0.f4583if) {
                throw new UnsupportedOperationException("No mock found for the native implementation for org.chromium.net.impl.CronetBidirectionalStream.Natives. The current configuration requires all native implementations to have a mock instance.");
            }
        }
        NativeLibraryLoadedStatus.m36863do(false);
        return new Cdo();
    }

    @Override // org.chromium.net.impl.CronetBidirectionalStream.Natives
    public long createBidirectionalStream(CronetBidirectionalStream cronetBidirectionalStream, long j, boolean z, boolean z2, boolean z3, int i, boolean z4, int i2) {
        return oe0.J(cronetBidirectionalStream, j, z, z2, z3, i, z4, i2);
    }

    @Override // org.chromium.net.impl.CronetBidirectionalStream.Natives
    public void destroy(long j, CronetBidirectionalStream cronetBidirectionalStream, boolean z) {
        oe0.K(j, cronetBidirectionalStream, z);
    }

    @Override // org.chromium.net.impl.CronetBidirectionalStream.Natives
    public boolean readData(long j, CronetBidirectionalStream cronetBidirectionalStream, ByteBuffer byteBuffer, int i, int i2) {
        return oe0.L(j, cronetBidirectionalStream, byteBuffer, i, i2);
    }

    @Override // org.chromium.net.impl.CronetBidirectionalStream.Natives
    public void sendRequestHeaders(long j, CronetBidirectionalStream cronetBidirectionalStream) {
        oe0.M(j, cronetBidirectionalStream);
    }

    @Override // org.chromium.net.impl.CronetBidirectionalStream.Natives
    public int start(long j, CronetBidirectionalStream cronetBidirectionalStream, String str, int i, String str2, String[] strArr, boolean z) {
        return oe0.N(j, cronetBidirectionalStream, str, i, str2, strArr, z);
    }

    @Override // org.chromium.net.impl.CronetBidirectionalStream.Natives
    public boolean writevData(long j, CronetBidirectionalStream cronetBidirectionalStream, ByteBuffer[] byteBufferArr, int[] iArr, int[] iArr2, boolean z) {
        return oe0.O(j, cronetBidirectionalStream, byteBufferArr, iArr, iArr2, z);
    }
}
