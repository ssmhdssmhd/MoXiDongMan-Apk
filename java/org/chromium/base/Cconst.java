package org.chromium.base;

import android.support.v4.cx0;
import android.support.v4.dl;
import android.support.v4.oe0;
import org.chromium.base.JavaExceptionReporter;

@dl("crbug.com/993421")
@cx0
/* renamed from: org.chromium.base.const, reason: invalid class name */
/* loaded from: classes3.dex */
final class Cconst implements JavaExceptionReporter.Natives {

    /* renamed from: do, reason: not valid java name */
    private static JavaExceptionReporter.Natives f33152do;

    /* renamed from: if, reason: not valid java name */
    public static final JniStaticTestMocker<JavaExceptionReporter.Natives> f33153if = new Cdo();

    /* renamed from: org.chromium.base.const$do, reason: invalid class name */
    public class Cdo implements JniStaticTestMocker<JavaExceptionReporter.Natives> {
        @Override // org.chromium.base.JniStaticTestMocker
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void setInstanceForTesting(JavaExceptionReporter.Natives natives) {
            if (!oe0.f4582do) {
                throw new RuntimeException("Tried to set a JNI mock when mocks aren't enabled!");
            }
            JavaExceptionReporter.Natives unused = Cconst.f33152do = natives;
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static JavaExceptionReporter.Natives m37061if() {
        if (oe0.f4582do) {
            JavaExceptionReporter.Natives natives = f33152do;
            if (natives != null) {
                return natives;
            }
            if (oe0.f4583if) {
                throw new UnsupportedOperationException("No mock found for the native implementation for org.chromium.base.JavaExceptionReporter.Natives. The current configuration requires all native implementations to have a mock instance.");
            }
        }
        NativeLibraryLoadedStatus.m36863do(true);
        return new Cconst();
    }

    @Override // org.chromium.base.JavaExceptionReporter.Natives
    public void reportJavaException(boolean z, Throwable th) {
        oe0.m5589finally(z, th);
    }

    @Override // org.chromium.base.JavaExceptionReporter.Natives
    public void reportJavaStackTrace(String str) {
        oe0.m5599package(str);
    }
}
