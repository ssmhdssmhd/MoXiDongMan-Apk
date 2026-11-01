package android.support.v4;

import org.bouncycastle.util.Memoable;

/* loaded from: classes3.dex */
public class lq1 extends rg0 {

    /* renamed from: break, reason: not valid java name */
    private static final int f3735break = 16;

    /* renamed from: catch, reason: not valid java name */
    private static final int[] f3736catch = new int[64];

    /* renamed from: this, reason: not valid java name */
    private static final int f3737this = 32;

    /* renamed from: case, reason: not valid java name */
    private int[] f3738case;

    /* renamed from: else, reason: not valid java name */
    private int f3739else;

    /* renamed from: goto, reason: not valid java name */
    private int[] f3740goto;

    /* renamed from: try, reason: not valid java name */
    private int[] f3741try;

    static {
        int i;
        int i2 = 0;
        while (true) {
            if (i2 >= 16) {
                break;
            }
            f3736catch[i2] = (2043430169 >>> (32 - i2)) | (2043430169 << i2);
            i2++;
        }
        for (i = 16; i < 64; i++) {
            int i3 = i % 32;
            f3736catch[i] = (2055708042 >>> (32 - i3)) | (2055708042 << i3);
        }
    }

    public lq1() {
        this.f3741try = new int[8];
        this.f3738case = new int[16];
        this.f3740goto = new int[68];
        reset();
    }

    public lq1(lq1 lq1Var) {
        super(lq1Var);
        this.f3741try = new int[8];
        this.f3738case = new int[16];
        this.f3740goto = new int[68];
        m4741const(lq1Var);
    }

    /* renamed from: break, reason: not valid java name */
    private int m4738break(int i, int i2, int i3) {
        return ((i ^ (-1)) & i3) | (i2 & i);
    }

    /* renamed from: catch, reason: not valid java name */
    private int m4739catch(int i) {
        return (i ^ ((i << 9) | (i >>> 23))) ^ ((i << 17) | (i >>> 15));
    }

    /* renamed from: class, reason: not valid java name */
    private int m4740class(int i) {
        return (i ^ ((i << 15) | (i >>> 17))) ^ ((i << 23) | (i >>> 9));
    }

    /* renamed from: const, reason: not valid java name */
    private void m4741const(lq1 lq1Var) {
        int[] iArr = lq1Var.f3741try;
        int[] iArr2 = this.f3741try;
        System.arraycopy(iArr, 0, iArr2, 0, iArr2.length);
        int[] iArr3 = lq1Var.f3738case;
        int[] iArr4 = this.f3738case;
        System.arraycopy(iArr3, 0, iArr4, 0, iArr4.length);
        this.f3739else = lq1Var.f3739else;
    }

    /* renamed from: else, reason: not valid java name */
    private int m4742else(int i, int i2, int i3) {
        return (i ^ i2) ^ i3;
    }

    /* renamed from: goto, reason: not valid java name */
    private int m4743goto(int i, int i2, int i3) {
        return (i & i3) | (i & i2) | (i2 & i3);
    }

    /* renamed from: this, reason: not valid java name */
    private int m4744this(int i, int i2, int i3) {
        return (i ^ i2) ^ i3;
    }

    @Override // android.support.v4.rg0
    /* renamed from: case, reason: not valid java name */
    public void mo4745case(byte[] bArr, int i) {
        int i2 = (bArr[i] & 255) << 24;
        int i3 = i + 1;
        int i4 = i2 | ((bArr[i3] & 255) << 16);
        int i5 = i3 + 1;
        int i6 = (bArr[i5 + 1] & 255) | i4 | ((bArr[i5] & 255) << 8);
        int[] iArr = this.f3738case;
        int i7 = this.f3739else;
        iArr[i7] = i6;
        int i8 = i7 + 1;
        this.f3739else = i8;
        if (i8 >= 16) {
            mo4746new();
        }
    }

    @Override // org.bouncycastle.util.Memoable
    public Memoable copy() {
        return new lq1(this);
    }

    @Override // org.bouncycastle.crypto.Digest
    public int doFinal(byte[] bArr, int i) {
        m6970if();
        ib1.m3355else(this.f3741try, bArr, i);
        reset();
        return 32;
    }

    @Override // org.bouncycastle.crypto.Digest
    public String getAlgorithmName() {
        return "SM3";
    }

    @Override // org.bouncycastle.crypto.Digest
    public int getDigestSize() {
        return 32;
    }

