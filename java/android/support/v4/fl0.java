package android.support.v4;

import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.StreamCipher;

/* loaded from: classes3.dex */
public class fl0 implements StreamCipher {

    /* renamed from: do, reason: not valid java name */
    private final int f1890do = 8;

    /* renamed from: if, reason: not valid java name */
    private final int f1894if = 256;

    /* renamed from: for, reason: not valid java name */
    private int[] f1892for = null;

    /* renamed from: new, reason: not valid java name */
    private int[] f1895new = null;

    /* renamed from: try, reason: not valid java name */
    private int f1897try = 0;

    /* renamed from: case, reason: not valid java name */
    private int f1888case = 0;

    /* renamed from: else, reason: not valid java name */
    private int f1891else = 0;

    /* renamed from: goto, reason: not valid java name */
    private int f1893goto = 0;

    /* renamed from: this, reason: not valid java name */
    private byte[] f1896this = new byte[1024];

    /* renamed from: break, reason: not valid java name */
    private byte[] f1887break = null;

    /* renamed from: catch, reason: not valid java name */
    private boolean f1889catch = false;

    /* renamed from: do, reason: not valid java name */
    private void m2337do() {
        int i;
        int i2;
        int i3 = this.f1888case;
        int i4 = this.f1891else + 1;
        this.f1891else = i4;
        this.f1888case = i3 + i4;
        for (int i5 = 0; i5 < 256; i5++) {
            int[] iArr = this.f1892for;
            int i6 = iArr[i5];
            int i7 = i5 & 3;
            if (i7 == 0) {
                i = this.f1897try;
                i2 = i << 13;
            } else if (i7 == 1) {
                i = this.f1897try;
                i2 = i >>> 6;
            } else if (i7 == 2) {
                i = this.f1897try;
                i2 = i << 2;
            } else if (i7 != 3) {
                int i8 = this.f1897try + iArr[(i5 + 128) & 255];
                this.f1897try = i8;
                int i9 = iArr[(i6 >>> 2) & 255] + i8 + this.f1888case;
                iArr[i5] = i9;
                int[] iArr2 = this.f1895new;
                int i10 = iArr[(i9 >>> 10) & 255] + i6;
                this.f1888case = i10;
                iArr2[i5] = i10;
            } else {
                i = this.f1897try;
                i2 = i >>> 16;
            }
            this.f1897try = i ^ i2;
            int i82 = this.f1897try + iArr[(i5 + 128) & 255];
            this.f1897try = i82;
            int i92 = iArr[(i6 >>> 2) & 255] + i82 + this.f1888case;
            iArr[i5] = i92;
            int[] iArr22 = this.f1895new;
            int i102 = iArr[(i92 >>> 10) & 255] + i6;
            this.f1888case = i102;
            iArr22[i5] = i102;
        }
    }

    /* renamed from: for, reason: not valid java name */
    private void m2338for(byte[] bArr) {
        this.f1887break = bArr;
        if (this.f1892for == null) {
            this.f1892for = new int[256];
        }
        if (this.f1895new == null) {
            this.f1895new = new int[256];
        }
        for (int i = 0; i < 256; i++) {
            int[] iArr = this.f1892for;
            this.f1895new[i] = 0;
            iArr[i] = 0;
        }
        this.f1891else = 0;
        this.f1888case = 0;
        this.f1897try = 0;
        this.f1893goto = 0;
        int length = bArr.length + (bArr.length & 3);
        byte[] bArr2 = new byte[length];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        for (int i2 = 0; i2 < length; i2 += 4) {
            this.f1895new[i2 >>> 2] = ib1.m3357final(bArr2, i2);
        }
        int[] iArr2 = new int[8];
        for (int i3 = 0; i3 < 8; i3++) {
            iArr2[i3] = -1640531527;
        }
        for (int i4 = 0; i4 < 4; i4++) {
            m2339if(iArr2);
        }
        int i5 = 0;
        while (i5 < 2) {
            for (int i6 = 0; i6 < 256; i6 += 8) {
                for (int i7 = 0; i7 < 8; i7++) {
                    iArr2[i7] = iArr2[i7] + (i5 < 1 ? this.f1895new[i6 + i7] : this.f1892for[i6 + i7]);
                }
                m2339if(iArr2);
                for (int i8 = 0; i8 < 8; i8++) {
                    this.f1892for[i6 + i8] = iArr2[i8];
                }
            }
            i5++;
        }
        m2337do();
        this.f1889catch = true;
    }

