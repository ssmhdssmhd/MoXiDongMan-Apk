package org.chromium.net;

import android.support.v4.dl;
import android.support.v4.oe0;
import org.chromium.base.JniStaticTestMocker;
import org.chromium.base.NativeLibraryLoadedStatus;
import org.chromium.net.GURLUtils;

@dl("crbug.com/993421")
/* renamed from: org.chromium.net.goto, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cgoto implements GURLUtils.Natives {

    /* renamed from: do, reason: not valid java name */
    private static GURLUtils.Natives f33461do;

    /* renamed from: if, reason: not valid java name */
    public static final JniStaticTestMocker<GURLUtils.Natives> f33462if = new Cdo();

    /* renamed from: org.chromium.net.goto$do, reason: invalid class name */
    public class Cdo implements JniStaticTestMocker<GURLUtils.Natives> {
        @Override // org.chromium.base.JniStaticTestMocker
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void setInstanceForTesting(GURLUtils.Natives natives) {
            if (!oe0.f4582do) {
                throw new RuntimeException("Tried to set a JNI mock when mocks aren't enabled!");
            }
            GURLUtils.Natives unused = Cgoto.f33461do = natives;
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static GURLUtils.Natives m37514if() {
        if (oe0.f4582do) {
            GURLUtils.Natives natives = f33461do;
            if (natives != null) {
                return natives;
            }
            if (oe0.f4583if) {
                throw new UnsupportedOperationException("No mock found for the native implementation for org.chromium.net.GURLUtils.Natives. The current configuration requires all native implementations to have a mock instance.");
            }
        }
        NativeLibraryLoadedStatus.m36863do(false);
        return new Cgoto();
    }

    @Override // org.chromium.net.GURLUtils.Natives
    public String getOrigin(String str) {
        return oe0.w(str);
    }
}
