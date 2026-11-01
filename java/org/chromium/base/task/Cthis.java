package org.chromium.base.task;

import android.support.v4.dl;
import android.support.v4.oe0;
import org.chromium.base.JniStaticTestMocker;
import org.chromium.base.NativeLibraryLoadedStatus;
import org.chromium.base.task.TaskRunnerImpl;

@dl("crbug.com/993421")
/* renamed from: org.chromium.base.task.this, reason: invalid class name */
/* loaded from: classes3.dex */
final class Cthis implements TaskRunnerImpl.Natives {

    /* renamed from: do, reason: not valid java name */
    private static TaskRunnerImpl.Natives f33279do;

    /* renamed from: if, reason: not valid java name */
    public static final JniStaticTestMocker<TaskRunnerImpl.Natives> f33280if = new Cdo();

    /* renamed from: org.chromium.base.task.this$do, reason: invalid class name */
    public class Cdo implements JniStaticTestMocker<TaskRunnerImpl.Natives> {
        @Override // org.chromium.base.JniStaticTestMocker
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void setInstanceForTesting(TaskRunnerImpl.Natives natives) {
            if (!oe0.f4582do) {
                throw new RuntimeException("Tried to set a JNI mock when mocks aren't enabled!");
            }
            TaskRunnerImpl.Natives unused = Cthis.f33279do = natives;
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static TaskRunnerImpl.Natives m37264if() {
        if (oe0.f4582do) {
            TaskRunnerImpl.Natives natives = f33279do;
            if (natives != null) {
                return natives;
            }
            if (oe0.f4583if) {
                throw new UnsupportedOperationException("No mock found for the native implementation for org.chromium.base.task.TaskRunnerImpl.Natives. The current configuration requires all native implementations to have a mock instance.");
            }
        }
        NativeLibraryLoadedStatus.m36863do(false);
        return new Cthis();
    }

    @Override // org.chromium.base.task.TaskRunnerImpl.Natives
    public boolean belongsToCurrentThread(long j) {
        return oe0.s(j);
    }

    @Override // org.chromium.base.task.TaskRunnerImpl.Natives
    public void destroy(long j) {
        oe0.t(j);
    }

    @Override // org.chromium.base.task.TaskRunnerImpl.Natives
    public long init(int i, int i2, boolean z, boolean z2, byte b, byte[] bArr) {
        return oe0.u(i, i2, z, z2, b, bArr);
    }

    @Override // org.chromium.base.task.TaskRunnerImpl.Natives
    public void postDelayedTask(long j, Runnable runnable, long j2, String str) {
        oe0.v(j, runnable, j2, str);
    }
}
