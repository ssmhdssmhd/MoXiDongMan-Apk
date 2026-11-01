package android.support.v4;

import android.R;
import org.bouncycastle.crypto.ExtendedDigest;

/* loaded from: classes3.dex */
public class y9 implements ExtendedDigest {

    /* renamed from: const, reason: not valid java name */
    private static final int[] f8153const = {1779033703, -1150833019, 1013904242, -1521486534, 1359893119, -1694144372, 528734635, 1541459225};

    /* renamed from: final, reason: not valid java name */
    private static final byte[][] f8154final = {new byte[]{0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15}, new byte[]{14, 10, 4, 8, 9, 15, 13, 6, 1, 12, 0, 2, 11, 7, 5, 3}, new byte[]{11, 8, 12, 0, 5, 2, 15, 13, 10, 14, 3, 6, 7, 1, 9, 4}, new byte[]{7, 9, 3, 1, 13, 12, 11, 14, 2, 6, 5, 10, 4, 0, 15, 8}, new byte[]{9, 0, 5, 7, 2, 4, 10, 15, 14, 1, 11, 12, 6, 8, 3, 13}, new byte[]{2, 12, 6, 10, 0, 11, 8, 3, 4, 13, 7, 5, 15, 14, 1, 9}, new byte[]{12, 5, 1, 15, 14, 13, 4, 10, 0, 7, 6, 3, 9, 2, 8, 11}, new byte[]{13, 11, 7, 14, 12, 1, 3, 9, 5, 0, 15, 4, 8, 6, 2, 10}, new byte[]{6, 15, 14, 9, 11, 3, 0, 8, 12, 2, 13, 7, 1, 4, 10, 5}, new byte[]{10, 2, 8, 4, 7, 6, 1, 5, 15, 11, 9, 14, 3, 12, 13, 0}};

    /* renamed from: super, reason: not valid java name */
    private static final int f8155super = 10;

    /* renamed from: throw, reason: not valid java name */
    private static final int f8156throw = 64;

    /* renamed from: break, reason: not valid java name */
    private int f8157break;

    /* renamed from: case, reason: not valid java name */
    private byte[] f8158case;

    /* renamed from: catch, reason: not valid java name */
    private int f8159catch;

    /* renamed from: class, reason: not valid java name */
    private int f8160class;

    /* renamed from: do, reason: not valid java name */
    private int f8161do;

    /* renamed from: else, reason: not valid java name */
    private int f8162else;

    /* renamed from: for, reason: not valid java name */
    private byte[] f8163for;

    /* renamed from: goto, reason: not valid java name */
    private int[] f8164goto;

    /* renamed from: if, reason: not valid java name */
    private int f8165if;

    /* renamed from: new, reason: not valid java name */
    private byte[] f8166new;

    /* renamed from: this, reason: not valid java name */
    private int[] f8167this;

    /* renamed from: try, reason: not valid java name */
    private byte[] f8168try;

    public y9() {
        this(256);
    }

    public y9(int i) {
        this.f8161do = 32;
        this.f8165if = 0;
        this.f8163for = null;
        this.f8166new = null;
        this.f8168try = null;
        this.f8158case = null;
        this.f8162else = 0;
        this.f8164goto = new int[16];
        this.f8167this = null;
        this.f8157break = 0;
        this.f8159catch = 0;
        this.f8160class = 0;
        if (i < 8 || i > 256 || i % 8 != 0) {
            throw new IllegalArgumentException("BLAKE2s digest bit length must be a multiple of 8 and not greater than 256");
        }
        this.f8158case = new byte[64];
        this.f8165if = 0;
        this.f8161do = i / 8;
        m9779try();
    }

    public y9(y9 y9Var) {
        this.f8161do = 32;
        this.f8165if = 0;
        this.f8163for = null;
        this.f8166new = null;
        this.f8168try = null;
        this.f8158case = null;
        this.f8162else = 0;
        this.f8164goto = new int[16];
        this.f8167this = null;
        this.f8157break = 0;
        this.f8159catch = 0;
        this.f8160class = 0;
        this.f8162else = y9Var.f8162else;
        this.f8158case = q3.m6371final(y9Var.f8158case);
        this.f8165if = y9Var.f8165if;
        this.f8168try = q3.m6371final(y9Var.f8168try);
        this.f8161do = y9Var.f8161do;
        this.f8167this = q3.m6398while(y9Var.f8167this);
        this.f8166new = q3.m6371final(y9Var.f8166new);
    }

