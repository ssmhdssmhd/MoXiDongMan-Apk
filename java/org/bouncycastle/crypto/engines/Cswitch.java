package org.bouncycastle.crypto.engines;

import android.support.v4.cc1;
import android.support.v4.ck1;
import android.support.v4.dk1;
import android.support.v4.q3;
import android.support.v4.tw;
import java.math.BigInteger;
import org.bouncycastle.crypto.CipherParameters;

/* renamed from: org.bouncycastle.crypto.engines.switch, reason: invalid class name */
/* loaded from: classes3.dex */
class Cswitch {

    /* renamed from: do, reason: not valid java name */
    private ck1 f29761do;

    /* renamed from: if, reason: not valid java name */
    private boolean f29762if;

    /* renamed from: case, reason: not valid java name */
    public BigInteger m33570case(BigInteger bigInteger) {
        ck1 ck1Var = this.f29761do;
        if (!(ck1Var instanceof dk1)) {
            return bigInteger.modPow(ck1Var.m955if(), this.f29761do.m954for());
        }
        dk1 dk1Var = (dk1) ck1Var;
        BigInteger bigIntegerM1384else = dk1Var.m1384else();
        BigInteger bigIntegerM1386this = dk1Var.m1386this();
        BigInteger bigIntegerM1387try = dk1Var.m1387try();
        BigInteger bigIntegerM1383case = dk1Var.m1383case();
        BigInteger bigIntegerM1382break = dk1Var.m1382break();
        BigInteger bigIntegerModPow = bigInteger.remainder(bigIntegerM1384else).modPow(bigIntegerM1387try, bigIntegerM1384else);
        BigInteger bigIntegerModPow2 = bigInteger.remainder(bigIntegerM1386this).modPow(bigIntegerM1383case, bigIntegerM1386this);
        return bigIntegerModPow.subtract(bigIntegerModPow2).multiply(bigIntegerM1382break).mod(bigIntegerM1384else).multiply(bigIntegerM1386this).add(bigIntegerModPow2);
    }

    /* renamed from: do, reason: not valid java name */
    public BigInteger m33571do(byte[] bArr, int i, int i2) {
        if (i2 > m33572for() + 1) {
            throw new tw("input too large for RSA cipher.");
        }
        if (i2 == m33572for() + 1 && !this.f29762if) {
            throw new tw("input too large for RSA cipher.");
        }
        if (i != 0 || i2 != bArr.length) {
            byte[] bArr2 = new byte[i2];
            System.arraycopy(bArr, i, bArr2, 0, i2);
            bArr = bArr2;
        }
        BigInteger bigInteger = new BigInteger(1, bArr);
        if (bigInteger.compareTo(this.f29761do.m954for()) < 0) {
            return bigInteger;
        }
        throw new tw("input too large for RSA cipher.");
    }

    /* renamed from: for, reason: not valid java name */
    public int m33572for() {
        int iBitLength = (this.f29761do.m954for().bitLength() + 7) / 8;
        return this.f29762if ? iBitLength - 1 : iBitLength;
    }

    /* renamed from: if, reason: not valid java name */
    public byte[] m33573if(BigInteger bigInteger) {
        byte[] bArr;
        byte[] byteArray = bigInteger.toByteArray();
        if (!this.f29762if) {
            if (byteArray[0] == 0) {
                int length = byteArray.length - 1;
                bArr = new byte[length];
                System.arraycopy(byteArray, 1, bArr, 0, length);
            } else {
                int length2 = byteArray.length;
                bArr = new byte[length2];
                System.arraycopy(byteArray, 0, bArr, 0, length2);
            }
            q3.c(byteArray, (byte) 0);
            return bArr;
        }
        if (byteArray[0] == 0 && byteArray.length > m33574new()) {
            int length3 = byteArray.length - 1;
            byte[] bArr2 = new byte[length3];
            System.arraycopy(byteArray, 1, bArr2, 0, length3);
            return bArr2;
        }
        if (byteArray.length >= m33574new()) {
            return byteArray;
        }
        int iM33574new = m33574new();
        byte[] bArr3 = new byte[iM33574new];
        System.arraycopy(byteArray, 0, bArr3, iM33574new - byteArray.length, byteArray.length);
        return bArr3;
    }

    /* renamed from: new, reason: not valid java name */
    public int m33574new() {
        int iBitLength = (this.f29761do.m954for().bitLength() + 7) / 8;
        return this.f29762if ? iBitLength : iBitLength - 1;
    }

    /* renamed from: try, reason: not valid java name */
    public void m33575try(boolean z, CipherParameters cipherParameters) {
        if (cipherParameters instanceof cc1) {
            cipherParameters = ((cc1) cipherParameters).m846do();
        }
        this.f29761do = (ck1) cipherParameters;
        this.f29762if = z;
    }
}
