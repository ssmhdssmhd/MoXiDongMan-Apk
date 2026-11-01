package org.chromium.base.task;

import android.support.v4.dl;
import android.support.v4.oe0;
import org.chromium.base.JniStaticTestMocker;
import org.chromium.base.NativeLibraryLoadedStatus;
import org.chromium.base.task.PostTask;

@dl("crbug.com/993421")
/* renamed from: org.chromium.base.task.else, reason: invalid class name */
/* loaded from: classes3.dex */
final class Celse implements PostTask.Natives {

    /* renamed from: do, reason: not valid java name */
    private static PostTask.Natives f33259do;

    /* renamed from: if, reason: not valid java name */
    public static final JniStaticTestMocker<PostTask.Natives> f33260if = new Cdo();

    /* renamed from: org.chromium.base.task.else$do, reason: invalid class name */
    public class Cdo implements JniStaticTestMocker<PostTask.Natives> {
        @Override // org.chromium.base.JniStaticTestMocker
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void setInstanceForTesting(PostTask.Natives natives) {
            if (!oe0.f4582do) {
                throw new RuntimeException("Tried to set a JNI mock when mocks aren't enabled!");
            }
            PostTask.Natives unused = Celse.f33259do = natives;
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static PostTask.Natives m37255if() {
        if (oe0.f4582do) {
            PostTask.Natives natives = f33259do;
            if (natives != null) {
                return natives;
            }
            if (oe0.f4583if) {
                throw new UnsupportedOperationException("No mock found for the native implementation for org.chromium.base.task.PostTask.Natives. The current configuration requires all native implementations to have a mock instance.");
            }
        }
        NativeLibraryLoadedStatus.m36863do(false);
        return new Celse();
    }

    @Override // org.chromium.base.task.PostTask.Natives
    public void postDelayedTask(int i, boolean z, boolean z2, byte b, byte[] bArr, Runnable runnable, long j, String str) {
        oe0.r(i, z, z2, b, bArr, runnable, j, str);
    }
}
