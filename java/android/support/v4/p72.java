package android.support.v4;

import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.Mac;
import org.bouncycastle.crypto.tls.TlsContext;

/* loaded from: classes3.dex */
public class p72 {

    /* renamed from: case, reason: not valid java name */
    public int f4870case;

    /* renamed from: do, reason: not valid java name */
    public TlsContext f4871do;

    /* renamed from: for, reason: not valid java name */
    public Mac f4872for;

    /* renamed from: if, reason: not valid java name */
    public byte[] f4873if;

    /* renamed from: new, reason: not valid java name */
    public int f4874new;

    /* renamed from: try, reason: not valid java name */
    public int f4875try;

    public p72(TlsContext tlsContext, Digest digest, byte[] bArr, int i, int i2) throws IllegalArgumentException {
        int i3;
        this.f4871do = tlsContext;
        gr0 gr0Var = new gr0(bArr, i, i2);
        this.f4873if = q3.m6371final(gr0Var.m2770do());
        if (digest instanceof xv0) {
            this.f4874new = 128;
            i3 = 16;
        } else {
            this.f4874new = 64;
            i3 = 8;
        }
        this.f4875try = i3;
        if (org.bouncycastle.crypto.tls.l0.q(tlsContext)) {
            this.f4872for = new mr1(digest);
            if (digest.getDigestSize() == 20) {
                this.f4875try = 4;
            }
        } else {
            this.f4872for = new pi0(digest);
        }
        this.f4872for.init(gr0Var);
        this.f4870case = this.f4872for.getMacSize();
        if (tlsContext.getSecurityParameters().f4052const) {
            this.f4870case = Math.min(this.f4870case, 10);
        }
    }

    /* renamed from: case, reason: not valid java name */
    public byte[] m5907case(byte[] bArr) {
        int length = bArr.length;
        int i = this.f4870case;
        return length <= i ? bArr : q3.m6397volatile(bArr, i);
    }

    /* renamed from: do, reason: not valid java name */
    public byte[] m5908do(long j, short s, byte[] bArr, int i, int i2) {
        org.bouncycastle.crypto.tls.a serverVersion = this.f4871do.getServerVersion();
        boolean zM33937catch = serverVersion.m33937catch();
        int i3 = zM33937catch ? 11 : 13;
        byte[] bArr2 = new byte[i3];
        org.bouncycastle.crypto.tls.l0.E0(j, bArr2, 0);
        org.bouncycastle.crypto.tls.l0.I0(s, bArr2, 8);
        if (!zM33937catch) {
            org.bouncycastle.crypto.tls.l0.O0(serverVersion, bArr2, 9);
        }
        org.bouncycastle.crypto.tls.l0.s0(i2, bArr2, i3 - 2);
        this.f4872for.update(bArr2, 0, i3);
        this.f4872for.update(bArr, i, i2);
        byte[] bArr3 = new byte[this.f4872for.getMacSize()];
        this.f4872for.doFinal(bArr3, 0);
        return m5907case(bArr3);
    }

    /* renamed from: for, reason: not valid java name */
    public int m5909for(int i) {
        return (i + this.f4875try) / this.f4874new;
    }

    /* renamed from: if, reason: not valid java name */
    public byte[] m5910if(long j, short s, byte[] bArr, int i, int i2, int i3, byte[] bArr2) throws IllegalStateException, tw {
        byte[] bArrM5908do = m5908do(j, s, bArr, i, i2);
        int i4 = org.bouncycastle.crypto.tls.l0.q(this.f4871do) ? 11 : 13;
        int iM5909for = m5909for(i3 + i4) - m5909for(i4 + i2);
        while (true) {
            iM5909for--;
            if (iM5909for < 0) {
                this.f4872for.update(bArr2[0]);
                this.f4872for.reset();
                return bArrM5908do;
            }
            this.f4872for.update(bArr2, 0, this.f4874new);
        }
    }

    /* renamed from: new, reason: not valid java name */
    public byte[] m5911new() {
        return this.f4873if;
    }

    /* renamed from: try, reason: not valid java name */
    public int m5912try() {
        return this.f4870case;
    }
}
