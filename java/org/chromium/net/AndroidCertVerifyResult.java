package org.chromium.net;

import android.support.v4.lo0;
import java.security.cert.CertificateEncodingException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.chromium.base.annotations.CalledByNative;

@lo0("net::android")
/* loaded from: classes3.dex */
public class AndroidCertVerifyResult {

    /* renamed from: do, reason: not valid java name */
    private final int f33298do;

    /* renamed from: for, reason: not valid java name */
    private final List<X509Certificate> f33299for;

    /* renamed from: if, reason: not valid java name */
    private final boolean f33300if;

    public AndroidCertVerifyResult(int i, boolean z, List<X509Certificate> list) {
        this.f33298do = i;
        this.f33300if = z;
        this.f33299for = new ArrayList(list);
    }

    @CalledByNative
    public byte[][] getCertificateChainEncoded() {
        byte[][] bArr = new byte[this.f33299for.size()][];
        for (int i = 0; i < this.f33299for.size(); i++) {
            try {
                bArr[i] = this.f33299for.get(i).getEncoded();
            } catch (CertificateEncodingException unused) {
                return new byte[0][];
            }
        }
        return bArr;
    }

    @CalledByNative
    public int getStatus() {
        return this.f33298do;
    }

    @CalledByNative
    public boolean isIssuedByKnownRoot() {
        return this.f33300if;
    }

    public AndroidCertVerifyResult(int i) {
        this.f33298do = i;
        this.f33300if = false;
        this.f33299for = Collections.emptyList();
    }
}
