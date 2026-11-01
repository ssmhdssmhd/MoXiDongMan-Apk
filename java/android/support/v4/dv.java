package android.support.v4;

import java.math.BigInteger;
import java.security.SecureRandom;
import org.bouncycastle.crypto.AsymmetricCipherKeyPairGenerator;
import org.bouncycastle.math.ec.Cclass;
import org.bouncycastle.util.Cdo;

/* loaded from: classes3.dex */
public class dv implements AsymmetricCipherKeyPairGenerator {

    /* renamed from: if, reason: not valid java name */
    private static final BigInteger f1136if = BigInteger.valueOf(1);

    /* renamed from: do, reason: not valid java name */
    private cv f1137do;

    /* renamed from: do, reason: not valid java name */
    private static BigInteger m1549do(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3) {
        return bigInteger2.modPow(bigInteger3, bigInteger);
    }

    /* renamed from: if, reason: not valid java name */
    private static BigInteger m1550if(BigInteger bigInteger, SecureRandom secureRandom) {
        BigInteger bigIntegerM36316try;
        int iBitLength = bigInteger.bitLength() >>> 2;
        do {
            BigInteger bigInteger2 = f1136if;
            bigIntegerM36316try = Cdo.m36316try(bigInteger2, bigInteger.subtract(bigInteger2), secureRandom);
        } while (Cclass.m35317goto(bigIntegerM36316try) < iBitLength);
        return bigIntegerM36316try;
    }

    @Override // org.bouncycastle.crypto.AsymmetricCipherKeyPairGenerator
    public y3 generateKeyPair() {
        hv hvVarM1032for = this.f1137do.m1032for();
        BigInteger bigIntegerM1550if = m1550if(hvVarM1032for.m3128for(), this.f1137do.m1497do());
        return new y3((a4) new kv(m1549do(hvVarM1032for.m3129if(), hvVarM1032for.m3127do(), bigIntegerM1550if), hvVarM1032for), (a4) new jv(bigIntegerM1550if, hvVarM1032for));
    }

    @Override // org.bouncycastle.crypto.AsymmetricCipherKeyPairGenerator
    public void init(dr0 dr0Var) {
        this.f1137do = (cv) dr0Var;
    }
}