    /* renamed from: if, reason: not valid java name */
    private void m2339if(int[] iArr) {
        iArr[0] = iArr[0] ^ (iArr[1] << 11);
        iArr[3] = iArr[3] + iArr[0];
        iArr[1] = iArr[1] + iArr[2];
        iArr[1] = iArr[1] ^ (iArr[2] >>> 2);
        iArr[4] = iArr[4] + iArr[1];
        iArr[2] = iArr[2] + iArr[3];
        iArr[2] = iArr[2] ^ (iArr[3] << 8);
        iArr[5] = iArr[5] + iArr[2];
        iArr[3] = iArr[3] + iArr[4];
        iArr[3] = iArr[3] ^ (iArr[4] >>> 16);
        iArr[6] = iArr[6] + iArr[3];
        iArr[4] = iArr[4] + iArr[5];
        iArr[4] = iArr[4] ^ (iArr[5] << 10);
        iArr[7] = iArr[7] + iArr[4];
        iArr[5] = iArr[5] + iArr[6];
        iArr[5] = (iArr[6] >>> 4) ^ iArr[5];
        iArr[0] = iArr[0] + iArr[5];
        iArr[6] = iArr[6] + iArr[7];
        iArr[6] = iArr[6] ^ (iArr[7] << 8);
        iArr[1] = iArr[1] + iArr[6];
        iArr[7] = iArr[7] + iArr[0];
        iArr[7] = iArr[7] ^ (iArr[0] >>> 9);
        iArr[2] = iArr[2] + iArr[7];
        iArr[0] = iArr[0] + iArr[1];
    }

    @Override // org.bouncycastle.crypto.StreamCipher
    public String getAlgorithmName() {
        return "ISAAC";
    }

    @Override // org.bouncycastle.crypto.StreamCipher
    public void init(boolean z, CipherParameters cipherParameters) {
        if (cipherParameters instanceof gr0) {
            m2338for(((gr0) cipherParameters).m2770do());
            return;
        }
        throw new IllegalArgumentException("invalid parameter passed to ISAAC init - " + cipherParameters.getClass().getName());
    }

    @Override // org.bouncycastle.crypto.StreamCipher
    public int processBytes(byte[] bArr, int i, int i2, byte[] bArr2, int i3) {
        if (!this.f1889catch) {
            throw new IllegalStateException(getAlgorithmName() + " not initialised");
        }
        if (i + i2 > bArr.length) {
            throw new tw("input buffer too short");
        }
        if (i3 + i2 > bArr2.length) {
            throw new f91("output buffer too short");
        }
        for (int i4 = 0; i4 < i2; i4++) {
            if (this.f1893goto == 0) {
                m2337do();
                this.f1896this = ib1.m3373this(this.f1895new);
            }
            byte[] bArr3 = this.f1896this;
            int i5 = this.f1893goto;
            bArr2[i4 + i3] = (byte) (bArr3[i5] ^ bArr[i4 + i]);
            this.f1893goto = (i5 + 1) & 1023;
        }
        return i2;
    }

    @Override // org.bouncycastle.crypto.StreamCipher
    public void reset() {
        m2338for(this.f1887break);
    }

    @Override // org.bouncycastle.crypto.StreamCipher
    public byte returnByte(byte b) {
        if (this.f1893goto == 0) {
            m2337do();
            this.f1896this = ib1.m3373this(this.f1895new);
        }
        byte[] bArr = this.f1896this;
        int i = this.f1893goto;
        byte b2 = (byte) (b ^ bArr[i]);
        this.f1893goto = (i + 1) & 1023;
        return b2;
    }
}
