package android.support.v4;

import java.math.BigInteger;
import org.bouncycastle.math.ec.Cif;
import org.bouncycastle.math.ec.ECConstants;
import org.bouncycastle.math.ec.ECPointMap;
import org.bouncycastle.math.ec.endo.GLVEndomorphism;

/* loaded from: classes3.dex */
public class we0 implements GLVEndomorphism {

    /* renamed from: do, reason: not valid java name */
    public final Cif f7503do;

    /* renamed from: for, reason: not valid java name */
    public final ECPointMap f7504for;

    /* renamed from: if, reason: not valid java name */
    public final xe0 f7505if;

    public we0(Cif cif, xe0 xe0Var) {
        this.f7503do = cif;
        this.f7505if = xe0Var;
        this.f7504for = new xr1(cif.mo35333super(xe0Var.m9482if()));
    }

    @Override // org.bouncycastle.math.ec.endo.GLVEndomorphism
    public BigInteger[] decomposeScalar(BigInteger bigInteger) {
        int iM9480for = this.f7505if.m9480for();
        BigInteger bigIntegerM9127do = m9127do(bigInteger, this.f7505if.m9483new(), iM9480for);
        BigInteger bigIntegerM9127do2 = m9127do(bigInteger, this.f7505if.m9485try(), iM9480for);
        xe0 xe0Var = this.f7505if;
        return new BigInteger[]{bigInteger.subtract(bigIntegerM9127do.multiply(xe0Var.m9481goto()).add(bigIntegerM9127do2.multiply(xe0Var.m9477catch()))), bigIntegerM9127do.multiply(xe0Var.m9484this()).add(bigIntegerM9127do2.multiply(xe0Var.m9478class())).negate()};
    }

    /* renamed from: do, reason: not valid java name */
    public BigInteger m9127do(BigInteger bigInteger, BigInteger bigInteger2, int i) {
        boolean z = bigInteger2.signum() < 0;
        BigInteger bigIntegerMultiply = bigInteger.multiply(bigInteger2.abs());
        boolean zTestBit = bigIntegerMultiply.testBit(i - 1);
        BigInteger bigIntegerShiftRight = bigIntegerMultiply.shiftRight(i);
        if (zTestBit) {
            bigIntegerShiftRight = bigIntegerShiftRight.add(ECConstants.ONE);
        }
        return z ? bigIntegerShiftRight.negate() : bigIntegerShiftRight;
    }

    @Override // org.bouncycastle.math.ec.endo.ECEndomorphism
    public ECPointMap getPointMap() {
        return this.f7504for;
    }

    @Override // org.bouncycastle.math.ec.endo.ECEndomorphism
    public boolean hasEfficientPointMap() {
        return true;
    }
}
