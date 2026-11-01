package android.support.v4;

import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.CipherParameters;

/* loaded from: classes3.dex */
public class nj1 implements BlockCipher {

    /* renamed from: case, reason: not valid java name */
    private static final int f4243case = -1209970333;

    /* renamed from: else, reason: not valid java name */
    private static final int f4244else = -1640531527;

    /* renamed from: for, reason: not valid java name */
    private static final int f4245for = 32;

    /* renamed from: goto, reason: not valid java name */
    private static final int f4246goto = 5;

    /* renamed from: new, reason: not valid java name */
    private static final int f4247new = 4;

    /* renamed from: try, reason: not valid java name */
    private static final int f4248try = 20;

    /* renamed from: do, reason: not valid java name */
    private int[] f4249do = null;

    /* renamed from: if, reason: not valid java name */
    private boolean f4250if;

    /* renamed from: case, reason: not valid java name */
    private void m5254case(byte[] bArr) {
        int[] iArr;
        int length = (bArr.length + 3) / 4;
        int length2 = ((bArr.length + 4) - 1) / 4;
        int[] iArr2 = new int[length2];
        for (int length3 = bArr.length - 1; length3 >= 0; length3--) {
            int i = length3 / 4;
            iArr2[i] = (iArr2[i] << 8) + (bArr[length3] & 255);
        }
        int[] iArr3 = new int[44];
        this.f4249do = iArr3;
        iArr3[0] = f4243case;
        int i2 = 1;
        while (true) {
            iArr = this.f4249do;
            if (i2 >= iArr.length) {
                break;
            }
            iArr[i2] = iArr[i2 - 1] - 1640531527;
            i2++;
        }
        int length4 = length2 > iArr.length ? length2 * 3 : iArr.length * 3;
        int length5 = 0;
        int iM5259new = 0;
        int iM5259new2 = 0;
        int i3 = 0;
        for (int i4 = 0; i4 < length4; i4++) {
            int[] iArr4 = this.f4249do;
            iM5259new = m5259new(iArr4[length5] + iM5259new + iM5259new2, 3);
            iArr4[length5] = iM5259new;
            iM5259new2 = m5259new(iArr2[i3] + iM5259new + iM5259new2, iM5259new2 + iM5259new);
            iArr2[i3] = iM5259new2;
            length5 = (length5 + 1) % this.f4249do.length;
            i3 = (i3 + 1) % length2;
        }
    }

    /* renamed from: do, reason: not valid java name */
    private int m5255do(byte[] bArr, int i) {
        int i2 = 0;
        for (int i3 = 3; i3 >= 0; i3--) {
            i2 = (i2 << 8) + (bArr[i3 + i] & 255);
        }
        return i2;
    }

    /* renamed from: else, reason: not valid java name */
    private void m5256else(int i, byte[] bArr, int i2) {
        for (int i3 = 0; i3 < 4; i3++) {
            bArr[i3 + i2] = (byte) i;
            i >>>= 8;
        }
    }

    /* renamed from: for, reason: not valid java name */
    private int m5257for(byte[] bArr, int i, byte[] bArr2, int i2) {
        int iM5255do = m5255do(bArr, i);
        int iM5255do2 = m5255do(bArr, i + 4);
        int iM5255do3 = m5255do(bArr, i + 8);
        int iM5255do4 = m5255do(bArr, i + 12);
        int[] iArr = this.f4249do;
        int i3 = iM5255do2 + iArr[0];
        int i4 = iM5255do4 + iArr[1];
        int i5 = 1;
        while (i5 <= 20) {
            int iM5259new = m5259new(((i3 * 2) + 1) * i3, 5);
            int iM5259new2 = m5259new(((i4 * 2) + 1) * i4, 5);
            int i6 = i5 * 2;
            int iM5259new3 = m5259new(iM5255do ^ iM5259new, iM5259new2) + this.f4249do[i6];
            int iM5259new4 = m5259new(iM5255do3 ^ iM5259new2, iM5259new) + this.f4249do[i6 + 1];
            i5++;
            iM5255do3 = i4;
            i4 = iM5259new3;
            iM5255do = i3;
            i3 = iM5259new4;
        }
        int[] iArr2 = this.f4249do;
        int i7 = iM5255do + iArr2[42];
        int i8 = iM5255do3 + iArr2[43];
        m5256else(i7, bArr2, i2);
        m5256else(i3, bArr2, i2 + 4);
        m5256else(i8, bArr2, i2 + 8);
        m5256else(i4, bArr2, i2 + 12);
        return 16;
    }

    /* renamed from: if, reason: not valid java name */
    private int m5258if(byte[] bArr, int i, byte[] bArr2, int i2) {
        int iM5255do = m5255do(bArr, i);
        int iM5255do2 = m5255do(bArr, i + 4);
        int iM5255do3 = m5255do(bArr, i + 8);
        int iM5255do4 = m5255do(bArr, i + 12);
        int[] iArr = this.f4249do;
        int i3 = iM5255do3 - iArr[43];
        int iM5260try = iM5255do - iArr[42];
        int i4 = 20;
        while (i4 >= 1) {
            int iM5259new = m5259new(((iM5260try * 2) + 1) * iM5260try, 5);
            int iM5259new2 = m5259new(((i3 * 2) + 1) * i3, 5);
            int i5 = i4 * 2;
            int iM5260try2 = m5260try(iM5255do2 - this.f4249do[i5 + 1], iM5259new) ^ iM5259new2;
            i4--;
            int i6 = iM5260try;
            iM5260try = m5260try(iM5255do4 - this.f4249do[i5], iM5259new2) ^ iM5259new;
            iM5255do4 = i3;
            i3 = iM5260try2;
            iM5255do2 = i6;
        }
        int[] iArr2 = this.f4249do;
        int i7 = iM5255do4 - iArr2[1];
        int i8 = iM5255do2 - iArr2[0];
        m5256else(iM5260try, bArr2, i2);
        m5256else(i8, bArr2, i2 + 4);
        m5256else(i3, bArr2, i2 + 8);
        m5256else(i7, bArr2, i2 + 12);
        return 16;
    }

    /* renamed from: new, reason: not valid java name */
    private int m5259new(int i, int i2) {
        return (i >>> (-i2)) | (i << i2);
    }

    /* renamed from: try, reason: not valid java name */
    private int m5260try(int i, int i2) {
        return (i << (-i2)) | (i >>> i2);
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public String getAlgorithmName() {
        return "RC6";
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int getBlockSize() {
        return 16;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void init(boolean z, CipherParameters cipherParameters) {
        if (cipherParameters instanceof gr0) {
            this.f4250if = z;
            m5254case(((gr0) cipherParameters).m2770do());
        } else {
            throw new IllegalArgumentException("invalid parameter passed to RC6 init - " + cipherParameters.getClass().getName());
        }
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int processBlock(byte[] bArr, int i, byte[] bArr2, int i2) {
        int blockSize = getBlockSize();
        if (this.f4249do == null) {
            throw new IllegalStateException("RC6 engine not initialised");
        }
        if (i + blockSize > bArr.length) {
            throw new tw("input buffer too short");
        }
        if (blockSize + i2 <= bArr2.length) {
            return this.f4250if ? m5257for(bArr, i, bArr2, i2) : m5258if(bArr, i, bArr2, i2);
        }
        throw new f91("output buffer too short");
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void reset() {
    }
}
