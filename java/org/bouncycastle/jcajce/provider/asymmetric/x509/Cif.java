package org.bouncycastle.jcajce.provider.asymmetric.x509;

import java.security.cert.CRLException;

/* renamed from: org.bouncycastle.jcajce.provider.asymmetric.x509.if, reason: invalid class name */
/* loaded from: classes3.dex */
class Cif extends CRLException {
    public Throwable cause;

    public Cif(String str, Throwable th) {
        super(str);
        this.cause = th;
    }

    @Override // java.lang.Throwable
    public Throwable getCause() {
        return this.cause;
    }
}
