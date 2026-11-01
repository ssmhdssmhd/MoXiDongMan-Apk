package org.bouncycastle.crypto.engines;

import android.support.v4.bs;
import android.support.v4.cc1;
import android.support.v4.es;
import android.support.v4.gs;
import android.support.v4.hs;
import android.support.v4.tw;
import java.math.BigInteger;
import java.security.SecureRandom;
import org.bouncycastle.crypto.Cfor;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.Digest;

/* renamed from: org.bouncycastle.crypto.engines.new, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cnew {

    /* renamed from: try, reason: not valid java name */
    private static final BigInteger f29731try = BigInteger.valueOf(1);

    /* renamed from: do, reason: not valid java name */
    private es f29732do;

    /* renamed from: for, reason: not valid java name */
    private boolean f29733for;

    /* renamed from: if, reason: not valid java name */
    private SecureRandom f29734if;

    /* renamed from: new, reason: not valid java name */
    private byte[] f29735new = null;

    /* renamed from: org.bouncycastle.crypto.engines.new$do, reason: invalid class name */
    public static class Cdo extends Exception {
        private static final long serialVersionUID = -6360977166495345076L;

        public Cdo(String str) {
            super(str);
        }
    }

    /* renamed from: catch, reason: not valid java name */
    private boolean m33544catch(BigInteger bigInteger, BigInteger bigInteger2) {
        return bigInteger.compareTo(bigInteger2) < 0;
    }

    /* renamed from: try, reason: not valid java name */
    private BigInteger m33545try(BigInteger bigInteger, SecureRandom secureRandom) {
        BigInteger bigInteger2 = f29731try;
        return org.bouncycastle.util.Cdo.m36316try(bigInteger2, bigInteger.subtract(bigInteger2), secureRandom);
    }

    /* renamed from: break, reason: not valid java name */
    public SecureRandom m33546break(boolean z, SecureRandom secureRandom) {
        if (z) {
            return secureRandom != null ? secureRandom : Cfor.m33599case();
        }
        return null;
    }

    /* renamed from: case, reason: not valid java name */
    public int m33547case() {
        int iBitLength = (this.f29732do.m1999if().m2404new().bitLength() + 7) / 8;
        return this.f29733for ? iBitLength - 1 : iBitLength;
    }

    /* renamed from: do, reason: not valid java name */
    public BigInteger m33548do(byte[] bArr, int i, int i2) {
        if (i2 > m33547case() + 1) {
            throw new tw("input too large for Cramer Shoup cipher.");
        }
        if (i2 == m33547case() + 1 && this.f29733for) {
            throw new tw("input too large for Cramer Shoup cipher.");
        }
        if (i != 0 || i2 != bArr.length) {
            byte[] bArr2 = new byte[i2];
            System.arraycopy(bArr, i, bArr2, 0, i2);
            bArr = bArr2;
        }
        BigInteger bigInteger = new BigInteger(1, bArr);
        if (bigInteger.compareTo(this.f29732do.m1999if().m2404new()) < 0) {
            return bigInteger;
        }
        throw new tw("input too large for Cramer Shoup cipher.");
    }

    /* renamed from: else, reason: not valid java name */
    public int m33549else() {
        int iBitLength = (this.f29732do.m1999if().m2404new().bitLength() + 7) / 8;
        return this.f29733for ? iBitLength : iBitLength - 1;
    }

    /* renamed from: for, reason: not valid java name */
    public BigInteger m33550for(bs bsVar) throws Cdo {
        if (this.f29732do.m33do() && !this.f29733for) {
            es esVar = this.f29732do;
            if (esVar instanceof gs) {
                gs gsVar = (gs) esVar;
                BigInteger bigIntegerM2404new = gsVar.m1999if().m2404new();
                Digest digestM2402for = gsVar.m1999if().m2402for();
                byte[] byteArray = bsVar.m633if().toByteArray();
                digestM2402for.update(byteArray, 0, byteArray.length);
                byte[] byteArray2 = bsVar.m631for().toByteArray();
                digestM2402for.update(byteArray2, 0, byteArray2.length);
                byte[] byteArray3 = bsVar.m629do().toByteArray();
                digestM2402for.update(byteArray3, 0, byteArray3.length);
                byte[] bArr = this.f29735new;
                if (bArr != null) {
                    digestM2402for.update(bArr, 0, bArr.length);
                }
                byte[] bArr2 = new byte[digestM2402for.getDigestSize()];
                digestM2402for.doFinal(bArr2, 0);
                BigInteger bigInteger = new BigInteger(1, bArr2);
                if (bsVar.f528new.equals(bsVar.f525do.modPow(gsVar.m2777new().add(gsVar.m2773case().multiply(bigInteger)), bigIntegerM2404new).multiply(bsVar.f527if.modPow(gsVar.m2779try().add(gsVar.m2774else().multiply(bigInteger)), bigIntegerM2404new)).mod(bigIntegerM2404new))) {
                    return bsVar.f526for.multiply(bsVar.f525do.modPow(gsVar.m2776goto(), bigIntegerM2404new).modInverse(bigIntegerM2404new)).mod(bigIntegerM2404new);
                }
                throw new Cdo("Sorry, that ciphertext is not correct");
            }
        }
        return null;
    }

    /* renamed from: goto, reason: not valid java name */
    public void m33551goto(boolean z, CipherParameters cipherParameters) {
        SecureRandom secureRandomM847if;
        if (cipherParameters instanceof cc1) {
            cc1 cc1Var = (cc1) cipherParameters;
            this.f29732do = (es) cc1Var.m846do();
            secureRandomM847if = cc1Var.m847if();
        } else {
            this.f29732do = (es) cipherParameters;
            secureRandomM847if = null;
        }
        this.f29734if = m33546break(z, secureRandomM847if);
        this.f29733for = z;
    }

    /* renamed from: if, reason: not valid java name */
    public byte[] m33552if(BigInteger bigInteger) {
        byte[] byteArray = bigInteger.toByteArray();
        if (this.f29733for) {
            if (byteArray[0] == 0) {
                int length = byteArray.length - 1;
                byte[] bArr = new byte[length];
                System.arraycopy(byteArray, 1, bArr, 0, length);
                return bArr;
            }
        } else {
            if (byteArray[0] == 0 && byteArray.length > m33549else()) {
                int length2 = byteArray.length - 1;
                byte[] bArr2 = new byte[length2];
                System.arraycopy(byteArray, 1, bArr2, 0, length2);
                return bArr2;
            }
            if (byteArray.length < m33549else()) {
                int iM33549else = m33549else();
                byte[] bArr3 = new byte[iM33549else];
                System.arraycopy(byteArray, 0, bArr3, iM33549else - byteArray.length, byteArray.length);
                return bArr3;
            }
        }
        return byteArray;
    }

    /* renamed from: new, reason: not valid java name */
    public bs m33553new(BigInteger bigInteger) {
        if (this.f29732do.m33do() || !this.f29733for) {
            return null;
        }
        es esVar = this.f29732do;
        if (!(esVar instanceof hs)) {
            return null;
        }
        hs hsVar = (hs) esVar;
        BigInteger bigIntegerM2404new = hsVar.m1999if().m2404new();
        BigInteger bigIntegerM2401do = hsVar.m1999if().m2401do();
        BigInteger bigIntegerM2403if = hsVar.m1999if().m2403if();
        BigInteger bigIntegerM3121try = hsVar.m3121try();
        if (!m33544catch(bigInteger, bigIntegerM2404new)) {
            return null;
        }
        BigInteger bigIntegerM33545try = m33545try(bigIntegerM2404new, this.f29734if);
        BigInteger bigIntegerModPow = bigIntegerM2401do.modPow(bigIntegerM33545try, bigIntegerM2404new);
        BigInteger bigIntegerModPow2 = bigIntegerM2403if.modPow(bigIntegerM33545try, bigIntegerM2404new);
        BigInteger bigIntegerMod = bigIntegerM3121try.modPow(bigIntegerM33545try, bigIntegerM2404new).multiply(bigInteger).mod(bigIntegerM2404new);
        Digest digestM2402for = hsVar.m1999if().m2402for();
        byte[] byteArray = bigIntegerModPow.toByteArray();
        digestM2402for.update(byteArray, 0, byteArray.length);
        byte[] byteArray2 = bigIntegerModPow2.toByteArray();
        digestM2402for.update(byteArray2, 0, byteArray2.length);
        byte[] byteArray3 = bigIntegerMod.toByteArray();
        digestM2402for.update(byteArray3, 0, byteArray3.length);
        byte[] bArr = this.f29735new;
        if (bArr != null) {
            digestM2402for.update(bArr, 0, bArr.length);
        }
        byte[] bArr2 = new byte[digestM2402for.getDigestSize()];
        digestM2402for.doFinal(bArr2, 0);
        return new bs(bigIntegerModPow, bigIntegerModPow2, bigIntegerMod, hsVar.m3119for().modPow(bigIntegerM33545try, bigIntegerM2404new).multiply(hsVar.m3120new().modPow(bigIntegerM33545try.multiply(new BigInteger(1, bArr2)), bigIntegerM2404new)).mod(bigIntegerM2404new));
    }

    /* renamed from: this, reason: not valid java name */
    public void m33554this(boolean z, CipherParameters cipherParameters, String str) {
        m33551goto(z, cipherParameters);
        this.f29735new = org.bouncycastle.util.Cfor.m36352class(str);
    }
}
