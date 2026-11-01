package android.support.v4;

import java.math.BigInteger;
import java.security.SecureRandom;
import org.bouncycastle.crypto.signers.DSAKCalculator;
import org.bouncycastle.util.Cdo;

/* loaded from: classes3.dex */
public class fl1 implements DSAKCalculator {

    /* renamed from: for, reason: not valid java name */
    private static final BigInteger f1898for = BigInteger.valueOf(0);

    /* renamed from: do, reason: not valid java name */
    private BigInteger f1899do;

    /* renamed from: if, reason: not valid java name */
    private SecureRandom f1900if;

    @Override // org.bouncycastle.crypto.signers.DSAKCalculator
    public void init(BigInteger bigInteger, BigInteger bigInteger2, byte[] bArr) {
        throw new IllegalStateException("Operation not supported");
    }

    @Override // org.bouncycastle.crypto.signers.DSAKCalculator
    public void init(BigInteger bigInteger, SecureRandom secureRandom) {
        this.f1899do = bigInteger;
        this.f1900if = secureRandom;
    }

    @Override // org.bouncycastle.crypto.signers.DSAKCalculator
    public boolean isDeterministic() {
        return false;
    }

    @Override // org.bouncycastle.crypto.signers.DSAKCalculator
    public BigInteger nextK() {
        int iBitLength = this.f1899do.bitLength();
        while (true) {
            BigInteger bigIntegerM36314new = Cdo.m36314new(iBitLength, this.f1900if);
            if (!bigIntegerM36314new.equals(f1898for) && bigIntegerM36314new.compareTo(this.f1899do) < 0) {
                return bigIntegerM36314new;
            }
        }
    }
}