    public y9(byte[] bArr) {
        this.f8161do = 32;
        this.f8165if = 0;
        this.f8163for = null;
        this.f8166new = null;
        this.f8168try = null;
        this.f8158case = null;
        this.f8162else = 0;
        this.f8164goto = new int[16];
        this.f8167this = null;
        this.f8157break = 0;
        this.f8159catch = 0;
        this.f8160class = 0;
        this.f8158case = new byte[64];
        if (bArr != null) {
            if (bArr.length > 32) {
                throw new IllegalArgumentException("Keys > 32 are not supported");
            }
            byte[] bArr2 = new byte[bArr.length];
            this.f8168try = bArr2;
            System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
            this.f8165if = bArr.length;
            System.arraycopy(bArr, 0, this.f8158case, 0, bArr.length);
            this.f8162else = 64;
        }
        this.f8161do = 32;
        m9779try();
    }

    public y9(byte[] bArr, int i, byte[] bArr2, byte[] bArr3) {
        this.f8161do = 32;
        this.f8165if = 0;
        this.f8163for = null;
        this.f8166new = null;
        this.f8168try = null;
        this.f8158case = null;
        this.f8162else = 0;
        this.f8164goto = new int[16];
        this.f8167this = null;
        this.f8157break = 0;
        this.f8159catch = 0;
        this.f8160class = 0;
        this.f8158case = new byte[64];
        if (i < 1 || i > 32) {
            throw new IllegalArgumentException("Invalid digest length (required: 1 - 32)");
        }
        this.f8161do = i;
        if (bArr2 != null) {
            if (bArr2.length != 8) {
                throw new IllegalArgumentException("Salt length must be exactly 8 bytes");
            }
            byte[] bArr4 = new byte[8];
            this.f8163for = bArr4;
            System.arraycopy(bArr2, 0, bArr4, 0, bArr2.length);
        }
        if (bArr3 != null) {
            if (bArr3.length != 8) {
                throw new IllegalArgumentException("Personalization length must be exactly 8 bytes");
            }
            byte[] bArr5 = new byte[8];
            this.f8166new = bArr5;
            System.arraycopy(bArr3, 0, bArr5, 0, bArr3.length);
        }
        if (bArr != null) {
            if (bArr.length > 32) {
                throw new IllegalArgumentException("Keys > 32 bytes are not supported");
            }
            byte[] bArr6 = new byte[bArr.length];
            this.f8168try = bArr6;
            System.arraycopy(bArr, 0, bArr6, 0, bArr.length);
            this.f8165if = bArr.length;
            System.arraycopy(bArr, 0, this.f8158case, 0, bArr.length);
            this.f8162else = 64;
        }
        m9779try();
    }

    /* renamed from: case, reason: not valid java name */
    private void m9775case() {
        int[] iArr = this.f8167this;
        System.arraycopy(iArr, 0, this.f8164goto, 0, iArr.length);
        int[] iArr2 = f8153const;
        System.arraycopy(iArr2, 0, this.f8164goto, this.f8167this.length, 4);
        int[] iArr3 = this.f8164goto;
        iArr3[12] = this.f8157break ^ iArr2[4];
        iArr3[13] = this.f8159catch ^ iArr2[5];
        iArr3[14] = this.f8160class ^ iArr2[6];
        iArr3[15] = iArr2[7];
    }

