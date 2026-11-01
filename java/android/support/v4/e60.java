package android.support.v4;

import java.math.BigInteger;
import java.security.SecureRandom;
import org.bouncycastle.crypto.AsymmetricBlockCipher;
import org.bouncycastle.crypto.Cfor;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.util.Cdo;

/* loaded from: classes3.dex */
public class e60 implements AsymmetricBlockCipher {

    /* renamed from: do, reason: not valid java name */
    private h60 f1264do;

    /* renamed from: for, reason: not valid java name */
    private boolean f1265for;

    /* renamed from: if, reason: not valid java name */
    private SecureRandom f1266if;

    /* renamed from: new, reason: not valid java name */
    private int f1267new;

    /* renamed from: try, reason: not valid java name */
    private static final BigInteger f1263try = BigInteger.valueOf(0);

    /* renamed from: case, reason: not valid java name */
    private static final BigInteger f1261case = BigInteger.valueOf(1);

    /* renamed from: else, reason: not valid java name */
    private static final BigInteger f1262else = BigInteger.valueOf(2);

    @Override // org.bouncycastle.crypto.AsymmetricBlockCipher
    public int getInputBlockSize() {
        return this.f1265for ? (this.f1267new - 1) / 8 : ((this.f1267new + 7) / 8) * 2;
    }

    @Override // org.bouncycastle.crypto.AsymmetricBlockCipher
    public int getOutputBlockSize() {
        return this.f1265for ? ((this.f1267new + 7) / 8) * 2 : (this.f1267new - 1) / 8;
    }

    @Override // org.bouncycastle.crypto.AsymmetricBlockCipher
    public void init(boolean z, CipherParameters cipherParameters) {
        SecureRandom secureRandomM33599case;
        if (cipherParameters instanceof cc1) {
            cc1 cc1Var = (cc1) cipherParameters;
            this.f1264do = (h60) cc1Var.m846do();
            secureRandomM33599case = cc1Var.m847if();
        } else {
            this.f1264do = (h60) cipherParameters;
            secureRandomM33599case = Cfor.m33599case();
        }
        this.f1266if = secureRandomM33599case;
        this.f1265for = z;
        this.f1267new = this.f1264do.m2951if().m4600for().bitLength();
        if (z) {
            if (!(this.f1264do instanceof o60)) {
                throw new IllegalArgumentException("ElGamalPublicKeyParameters are required for encryption.");
            }
        } else if (!(this.f1264do instanceof m60)) {
            throw new IllegalArgumentException("ElGamalPrivateKeyParameters are required for decryption.");
        }
    }

    @Override // org.bouncycastle.crypto.AsymmetricBlockCipher
    public byte[] processBlock(byte[] bArr, int i, int i2) {
        BigInteger bigIntegerM36314new;
        if (this.f1264do == null) {
            throw new IllegalStateException("ElGamal engine not initialised");
        }
        if (i2 > (this.f1265for ? ((this.f1267new - 1) + 7) / 8 : getInputBlockSize())) {
            throw new tw("input too large for ElGamal cipher.\n");
        }
        BigInteger bigIntegerM4600for = this.f1264do.m2951if().m4600for();
        if (this.f1264do instanceof m60) {
            int i3 = i2 / 2;
            byte[] bArr2 = new byte[i3];
            byte[] bArr3 = new byte[i3];
            System.arraycopy(bArr, i, bArr2, 0, i3);
            System.arraycopy(bArr, i + i3, bArr3, 0, i3);
            return Cdo.m36313if(new BigInteger(1, bArr2).modPow(bigIntegerM4600for.subtract(f1261case).subtract(((m60) this.f1264do).m4853for()), bigIntegerM4600for).multiply(new BigInteger(1, bArr3)).mod(bigIntegerM4600for));
        }
        if (i != 0 || i2 != bArr.length) {
            byte[] bArr4 = new byte[i2];
            System.arraycopy(bArr, i, bArr4, 0, i2);
            bArr = bArr4;
        }
        BigInteger bigInteger = new BigInteger(1, bArr);
        if (bigInteger.compareTo(bigIntegerM4600for) >= 0) {
            throw new tw("input too large for ElGamal cipher.\n");
        }
        o60 o60Var = (o60) this.f1264do;
        int iBitLength = bigIntegerM4600for.bitLength();
        while (true) {
            bigIntegerM36314new = Cdo.m36314new(iBitLength, this.f1266if);
            if (!bigIntegerM36314new.equals(f1263try) && bigIntegerM36314new.compareTo(bigIntegerM4600for.subtract(f1262else)) <= 0) {
                break;
            }
        }
        BigInteger bigIntegerModPow = this.f1264do.m2951if().m4599do().modPow(bigIntegerM36314new, bigIntegerM4600for);
        BigInteger bigIntegerMod = bigInteger.multiply(o60Var.m5492for().modPow(bigIntegerM36314new, bigIntegerM4600for)).mod(bigIntegerM4600for);
        byte[] byteArray = bigIntegerModPow.toByteArray();
        byte[] byteArray2 = bigIntegerMod.toByteArray();
        int outputBlockSize = getOutputBlockSize();
        byte[] bArr5 = new byte[outputBlockSize];
        int i4 = outputBlockSize / 2;
        if (byteArray.length > i4) {
            System.arraycopy(byteArray, 1, bArr5, i4 - (byteArray.length - 1), byteArray.length - 1);
        } else {
            System.arraycopy(byteArray, 0, bArr5, i4 - byteArray.length, byteArray.length);
        }
        if (byteArray2.length > i4) {
            System.arraycopy(byteArray2, 1, bArr5, outputBlockSize - (byteArray2.length - 1), byteArray2.length - 1);
        } else {
            System.arraycopy(byteArray2, 0, bArr5, outputBlockSize - byteArray2.length, byteArray2.length);
        }
        return bArr5;
    }
}
