package android.support.v4;

import java.math.BigInteger;
import java.security.SecureRandom;
import org.bouncycastle.crypto.AsymmetricCipherKeyPairGenerator;
import org.bouncycastle.util.Cdo;

/* loaded from: classes3.dex */
public class ds implements AsymmetricCipherKeyPairGenerator {

    /* renamed from: if, reason: not valid java name */
    private static final BigInteger f1110if = BigInteger.valueOf(1);

    /* renamed from: do, reason: not valid java name */
    private cs f1111do;

    /* renamed from: do, reason: not valid java name */
    private hs m1502do(fs fsVar, gs gsVar) {
        BigInteger bigIntegerM2401do = fsVar.m2401do();
        BigInteger bigIntegerM2403if = fsVar.m2403if();
        BigInteger bigIntegerM2404new = fsVar.m2404new();
        return new hs(fsVar, bigIntegerM2401do.modPow(gsVar.m2777new(), bigIntegerM2404new).multiply(bigIntegerM2403if.modPow(gsVar.m2779try(), bigIntegerM2404new)), bigIntegerM2401do.modPow(gsVar.m2773case(), bigIntegerM2404new).multiply(bigIntegerM2403if.modPow(gsVar.m2774else(), bigIntegerM2404new)), bigIntegerM2401do.modPow(gsVar.m2776goto(), bigIntegerM2404new));
    }

    /* renamed from: for, reason: not valid java name */
    private BigInteger m1503for(BigInteger bigInteger, SecureRandom secureRandom) {
        BigInteger bigInteger2 = f1110if;
        return Cdo.m36316try(bigInteger2, bigInteger.subtract(bigInteger2), secureRandom);
    }

    /* renamed from: if, reason: not valid java name */
    private gs m1504if(SecureRandom secureRandom, fs fsVar) {
        BigInteger bigIntegerM2404new = fsVar.m2404new();
        return new gs(fsVar, m1503for(bigIntegerM2404new, secureRandom), m1503for(bigIntegerM2404new, secureRandom), m1503for(bigIntegerM2404new, secureRandom), m1503for(bigIntegerM2404new, secureRandom), m1503for(bigIntegerM2404new, secureRandom));
    }

    @Override // org.bouncycastle.crypto.AsymmetricCipherKeyPairGenerator
    public y3 generateKeyPair() {
        fs fsVarM1008for = this.f1111do.m1008for();
        gs gsVarM1504if = m1504if(this.f1111do.m1497do(), fsVarM1008for);
        hs hsVarM1502do = m1502do(fsVarM1008for, gsVarM1504if);
        gsVarM1504if.m2778this(hsVarM1502do);
        return new y3((a4) hsVarM1502do, (a4) gsVarM1504if);
    }

    @Override // org.bouncycastle.crypto.AsymmetricCipherKeyPairGenerator
    public void init(dr0 dr0Var) {
        this.f1111do = (cs) dr0Var;
    }
}
