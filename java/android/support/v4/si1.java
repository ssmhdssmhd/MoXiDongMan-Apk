package android.support.v4;

import java.security.SecureRandom;
import org.bouncycastle.crypto.Cfor;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.pqc.crypto.MessageSigner;
import org.bouncycastle.pqc.crypto.qtesla.Cthis;

/* loaded from: classes3.dex */
public class si1 implements MessageSigner {

    /* renamed from: do, reason: not valid java name */
    private qi1 f6157do;

    /* renamed from: for, reason: not valid java name */
    private SecureRandom f6158for;

    /* renamed from: if, reason: not valid java name */
    private pi1 f6159if;

    @Override // org.bouncycastle.pqc.crypto.MessageSigner
    public byte[] generateSignature(byte[] bArr) {
        byte[] bArr2 = new byte[ri1.m6996new(this.f6159if.m6080for())];
        int iM6080for = this.f6159if.m6080for();
        if (iM6080for == 0) {
            Cthis.m35770throw(bArr2, bArr, 0, bArr.length, this.f6159if.m6081if(), this.f6158for);
        } else if (iM6080for == 1) {
            Cthis.m35758import(bArr2, bArr, 0, bArr.length, this.f6159if.m6081if(), this.f6158for);
        } else if (iM6080for == 2) {
            Cthis.m35759native(bArr2, bArr, 0, bArr.length, this.f6159if.m6081if(), this.f6158for);
        } else if (iM6080for == 3) {
            Cthis.m35763public(bArr2, bArr, 0, bArr.length, this.f6159if.m6081if(), this.f6158for);
        } else {
            if (iM6080for != 4) {
                throw new IllegalArgumentException("unknown security category: " + this.f6159if.m6080for());
            }
            Cthis.m35774while(bArr2, bArr, 0, bArr.length, this.f6159if.m6081if(), this.f6158for);
        }
        return bArr2;
    }

    @Override // org.bouncycastle.pqc.crypto.MessageSigner
    public void init(boolean z, CipherParameters cipherParameters) {
        int iM6603for;
        if (z) {
            if (cipherParameters instanceof cc1) {
                cc1 cc1Var = (cc1) cipherParameters;
                this.f6158for = cc1Var.m847if();
                this.f6159if = (pi1) cc1Var.m846do();
            } else {
                this.f6158for = Cfor.m33599case();
                this.f6159if = (pi1) cipherParameters;
            }
            this.f6157do = null;
            iM6603for = this.f6159if.m6080for();
        } else {
            this.f6159if = null;
            qi1 qi1Var = (qi1) cipherParameters;
            this.f6157do = qi1Var;
            iM6603for = qi1Var.m6603for();
        }
        ri1.m6997try(iM6603for);
    }

    @Override // org.bouncycastle.pqc.crypto.MessageSigner
    public boolean verifySignature(byte[] bArr, byte[] bArr2) {
        int iM35762private;
        int iM6603for = this.f6157do.m6603for();
        if (iM6603for == 0) {
            iM35762private = Cthis.m35762private(bArr, bArr2, 0, bArr2.length, this.f6157do.m6604if());
        } else if (iM6603for == 1) {
            iM35762private = Cthis.m35742abstract(bArr, bArr2, 0, bArr2.length, this.f6157do.m6604if());
        } else if (iM6603for == 2) {
            iM35762private = Cthis.m35748continue(bArr, bArr2, 0, bArr2.length, this.f6157do.m6604if());
        } else if (iM6603for == 3) {
            iM35762private = Cthis.m35766strictfp(bArr, bArr2, 0, bArr2.length, this.f6157do.m6604if());
        } else {
            if (iM6603for != 4) {
                throw new IllegalArgumentException("unknown security category: " + this.f6157do.m6603for());
            }
            iM35762private = Cthis.m35773volatile(bArr, bArr2, 0, bArr2.length, this.f6157do.m6604if());
        }
        return iM35762private == 0;
    }
}
