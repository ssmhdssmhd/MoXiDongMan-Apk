package android.support.v4;

import java.math.BigInteger;
import java.security.SecureRandom;
import org.bouncycastle.crypto.AsymmetricCipherKeyPairGenerator;
import org.bouncycastle.crypto.Cfor;
import org.bouncycastle.math.ec.Cclass;
import org.bouncycastle.math.ec.ECConstants;
import org.bouncycastle.math.ec.ECMultiplier;
import org.bouncycastle.util.Cdo;

/* loaded from: classes3.dex */
public class r40 implements AsymmetricCipherKeyPairGenerator, ECConstants {

    /* renamed from: do, reason: not valid java name */
    public e40 f5641do;

    /* renamed from: if, reason: not valid java name */
    public SecureRandom f5642if;

    /* renamed from: do, reason: not valid java name */
    public ECMultiplier m6749do() {
        return new ic0();
    }

    @Override // org.bouncycastle.crypto.AsymmetricCipherKeyPairGenerator
    public y3 generateKeyPair() {
        BigInteger bigIntegerM1650try = this.f5641do.m1650try();
        int iBitLength = bigIntegerM1650try.bitLength();
        int i = iBitLength >>> 2;
        while (true) {
            BigInteger bigIntegerM36314new = Cdo.m36314new(iBitLength, this.f5642if);
            if (bigIntegerM36314new.compareTo(ECConstants.TWO) >= 0 && bigIntegerM36314new.compareTo(bigIntegerM1650try) < 0 && Cclass.m35317goto(bigIntegerM36314new) >= i) {
                return new y3((a4) new k50(m6749do().multiply(this.f5641do.m1648if(), bigIntegerM36314new), this.f5641do), (a4) new h50(bigIntegerM36314new, this.f5641do));
            }
        }
    }

    @Override // org.bouncycastle.crypto.AsymmetricCipherKeyPairGenerator
    public void init(dr0 dr0Var) {
        q40 q40Var = (q40) dr0Var;
        this.f5642if = q40Var.m1497do();
        this.f5641do = q40Var.m6403for();
        if (this.f5642if == null) {
            this.f5642if = Cfor.m33599case();
        }
    }
}
