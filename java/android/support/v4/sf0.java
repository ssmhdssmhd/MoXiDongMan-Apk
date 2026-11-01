package android.support.v4;

import java.math.BigInteger;
import java.security.SecureRandom;
import org.bouncycastle.crypto.AsymmetricCipherKeyPairGenerator;
import org.bouncycastle.math.ec.Cclass;
import org.bouncycastle.util.Cdo;

/* loaded from: classes3.dex */
public class sf0 implements AsymmetricCipherKeyPairGenerator {

    /* renamed from: do, reason: not valid java name */
    private rf0 f6140do;

    @Override // org.bouncycastle.crypto.AsymmetricCipherKeyPairGenerator
    public y3 generateKeyPair() {
        yf0 yf0VarM6954for = this.f6140do.m6954for();
        SecureRandom secureRandomM1497do = this.f6140do.m1497do();
        BigInteger bigIntegerM9828for = yf0VarM6954for.m9828for();
        BigInteger bigIntegerM9829if = yf0VarM6954for.m9829if();
        BigInteger bigIntegerM9827do = yf0VarM6954for.m9827do();
        while (true) {
            BigInteger bigIntegerM36314new = Cdo.m36314new(256, secureRandomM1497do);
            if (bigIntegerM36314new.signum() >= 1 && bigIntegerM36314new.compareTo(bigIntegerM9828for) < 0 && Cclass.m35317goto(bigIntegerM36314new) >= 64) {
                return new y3((a4) new eg0(bigIntegerM9827do.modPow(bigIntegerM36314new, bigIntegerM9829if), yf0VarM6954for), (a4) new ag0(bigIntegerM36314new, yf0VarM6954for));
            }
        }
    }

    @Override // org.bouncycastle.crypto.AsymmetricCipherKeyPairGenerator
    public void init(dr0 dr0Var) {
        this.f6140do = (rf0) dr0Var;
    }
}
