package org.bouncycastle.jce.provider;

import java.security.cert.CRLException;

/* renamed from: org.bouncycastle.jce.provider.this, reason: invalid class name */
/* loaded from: classes3.dex */
class Cthis extends CRLException {
    public Throwable cause;

    public Cthis(String str, Throwable th) {
        super(str);
        this.cause = th;
    }

    @Override // java.lang.Throwable
    public Throwable getCause() {
        return this.cause;
    }
}