    /* renamed from: do, reason: not valid java name */
    private void m9776do(int i, int i2, int i3, int i4, int i5, int i6) {
        int[] iArr = this.f8164goto;
        iArr[i3] = iArr[i3] + iArr[i4] + i;
        iArr[i6] = m9777else(iArr[i6] ^ iArr[i3], 16);
        int[] iArr2 = this.f8164goto;
        iArr2[i5] = iArr2[i5] + iArr2[i6];
        iArr2[i4] = m9777else(iArr2[i4] ^ iArr2[i5], 12);
        int[] iArr3 = this.f8164goto;
        iArr3[i3] = iArr3[i3] + iArr3[i4] + i2;
        iArr3[i6] = m9777else(iArr3[i6] ^ iArr3[i3], 8);
        int[] iArr4 = this.f8164goto;
        iArr4[i5] = iArr4[i5] + iArr4[i6];
        iArr4[i4] = m9777else(iArr4[i4] ^ iArr4[i5], 7);
    }

    /* renamed from: else, reason: not valid java name */
    private int m9777else(int i, int i2) {
        return (i << (32 - i2)) | (i >>> i2);
    }

    /* renamed from: new, reason: not valid java name */
    private void m9778new(byte[] bArr, int i) {
        m9775case();
        int[] iArr = new int[16];
        int i2 = 0;
        for (int i3 = 0; i3 < 16; i3++) {
            iArr[i3] = ib1.m3357final(bArr, (i3 * 4) + i);
        }
        for (int i4 = 0; i4 < 10; i4++) {
            byte[][] bArr2 = f8154final;
            m9776do(iArr[bArr2[i4][0]], iArr[bArr2[i4][1]], 0, 4, 8, 12);
            m9776do(iArr[bArr2[i4][2]], iArr[bArr2[i4][3]], 1, 5, 9, 13);
            m9776do(iArr[bArr2[i4][4]], iArr[bArr2[i4][5]], 2, 6, 10, 14);
            m9776do(iArr[bArr2[i4][6]], iArr[bArr2[i4][7]], 3, 7, 11, 15);
            m9776do(iArr[bArr2[i4][8]], iArr[bArr2[i4][9]], 0, 5, 10, 15);
            m9776do(iArr[bArr2[i4][10]], iArr[bArr2[i4][11]], 1, 6, 11, 12);
            m9776do(iArr[bArr2[i4][12]], iArr[bArr2[i4][13]], 2, 7, 8, 13);
            m9776do(iArr[bArr2[i4][14]], iArr[bArr2[i4][15]], 3, 4, 9, 14);
        }
        while (true) {
            int[] iArr2 = this.f8167this;
            if (i2 >= iArr2.length) {
                return;
            }
            int i5 = iArr2[i2];
            int[] iArr3 = this.f8164goto;
            iArr2[i2] = (i5 ^ iArr3[i2]) ^ iArr3[i2 + 8];
            i2++;
        }
    }

    /* renamed from: try, reason: not valid java name */
    private void m9779try() {
        if (this.f8167this == null) {
            int[] iArr = {(((this.f8165if << 8) | i) | R.attr.theme) ^ i, iArr[1], iArr[2], iArr[3], iArr[4], iArr[5], 0, 0};
            this.f8167this = iArr;
            int[] iArr2 = f8153const;
            int i = iArr2[0];
            int i2 = this.f8161do;
            byte[] bArr = this.f8163for;
            if (bArr != null) {
                iArr[4] = ib1.m3357final(bArr, 0) ^ iArr[4];
                int[] iArr3 = this.f8167this;
                iArr3[5] = iArr3[5] ^ ib1.m3357final(this.f8163for, 4);
            }
            int[] iArr4 = this.f8167this;
            iArr4[6] = iArr2[6];
            iArr4[7] = iArr2[7];
            byte[] bArr2 = this.f8166new;
            if (bArr2 != null) {
                iArr4[6] = ib1.m3357final(bArr2, 0) ^ iArr4[6];
                int[] iArr5 = this.f8167this;
                iArr5[7] = ib1.m3357final(this.f8166new, 4) ^ iArr5[7];
            }
        }
    }

