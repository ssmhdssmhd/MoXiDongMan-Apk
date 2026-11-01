package org.chromium.net;

import android.support.v4.dl;
import android.support.v4.oe0;
import org.chromium.base.JniStaticTestMocker;
import org.chromium.base.NativeLibraryLoadedStatus;
import org.chromium.net.HttpUtil;

@dl("crbug.com/993421")
/* renamed from: org.chromium.net.break, reason: invalid class name */
/* loaded from: classes3.dex */
final class Cbreak implements HttpUtil.Natives {

    /* renamed from: do, reason: not valid java name */
    private static HttpUtil.Natives f33431do;

    /* renamed from: if, reason: not valid java name */
    public static final JniStaticTestMocker<HttpUtil.Natives> f33432if = new Cdo();

    /* renamed from: org.chromium.net.break$do, reason: invalid class name */
    public class Cdo implements JniStaticTestMocker<HttpUtil.Natives> {
        @Override // org.chromium.base.JniStaticTestMocker
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void setInstanceForTesting(HttpUtil.Natives natives) {
            if (!oe0.f4582do) {
                throw new RuntimeException("Tried to set a JNI mock when mocks aren't enabled!");
            }
            HttpUtil.Natives unused = Cbreak.f33431do = natives;
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static HttpUtil.Natives m37437if() {
        if (oe0.f4582do) {
            HttpUtil.Natives natives = f33431do;
            if (natives != null) {
                return natives;
            }
            if (oe0.f4583if) {
                throw new UnsupportedOperationException("No mock found for the native implementation for org.chromium.net.HttpUtil.Natives. The current configuration requires all native implementations to have a mock instance.");
            }
        }
        NativeLibraryLoadedStatus.m36863do(false);
        return new Cbreak();
    }

    @Override // org.chromium.net.HttpUtil.Natives
    public boolean isAllowedHeader(String str, String str2) {
        return oe0.y(str, str2);
    }
}
