package org.chromium.net.impl;

import android.support.v4.dl;
import android.support.v4.oe0;
import org.chromium.base.JniStaticTestMocker;
import org.chromium.base.NativeLibraryLoadedStatus;
import org.chromium.net.impl.CronetUploadDataStream;

@dl("crbug.com/993421")
/* renamed from: org.chromium.net.impl.new, reason: invalid class name */
/* loaded from: classes3.dex */
final class Cnew implements CronetUploadDataStream.Natives {

    /* renamed from: do, reason: not valid java name */
    private static CronetUploadDataStream.Natives f33681do;

    /* renamed from: if, reason: not valid java name */
    public static final JniStaticTestMocker<CronetUploadDataStream.Natives> f33682if = new Cdo();

    /* renamed from: org.chromium.net.impl.new$do, reason: invalid class name */
    public class Cdo implements JniStaticTestMocker<CronetUploadDataStream.Natives> {
        @Override // org.chromium.base.JniStaticTestMocker
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void setInstanceForTesting(CronetUploadDataStream.Natives natives) {
            if (!oe0.f4582do) {
                throw new RuntimeException("Tried to set a JNI mock when mocks aren't enabled!");
            }
            CronetUploadDataStream.Natives unused = Cnew.f33681do = natives;
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static CronetUploadDataStream.Natives m37693if() {
        if (oe0.f4582do) {
            CronetUploadDataStream.Natives natives = f33681do;
            if (natives != null) {
                return natives;
            }
            if (oe0.f4583if) {
                throw new UnsupportedOperationException("No mock found for the native implementation for org.chromium.net.impl.CronetUploadDataStream.Natives. The current configuration requires all native implementations to have a mock instance.");
            }
        }
        NativeLibraryLoadedStatus.m36863do(false);
        return new Cnew();
    }

    @Override // org.chromium.net.impl.CronetUploadDataStream.Natives
    public long attachUploadDataToRequest(CronetUploadDataStream cronetUploadDataStream, long j, long j2) {
        return oe0.R(cronetUploadDataStream, j, j2);
    }

    @Override // org.chromium.net.impl.CronetUploadDataStream.Natives
    public long createAdapterForTesting(CronetUploadDataStream cronetUploadDataStream) {
        return oe0.S(cronetUploadDataStream);
    }

    @Override // org.chromium.net.impl.CronetUploadDataStream.Natives
    public long createUploadDataStreamForTesting(CronetUploadDataStream cronetUploadDataStream, long j, long j2) {
        return oe0.T(cronetUploadDataStream, j, j2);
    }

    @Override // org.chromium.net.impl.CronetUploadDataStream.Natives
    public void destroy(long j) {
        oe0.U(j);
    }

    @Override // org.chromium.net.impl.CronetUploadDataStream.Natives
    public void onReadSucceeded(long j, CronetUploadDataStream cronetUploadDataStream, int i, boolean z) {
        oe0.V(j, cronetUploadDataStream, i, z);
    }

    @Override // org.chromium.net.impl.CronetUploadDataStream.Natives
    public void onRewindSucceeded(long j, CronetUploadDataStream cronetUploadDataStream) {
        oe0.W(j, cronetUploadDataStream);
    }
}
