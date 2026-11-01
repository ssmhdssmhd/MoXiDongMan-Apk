package org.chromium.base;

import android.support.v4.cx0;
import android.support.v4.dl;
import android.support.v4.oe0;
import org.chromium.base.EarlyTraceEvent;

@dl("crbug.com/993421")
@cx0
/* renamed from: org.chromium.base.goto, reason: invalid class name */
/* loaded from: classes3.dex */
final class Cgoto implements EarlyTraceEvent.Natives {

    /* renamed from: do, reason: not valid java name */
    private static EarlyTraceEvent.Natives f33165do;

    /* renamed from: if, reason: not valid java name */
    public static final JniStaticTestMocker<EarlyTraceEvent.Natives> f33166if = new Cdo();

    /* renamed from: org.chromium.base.goto$do, reason: invalid class name */
    public class Cdo implements JniStaticTestMocker<EarlyTraceEvent.Natives> {
        @Override // org.chromium.base.JniStaticTestMocker
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void setInstanceForTesting(EarlyTraceEvent.Natives natives) {
            if (!oe0.f4582do) {
                throw new RuntimeException("Tried to set a JNI mock when mocks aren't enabled!");
            }
            EarlyTraceEvent.Natives unused = Cgoto.f33165do = natives;
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static EarlyTraceEvent.Natives m37115if() {
        if (oe0.f4582do) {
            EarlyTraceEvent.Natives natives = f33165do;
            if (natives != null) {
                return natives;
            }
            if (oe0.f4583if) {
                throw new UnsupportedOperationException("No mock found for the native implementation for org.chromium.base.EarlyTraceEvent.Natives. The current configuration requires all native implementations to have a mock instance.");
            }
        }
        NativeLibraryLoadedStatus.m36863do(true);
        return new Cgoto();
    }

    @Override // org.chromium.base.EarlyTraceEvent.Natives
    public void recordEarlyAsyncBeginEvent(String str, long j, long j2) {
        oe0.m5581class(str, j, j2);
    }

    @Override // org.chromium.base.EarlyTraceEvent.Natives
    public void recordEarlyAsyncEndEvent(String str, long j, long j2) {
        oe0.m5582const(str, j, j2);
    }

    @Override // org.chromium.base.EarlyTraceEvent.Natives
    public void recordEarlyBeginEvent(String str, long j, int i, long j2) {
        oe0.m5588final(str, j, i, j2);
    }

    @Override // org.chromium.base.EarlyTraceEvent.Natives
    public void recordEarlyEndEvent(String str, long j, int i, long j2) {
        oe0.m5606super(str, j, i, j2);
    }

    @Override // org.chromium.base.EarlyTraceEvent.Natives
    public void recordEarlyToplevelBeginEvent(String str, long j, int i, long j2) {
        oe0.m5610throw(str, j, i, j2);
    }

    @Override // org.chromium.base.EarlyTraceEvent.Natives
    public void recordEarlyToplevelEndEvent(String str, long j, int i, long j2) {
        oe0.m5615while(str, j, i, j2);
    }
}
