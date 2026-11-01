package android.support.v4;

import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.ExtendedDigest;

/* loaded from: classes3.dex */
public class fa1 extends l91 {

    /* renamed from: else, reason: not valid java name */
    public static final int f1745else = 1;

    /* renamed from: goto, reason: not valid java name */
    public static final int f1746goto = 2;

    /* renamed from: this, reason: not valid java name */
    public static final int f1747this = 3;

    /* renamed from: case, reason: not valid java name */
    private int f1748case;

    /* renamed from: new, reason: not valid java name */
    private Digest f1749new;

    /* renamed from: try, reason: not valid java name */
    private int f1750try;

    public fa1(Digest digest) {
        this.f1749new = digest;
        if (digest instanceof ExtendedDigest) {
            this.f1750try = digest.getDigestSize();
            this.f1748case = ((ExtendedDigest) digest).getByteLength();
        } else {
            throw new IllegalArgumentException("Digest " + digest.getAlgorithmName() + " unsupported");
        }
    }

    /* renamed from: catch, reason: not valid java name */
    private void m2232catch(byte[] bArr, int i, byte[] bArr2) {
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
    private byte[] m2233class(int i, int i2) {
        byte[] bArr;
        byte[] bArr2;
        int i3 = this.f1748case;
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
            int i6 = this.f1748case;
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
            int i8 = this.f1748case;
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
        int i10 = this.f1748case;
        byte[] bArr10 = new byte[i10];
        int i11 = this.f1750try;
        int i12 = ((i2 + i11) - 1) / i11;
        byte[] bArr11 = new byte[i11];
        int i13 = 1;
        while (i13 <= i12) {
            this.f1749new.update(bArr3, i4, i3);
            this.f1749new.update(bArr9, i4, length3);
            this.f1749new.doFinal(bArr11, i4);
            for (int i14 = 1; i14 < this.f3578for; i14++) {
                this.f1749new.update(bArr11, i4, i11);
                this.f1749new.doFinal(bArr11, i4);
            }
            for (int i15 = 0; i15 != i10; i15++) {
                bArr10[i15] = bArr11[i15 % i11];
            }
            int i16 = 0;
            while (true) {
                int i17 = this.f1748case;
                if (i16 == length3 / i17) {
                    break;
                }
                m2232catch(bArr9, i17 * i16, bArr10);
                i16++;
            }
            if (i13 == i12) {
                int i18 = i13 - 1;
                int i19 = this.f1750try;
                System.arraycopy(bArr11, 0, bArr4, i18 * i19, i2 - (i18 * i19));
            } else {
                System.arraycopy(bArr11, 0, bArr4, (i13 - 1) * this.f1750try, i11);
            }
            i13++;
            i4 = 0;
        }
        return bArr4;
    }

    @Override // android.support.v4.l91
    /* renamed from: case, reason: not valid java name */
    public CipherParameters mo2234case(int i, int i2) {
        int i3 = i / 8;
        int i4 = i2 / 8;
        byte[] bArrM2233class = m2233class(1, i3);
        return new bc1(new gr0(bArrM2233class, 0, i3), m2233class(2, i4), 0, i4);
    }

    @Override // android.support.v4.l91
    /* renamed from: new, reason: not valid java name */
    public CipherParameters mo2235new(int i) {
        int i2 = i / 8;
        return new gr0(m2233class(3, i2), 0, i2);
    }

    @Override // android.support.v4.l91
    /* renamed from: try, reason: not valid java name */
    public CipherParameters mo2236try(int i) {
        int i2 = i / 8;
        return new gr0(m2233class(1, i2), 0, i2);
    }
}
