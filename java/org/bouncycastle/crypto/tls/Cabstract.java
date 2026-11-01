package org.bouncycastle.crypto.tls;

import android.support.v4.a4;
import android.support.v4.ck1;
import android.support.v4.h50;
import android.support.v4.jv;
import android.support.v4.k72;
import android.support.v4.l72;
import android.support.v4.n72;
import android.support.v4.xs;
import java.io.IOException;

/* renamed from: org.bouncycastle.crypto.tls.abstract, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cabstract extends android.support.v4.j {

    /* renamed from: do, reason: not valid java name */
    public TlsContext f30497do;

    /* renamed from: for, reason: not valid java name */
    public a4 f30498for;

    /* renamed from: if, reason: not valid java name */
    public Cbreak f30499if;

    /* renamed from: new, reason: not valid java name */
    public i f30500new;

    /* renamed from: try, reason: not valid java name */
    public TlsSigner f30501try;

    public Cabstract(TlsContext tlsContext, Cbreak cbreak, a4 a4Var) {
        this(tlsContext, cbreak, a4Var, null);
    }

    public Cabstract(TlsContext tlsContext, Cbreak cbreak, a4 a4Var, i iVar) {
        TlsSigner l72Var;
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
        if (l0.w(tlsContext) && iVar == null) {
            throw new IllegalArgumentException("'signatureAndHashAlgorithm' cannot be null for (D)TLS 1.2+");
        }
        if (a4Var instanceof ck1) {
            l72Var = new c0();
        } else if (a4Var instanceof jv) {
            l72Var = new k72();
        } else {
            if (!(a4Var instanceof h50)) {
                throw new IllegalArgumentException("'privateKey' type not supported: " + a4Var.getClass().getName());
            }
            l72Var = new l72();
        }
        this.f30501try = l72Var;
        this.f30501try.init(tlsContext);
        this.f30497do = tlsContext;
        this.f30499if = cbreak;
        this.f30498for = a4Var;
        this.f30500new = iVar;
    }

    @Override // org.bouncycastle.crypto.tls.TlsSignerCredentials
    public byte[] generateCertificateSignature(byte[] bArr) throws IOException {
        try {
            return l0.w(this.f30497do) ? this.f30501try.generateRawSignature(this.f30500new, this.f30498for, bArr) : this.f30501try.generateRawSignature(this.f30498for, bArr);
        } catch (xs e) {
            throw new n72((short) 80, e);
        }
    }

    @Override // org.bouncycastle.crypto.tls.TlsCredentials
    public Cbreak getCertificate() {
        return this.f30499if;
    }

    @Override // android.support.v4.j, org.bouncycastle.crypto.tls.TlsSignerCredentials
    public i getSignatureAndHashAlgorithm() {
        return this.f30500new;
    }
}
