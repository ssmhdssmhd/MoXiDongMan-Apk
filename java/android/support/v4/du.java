package android.support.v4;

import java.math.BigInteger;
import org.bouncycastle.crypto.BasicAgreement;
import org.bouncycastle.crypto.CipherParameters;

/* loaded from: classes3.dex */
public class du implements BasicAgreement {

    /* renamed from: for, reason: not valid java name */
    private static final BigInteger f1130for = BigInteger.valueOf(1);

    /* renamed from: do, reason: not valid java name */
    private pu f1131do;

    /* renamed from: if, reason: not valid java name */
    private ou f1132if;

    @Override // org.bouncycastle.crypto.BasicAgreement
    public BigInteger calculateAgreement(CipherParameters cipherParameters) {
        ru ruVar = (ru) cipherParameters;
        if (!ruVar.m4512if().equals(this.f1132if)) {
            throw new IllegalArgumentException("Diffie-Hellman public key has wrong parameters.");
        }
        BigInteger bigIntegerM5757case = this.f1132if.m5757case();
        BigInteger bigIntegerM7126for = ruVar.m7126for();
        if (bigIntegerM7126for != null) {
            BigInteger bigInteger = f1130for;
            if (bigIntegerM7126for.compareTo(bigInteger) > 0 && bigIntegerM7126for.compareTo(bigIntegerM5757case.subtract(bigInteger)) < 0) {
                BigInteger bigIntegerModPow = bigIntegerM7126for.modPow(this.f1131do.m6221for(), bigIntegerM5757case);
                if (bigIntegerModPow.equals(bigInteger)) {
                    throw new IllegalStateException("Shared key can't be 1");
                }
                return bigIntegerModPow;
            }
        }
        throw new IllegalArgumentException("Diffie-Hellman public key is weak");
    }

    @Override // org.bouncycastle.crypto.BasicAgreement
    public int getFieldSize() {
        return (this.f1131do.m4512if().m5757case().bitLength() + 7) / 8;
    }

    @Override // org.bouncycastle.crypto.BasicAgreement
    public void init(CipherParameters cipherParameters) {
        if (cipherParameters instanceof cc1) {
            cipherParameters = ((cc1) cipherParameters).m846do();
        }
        a4 a4Var = (a4) cipherParameters;
        if (!(a4Var instanceof pu)) {
            throw new IllegalArgumentException("DHEngine expects DHPrivateKeyParameters");
        }
        pu puVar = (pu) a4Var;
        this.f1131do = puVar;
        this.f1132if = puVar.m4512if();
    }
}
