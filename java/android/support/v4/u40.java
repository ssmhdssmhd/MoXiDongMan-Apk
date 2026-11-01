package android.support.v4;

import java.math.BigInteger;
import org.bouncycastle.crypto.BasicAgreement;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.math.ec.Cdo;
import org.bouncycastle.math.ec.Cif;
import org.bouncycastle.math.ec.Cnew;
import org.bouncycastle.math.ec.ECConstants;

/* loaded from: classes3.dex */
public class u40 implements BasicAgreement {

    /* renamed from: do, reason: not valid java name */
    public uw0 f6749do;

    /* renamed from: do, reason: not valid java name */
    private Cnew m8233do(e40 e40Var, h50 h50Var, h50 h50Var2, k50 k50Var, k50 k50Var2, k50 k50Var3) {
        BigInteger bigIntegerM1650try = e40Var.m1650try();
        int iBitLength = (bigIntegerM1650try.bitLength() + 1) / 2;
        BigInteger bigIntegerShiftLeft = ECConstants.ONE.shiftLeft(iBitLength);
        Cif cifM1646do = e40Var.m1646do();
        Cnew cnewM35358do = Cdo.m35358do(cifM1646do, k50Var.m4252for());
        Cnew cnewM35358do2 = Cdo.m35358do(cifM1646do, k50Var2.m4252for());
        Cnew cnewM35358do3 = Cdo.m35358do(cifM1646do, k50Var3.m4252for());
        BigInteger bigIntegerMod = h50Var.m2948for().multiply(cnewM35358do.m35456case().mo339static().mod(bigIntegerShiftLeft).setBit(iBitLength)).add(h50Var2.m2948for()).mod(bigIntegerM1650try);
        BigInteger bit = cnewM35358do3.m35456case().mo339static().mod(bigIntegerShiftLeft).setBit(iBitLength);
        BigInteger bigIntegerMod2 = e40Var.m1647for().multiply(bigIntegerMod).mod(bigIntegerM1650try);
        return Cdo.m35368return(cnewM35358do2, bit.multiply(bigIntegerMod2).mod(bigIntegerM1650try), cnewM35358do3, bigIntegerMod2);
    }

    @Override // org.bouncycastle.crypto.BasicAgreement
    public BigInteger calculateAgreement(CipherParameters cipherParameters) {
        if (org.bouncycastle.util.Cif.m36370try("org.bouncycastle.ec.disable_mqv")) {
            throw new IllegalStateException("ECMQV explicitly disabled");
        }
        ww0 ww0Var = (ww0) cipherParameters;
        h50 h50VarM8693for = this.f6749do.m8693for();
        e40 e40VarM7258if = h50VarM8693for.m7258if();
        if (!e40VarM7258if.equals(ww0Var.m9296if().m7258if())) {
            throw new IllegalStateException("ECMQV public key components have wrong domain parameters");
        }
        Cnew cnewM35454abstract = m8233do(e40VarM7258if, h50VarM8693for, this.f6749do.m8692do(), this.f6749do.m8694if(), ww0Var.m9296if(), ww0Var.m9295do()).m35454abstract();
        if (cnewM35454abstract.m35479throws()) {
            throw new IllegalStateException("Infinity is not a valid agreement value for MQV");
        }
        return cnewM35454abstract.m35456case().mo339static();
    }

    @Override // org.bouncycastle.crypto.BasicAgreement
    public int getFieldSize() {
        return (this.f6749do.m8693for().m7258if().m1646do().mo35334switch() + 7) / 8;
    }

    @Override // org.bouncycastle.crypto.BasicAgreement
    public void init(CipherParameters cipherParameters) {
        this.f6749do = (uw0) cipherParameters;
    }
}
