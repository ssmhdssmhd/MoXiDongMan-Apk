package org.bouncycastle.jce.provider;

import android.support.v4.bc1;
import android.support.v4.gr0;
import android.support.v4.l91;
import android.support.v4.ow0;
import android.support.v4.sj1;
import android.support.v4.wp1;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.Digest;

/* renamed from: org.bouncycastle.jce.provider.return, reason: invalid class name */
/* loaded from: classes3.dex */
class Creturn extends l91 {

    /* renamed from: else, reason: not valid java name */
    public static final int f31666else = 1;

    /* renamed from: goto, reason: not valid java name */
    public static final int f31667goto = 2;

    /* renamed from: this, reason: not valid java name */
    public static final int f31668this = 3;

    /* renamed from: case, reason: not valid java name */
    private int f31669case;

    /* renamed from: new, reason: not valid java name */
    private Digest f31670new;

    /* renamed from: try, reason: not valid java name */
    private int f31671try;

    public Creturn(Digest digest) {
        this.f31670new = digest;
        if (digest instanceof ow0) {
            this.f31671try = 16;
        } else {
            if (!(digest instanceof wp1) && !(digest instanceof sj1)) {
                throw new IllegalArgumentException("Digest " + digest.getAlgorithmName() + " unsupported");
            }
            this.f31671try = 20;
        }
        this.f31669case = 64;
    }

    /* renamed from: catch, reason: not valid java name */
    private void m35106catch(byte[] bArr, int i, byte[] bArr2) {
        int i2 = (bArr2[bArr2.length - 1] & 255) + (bArr[(bArr2.length + i) - 1] & 255) + 1;
        bArr[(bArr2.length + i) - 1] = (byte) i2;
        int i3 = i2 >>> 8;
        for (int length = bArr2.length - 2; length >= 0; length--) {
            int i4 = i + length;
            int i5 = i3 + (bArr2[length] & 255) + (bArr[i4] & 255);
            bArr[i4] = (byte) i5;
            i3 = i5 >>> 8;
        }
    }

    /* renamed from: class, reason: not valid java name */
    private byte[] m35107class(int i, int i2) {
        byte[] bArr;
        byte[] bArr2;
        int i3 = this.f31669case;
        byte[] bArr3 = new byte[i3];
        byte[] bArr4 = new byte[i2];
        int i4 = 0;
        for (int i5 = 0; i5 != i3; i5++) {
            bArr3[i5] = (byte) i;
        }
        byte[] bArr5 = this.f3579if;
        if (bArr5 == null || bArr5.length == 0) {
            bArr = new byte[0];
        } else {
            int i6 = this.f31669case;
            int length = i6 * (((bArr5.length + i6) - 1) / i6);
            bArr = new byte[length];
            for (int i7 = 0; i7 != length; i7++) {
                byte[] bArr6 = this.f3579if;
                bArr[i7] = bArr6[i7 % bArr6.length];
            }
        }
        byte[] bArr7 = this.f3577do;
        if (bArr7 == null || bArr7.length == 0) {
            bArr2 = new byte[0];
        } else {
            int i8 = this.f31669case;
            int length2 = i8 * (((bArr7.length + i8) - 1) / i8);
            bArr2 = new byte[length2];
            for (int i9 = 0; i9 != length2; i9++) {
                byte[] bArr8 = this.f3577do;
                bArr2[i9] = bArr8[i9 % bArr8.length];
            }
        }
        int length3 = bArr.length + bArr2.length;
        byte[] bArr9 = new byte[length3];
        System.arraycopy(bArr, 0, bArr9, 0, bArr.length);
        System.arraycopy(bArr2, 0, bArr9, bArr.length, bArr2.length);
        int i10 = this.f31669case;
        byte[] bArr10 = new byte[i10];
        int i11 = this.f31671try;
        int i12 = ((i2 + i11) - 1) / i11;
        int i13 = 1;
        while (i13 <= i12) {
            int i14 = this.f31671try;
            byte[] bArr11 = new byte[i14];
            this.f31670new.update(bArr3, i4, i3);
            this.f31670new.update(bArr9, i4, length3);
            this.f31670new.doFinal(bArr11, i4);
            for (int i15 = 1; i15 != this.f3578for; i15++) {
                this.f31670new.update(bArr11, i4, i14);
                this.f31670new.doFinal(bArr11, i4);
            }
            for (int i16 = 0; i16 != i10; i16++) {
                bArr10[i13] = bArr11[i16 % i14];
            }
            int i17 = 0;
            while (true) {
                int i18 = this.f31669case;
                if (i17 == length3 / i18) {
                    break;
                }
                m35106catch(bArr9, i18 * i17, bArr10);
                i17++;
            }
            if (i13 == i12) {
                int i19 = i13 - 1;
                int i20 = this.f31671try;
                System.arraycopy(bArr11, 0, bArr4, i19 * i20, i2 - (i19 * i20));
            } else {
                System.arraycopy(bArr11, 0, bArr4, (i13 - 1) * this.f31671try, i14);
            }
            i13++;
            i4 = 0;
        }
        return bArr4;
    }

    @Override // android.support.v4.l91
    /* renamed from: case */
    public CipherParameters mo2234case(int i, int i2) {
        int i3 = i / 8;
        int i4 = i2 / 8;
        byte[] bArrM35107class = m35107class(1, i3);
        return new bc1(new gr0(bArrM35107class, 0, i3), m35107class(2, i4), 0, i4);
    }

    @Override // android.support.v4.l91
    /* renamed from: new */
    public CipherParameters mo2235new(int i) {
        int i2 = i / 8;
        return new gr0(m35107class(3, i2), 0, i2);
    }

    @Override // android.support.v4.l91
    /* renamed from: try */
    public CipherParameters mo2236try(int i) {
        int i2 = i / 8;
        return new gr0(m35107class(1, i2), 0, i2);
    }
}
