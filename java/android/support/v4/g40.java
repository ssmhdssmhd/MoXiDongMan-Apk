package android.support.v4;

import java.math.BigInteger;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.ec.ECPairFactorTransform;
import org.bouncycastle.math.ec.Cdo;
import org.bouncycastle.math.ec.Cnew;
import org.bouncycastle.math.ec.ECMultiplier;

/* loaded from: classes3.dex */
public class g40 implements ECPairFactorTransform {

    /* renamed from: do, reason: not valid java name */
    private k50 f2051do;

    /* renamed from: if, reason: not valid java name */
    private BigInteger f2052if;

    public g40(BigInteger bigInteger) {
        this.f2052if = bigInteger;
    }

    /* renamed from: do, reason: not valid java name */
    public ECMultiplier m2574do() {
        return new ic0();
    }

    @Override // org.bouncycastle.crypto.ec.ECPairFactorTransform
    public BigInteger getTransformValue() {
        return this.f2052if;
    }

    @Override // org.bouncycastle.crypto.ec.ECPairTransform
    public void init(CipherParameters cipherParameters) {
        if (!(cipherParameters instanceof k50)) {
            throw new IllegalArgumentException("ECPublicKeyParameters are required for fixed transform.");
        }
        this.f2051do = (k50) cipherParameters;
    }

    @Override // org.bouncycastle.crypto.ec.ECPairTransform
    public c50 transform(c50 c50Var) {
        k50 k50Var = this.f2051do;
        if (k50Var == null) {
            throw new IllegalStateException("ECFixedTransform not initialised");
        }
        e40 e40VarM7258if = k50Var.m7258if();
        BigInteger bigIntegerM1650try = e40VarM7258if.m1650try();
        ECMultiplier eCMultiplierM2574do = m2574do();
        BigInteger bigIntegerMod = this.f2052if.mod(bigIntegerM1650try);
        Cnew[] cnewArr = {eCMultiplierM2574do.multiply(e40VarM7258if.m1648if(), bigIntegerMod).mo373do(Cdo.m35358do(e40VarM7258if.m1646do(), c50Var.m751if())), this.f2051do.m4252for().m35470package(bigIntegerMod).mo373do(Cdo.m35358do(e40VarM7258if.m1646do(), c50Var.m750for()))};
        e40VarM7258if.m1646do().m35420abstract(cnewArr);
        return new c50(cnewArr[0], cnewArr[1]);
    }
}
