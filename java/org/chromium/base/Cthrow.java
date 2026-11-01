package org.chromium.base;

import android.support.v4.dl;
import android.support.v4.oe0;
import org.chromium.base.PathService;

@dl("crbug.com/993421")
/* renamed from: org.chromium.base.throw, reason: invalid class name */
/* loaded from: classes3.dex */
final class Cthrow implements PathService.Natives {

    /* renamed from: do, reason: not valid java name */
    private static PathService.Natives f33284do;

    /* renamed from: if, reason: not valid java name */
    public static final JniStaticTestMocker<PathService.Natives> f33285if = new Cdo();

    /* renamed from: org.chromium.base.throw$do, reason: invalid class name */
    public class Cdo implements JniStaticTestMocker<PathService.Natives> {
        @Override // org.chromium.base.JniStaticTestMocker
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void setInstanceForTesting(PathService.Natives natives) {
            if (!oe0.f4582do) {
                throw new RuntimeException("Tried to set a JNI mock when mocks aren't enabled!");
            }
            PathService.Natives unused = Cthrow.f33284do = natives;
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static PathService.Natives m37270if() {
        if (oe0.f4582do) {
            PathService.Natives natives = f33284do;
            if (natives != null) {
                return natives;
            }
            if (oe0.f4583if) {
                throw new UnsupportedOperationException("No mock found for the native implementation for org.chromium.base.PathService.Natives. The current configuration requires all native implementations to have a mock instance.");
            }
        }
        NativeLibraryLoadedStatus.m36863do(false);
        return new Cthrow();
    }

    @Override // org.chromium.base.PathService.Natives
    public void override(int i, String str) {
        oe0.m5605strictfp(i, str);
    }
}
