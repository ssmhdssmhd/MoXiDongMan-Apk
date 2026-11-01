package android.support.v4;

import java.math.BigInteger;
import java.security.SecureRandom;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.DSAExt;
import org.bouncycastle.crypto.signers.DSAKCalculator;
import org.bouncycastle.math.ec.Cdo;
import org.bouncycastle.math.ec.Cfor;
import org.bouncycastle.math.ec.Cif;
import org.bouncycastle.math.ec.Cnew;
import org.bouncycastle.math.ec.ECConstants;
import org.bouncycastle.math.ec.ECMultiplier;

/* loaded from: classes3.dex */
public class d40 implements ECConstants, DSAExt {

    /* renamed from: do, reason: not valid java name */
    private final DSAKCalculator f930do;

    /* renamed from: for, reason: not valid java name */
    private SecureRandom f931for;

    /* renamed from: if, reason: not valid java name */
    private s40 f932if;

    public d40() {
        this.f930do = new fl1();
    }

    public d40(DSAKCalculator dSAKCalculator) {
        this.f930do = dSAKCalculator;
    }

    /* renamed from: do, reason: not valid java name */
    public BigInteger m1136do(BigInteger bigInteger, byte[] bArr) {
        int iBitLength = bigInteger.bitLength();
        int length = bArr.length * 8;
        BigInteger bigInteger2 = new BigInteger(1, bArr);
        return iBitLength < length ? bigInteger2.shiftRight(length - iBitLength) : bigInteger2;
    }

    /* renamed from: for, reason: not valid java name */
    public Cfor m1137for(int i, Cnew cnew) {
        if (i != 1) {
            if (i == 2 || i == 3 || i == 4) {
                return cnew.mo2405public(0).mo342throw();
            }
            if (i != 6 && i != 7) {
                return null;
            }
        }
        return cnew.mo2405public(0);
    }

    @Override // org.bouncycastle.crypto.DSA
    public BigInteger[] generateSignature(byte[] bArr) {
        e40 e40VarM7258if = this.f932if.m7258if();
        BigInteger bigIntegerM1650try = e40VarM7258if.m1650try();
        BigInteger bigIntegerM1136do = m1136do(bigIntegerM1650try, bArr);
        BigInteger bigIntegerM2948for = ((h50) this.f932if).m2948for();
        if (this.f930do.isDeterministic()) {
            this.f930do.init(bigIntegerM1650try, bigIntegerM2948for, bArr);
        } else {
            this.f930do.init(bigIntegerM1650try, this.f931for);
        }
        ECMultiplier eCMultiplierM1138if = m1138if();
        while (true) {
            BigInteger bigIntegerNextK = this.f930do.nextK();
            BigInteger bigIntegerMod = eCMultiplierM1138if.multiply(e40VarM7258if.m1648if(), bigIntegerNextK).m35454abstract().m35456case().mo339static().mod(bigIntegerM1650try);
            BigInteger bigInteger = ECConstants.ZERO;
            if (!bigIntegerMod.equals(bigInteger)) {
                BigInteger bigIntegerMod2 = bigIntegerNextK.modInverse(bigIntegerM1650try).multiply(bigIntegerM1136do.add(bigIntegerM2948for.multiply(bigIntegerMod))).mod(bigIntegerM1650try);
                if (!bigIntegerMod2.equals(bigInteger)) {
                    return new BigInteger[]{bigIntegerMod, bigIntegerMod2};
                }
            }
        }
    }

    @Override // org.bouncycastle.crypto.DSAExt
    public BigInteger getOrder() {
        return this.f932if.m7258if().m1650try();
    }

    /* renamed from: if, reason: not valid java name */
    public ECMultiplier m1138if() {
        return new ic0();
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0029  */
    @Override // org.bouncycastle.crypto.DSA
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void init(boolean z, CipherParameters cipherParameters) {
        s40 s40Var;
        SecureRandom secureRandomM847if;
        if (!z) {
            s40Var = (k50) cipherParameters;
        } else {
            if (cipherParameters instanceof cc1) {
                cc1 cc1Var = (cc1) cipherParameters;
                this.f932if = (h50) cc1Var.m846do();
                secureRandomM847if = cc1Var.m847if();
                this.f931for = m1139new((z || this.f930do.isDeterministic()) ? false : true, secureRandomM847if);
            }
            s40Var = (h50) cipherParameters;
        }
        this.f932if = s40Var;
        secureRandomM847if = null;
        this.f931for = m1139new((z || this.f930do.isDeterministic()) ? false : true, secureRandomM847if);
    }

    /* renamed from: new, reason: not valid java name */
    public SecureRandom m1139new(boolean z, SecureRandom secureRandom) {
        if (z) {
            return secureRandom != null ? secureRandom : org.bouncycastle.crypto.Cfor.m33599case();
        }
        return null;
    }

    @Override // org.bouncycastle.crypto.DSA
    public boolean verifySignature(byte[] bArr, BigInteger bigInteger, BigInteger bigInteger2) {
        BigInteger bigIntegerM35434native;
        Cfor cforM1137for;
        e40 e40VarM7258if = this.f932if.m7258if();
        BigInteger bigIntegerM1650try = e40VarM7258if.m1650try();
        BigInteger bigIntegerM1136do = m1136do(bigIntegerM1650try, bArr);
        BigInteger bigInteger3 = ECConstants.ONE;
        if (bigInteger.compareTo(bigInteger3) < 0 || bigInteger.compareTo(bigIntegerM1650try) >= 0 || bigInteger2.compareTo(bigInteger3) < 0 || bigInteger2.compareTo(bigIntegerM1650try) >= 0) {
            return false;
        }
        BigInteger bigIntegerModInverse = bigInteger2.modInverse(bigIntegerM1650try);
        Cnew cnewM35368return = Cdo.m35368return(e40VarM7258if.m1648if(), bigIntegerM1136do.multiply(bigIntegerModInverse).mod(bigIntegerM1650try), ((k50) this.f932if).m4252for(), bigInteger.multiply(bigIntegerModInverse).mod(bigIntegerM1650try));
        if (cnewM35368return.m35479throws()) {
            return false;
        }
        Cif cifM35477this = cnewM35368return.m35477this();
        if (cifM35477this == null || (bigIntegerM35434native = cifM35477this.m35434native()) == null || bigIntegerM35434native.compareTo(ECConstants.EIGHT) > 0 || (cforM1137for = m1137for(cifM35477this.m35438public(), cnewM35368return)) == null || cforM1137for.mo328break()) {
            return cnewM35368return.m35454abstract().m35456case().mo339static().mod(bigIntegerM1650try).equals(bigInteger);
        }
        Cfor cforM35467import = cnewM35368return.m35467import();
        while (cifM35477this.mo35436private(bigInteger)) {
            if (cifM35477this.mo35333super(bigInteger).mo330catch(cforM1137for).equals(cforM35467import)) {
                return true;
            }
            bigInteger = bigInteger.add(bigIntegerM1650try);
        }
        return false;
    }
}
