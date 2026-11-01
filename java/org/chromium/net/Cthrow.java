package org.chromium.net;

import android.support.v4.dl;
import android.support.v4.oe0;
import org.chromium.base.JniStaticTestMocker;
import org.chromium.base.NativeLibraryLoadedStatus;
import org.chromium.net.ProxyChangeListener;

@dl("crbug.com/993421")
/* renamed from: org.chromium.net.throw, reason: invalid class name */
/* loaded from: classes3.dex */
final class Cthrow implements ProxyChangeListener.Natives {

    /* renamed from: do, reason: not valid java name */
    private static ProxyChangeListener.Natives f33736do;

    /* renamed from: if, reason: not valid java name */
    public static final JniStaticTestMocker<ProxyChangeListener.Natives> f33737if = new Cdo();

    /* renamed from: org.chromium.net.throw$do, reason: invalid class name */
    public class Cdo implements JniStaticTestMocker<ProxyChangeListener.Natives> {
        @Override // org.chromium.base.JniStaticTestMocker
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void setInstanceForTesting(ProxyChangeListener.Natives natives) {
            if (!oe0.f4582do) {
                throw new RuntimeException("Tried to set a JNI mock when mocks aren't enabled!");
            }
            ProxyChangeListener.Natives unused = Cthrow.f33736do = natives;
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static ProxyChangeListener.Natives m37722if() {
        if (oe0.f4582do) {
            ProxyChangeListener.Natives natives = f33736do;
            if (natives != null) {
                return natives;
            }
            if (oe0.f4583if) {
                throw new UnsupportedOperationException("No mock found for the native implementation for org.chromium.net.ProxyChangeListener.Natives. The current configuration requires all native implementations to have a mock instance.");
            }
        }
        NativeLibraryLoadedStatus.m36863do(false);
        return new Cthrow();
    }

    @Override // org.chromium.net.ProxyChangeListener.Natives
    public void proxySettingsChanged(long j, ProxyChangeListener proxyChangeListener) {
        oe0.G(j, proxyChangeListener);
    }

    @Override // org.chromium.net.ProxyChangeListener.Natives
    public void proxySettingsChangedTo(long j, ProxyChangeListener proxyChangeListener, String str, int i, String str2, String[] strArr) {
        oe0.H(j, proxyChangeListener, str, i, str2, strArr);
    }
}
