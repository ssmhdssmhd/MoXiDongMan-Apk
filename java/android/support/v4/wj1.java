package android.support.v4;

import java.math.BigInteger;
import java.security.SecureRandom;
import org.bouncycastle.crypto.Cfor;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.util.Cdo;

/* loaded from: classes3.dex */
public class wj1 {

    /* renamed from: for, reason: not valid java name */
    private static BigInteger f7541for = BigInteger.valueOf(0);

    /* renamed from: new, reason: not valid java name */
    private static BigInteger f7542new = BigInteger.valueOf(1);

    /* renamed from: do, reason: not valid java name */
    private ck1 f7543do;

    /* renamed from: if, reason: not valid java name */
    private SecureRandom f7544if;

    /* renamed from: do, reason: not valid java name */
    public BigInteger m9166do() {
        ck1 ck1Var = this.f7543do;
        if (ck1Var == null) {
            throw new IllegalStateException("generator not initialised");
        }
        BigInteger bigIntegerM954for = ck1Var.m954for();
        int iBitLength = bigIntegerM954for.bitLength() - 1;
        while (true) {
            BigInteger bigIntegerM36314new = Cdo.m36314new(iBitLength, this.f7544if);
            BigInteger bigIntegerGcd = bigIntegerM36314new.gcd(bigIntegerM954for);
            if (!bigIntegerM36314new.equals(f7541for) && !bigIntegerM36314new.equals(f7542new) && bigIntegerGcd.equals(f7542new)) {
                return bigIntegerM36314new;
            }
        }
    }

    /* renamed from: if, reason: not valid java name */
    public void m9167if(CipherParameters cipherParameters) {
        SecureRandom secureRandomM33599case;
        if (cipherParameters instanceof cc1) {
            cc1 cc1Var = (cc1) cipherParameters;
            this.f7543do = (ck1) cc1Var.m846do();
            secureRandomM33599case = cc1Var.m847if();
        } else {
            this.f7543do = (ck1) cipherParameters;
            secureRandomM33599case = Cfor.m33599case();
        }
        this.f7544if = secureRandomM33599case;
        if (this.f7543do instanceof dk1) {
            throw new IllegalArgumentException("generator requires RSA public key");
        }
    }
}
