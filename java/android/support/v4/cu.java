package android.support.v4;

import java.math.BigInteger;
import java.security.SecureRandom;
import org.bouncycastle.crypto.Cfor;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.generators.Ccase;

/* loaded from: classes3.dex */
public class cu {

    /* renamed from: try, reason: not valid java name */
    private static final BigInteger f863try = BigInteger.valueOf(1);

    /* renamed from: do, reason: not valid java name */
    private pu f864do;

    /* renamed from: for, reason: not valid java name */
    private BigInteger f865for;

    /* renamed from: if, reason: not valid java name */
    private ou f866if;

    /* renamed from: new, reason: not valid java name */
    private SecureRandom f867new;

    /* renamed from: do, reason: not valid java name */
    public BigInteger m1014do(ru ruVar, BigInteger bigInteger) {
        if (!ruVar.m4512if().equals(this.f866if)) {
            throw new IllegalArgumentException("Diffie-Hellman public key has wrong parameters.");
        }
        BigInteger bigIntegerM5757case = this.f866if.m5757case();
        BigInteger bigIntegerM7126for = ruVar.m7126for();
        if (bigIntegerM7126for != null) {
            BigInteger bigInteger2 = f863try;
            if (bigIntegerM7126for.compareTo(bigInteger2) > 0 && bigIntegerM7126for.compareTo(bigIntegerM5757case.subtract(bigInteger2)) < 0) {
                BigInteger bigIntegerModPow = bigIntegerM7126for.modPow(this.f865for, bigIntegerM5757case);
                if (bigIntegerModPow.equals(bigInteger2)) {
                    throw new IllegalStateException("Shared key can't be 1");
                }
                return bigInteger.modPow(this.f864do.m6221for(), bigIntegerM5757case).multiply(bigIntegerModPow).mod(bigIntegerM5757case);
            }
        }
        throw new IllegalArgumentException("Diffie-Hellman public key is weak");
    }

    /* renamed from: for, reason: not valid java name */
    public void m1015for(CipherParameters cipherParameters) {
        if (cipherParameters instanceof cc1) {
            cc1 cc1Var = (cc1) cipherParameters;
            this.f867new = cc1Var.m847if();
            cipherParameters = cc1Var.m846do();
        } else {
            this.f867new = Cfor.m33599case();
        }
        a4 a4Var = (a4) cipherParameters;
        if (!(a4Var instanceof pu)) {
            throw new IllegalArgumentException("DHEngine expects DHPrivateKeyParameters");
        }
        pu puVar = (pu) a4Var;
        this.f864do = puVar;
        this.f866if = puVar.m4512if();
    }

    /* renamed from: if, reason: not valid java name */
    public BigInteger m1016if() {
        Ccase ccase = new Ccase();
        ccase.init(new ju(this.f867new, this.f866if));
        y3 y3VarGenerateKeyPair = ccase.generateKeyPair();
        this.f865for = ((pu) y3VarGenerateKeyPair.m9726do()).m6221for();
        return ((ru) y3VarGenerateKeyPair.m9727if()).m7126for();
    }
}
