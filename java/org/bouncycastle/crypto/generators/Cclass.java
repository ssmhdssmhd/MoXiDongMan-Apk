package org.bouncycastle.crypto.generators;

import android.support.v4.gr0;
import android.support.v4.hq0;
import android.support.v4.tw;
import java.math.BigInteger;
import org.bouncycastle.crypto.DerivationParameters;
import org.bouncycastle.crypto.Mac;
import org.bouncycastle.crypto.MacDerivationFunction;

/* renamed from: org.bouncycastle.crypto.generators.class, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cclass implements MacDerivationFunction {

    /* renamed from: case, reason: not valid java name */
    private byte[] f29817case;

    /* renamed from: do, reason: not valid java name */
    private final Mac f29818do;

    /* renamed from: else, reason: not valid java name */
    private int f29819else;

    /* renamed from: for, reason: not valid java name */
    private byte[] f29820for;

    /* renamed from: goto, reason: not valid java name */
    private byte[] f29821goto;

    /* renamed from: if, reason: not valid java name */
    private final int f29822if;

    /* renamed from: new, reason: not valid java name */
    private byte[] f29823new;

    /* renamed from: try, reason: not valid java name */
    private int f29824try;

    /* renamed from: this, reason: not valid java name */
    private static final BigInteger f29816this = BigInteger.valueOf(2147483647L);

    /* renamed from: break, reason: not valid java name */
    private static final BigInteger f29815break = BigInteger.valueOf(2);

    public Cclass(Mac mac) {
        this.f29818do = mac;
        int macSize = mac.getMacSize();
        this.f29822if = macSize;
        this.f29821goto = new byte[macSize];
    }

    /* renamed from: do, reason: not valid java name */
    private void m33620do() throws IllegalStateException, tw {
        int i = (this.f29819else / this.f29822if) + 1;
        byte[] bArr = this.f29817case;
        int length = bArr.length;
        if (length != 1) {
            if (length != 2) {
                if (length != 3) {
                    if (length != 4) {
                        throw new IllegalStateException("Unsupported size of counter i");
                    }
                    bArr[0] = (byte) (i >>> 24);
                }
                bArr[bArr.length - 3] = (byte) (i >>> 16);
            }
            bArr[bArr.length - 2] = (byte) (i >>> 8);
        }
        bArr[bArr.length - 1] = (byte) i;
        Mac mac = this.f29818do;
        byte[] bArr2 = this.f29820for;
        mac.update(bArr2, 0, bArr2.length);
        Mac mac2 = this.f29818do;
        byte[] bArr3 = this.f29817case;
        mac2.update(bArr3, 0, bArr3.length);
        Mac mac3 = this.f29818do;
        byte[] bArr4 = this.f29823new;
        mac3.update(bArr4, 0, bArr4.length);
        this.f29818do.doFinal(this.f29821goto, 0);
    }

    @Override // org.bouncycastle.crypto.DerivationFunction
    public int generateBytes(byte[] bArr, int i, int i2) throws IllegalStateException, tw, IllegalArgumentException {
        int i3 = this.f29819else;
        int i4 = i3 + i2;
        if (i4 < 0 || i4 >= this.f29824try) {
            throw new tw("Current KDFCTR may only be used for " + this.f29824try + " bytes");
        }
        if (i3 % this.f29822if == 0) {
            m33620do();
        }
        int i5 = this.f29819else;
        int i6 = this.f29822if;
        int i7 = i5 % i6;
        int iMin = Math.min(i6 - (i5 % i6), i2);
        System.arraycopy(this.f29821goto, i7, bArr, i, iMin);
        this.f29819else += iMin;
        int i8 = i2 - iMin;
        while (true) {
            i += iMin;
            if (i8 <= 0) {
                return i2;
            }
            m33620do();
            iMin = Math.min(this.f29822if, i8);
            System.arraycopy(this.f29821goto, 0, bArr, i, iMin);
            this.f29819else += iMin;
            i8 -= iMin;
        }
    }

    @Override // org.bouncycastle.crypto.MacDerivationFunction
    public Mac getMac() {
        return this.f29818do;
    }

    @Override // org.bouncycastle.crypto.DerivationFunction
    public void init(DerivationParameters derivationParameters) throws IllegalArgumentException {
        if (!(derivationParameters instanceof hq0)) {
            throw new IllegalArgumentException("Wrong type of arguments given");
        }
        hq0 hq0Var = (hq0) derivationParameters;
        this.f29818do.init(new gr0(hq0Var.m3088new()));
        this.f29820for = hq0Var.m3087if();
        this.f29823new = hq0Var.m3086for();
        int iM3089try = hq0Var.m3089try();
        this.f29817case = new byte[iM3089try / 8];
        BigInteger bigIntegerMultiply = f29815break.pow(iM3089try).multiply(BigInteger.valueOf(this.f29822if));
        this.f29824try = bigIntegerMultiply.compareTo(f29816this) == 1 ? Integer.MAX_VALUE : bigIntegerMultiply.intValue();
        this.f29819else = 0;
    }
}
