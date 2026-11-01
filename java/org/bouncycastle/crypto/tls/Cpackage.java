package org.bouncycastle.crypto.tls;

import android.support.v4.a4;
import android.support.v4.ck1;
import java.io.IOException;

/* renamed from: org.bouncycastle.crypto.tls.package, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cpackage extends android.support.v4.i {

    /* renamed from: do, reason: not valid java name */
    public TlsContext f30702do;

    /* renamed from: for, reason: not valid java name */
    public a4 f30703for;

    /* renamed from: if, reason: not valid java name */
    public Cbreak f30704if;

    public Cpackage(TlsContext tlsContext, Cbreak cbreak, a4 a4Var) {
        if (cbreak == null) {
            throw new IllegalArgumentException("'certificate' cannot be null");
        }
        if (cbreak.m34013case()) {
            throw new IllegalArgumentException("'certificate' cannot be empty");
        }
        if (a4Var == null) {
            throw new IllegalArgumentException("'privateKey' cannot be null");
        }
        if (!a4Var.m33do()) {
            throw new IllegalArgumentException("'privateKey' must be private");
        }
        if (a4Var instanceof ck1) {
            this.f30702do = tlsContext;
            this.f30704if = cbreak;
            this.f30703for = a4Var;
        } else {
            throw new IllegalArgumentException("'privateKey' type not supported: " + a4Var.getClass().getName());
        }
    }

    @Override // org.bouncycastle.crypto.tls.TlsEncryptionCredentials
    public byte[] decryptPreMasterSecret(byte[] bArr) throws IOException {
        return d0.m34052if(this.f30702do, (ck1) this.f30703for, bArr);
    }

    @Override // org.bouncycastle.crypto.tls.TlsCredentials
    public Cbreak getCertificate() {
        return this.f30704if;
    }
}
