package android.support.v4;

import java.math.BigInteger;
import java.security.SecureRandom;
import org.bouncycastle.crypto.Cfor;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.DSAExt;
import org.bouncycastle.math.ec.Cdo;
import org.bouncycastle.math.ec.Cnew;
import org.bouncycastle.math.ec.ECConstants;

/* loaded from: classes3.dex */
public class v40 implements DSAExt {

    /* renamed from: do, reason: not valid java name */
    private boolean f7086do;

    /* renamed from: for, reason: not valid java name */
    private SecureRandom f7087for;

    /* renamed from: if, reason: not valid java name */
    private s40 f7088if;

    @Override // org.bouncycastle.crypto.DSA
    public BigInteger[] generateSignature(byte[] bArr) {
        y3 y3VarGenerateKeyPair;
        BigInteger bigIntegerMod;
        if (!this.f7086do) {
            throw new IllegalStateException("not initialised for signing");
        }
        BigInteger order = getOrder();
        int iBitLength = order.bitLength();
        BigInteger bigInteger = new BigInteger(1, bArr);
        int iBitLength2 = bigInteger.bitLength();
        h50 h50Var = (h50) this.f7088if;
        if (iBitLength2 > iBitLength) {
            throw new tw("input too large for ECNR key.");
        }
        do {
            r40 r40Var = new r40();
            r40Var.init(new q40(h50Var.m7258if(), this.f7087for));
            y3VarGenerateKeyPair = r40Var.generateKeyPair();
            bigIntegerMod = ((k50) y3VarGenerateKeyPair.m9727if()).m4252for().m35456case().mo339static().add(bigInteger).mod(order);
        } while (bigIntegerMod.equals(ECConstants.ZERO));
        return new BigInteger[]{bigIntegerMod, ((h50) y3VarGenerateKeyPair.m9726do()).m2948for().subtract(bigIntegerMod.multiply(h50Var.m2948for())).mod(order)};
    }

    @Override // org.bouncycastle.crypto.DSAExt
    public BigInteger getOrder() {
        return this.f7088if.m7258if().m1650try();
    }

    @Override // org.bouncycastle.crypto.DSA
    public void init(boolean z, CipherParameters cipherParameters) {
        s40 s40Var;
        this.f7086do = z;
        if (!z) {
            s40Var = (k50) cipherParameters;
        } else {
            if (cipherParameters instanceof cc1) {
                cc1 cc1Var = (cc1) cipherParameters;
                this.f7087for = cc1Var.m847if();
                this.f7088if = (h50) cc1Var.m846do();
                return;
            }
            this.f7087for = Cfor.m33599case();
            s40Var = (h50) cipherParameters;
        }
        this.f7088if = s40Var;
    }

    @Override // org.bouncycastle.crypto.DSA
    public boolean verifySignature(byte[] bArr, BigInteger bigInteger, BigInteger bigInteger2) {
        if (this.f7086do) {
            throw new IllegalStateException("not initialised for verifying");
        }
        k50 k50Var = (k50) this.f7088if;
        BigInteger bigIntegerM1650try = k50Var.m7258if().m1650try();
        int iBitLength = bigIntegerM1650try.bitLength();
        BigInteger bigInteger3 = new BigInteger(1, bArr);
        if (bigInteger3.bitLength() > iBitLength) {
            throw new tw("input too large for ECNR key.");
        }
        if (bigInteger.compareTo(ECConstants.ONE) < 0 || bigInteger.compareTo(bigIntegerM1650try) >= 0 || bigInteger2.compareTo(ECConstants.ZERO) < 0 || bigInteger2.compareTo(bigIntegerM1650try) >= 0) {
            return false;
        }
        Cnew cnewM35454abstract = Cdo.m35368return(k50Var.m7258if().m1648if(), bigInteger2, k50Var.m4252for(), bigInteger).m35454abstract();
        if (cnewM35454abstract.m35479throws()) {
            return false;
        }
        return bigInteger.subtract(cnewM35454abstract.m35456case().mo339static()).mod(bigIntegerM1650try).equals(bigInteger3);
    }
}
