package org.bouncycastle.crypto.signers;

import android.support.v4.q3;
import java.io.ByteArrayOutputStream;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.Signer;
import org.bouncycastle.crypto.params.Cfor;

/* renamed from: org.bouncycastle.crypto.signers.if, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cif implements Signer {

    /* renamed from: do, reason: not valid java name */
    private final C0410if f30409do = new C0410if();

    /* renamed from: for, reason: not valid java name */
    private boolean f30410for;

    /* renamed from: if, reason: not valid java name */
    private final byte[] f30411if;

    /* renamed from: new, reason: not valid java name */
    private org.bouncycastle.crypto.params.Cif f30412new;

    /* renamed from: try, reason: not valid java name */
    private Cfor f30413try;

    /* renamed from: org.bouncycastle.crypto.signers.if$if, reason: invalid class name and collision with other inner class name */
    public static class C0410if extends ByteArrayOutputStream {
        private C0410if() {
        }

        /* renamed from: do, reason: not valid java name */
        public synchronized byte[] m33919do(org.bouncycastle.crypto.params.Cif cif, Cfor cfor, byte[] bArr) {
            byte[] bArr2;
            bArr2 = new byte[64];
            cif.m33852try(1, cfor, bArr, ((ByteArrayOutputStream) this).buf, 0, ((ByteArrayOutputStream) this).count, bArr2, 0);
            reset();
            return bArr2;
        }

        /* renamed from: if, reason: not valid java name */
        public synchronized boolean m33920if(Cfor cfor, byte[] bArr, byte[] bArr2) {
            boolean zM;
            zM = org.bouncycastle.math.ec.rfc8032.Cdo.m(bArr2, 0, cfor.m33845for(), 0, bArr, ((ByteArrayOutputStream) this).buf, 0, ((ByteArrayOutputStream) this).count);
            reset();
            return zM;
        }

        @Override // java.io.ByteArrayOutputStream
        public synchronized void reset() {
            q3.e(((ByteArrayOutputStream) this).buf, 0, ((ByteArrayOutputStream) this).count, (byte) 0);
            ((ByteArrayOutputStream) this).count = 0;
        }
    }

    public Cif(byte[] bArr) {
        this.f30411if = q3.m6371final(bArr);
    }

    @Override // org.bouncycastle.crypto.Signer
    public byte[] generateSignature() {
        org.bouncycastle.crypto.params.Cif cif;
        if (!this.f30410for || (cif = this.f30412new) == null) {
            throw new IllegalStateException("Ed25519ctxSigner not initialised for signature generation.");
        }
        return this.f30409do.m33919do(cif, this.f30413try, this.f30411if);
    }

    @Override // org.bouncycastle.crypto.Signer
    public void init(boolean z, CipherParameters cipherParameters) {
        this.f30410for = z;
        if (z) {
            org.bouncycastle.crypto.params.Cif cif = (org.bouncycastle.crypto.params.Cif) cipherParameters;
            this.f30412new = cif;
            this.f30413try = cif.m33849for();
        } else {
            this.f30412new = null;
            this.f30413try = (Cfor) cipherParameters;
        }
        reset();
    }

    @Override // org.bouncycastle.crypto.Signer
    public void reset() {
        this.f30409do.reset();
    }

    @Override // org.bouncycastle.crypto.Signer
    public void update(byte b) {
        this.f30409do.write(b);
    }

    @Override // org.bouncycastle.crypto.Signer
    public void update(byte[] bArr, int i, int i2) {
        this.f30409do.write(bArr, i, i2);
    }

    @Override // org.bouncycastle.crypto.Signer
    public boolean verifySignature(byte[] bArr) {
        Cfor cfor;
        if (this.f30410for || (cfor = this.f30413try) == null) {
            throw new IllegalStateException("Ed25519ctxSigner not initialised for verification");
        }
        return this.f30409do.m33920if(cfor, this.f30411if, bArr);
    }
}
