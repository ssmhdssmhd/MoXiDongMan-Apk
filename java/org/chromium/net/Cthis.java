package org.chromium.net;

import android.support.v4.dl;
import android.support.v4.oe0;
import org.chromium.base.JniStaticTestMocker;
import org.chromium.base.NativeLibraryLoadedStatus;
import org.chromium.net.HttpNegotiateAuthenticator;

@dl("crbug.com/993421")
/* renamed from: org.chromium.net.this, reason: invalid class name */
/* loaded from: classes3.dex */
final class Cthis implements HttpNegotiateAuthenticator.Natives {

    /* renamed from: do, reason: not valid java name */
    private static HttpNegotiateAuthenticator.Natives f33734do;

    /* renamed from: if, reason: not valid java name */
    public static final JniStaticTestMocker<HttpNegotiateAuthenticator.Natives> f33735if = new Cdo();

    /* renamed from: org.chromium.net.this$do, reason: invalid class name */
    public class Cdo implements JniStaticTestMocker<HttpNegotiateAuthenticator.Natives> {
        @Override // org.chromium.base.JniStaticTestMocker
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void setInstanceForTesting(HttpNegotiateAuthenticator.Natives natives) {
            if (!oe0.f4582do) {
                throw new RuntimeException("Tried to set a JNI mock when mocks aren't enabled!");
            }
            HttpNegotiateAuthenticator.Natives unused = Cthis.f33734do = natives;
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static HttpNegotiateAuthenticator.Natives m37719if() {
        if (oe0.f4582do) {
            HttpNegotiateAuthenticator.Natives natives = f33734do;
            if (natives != null) {
                return natives;
            }
            if (oe0.f4583if) {
                throw new UnsupportedOperationException("No mock found for the native implementation for org.chromium.net.HttpNegotiateAuthenticator.Natives. The current configuration requires all native implementations to have a mock instance.");
            }
        }
        NativeLibraryLoadedStatus.m36863do(false);
        return new Cthis();
    }

    @Override // org.chromium.net.HttpNegotiateAuthenticator.Natives
    public void setResult(long j, HttpNegotiateAuthenticator httpNegotiateAuthenticator, int i, String str) {
        oe0.x(j, httpNegotiateAuthenticator, i, str);
    }
}
