package android.support.v4;

import java.math.BigInteger;
import java.security.SecureRandom;
import org.bouncycastle.crypto.Cfor;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.DSAExt;
import org.bouncycastle.crypto.signers.DSAKCalculator;
import org.bouncycastle.util.Cdo;

/* loaded from: classes3.dex */
public class lv implements DSAExt {

    /* renamed from: do, reason: not valid java name */
    private final DSAKCalculator f3776do;

    /* renamed from: for, reason: not valid java name */
    private SecureRandom f3777for;

    /* renamed from: if, reason: not valid java name */
    private ev f3778if;

    public lv() {
        this.f3776do = new fl1();
    }

    public lv(DSAKCalculator dSAKCalculator) {
        this.f3776do = dSAKCalculator;
    }

    /* renamed from: do, reason: not valid java name */
    private BigInteger m4791do(BigInteger bigInteger, byte[] bArr) {
        if (bigInteger.bitLength() >= bArr.length * 8) {
            return new BigInteger(1, bArr);
        }
        int iBitLength = bigInteger.bitLength() / 8;
        byte[] bArr2 = new byte[iBitLength];
        System.arraycopy(bArr, 0, bArr2, 0, iBitLength);
        return new BigInteger(1, bArr2);
    }

    /* renamed from: if, reason: not valid java name */
    private BigInteger m4792if(BigInteger bigInteger, SecureRandom secureRandom) {
        if (secureRandom == null) {
            secureRandom = Cfor.m33599case();
        }
        return Cdo.m36314new(7, secureRandom).add(BigInteger.valueOf(128L)).multiply(bigInteger);
    }

    /* renamed from: for, reason: not valid java name */
    public SecureRandom m4793for(boolean z, SecureRandom secureRandom) {
        if (z) {
            return secureRandom != null ? secureRandom : Cfor.m33599case();
        }
        return null;
    }

    @Override // org.bouncycastle.crypto.DSA
    public BigInteger[] generateSignature(byte[] bArr) {
        hv hvVarM2025if = this.f3778if.m2025if();
        BigInteger bigIntegerM3128for = hvVarM2025if.m3128for();
        BigInteger bigIntegerM4791do = m4791do(bigIntegerM3128for, bArr);
        BigInteger bigIntegerM4110for = ((jv) this.f3778if).m4110for();
        if (this.f3776do.isDeterministic()) {
            this.f3776do.init(bigIntegerM3128for, bigIntegerM4110for, bArr);
        } else {
            this.f3776do.init(bigIntegerM3128for, this.f3777for);
        }
        BigInteger bigIntegerNextK = this.f3776do.nextK();
        BigInteger bigIntegerMod = hvVarM2025if.m3127do().modPow(bigIntegerNextK.add(m4792if(bigIntegerM3128for, this.f3777for)), hvVarM2025if.m3129if()).mod(bigIntegerM3128for);
        return new BigInteger[]{bigIntegerMod, bigIntegerNextK.modInverse(bigIntegerM3128for).multiply(bigIntegerM4791do.add(bigIntegerM4110for.multiply(bigIntegerMod))).mod(bigIntegerM3128for)};
    }

    @Override // org.bouncycastle.crypto.DSAExt
    public BigInteger getOrder() {
        return this.f3778if.m2025if().m3128for();
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0029  */
    @Override // org.bouncycastle.crypto.DSA
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void init(boolean z, CipherParameters cipherParameters) {
        ev evVar;
        SecureRandom secureRandomM847if;
        if (!z) {
            evVar = (kv) cipherParameters;
        } else {
            if (cipherParameters instanceof cc1) {
                cc1 cc1Var = (cc1) cipherParameters;
                this.f3778if = (jv) cc1Var.m846do();
                secureRandomM847if = cc1Var.m847if();
                this.f3777for = m4793for((z || this.f3776do.isDeterministic()) ? false : true, secureRandomM847if);
            }
            evVar = (jv) cipherParameters;
        }
        this.f3778if = evVar;
        secureRandomM847if = null;
        this.f3777for = m4793for((z || this.f3776do.isDeterministic()) ? false : true, secureRandomM847if);
    }

    @Override // org.bouncycastle.crypto.DSA
    public boolean verifySignature(byte[] bArr, BigInteger bigInteger, BigInteger bigInteger2) {
        hv hvVarM2025if = this.f3778if.m2025if();
        BigInteger bigIntegerM3128for = hvVarM2025if.m3128for();
        BigInteger bigIntegerM4791do = m4791do(bigIntegerM3128for, bArr);
        BigInteger bigIntegerValueOf = BigInteger.valueOf(0L);
        if (bigIntegerValueOf.compareTo(bigInteger) >= 0 || bigIntegerM3128for.compareTo(bigInteger) <= 0 || bigIntegerValueOf.compareTo(bigInteger2) >= 0 || bigIntegerM3128for.compareTo(bigInteger2) <= 0) {
            return false;
        }
        BigInteger bigIntegerModInverse = bigInteger2.modInverse(bigIntegerM3128for);
        BigInteger bigIntegerMod = bigIntegerM4791do.multiply(bigIntegerModInverse).mod(bigIntegerM3128for);
        BigInteger bigIntegerMod2 = bigInteger.multiply(bigIntegerModInverse).mod(bigIntegerM3128for);
        BigInteger bigIntegerM3129if = hvVarM2025if.m3129if();
        return hvVarM2025if.m3127do().modPow(bigIntegerMod, bigIntegerM3129if).multiply(((kv) this.f3778if).m4514for().modPow(bigIntegerMod2, bigIntegerM3129if)).mod(bigIntegerM3129if).mod(bigIntegerM3128for).equals(bigInteger);
    }
}
