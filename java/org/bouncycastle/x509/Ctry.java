package org.bouncycastle.x509;

import java.security.cert.CertificateEncodingException;

/* renamed from: org.bouncycastle.x509.try, reason: invalid class name */
/* loaded from: classes3.dex */
class Ctry extends CertificateEncodingException {
    public Throwable cause;

    public Ctry(String str, Throwable th) {
        super(str);
        this.cause = th;
    }

    @Override // java.lang.Throwable
    public Throwable getCause() {
        return this.cause;
    }
}
