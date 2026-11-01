package android.support.v4;

import java.math.BigInteger;
import java.security.SecureRandom;
import org.bouncycastle.crypto.Cfor;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.DSAExt;
import org.bouncycastle.math.ec.Cnew;
import org.bouncycastle.math.ec.ECConstants;
import org.bouncycastle.math.ec.ECMultiplier;
import org.bouncycastle.util.Cdo;

/* loaded from: classes3.dex */
public class n40 implements DSAExt {

    /* renamed from: do, reason: not valid java name */
    public s40 f4113do;

    /* renamed from: if, reason: not valid java name */
    public SecureRandom f4114if;

    /* renamed from: do, reason: not valid java name */
    public ECMultiplier m5084do() {
        return new ic0();
    }

    @Override // org.bouncycastle.crypto.DSA
    public BigInteger[] generateSignature(byte[] bArr) {
        int length = bArr.length;
        byte[] bArr2 = new byte[length];
        for (int i = 0; i != length; i++) {
            bArr2[i] = bArr[(length - 1) - i];
        }
        BigInteger bigInteger = new BigInteger(1, bArr2);
        e40 e40VarM7258if = this.f4113do.m7258if();
        BigInteger bigIntegerM1650try = e40VarM7258if.m1650try();
        BigInteger bigIntegerM2948for = ((h50) this.f4113do).m2948for();
        ECMultiplier eCMultiplierM5084do = m5084do();
        while (true) {
            BigInteger bigIntegerM36314new = Cdo.m36314new(bigIntegerM1650try.bitLength(), this.f4114if);
            BigInteger bigInteger2 = ECConstants.ZERO;
            if (!bigIntegerM36314new.equals(bigInteger2)) {
                BigInteger bigIntegerMod = eCMultiplierM5084do.multiply(e40VarM7258if.m1648if(), bigIntegerM36314new).m35454abstract().m35456case().mo339static().mod(bigIntegerM1650try);
                if (bigIntegerMod.equals(bigInteger2)) {
                    continue;
                } else {
                    BigInteger bigIntegerMod2 = bigIntegerM36314new.multiply(bigInteger).add(bigIntegerM2948for.multiply(bigIntegerMod)).mod(bigIntegerM1650try);
                    if (!bigIntegerMod2.equals(bigInteger2)) {
                        return new BigInteger[]{bigIntegerMod, bigIntegerMod2};
                    }
                }
            }
        }
    }

    @Override // org.bouncycastle.crypto.DSAExt
    public BigInteger getOrder() {
        return this.f4113do.m7258if().m1650try();
    }

    @Override // org.bouncycastle.crypto.DSA
    public void init(boolean z, CipherParameters cipherParameters) {
        s40 s40Var;
        if (!z) {
            s40Var = (k50) cipherParameters;
        } else {
            if (cipherParameters instanceof cc1) {
                cc1 cc1Var = (cc1) cipherParameters;
                this.f4114if = cc1Var.m847if();
                this.f4113do = (h50) cc1Var.m846do();
                return;
            }
            this.f4114if = Cfor.m33599case();
            s40Var = (h50) cipherParameters;
        }
        this.f4113do = s40Var;
    }

    @Override // org.bouncycastle.crypto.DSA
    public boolean verifySignature(byte[] bArr, BigInteger bigInteger, BigInteger bigInteger2) {
        int length = bArr.length;
        byte[] bArr2 = new byte[length];
        for (int i = 0; i != length; i++) {
            bArr2[i] = bArr[(length - 1) - i];
        }
        BigInteger bigInteger3 = new BigInteger(1, bArr2);
        BigInteger bigIntegerM1650try = this.f4113do.m7258if().m1650try();
        BigInteger bigInteger4 = ECConstants.ONE;
        if (bigInteger.compareTo(bigInteger4) < 0 || bigInteger.compareTo(bigIntegerM1650try) >= 0 || bigInteger2.compareTo(bigInteger4) < 0 || bigInteger2.compareTo(bigIntegerM1650try) >= 0) {
            return false;
        }
        BigInteger bigIntegerModInverse = bigInteger3.modInverse(bigIntegerM1650try);
        Cnew cnewM35454abstract = org.bouncycastle.math.ec.Cdo.m35368return(this.f4113do.m7258if().m1648if(), bigInteger2.multiply(bigIntegerModInverse).mod(bigIntegerM1650try), ((k50) this.f4113do).m4252for(), bigIntegerM1650try.subtract(bigInteger).multiply(bigIntegerModInverse).mod(bigIntegerM1650try)).m35454abstract();
        if (cnewM35454abstract.m35479throws()) {
            return false;
        }
        return cnewM35454abstract.m35456case().mo339static().mod(bigIntegerM1650try).equals(bigInteger);
    }
}