    @Override // org.bouncycastle.crypto.Digest
    public int doFinal(byte[] bArr, int i) {
        int[] iArr;
        int i2;
        this.f8160class = -1;
        int i3 = this.f8157break;
        int i4 = this.f8162else;
        int i5 = i3 + i4;
        this.f8157break = i5;
        if (i5 < 0 && i4 > (-i5)) {
            this.f8159catch++;
        }
        m9778new(this.f8158case, 0);
        q3.c(this.f8158case, (byte) 0);
        q3.g(this.f8164goto, 0);
        int i6 = 0;
        while (true) {
            iArr = this.f8167this;
            if (i6 >= iArr.length || (i2 = i6 * 4) >= this.f8161do) {
                break;
            }
            byte[] bArrM3350class = ib1.m3350class(iArr[i6]);
            int i7 = this.f8161do;
            if (i2 < i7 - 4) {
                System.arraycopy(bArrM3350class, 0, bArr, i2 + i, 4);
            } else {
                System.arraycopy(bArrM3350class, 0, bArr, i + i2, i7 - i2);
            }
            i6++;
        }
        q3.g(iArr, 0);
        reset();
        return this.f8161do;
    }

    /* renamed from: for, reason: not valid java name */
    public void m9780for() {
        byte[] bArr = this.f8163for;
        if (bArr != null) {
            q3.c(bArr, (byte) 0);
        }
    }

    @Override // org.bouncycastle.crypto.Digest
    public String getAlgorithmName() {
        return "BLAKE2s";
    }

    @Override // org.bouncycastle.crypto.ExtendedDigest
    public int getByteLength() {
        return 64;
    }

    @Override // org.bouncycastle.crypto.Digest
    public int getDigestSize() {
        return this.f8161do;
    }

    /* renamed from: if, reason: not valid java name */
    public void m9781if() {
        byte[] bArr = this.f8168try;
        if (bArr != null) {
            q3.c(bArr, (byte) 0);
            q3.c(this.f8158case, (byte) 0);
        }
    }

    @Override // org.bouncycastle.crypto.Digest
    public void reset() {
        this.f8162else = 0;
        this.f8160class = 0;
        this.f8157break = 0;
        this.f8159catch = 0;
        this.f8167this = null;
        q3.c(this.f8158case, (byte) 0);
        byte[] bArr = this.f8168try;
        if (bArr != null) {
            System.arraycopy(bArr, 0, this.f8158case, 0, bArr.length);
            this.f8162else = 64;
        }
        m9779try();
    }

    @Override // org.bouncycastle.crypto.Digest
    public void update(byte b) {
        int i = this.f8162else;
        if (64 - i != 0) {
            this.f8158case[i] = b;
            this.f8162else = i + 1;
            return;
        }
        int i2 = this.f8157break + 64;
        this.f8157break = i2;
        if (i2 == 0) {
            this.f8159catch++;
        }
        m9778new(this.f8158case, 0);
        q3.c(this.f8158case, (byte) 0);
        this.f8158case[0] = b;
        this.f8162else = 1;
    }

    @Override // org.bouncycastle.crypto.Digest
    public void update(byte[] bArr, int i, int i2) {
        int i3;
        if (bArr == null || i2 == 0) {
            return;
        }
        int i4 = this.f8162else;
        if (i4 != 0) {
            i3 = 64 - i4;
            if (i3 >= i2) {
                System.arraycopy(bArr, i, this.f8158case, i4, i2);
                this.f8162else += i2;
            }
            System.arraycopy(bArr, i, this.f8158case, i4, i3);
            int i5 = this.f8157break + 64;
            this.f8157break = i5;
            if (i5 == 0) {
                this.f8159catch++;
            }
            m9778new(this.f8158case, 0);
            this.f8162else = 0;
            q3.c(this.f8158case, (byte) 0);
        } else {
            i3 = 0;
        }
        int i6 = i2 + i;
        int i7 = i6 - 64;
        int i8 = i + i3;
        while (i8 < i7) {
            int i9 = this.f8157break + 64;
            this.f8157break = i9;
            if (i9 == 0) {
                this.f8159catch++;
            }
            m9778new(bArr, i8);
            i8 += 64;
        }
        i2 = i6 - i8;
        System.arraycopy(bArr, i8, this.f8158case, 0, i2);
        this.f8162else += i2;
    }
}