    @Override // android.support.v4.rg0
    /* renamed from: new, reason: not valid java name */
    public void mo4746new() {
        int i;
        int i2 = 0;
        while (true) {
            if (i2 >= 16) {
                break;
            }
            this.f3740goto[i2] = this.f3738case[i2];
            i2++;
        }
        for (int i3 = 16; i3 < 68; i3++) {
            int[] iArr = this.f3740goto;
            int i4 = iArr[i3 - 3];
            int i5 = iArr[i3 - 13];
            iArr[i3] = (m4740class(((i4 >>> 17) | (i4 << 15)) ^ (iArr[i3 - 16] ^ iArr[i3 - 9])) ^ ((i5 >>> 25) | (i5 << 7))) ^ this.f3740goto[i3 - 6];
        }
        int[] iArr2 = this.f3741try;
        int i6 = iArr2[0];
        int i7 = iArr2[1];
        int i8 = iArr2[2];
        int i9 = iArr2[3];
        int iM4739catch = iArr2[4];
        int i10 = iArr2[5];
        int i11 = iArr2[6];
        int i12 = iArr2[7];
        int i13 = i11;
        int i14 = 0;
        for (i = 16; i14 < i; i = 16) {
            int i15 = (i6 << 12) | (i6 >>> 20);
            int i16 = i15 + iM4739catch + f3736catch[i14];
            int i17 = (i16 << 7) | (i16 >>> 25);
            int[] iArr3 = this.f3740goto;
            int i18 = iArr3[i14];
            int i19 = i18 ^ iArr3[i14 + 4];
            int iM4742else = m4742else(i6, i7, i8) + i9;
            int iM4744this = m4744this(iM4739catch, i10, i13) + i12 + i17 + i18;
            int i20 = (i7 << 9) | (i7 >>> 23);
            int i21 = (i10 << 19) | (i10 >>> 13);
            i14++;
            i10 = iM4739catch;
            iM4739catch = m4739catch(iM4744this);
            i9 = i8;
            i8 = i20;
            i12 = i13;
            i13 = i21;
            i7 = i6;
            i6 = iM4742else + (i17 ^ i15) + i19;
        }
        int i22 = i12;
        int iM4739catch2 = iM4739catch;
        int i23 = i13;
        int i24 = i9;
        int i25 = i8;
        int i26 = i7;
        int i27 = i6;
        int i28 = 16;
        while (i28 < 64) {
            int i29 = (i27 << 12) | (i27 >>> 20);
            int i30 = i29 + iM4739catch2 + f3736catch[i28];
            int i31 = (i30 << 7) | (i30 >>> 25);
            int[] iArr4 = this.f3740goto;
            int i32 = iArr4[i28];
            int i33 = i32 ^ iArr4[i28 + 4];
            int iM4743goto = m4743goto(i27, i26, i25) + i24;
            int iM4738break = m4738break(iM4739catch2, i10, i23) + i22 + i31 + i32;
            int i34 = (i10 << 19) | (i10 >>> 13);
            i28++;
            i10 = iM4739catch2;
            iM4739catch2 = m4739catch(iM4738break);
            i24 = i25;
            i25 = (i26 >>> 23) | (i26 << 9);
            i26 = i27;
            i27 = iM4743goto + (i31 ^ i29) + i33;
            i22 = i23;
            i23 = i34;
        }
        int[] iArr5 = this.f3741try;
        iArr5[0] = i27 ^ iArr5[0];
        iArr5[1] = iArr5[1] ^ i26;
        iArr5[2] = iArr5[2] ^ i25;
        iArr5[3] = iArr5[3] ^ i24;
        iArr5[4] = iArr5[4] ^ iM4739catch2;
        iArr5[5] = iArr5[5] ^ i10;
        iArr5[6] = i23 ^ iArr5[6];
        iArr5[7] = iArr5[7] ^ i22;
        this.f3739else = 0;
    }

    @Override // android.support.v4.rg0, org.bouncycastle.crypto.Digest
    public void reset() {
        super.reset();
        int[] iArr = this.f3741try;
        iArr[0] = 1937774191;
        iArr[1] = 1226093241;
        iArr[2] = 388252375;
        iArr[3] = -628488704;
        iArr[4] = -1452330820;
        iArr[5] = 372324522;
        iArr[6] = -477237683;
        iArr[7] = -1325724082;
        this.f3739else = 0;
    }

    @Override // org.bouncycastle.util.Memoable
    public void reset(Memoable memoable) {
        lq1 lq1Var = (lq1) memoable;
        super.m6968do(lq1Var);
        m4741const(lq1Var);
    }

    @Override // android.support.v4.rg0
    /* renamed from: try, reason: not valid java name */
    public void mo4747try(long j) {
        int i = this.f3739else;
        if (i > 14) {
            this.f3738case[i] = 0;
            this.f3739else = i + 1;
            mo4746new();
        }
        while (true) {
            int i2 = this.f3739else;
            if (i2 >= 14) {
                int[] iArr = this.f3738case;
                int i3 = i2 + 1;
                this.f3739else = i3;
                iArr[i2] = (int) (j >>> 32);
                this.f3739else = i3 + 1;
                iArr[i3] = (int) j;
                return;
            }
            this.f3738case[i2] = 0;
            this.f3739else = i2 + 1;
        }
    }
}
