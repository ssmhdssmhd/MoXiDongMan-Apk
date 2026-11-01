package org.bouncycastle.crypto.generators;

import android.support.v4.gr0;
import android.support.v4.jq0;
import android.support.v4.tw;
import java.math.BigInteger;
import org.bouncycastle.crypto.DerivationParameters;
import org.bouncycastle.crypto.Mac;
import org.bouncycastle.crypto.MacDerivationFunction;

/* renamed from: org.bouncycastle.crypto.generators.final, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cfinal implements MacDerivationFunction {

    /* renamed from: break, reason: not valid java name */
    private static final BigInteger f29860break = BigInteger.valueOf(2147483647L);

    /* renamed from: catch, reason: not valid java name */
    private static final BigInteger f29861catch = BigInteger.valueOf(2);

    /* renamed from: case, reason: not valid java name */
    private byte[] f29862case;

    /* renamed from: do, reason: not valid java name */
    private final Mac f29863do;

    /* renamed from: else, reason: not valid java name */
    private boolean f29864else;

    /* renamed from: for, reason: not valid java name */
    private byte[] f29865for;

    /* renamed from: goto, reason: not valid java name */
    private int f29866goto;

    /* renamed from: if, reason: not valid java name */
    private final int f29867if;

    /* renamed from: new, reason: not valid java name */
    private int f29868new;

    /* renamed from: this, reason: not valid java name */
    private byte[] f29869this;

    /* renamed from: try, reason: not valid java name */
    private byte[] f29870try;

    public Cfinal(Mac mac) {
        this.f29863do = mac;
        int macSize = mac.getMacSize();
        this.f29867if = macSize;
        this.f29869this = new byte[macSize];
    }

    /* renamed from: do, reason: not valid java name */
    private void m33669do() throws IllegalStateException, tw {
        if (this.f29866goto == 0) {
            Mac mac = this.f29863do;
            byte[] bArr = this.f29862case;
            mac.update(bArr, 0, bArr.length);
        } else {
            Mac mac2 = this.f29863do;
            byte[] bArr2 = this.f29869this;
            mac2.update(bArr2, 0, bArr2.length);
        }
        if (this.f29864else) {
            int i = (this.f29866goto / this.f29867if) + 1;
            byte[] bArr3 = this.f29870try;
            int length = bArr3.length;
            if (length != 1) {
                if (length != 2) {
                    if (length != 3) {
                        if (length != 4) {
                            throw new IllegalStateException("Unsupported size of counter i");
                        }
                        bArr3[0] = (byte) (i >>> 24);
                    }
                    bArr3[bArr3.length - 3] = (byte) (i >>> 16);
                }
                bArr3[bArr3.length - 2] = (byte) (i >>> 8);
            }
            bArr3[bArr3.length - 1] = (byte) i;
            this.f29863do.update(bArr3, 0, bArr3.length);
        }
        Mac mac3 = this.f29863do;
        byte[] bArr4 = this.f29865for;
        mac3.update(bArr4, 0, bArr4.length);
        this.f29863do.doFinal(this.f29869this, 0);
    }

    @Override // org.bouncycastle.crypto.DerivationFunction
    public int generateBytes(byte[] bArr, int i, int i2) throws IllegalStateException, tw, IllegalArgumentException {
        int i3 = this.f29866goto;
        int i4 = i3 + i2;
        if (i4 < 0 || i4 >= this.f29868new) {
            throw new tw("Current KDFCTR may only be used for " + this.f29868new + " bytes");
        }
        if (i3 % this.f29867if == 0) {
            m33669do();
        }
        int i5 = this.f29866goto;
        int i6 = this.f29867if;
        int i7 = i5 % i6;
        int iMin = Math.min(i6 - (i5 % i6), i2);
        System.arraycopy(this.f29869this, i7, bArr, i, iMin);
        this.f29866goto += iMin;
        int i8 = i2 - iMin;
        while (true) {
            i += iMin;
            if (i8 <= 0) {
                return i2;
            }
            m33669do();
            iMin = Math.min(this.f29867if, i8);
            System.arraycopy(this.f29869this, 0, bArr, i, iMin);
            this.f29866goto += iMin;
            i8 -= iMin;
        }
    }

    @Override // org.bouncycastle.crypto.MacDerivationFunction
    public Mac getMac() {
        return this.f29863do;
    }

    @Override // org.bouncycastle.crypto.DerivationFunction
    public void init(DerivationParameters derivationParameters) throws IllegalArgumentException {
        if (!(derivationParameters instanceof jq0)) {
            throw new IllegalArgumentException("Wrong type of arguments given");
        }
        jq0 jq0Var = (jq0) derivationParameters;
        this.f29863do.init(new gr0(jq0Var.m4069try()));
        this.f29865for = jq0Var.m4067for();
        int iM4065case = jq0Var.m4065case();
        this.f29870try = new byte[iM4065case / 8];
        int iIntValue = Integer.MAX_VALUE;
        if (jq0Var.m4066else()) {
            BigInteger bigIntegerMultiply = f29861catch.pow(iM4065case).multiply(BigInteger.valueOf(this.f29867if));
            if (bigIntegerMultiply.compareTo(f29860break) != 1) {
                iIntValue = bigIntegerMultiply.intValue();
            }
        }
        this.f29868new = iIntValue;
        this.f29862case = jq0Var.m4068new();
        this.f29864else = jq0Var.m4066else();
        this.f29866goto = 0;
    }
}
