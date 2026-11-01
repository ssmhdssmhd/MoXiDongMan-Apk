package org.bouncycastle.crypto.signers;

import android.support.v4.q3;
import java.io.ByteArrayOutputStream;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.Signer;
import org.bouncycastle.crypto.params.Cfor;

/* renamed from: org.bouncycastle.crypto.signers.do, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cdo implements Signer {

    /* renamed from: do, reason: not valid java name */
    private final Cif f30381do = new Cif();

    /* renamed from: for, reason: not valid java name */
    private org.bouncycastle.crypto.params.Cif f30382for;

    /* renamed from: if, reason: not valid java name */
    private boolean f30383if;

    /* renamed from: new, reason: not valid java name */
    private Cfor f30384new;

    /* renamed from: org.bouncycastle.crypto.signers.do$if, reason: invalid class name */
    public static class Cif extends ByteArrayOutputStream {
        private Cif() {
        }

        /* renamed from: do, reason: not valid java name */
        public synchronized byte[] m33910do(org.bouncycastle.crypto.params.Cif cif, Cfor cfor) {
            byte[] bArr;
            bArr = new byte[64];
            cif.m33852try(0, cfor, null, ((ByteArrayOutputStream) this).buf, 0, ((ByteArrayOutputStream) this).count, bArr, 0);
            reset();
            return bArr;
        }

        /* renamed from: if, reason: not valid java name */
        public synchronized boolean m33911if(Cfor cfor, byte[] bArr) {
            boolean zL;
            zL = org.bouncycastle.math.ec.rfc8032.Cdo.l(bArr, 0, cfor.m33845for(), 0, ((ByteArrayOutputStream) this).buf, 0, ((ByteArrayOutputStream) this).count);
            reset();
            return zL;
        }

        @Override // java.io.ByteArrayOutputStream
        public synchronized void reset() {
            q3.e(((ByteArrayOutputStream) this).buf, 0, ((ByteArrayOutputStream) this).count, (byte) 0);
            ((ByteArrayOutputStream) this).count = 0;
        }
    }

    @Override // org.bouncycastle.crypto.Signer
    public byte[] generateSignature() {
        org.bouncycastle.crypto.params.Cif cif;
        if (!this.f30383if || (cif = this.f30382for) == null) {
            throw new IllegalStateException("Ed25519Signer not initialised for signature generation.");
        }
        return this.f30381do.m33910do(cif, this.f30384new);
    }

    @Override // org.bouncycastle.crypto.Signer
    public void init(boolean z, CipherParameters cipherParameters) {
        this.f30383if = z;
        if (z) {
            org.bouncycastle.crypto.params.Cif cif = (org.bouncycastle.crypto.params.Cif) cipherParameters;
            this.f30382for = cif;
            this.f30384new = cif.m33849for();
        } else {
            this.f30382for = null;
            this.f30384new = (Cfor) cipherParameters;
        }
        reset();
    }

    @Override // org.bouncycastle.crypto.Signer
    public void reset() {
        this.f30381do.reset();
    }

    @Override // org.bouncycastle.crypto.Signer
    public void update(byte b) {
        this.f30381do.write(b);
    }

    @Override // org.bouncycastle.crypto.Signer
    public void update(byte[] bArr, int i, int i2) {
        this.f30381do.write(bArr, i, i2);
    }

    @Override // org.bouncycastle.crypto.Signer
    public boolean verifySignature(byte[] bArr) {
        Cfor cfor;
        if (this.f30383if || (cfor = this.f30384new) == null) {
            throw new IllegalStateException("Ed25519Signer not initialised for verification");
        }
        return this.f30381do.m33911if(cfor, bArr);
    }
}
