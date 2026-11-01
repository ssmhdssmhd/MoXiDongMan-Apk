package org.bouncycastle.crypto.signers;

import android.support.v4.ck1;
import android.support.v4.kl0;
import android.support.v4.q3;
import android.support.v4.xs;
import com.google.common.primitives.Cfinal;
import java.math.BigInteger;
import org.bouncycastle.crypto.AsymmetricBlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.Signer;
import org.bouncycastle.util.Cdo;

/* renamed from: org.bouncycastle.crypto.signers.catch, reason: invalid class name */
/* loaded from: classes3.dex */
public class Ccatch implements Signer {

    /* renamed from: break, reason: not valid java name */
    public static final int f30366break = 13260;

    /* renamed from: catch, reason: not valid java name */
    public static final int f30367catch = 13516;

    /* renamed from: class, reason: not valid java name */
    public static final int f30368class = 13772;

    /* renamed from: const, reason: not valid java name */
    public static final int f30369const = 14028;

    /* renamed from: else, reason: not valid java name */
    public static final int f30370else = 188;

    /* renamed from: final, reason: not valid java name */
    public static final int f30371final = 14284;

    /* renamed from: goto, reason: not valid java name */
    public static final int f30372goto = 12748;

    /* renamed from: super, reason: not valid java name */
    public static final int f30373super = 14540;

    /* renamed from: this, reason: not valid java name */
    public static final int f30374this = 13004;

    /* renamed from: case, reason: not valid java name */
    private byte[] f30375case;

    /* renamed from: do, reason: not valid java name */
    private Digest f30376do;

    /* renamed from: for, reason: not valid java name */
    private ck1 f30377for;

    /* renamed from: if, reason: not valid java name */
    private AsymmetricBlockCipher f30378if;

    /* renamed from: new, reason: not valid java name */
    private int f30379new;

    /* renamed from: try, reason: not valid java name */
    private int f30380try;

    public Ccatch(AsymmetricBlockCipher asymmetricBlockCipher, Digest digest) {
        this(asymmetricBlockCipher, digest, false);
    }

    public Ccatch(AsymmetricBlockCipher asymmetricBlockCipher, Digest digest, boolean z) {
        int iIntValue;
        this.f30378if = asymmetricBlockCipher;
        this.f30376do = digest;
        if (z) {
            iIntValue = 188;
        } else {
            Integer numM4434do = kl0.m4434do(digest);
            if (numM4434do == null) {
                throw new IllegalArgumentException("no valid trailer for digest: " + digest.getAlgorithmName());
            }
            iIntValue = numM4434do.intValue();
        }
        this.f30379new = iIntValue;
    }

    /* renamed from: do, reason: not valid java name */
    private void m33908do(byte[] bArr) {
        for (int i = 0; i != bArr.length; i++) {
            bArr[i] = 0;
        }
    }

    /* renamed from: if, reason: not valid java name */
    private void m33909if(int i) {
        int length;
        int digestSize = this.f30376do.getDigestSize();
        if (i == 188) {
            byte[] bArr = this.f30375case;
            length = (bArr.length - digestSize) - 1;
            this.f30376do.doFinal(bArr, length);
            this.f30375case[r5.length - 1] = Celse.f30385final;
        } else {
            byte[] bArr2 = this.f30375case;
            int length2 = (bArr2.length - digestSize) - 2;
            this.f30376do.doFinal(bArr2, length2);
            byte[] bArr3 = this.f30375case;
            bArr3[bArr3.length - 2] = (byte) (i >>> 8);
            bArr3[bArr3.length - 1] = (byte) i;
            length = length2;
        }
        this.f30375case[0] = 107;
        for (int i2 = length - 2; i2 != 0; i2--) {
            this.f30375case[i2] = -69;
        }
        this.f30375case[length - 1] = -70;
    }

    @Override // org.bouncycastle.crypto.Signer
    public byte[] generateSignature() throws xs {
        m33909if(this.f30379new);
        AsymmetricBlockCipher asymmetricBlockCipher = this.f30378if;
        byte[] bArr = this.f30375case;
        BigInteger bigInteger = new BigInteger(1, asymmetricBlockCipher.processBlock(bArr, 0, bArr.length));
        m33908do(this.f30375case);
        return Cdo.m36309do(Cdo.m36315this(this.f30377for.m954for()), bigInteger.min(this.f30377for.m954for().subtract(bigInteger)));
    }

    @Override // org.bouncycastle.crypto.Signer
    public void init(boolean z, CipherParameters cipherParameters) {
        ck1 ck1Var = (ck1) cipherParameters;
        this.f30377for = ck1Var;
        this.f30378if.init(z, ck1Var);
        int iBitLength = this.f30377for.m954for().bitLength();
        this.f30380try = iBitLength;
        this.f30375case = new byte[(iBitLength + 7) / 8];
        reset();
    }

    @Override // org.bouncycastle.crypto.Signer
    public void reset() {
        this.f30376do.reset();
    }

    @Override // org.bouncycastle.crypto.Signer
    public void update(byte b) {
        this.f30376do.update(b);
    }

    @Override // org.bouncycastle.crypto.Signer
    public void update(byte[] bArr, int i, int i2) {
        this.f30376do.update(bArr, i, i2);
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x002f A[PHI: r4
      0x002f: PHI (r4v3 java.math.BigInteger) = (r4v2 java.math.BigInteger), (r4v5 java.math.BigInteger) binds: [B:5:0x001a, B:8:0x002d] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // org.bouncycastle.crypto.Signer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean verifySignature(byte[] bArr) {
        boolean zM6360abstract = false;
        try {
            this.f30375case = this.f30378if.processBlock(bArr, 0, bArr.length);
            BigInteger bigInteger = new BigInteger(1, this.f30375case);
            if ((bigInteger.intValue() & 15) == 12) {
                m33909if(this.f30379new);
                byte[] bArrM36309do = Cdo.m36309do(this.f30375case.length, bigInteger);
                zM6360abstract = q3.m6360abstract(this.f30375case, bArrM36309do);
                if (this.f30379new == 15052 && !zM6360abstract) {
                    byte[] bArr2 = this.f30375case;
                    bArr2[bArr2.length - 2] = Cfinal.f15506do;
                    zM6360abstract = q3.m6360abstract(bArr2, bArrM36309do);
                }
                m33908do(this.f30375case);
                m33908do(bArrM36309do);
            } else {
                bigInteger = this.f30377for.m954for().subtract(bigInteger);
                if ((bigInteger.intValue() & 15) == 12) {
                }
            }
        } catch (Exception unused) {
        }
        return zM6360abstract;
    }
}
