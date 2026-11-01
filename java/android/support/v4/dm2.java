package android.support.v4;

import org.mozilla.intl.chardet.nsICharsetDetectionObserver;
import org.mozilla.intl.chardet.nsICharsetDetector;

/* loaded from: classes3.dex */
public class dm2 extends pm2 implements nsICharsetDetector {

    /* renamed from: native, reason: not valid java name */
    public nsICharsetDetectionObserver f1083native;

    public dm2() {
        this.f1083native = null;
    }

    public dm2(int i) {
        super(i);
        this.f1083native = null;
    }

    @Override // org.mozilla.intl.chardet.nsICharsetDetector
    public boolean DoIt(byte[] bArr, int i, boolean z) {
        if (bArr == null || z) {
            return false;
        }
        m6125if(bArr, i);
        return this.f5129goto;
    }

    @Override // org.mozilla.intl.chardet.nsICharsetDetector
    public void Done() {
        m6122do();
    }

    @Override // org.mozilla.intl.chardet.nsICharsetDetector
    public void Init(nsICharsetDetectionObserver nsicharsetdetectionobserver) {
        this.f1083native = nsicharsetdetectionobserver;
    }

    @Override // android.support.v4.pm2
    /* renamed from: for, reason: not valid java name */
    public void mo1439for(String str) {
        nsICharsetDetectionObserver nsicharsetdetectionobserver = this.f1083native;
        if (nsicharsetdetectionobserver != null) {
            nsicharsetdetectionobserver.Notify(str);
        }
    }

    /* renamed from: this, reason: not valid java name */
    public boolean m1440this(byte[] bArr, int i) {
        for (int i2 = 0; i2 < i; i2++) {
            if ((bArr[i2] & 128) != 0) {
                return false;
            }
        }
        return true;
    }
}
