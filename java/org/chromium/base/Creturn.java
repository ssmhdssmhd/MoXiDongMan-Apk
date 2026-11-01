package org.chromium.base;

import android.support.v4.cx0;
import android.support.v4.dl;
import android.support.v4.oe0;
import org.chromium.base.TraceEvent;

@dl("crbug.com/993421")
@cx0
/* renamed from: org.chromium.base.return, reason: invalid class name */
/* loaded from: classes3.dex */
final class Creturn implements TraceEvent.Natives {

    /* renamed from: do, reason: not valid java name */
    private static TraceEvent.Natives f33214do;

    /* renamed from: if, reason: not valid java name */
    public static final JniStaticTestMocker<TraceEvent.Natives> f33215if = new Cdo();

    /* renamed from: org.chromium.base.return$do, reason: invalid class name */
    public class Cdo implements JniStaticTestMocker<TraceEvent.Natives> {
        @Override // org.chromium.base.JniStaticTestMocker
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void setInstanceForTesting(TraceEvent.Natives natives) {
            if (!oe0.f4582do) {
                throw new RuntimeException("Tried to set a JNI mock when mocks aren't enabled!");
            }
            TraceEvent.Natives unused = Creturn.f33214do = natives;
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static TraceEvent.Natives m37185if() {
        if (oe0.f4582do) {
            TraceEvent.Natives natives = f33214do;
            if (natives != null) {
                return natives;
            }
            if (oe0.f4583if) {
                throw new UnsupportedOperationException("No mock found for the native implementation for org.chromium.base.TraceEvent.Natives. The current configuration requires all native implementations to have a mock instance.");
            }
        }
        NativeLibraryLoadedStatus.m36863do(true);
        return new Creturn();
    }

    @Override // org.chromium.base.TraceEvent.Natives
    public void begin(String str, String str2) {
        oe0.m5601protected(str, str2);
    }

    @Override // org.chromium.base.TraceEvent.Natives
    public void beginToplevel(String str) {
        oe0.m5612transient(str);
    }

    @Override // org.chromium.base.TraceEvent.Natives
    public void end(String str, String str2) {
        oe0.m5593implements(str, str2);
    }

    @Override // org.chromium.base.TraceEvent.Natives
    public void endToplevel(String str) {
        oe0.m5595instanceof(str);
    }

    @Override // org.chromium.base.TraceEvent.Natives
    public void finishAsync(String str, long j) {
        oe0.m5608synchronized(str, j);
    }

    @Override // org.chromium.base.TraceEvent.Natives
    public void instant(String str, String str2) {
        oe0.a(str, str2);
    }

    @Override // org.chromium.base.TraceEvent.Natives
    public void registerEnabledObserver() {
        oe0.b();
    }

    @Override // org.chromium.base.TraceEvent.Natives
    public void setupATraceStartupTrace(String str) {
        oe0.c(str);
    }

    @Override // org.chromium.base.TraceEvent.Natives
    public void startATrace(String str) {
        oe0.d(str);
    }

    @Override // org.chromium.base.TraceEvent.Natives
    public void startAsync(String str, long j) {
        oe0.e(str, j);
    }

    @Override // org.chromium.base.TraceEvent.Natives
    public void stopATrace() {
        oe0.f();
    }
}
