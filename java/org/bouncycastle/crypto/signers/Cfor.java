package org.bouncycastle.crypto.signers;

import android.support.v4.q3;
import java.io.ByteArrayOutputStream;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.Signer;
import org.bouncycastle.crypto.params.Cnew;
import org.bouncycastle.crypto.params.Ctry;

/* renamed from: org.bouncycastle.crypto.signers.for, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cfor implements Signer {

    /* renamed from: do, reason: not valid java name */
    private final Cif f30399do = new Cif();

    /* renamed from: for, reason: not valid java name */
    private boolean f30400for;

    /* renamed from: if, reason: not valid java name */
    private final byte[] f30401if;

    /* renamed from: new, reason: not valid java name */
    private Cnew f30402new;

    /* renamed from: try, reason: not valid java name */
    private Ctry f30403try;

    /* renamed from: org.bouncycastle.crypto.signers.for$if, reason: invalid class name */
    public static class Cif extends ByteArrayOutputStream {
        private Cif() {
        }

        /* renamed from: do, reason: not valid java name */
        public synchronized byte[] m33915do(Cnew cnew, Ctry ctry, byte[] bArr) {
            byte[] bArr2;
            bArr2 = new byte[114];
            cnew.m33856try(0, ctry, bArr, ((ByteArrayOutputStream) this).buf, 0, ((ByteArrayOutputStream) this).count, bArr2, 0);
            reset();
            return bArr2;
        }

        /* renamed from: if, reason: not valid java name */
        public synchronized boolean m33916if(Ctry ctry, byte[] bArr, byte[] bArr2) {
            boolean zG;
            zG = org.bouncycastle.math.ec.rfc8032.Cif.g(bArr2, 0, ctry.m33861for(), 0, bArr, ((ByteArrayOutputStream) this).buf, 0, ((ByteArrayOutputStream) this).count);
            reset();
            return zG;
        }

        @Override // java.io.ByteArrayOutputStream
        public synchronized void reset() {
            q3.e(((ByteArrayOutputStream) this).buf, 0, ((ByteArrayOutputStream) this).count, (byte) 0);
            ((ByteArrayOutputStream) this).count = 0;
        }
    }

    public Cfor(byte[] bArr) {
        this.f30401if = q3.m6371final(bArr);
    }

    @Override // org.bouncycastle.crypto.Signer
    public byte[] generateSignature() {
        Cnew cnew;
        if (!this.f30400for || (cnew = this.f30402new) == null) {
            throw new IllegalStateException("Ed448Signer not initialised for signature generation.");
        }
        return this.f30399do.m33915do(cnew, this.f30403try, this.f30401if);
    }

    @Override // org.bouncycastle.crypto.Signer
    public void init(boolean z, CipherParameters cipherParameters) {
        this.f30400for = z;
        if (z) {
            Cnew cnew = (Cnew) cipherParameters;
            this.f30402new = cnew;
            this.f30403try = cnew.m33853for();
        } else {
            this.f30402new = null;
            this.f30403try = (Ctry) cipherParameters;
        }
        reset();
    }

    @Override // org.bouncycastle.crypto.Signer
    public void reset() {
        this.f30399do.reset();
    }

    @Override // org.bouncycastle.crypto.Signer
    public void update(byte b) {
        this.f30399do.write(b);
    }

    @Override // org.bouncycastle.crypto.Signer
    public void update(byte[] bArr, int i, int i2) {
        this.f30399do.write(bArr, i, i2);
    }

    @Override // org.bouncycastle.crypto.Signer
    public boolean verifySignature(byte[] bArr) {
        Ctry ctry;
        if (this.f30400for || (ctry = this.f30403try) == null) {
            throw new IllegalStateException("Ed448Signer not initialised for verification");
        }
        return this.f30399do.m33916if(ctry, this.f30401if, bArr);
    }
}
