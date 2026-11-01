package android.support.v4;

import java.math.BigInteger;
import java.security.SecureRandom;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.DSAExt;
import org.bouncycastle.math.ec.Cfor;
import org.bouncycastle.math.ec.Cif;
import org.bouncycastle.math.ec.Cnew;
import org.bouncycastle.math.ec.ECMultiplier;
import org.bouncycastle.util.Cdo;

/* loaded from: classes3.dex */
public class xv implements DSAExt {

    /* renamed from: for, reason: not valid java name */
    private static final BigInteger f8028for = BigInteger.valueOf(1);

    /* renamed from: do, reason: not valid java name */
    private s40 f8029do;

    /* renamed from: if, reason: not valid java name */
    private SecureRandom f8030if;

    /* renamed from: for, reason: not valid java name */
    private static BigInteger m9583for(BigInteger bigInteger, SecureRandom secureRandom) {
        return Cdo.m36314new(bigInteger.bitLength() - 1, secureRandom);
    }

    /* renamed from: if, reason: not valid java name */
    private static BigInteger m9584if(BigInteger bigInteger, Cfor cfor) {
        return m9586try(cfor.mo339static(), bigInteger.bitLength() - 1);
    }

    /* renamed from: new, reason: not valid java name */
    private static Cfor m9585new(Cif cif, byte[] bArr) {
        return cif.mo35333super(m9586try(new BigInteger(1, q3.C(bArr)), cif.mo35334switch()));
    }

    /* renamed from: try, reason: not valid java name */
    private static BigInteger m9586try(BigInteger bigInteger, int i) {
        return bigInteger.bitLength() > i ? bigInteger.mod(f8028for.shiftLeft(i)) : bigInteger;
    }

    /* renamed from: do, reason: not valid java name */
    public ECMultiplier m9587do() {
        return new ic0();
    }

    @Override // org.bouncycastle.crypto.DSA
    public BigInteger[] generateSignature(byte[] bArr) {
        e40 e40VarM7258if = this.f8029do.m7258if();
        Cif cifM1646do = e40VarM7258if.m1646do();
        Cfor cforM9585new = m9585new(cifM1646do, bArr);
        if (cforM9585new.mo328break()) {
            cforM9585new = cifM1646do.mo35333super(f8028for);
        }
        BigInteger bigIntegerM1650try = e40VarM7258if.m1650try();
        BigInteger bigIntegerM2948for = ((h50) this.f8029do).m2948for();
        ECMultiplier eCMultiplierM9587do = m9587do();
        while (true) {
            BigInteger bigIntegerM9583for = m9583for(bigIntegerM1650try, this.f8030if);
            Cfor cforM35456case = eCMultiplierM9587do.multiply(e40VarM7258if.m1648if(), bigIntegerM9583for).m35454abstract().m35456case();
            if (!cforM35456case.mo328break()) {
                BigInteger bigIntegerM9584if = m9584if(bigIntegerM1650try, cforM9585new.mo330catch(cforM35456case));
                if (bigIntegerM9584if.signum() != 0) {
                    BigInteger bigIntegerMod = bigIntegerM9584if.multiply(bigIntegerM2948for).add(bigIntegerM9583for).mod(bigIntegerM1650try);
                    if (bigIntegerMod.signum() != 0) {
                        return new BigInteger[]{bigIntegerM9584if, bigIntegerMod};
                    }
                } else {
                    continue;
                }
            }
        }
    }

    @Override // org.bouncycastle.crypto.DSAExt
    public BigInteger getOrder() {
        return this.f8029do.m7258if().m1650try();
    }

    @Override // org.bouncycastle.crypto.DSA
    public void init(boolean z, CipherParameters cipherParameters) {
        s40 s40Var;
        if (z) {
            if (cipherParameters instanceof cc1) {
                cc1 cc1Var = (cc1) cipherParameters;
                this.f8030if = cc1Var.m847if();
                cipherParameters = cc1Var.m846do();
            } else {
                this.f8030if = org.bouncycastle.crypto.Cfor.m33599case();
            }
            s40Var = (h50) cipherParameters;
        } else {
            s40Var = (k50) cipherParameters;
        }
        this.f8029do = s40Var;
    }

    @Override // org.bouncycastle.crypto.DSA
    public boolean verifySignature(byte[] bArr, BigInteger bigInteger, BigInteger bigInteger2) {
        if (bigInteger.signum() <= 0 || bigInteger2.signum() <= 0) {
            return false;
        }
        e40 e40VarM7258if = this.f8029do.m7258if();
        BigInteger bigIntegerM1650try = e40VarM7258if.m1650try();
        if (bigInteger.compareTo(bigIntegerM1650try) >= 0 || bigInteger2.compareTo(bigIntegerM1650try) >= 0) {
            return false;
        }
        Cif cifM1646do = e40VarM7258if.m1646do();
        Cfor cforM9585new = m9585new(cifM1646do, bArr);
        if (cforM9585new.mo328break()) {
            cforM9585new = cifM1646do.mo35333super(f8028for);
        }
        Cnew cnewM35454abstract = org.bouncycastle.math.ec.Cdo.m35368return(e40VarM7258if.m1648if(), bigInteger2, ((k50) this.f8029do).m4252for(), bigInteger).m35454abstract();
        return !cnewM35454abstract.m35479throws() && m9584if(bigIntegerM1650try, cforM9585new.mo330catch(cnewM35454abstract.m35456case())).compareTo(bigInteger) == 0;
    }
}
