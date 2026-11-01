package org.bouncycastle.crypto.generators;

import android.support.v4.gr0;
import android.support.v4.iq0;
import android.support.v4.tw;
import java.math.BigInteger;
import org.bouncycastle.crypto.DerivationParameters;
import org.bouncycastle.crypto.Mac;
import org.bouncycastle.crypto.MacDerivationFunction;

/* renamed from: org.bouncycastle.crypto.generators.const, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cconst implements MacDerivationFunction {

    /* renamed from: break, reason: not valid java name */
    private static final BigInteger f29825break = BigInteger.valueOf(2147483647L);

    /* renamed from: catch, reason: not valid java name */
    private static final BigInteger f29826catch = BigInteger.valueOf(2);

    /* renamed from: case, reason: not valid java name */
    private boolean f29827case;

    /* renamed from: do, reason: not valid java name */
    private final Mac f29828do;

    /* renamed from: else, reason: not valid java name */
    private int f29829else;

    /* renamed from: for, reason: not valid java name */
    private byte[] f29830for;

    /* renamed from: goto, reason: not valid java name */
    private byte[] f29831goto;

    /* renamed from: if, reason: not valid java name */
    private final int f29832if;

    /* renamed from: new, reason: not valid java name */
    private int f29833new;

    /* renamed from: this, reason: not valid java name */
    private byte[] f29834this;

    /* renamed from: try, reason: not valid java name */
    private byte[] f29835try;

    public Cconst(Mac mac) {
        this.f29828do = mac;
        int macSize = mac.getMacSize();
        this.f29832if = macSize;
        this.f29831goto = new byte[macSize];
        this.f29834this = new byte[macSize];
    }

    /* renamed from: do, reason: not valid java name */
    private void m33621do() throws IllegalStateException, tw {
        if (this.f29829else == 0) {
            Mac mac = this.f29828do;
            byte[] bArr = this.f29830for;
            mac.update(bArr, 0, bArr.length);
            this.f29828do.doFinal(this.f29831goto, 0);
        } else {
            Mac mac2 = this.f29828do;
            byte[] bArr2 = this.f29831goto;
            mac2.update(bArr2, 0, bArr2.length);
            this.f29828do.doFinal(this.f29831goto, 0);
        }
        Mac mac3 = this.f29828do;
        byte[] bArr3 = this.f29831goto;
        mac3.update(bArr3, 0, bArr3.length);
        if (this.f29827case) {
            int i = (this.f29829else / this.f29832if) + 1;
            byte[] bArr4 = this.f29835try;
            int length = bArr4.length;
            if (length != 1) {
                if (length != 2) {
                    if (length != 3) {
                        if (length != 4) {
                            throw new IllegalStateException("Unsupported size of counter i");
                        }
                        bArr4[0] = (byte) (i >>> 24);
                    }
                    bArr4[bArr4.length - 3] = (byte) (i >>> 16);
                }
                bArr4[bArr4.length - 2] = (byte) (i >>> 8);
            }
            bArr4[bArr4.length - 1] = (byte) i;
            this.f29828do.update(bArr4, 0, bArr4.length);
        }
        Mac mac4 = this.f29828do;
        byte[] bArr5 = this.f29830for;
        mac4.update(bArr5, 0, bArr5.length);
        this.f29828do.doFinal(this.f29834this, 0);
    }

    @Override // org.bouncycastle.crypto.DerivationFunction
    public int generateBytes(byte[] bArr, int i, int i2) throws IllegalStateException, tw, IllegalArgumentException {
        int i3 = this.f29829else;
        int i4 = i3 + i2;
        if (i4 < 0 || i4 >= this.f29833new) {
            throw new tw("Current KDFCTR may only be used for " + this.f29833new + " bytes");
        }
        if (i3 % this.f29832if == 0) {
            m33621do();
        }
        int i5 = this.f29829else;
        int i6 = this.f29832if;
        int i7 = i5 % i6;
        int iMin = Math.min(i6 - (i5 % i6), i2);
        System.arraycopy(this.f29834this, i7, bArr, i, iMin);
        this.f29829else += iMin;
        int i8 = i2 - iMin;
        while (true) {
            i += iMin;
            if (i8 <= 0) {
                return i2;
            }
            m33621do();
            iMin = Math.min(this.f29832if, i8);
            System.arraycopy(this.f29834this, 0, bArr, i, iMin);
            this.f29829else += iMin;
            i8 -= iMin;
        }
    }

    @Override // org.bouncycastle.crypto.MacDerivationFunction
    public Mac getMac() {
        return this.f29828do;
    }

    @Override // org.bouncycastle.crypto.DerivationFunction
    public void init(DerivationParameters derivationParameters) throws IllegalArgumentException {
        if (!(derivationParameters instanceof iq0)) {
            throw new IllegalArgumentException("Wrong type of arguments given");
        }
        iq0 iq0Var = (iq0) derivationParameters;
        this.f29828do.init(new gr0(iq0Var.m3545new()));
        this.f29830for = iq0Var.m3544for();
        int iM3546try = iq0Var.m3546try();
        this.f29835try = new byte[iM3546try / 8];
        int iIntValue = Integer.MAX_VALUE;
        if (iq0Var.m3543case()) {
            BigInteger bigIntegerMultiply = f29826catch.pow(iM3546try).multiply(BigInteger.valueOf(this.f29832if));
            if (bigIntegerMultiply.compareTo(f29825break) != 1) {
                iIntValue = bigIntegerMultiply.intValue();
            }
        }
        this.f29833new = iIntValue;
        this.f29827case = iq0Var.m3543case();
        this.f29829else = 0;
    }
}
