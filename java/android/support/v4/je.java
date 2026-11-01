package android.support.v4;

/* loaded from: classes3.dex */
public final class je extends ie {

    /* renamed from: static, reason: not valid java name */
    public static final int f3060static = 12;

    /* renamed from: switch, reason: not valid java name */
    public static final int f3061switch = 16;

    /* renamed from: while, reason: not valid java name */
    public int[] f3066while = new int[48];

    /* renamed from: import, reason: not valid java name */
    public int[] f3062import = new int[48];

    /* renamed from: native, reason: not valid java name */
    public int[] f3063native = new int[192];

    /* renamed from: public, reason: not valid java name */
    public int[] f3064public = new int[192];

    /* renamed from: return, reason: not valid java name */
    private int[] f3065return = new int[8];

    @Override // android.support.v4.ie
    /* renamed from: break */
    public int mo3388break(byte[] bArr, int i, byte[] bArr2, int i2) {
        int[] iArr = new int[4];
        m3846const(m3394for(bArr, i), m3394for(bArr, i + 4), m3394for(bArr, i + 8), m3394for(bArr, i + 12), iArr);
        m3392do(iArr[0], bArr2, i2);
        m3392do(iArr[1], bArr2, i2 + 4);
        m3392do(iArr[2], bArr2, i2 + 8);
        m3392do(iArr[3], bArr2, i2 + 12);
        return 16;
    }

    @Override // android.support.v4.ie
    /* renamed from: catch */
    public int mo3390catch(byte[] bArr, int i, byte[] bArr2, int i2) {
        int[] iArr = new int[4];
        m3847final(m3394for(bArr, i), m3394for(bArr, i + 4), m3394for(bArr, i + 8), m3394for(bArr, i + 12), iArr);
        m3392do(iArr[0], bArr2, i2);
        m3392do(iArr[1], bArr2, i2 + 4);
        m3392do(iArr[2], bArr2, i2 + 8);
        m3392do(iArr[3], bArr2, i2 + 12);
        return 16;
    }

    @Override // android.support.v4.ie
    /* renamed from: class */
    public void mo3391class(byte[] bArr) {
        int i = 1518500249;
        int i2 = 19;
        for (int i3 = 0; i3 < 24; i3++) {
            for (int i4 = 0; i4 < 8; i4++) {
                int i5 = (i3 * 8) + i4;
                this.f3064public[i5] = i;
                i += 1859775393;
                this.f3063native[i5] = i2;
                i2 = (i2 + 17) & 31;
            }
        }
        byte[] bArr2 = new byte[64];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        for (int i6 = 0; i6 < 8; i6++) {
            this.f3065return[i6] = m3394for(bArr2, i6 * 4);
        }
        for (int i7 = 0; i7 < 12; i7++) {
            int i8 = i7 * 2;
            int i9 = i8 * 8;
            int[] iArr = this.f3065return;
            iArr[6] = iArr[6] ^ m3389case(iArr[7], this.f3064public[i9], this.f3063native[i9]);
            int[] iArr2 = this.f3065return;
            int i10 = i9 + 1;
            iArr2[5] = iArr2[5] ^ m3393else(iArr2[6], this.f3064public[i10], this.f3063native[i10]);
            int[] iArr3 = this.f3065return;
            int i11 = i9 + 2;
            iArr3[4] = iArr3[4] ^ m3395goto(iArr3[5], this.f3064public[i11], this.f3063native[i11]);
            int[] iArr4 = this.f3065return;
            int i12 = i9 + 3;
            iArr4[3] = m3389case(iArr4[4], this.f3064public[i12], this.f3063native[i12]) ^ iArr4[3];
            int[] iArr5 = this.f3065return;
            int i13 = i9 + 4;
            iArr5[2] = m3393else(iArr5[3], this.f3064public[i13], this.f3063native[i13]) ^ iArr5[2];
            int[] iArr6 = this.f3065return;
            int i14 = i9 + 5;
            iArr6[1] = m3395goto(iArr6[2], this.f3064public[i14], this.f3063native[i14]) ^ iArr6[1];
            int[] iArr7 = this.f3065return;
            int i15 = i9 + 6;
            iArr7[0] = iArr7[0] ^ m3389case(iArr7[1], this.f3064public[i15], this.f3063native[i15]);
            int[] iArr8 = this.f3065return;
            int i16 = i9 + 7;
            iArr8[7] = m3393else(iArr8[0], this.f3064public[i16], this.f3063native[i16]) ^ iArr8[7];
            int i17 = (i8 + 1) * 8;
            int[] iArr9 = this.f3065return;
            iArr9[6] = iArr9[6] ^ m3389case(iArr9[7], this.f3064public[i17], this.f3063native[i17]);
            int[] iArr10 = this.f3065return;
            int i18 = i17 + 1;
            iArr10[5] = iArr10[5] ^ m3393else(iArr10[6], this.f3064public[i18], this.f3063native[i18]);
            int[] iArr11 = this.f3065return;
            int i19 = i17 + 2;
            iArr11[4] = iArr11[4] ^ m3395goto(iArr11[5], this.f3064public[i19], this.f3063native[i19]);
            int[] iArr12 = this.f3065return;
            int i20 = i17 + 3;
            iArr12[3] = m3389case(iArr12[4], this.f3064public[i20], this.f3063native[i20]) ^ iArr12[3];
            int[] iArr13 = this.f3065return;
            int i21 = i17 + 4;
            iArr13[2] = m3393else(iArr13[3], this.f3064public[i21], this.f3063native[i21]) ^ iArr13[2];
            int[] iArr14 = this.f3065return;
            int i22 = i17 + 5;
            iArr14[1] = m3395goto(iArr14[2], this.f3064public[i22], this.f3063native[i22]) ^ iArr14[1];
            int[] iArr15 = this.f3065return;
            int i23 = i17 + 6;
            iArr15[0] = iArr15[0] ^ m3389case(iArr15[1], this.f3064public[i23], this.f3063native[i23]);
            int[] iArr16 = this.f3065return;
            int i24 = i17 + 7;
            iArr16[7] = m3393else(iArr16[0], this.f3064public[i24], this.f3063native[i24]) ^ iArr16[7];
            int[] iArr17 = this.f3066while;
            int i25 = i7 * 4;
            int[] iArr18 = this.f3065return;
            iArr17[i25] = iArr18[0] & 31;
            int i26 = i25 + 1;
            iArr17[i26] = iArr18[2] & 31;
            int i27 = i25 + 2;
            iArr17[i27] = iArr18[4] & 31;
            int i28 = i25 + 3;
            iArr17[i28] = iArr18[6] & 31;
            int[] iArr19 = this.f3062import;
            iArr19[i25] = iArr18[7];
            iArr19[i26] = iArr18[5];
            iArr19[i27] = iArr18[3];
            iArr19[i28] = iArr18[1];
        }
    }

    /* renamed from: const, reason: not valid java name */
    public final void m3846const(int i, int i2, int i3, int i4, int[] iArr) {
        int i5;
        int i6 = 0;
        while (true) {
            if (i6 >= 6) {
                break;
            }
            int i7 = (11 - i6) * 4;
            i3 ^= m3389case(i4, this.f3062import[i7], this.f3066while[i7]);
            int i8 = i7 + 1;
            i2 ^= m3393else(i3, this.f3062import[i8], this.f3066while[i8]);
            int i9 = i7 + 2;
            i ^= m3395goto(i2, this.f3062import[i9], this.f3066while[i9]);
            int i10 = i7 + 3;
            i4 ^= m3389case(i, this.f3062import[i10], this.f3066while[i10]);
            i6++;
        }
        for (i5 = 6; i5 < 12; i5++) {
            int i11 = (11 - i5) * 4;
            int i12 = i11 + 3;
            i4 ^= m3389case(i, this.f3062import[i12], this.f3066while[i12]);
            int i13 = i11 + 2;
            i ^= m3395goto(i2, this.f3062import[i13], this.f3066while[i13]);
            int i14 = i11 + 1;
            i2 ^= m3393else(i3, this.f3062import[i14], this.f3066while[i14]);
            i3 ^= m3389case(i4, this.f3062import[i11], this.f3066while[i11]);
        }
        iArr[0] = i;
        iArr[1] = i2;
        iArr[2] = i3;
        iArr[3] = i4;
    }

    /* renamed from: final, reason: not valid java name */
    public final void m3847final(int i, int i2, int i3, int i4, int[] iArr) {
        int i5;
        int i6 = 0;
        while (true) {
            if (i6 >= 6) {
                break;
            }
            int i7 = i6 * 4;
            i3 ^= m3389case(i4, this.f3062import[i7], this.f3066while[i7]);
            int i8 = i7 + 1;
            i2 ^= m3393else(i3, this.f3062import[i8], this.f3066while[i8]);
            int i9 = i7 + 2;
            i ^= m3395goto(i2, this.f3062import[i9], this.f3066while[i9]);
            int i10 = i7 + 3;
            i4 ^= m3389case(i, this.f3062import[i10], this.f3066while[i10]);
            i6++;
        }
        for (i5 = 6; i5 < 12; i5++) {
            int i11 = i5 * 4;
            int i12 = i11 + 3;
            i4 ^= m3389case(i, this.f3062import[i12], this.f3066while[i12]);
            int i13 = i11 + 2;
            i ^= m3395goto(i2, this.f3062import[i13], this.f3066while[i13]);
            int i14 = i11 + 1;
            i2 ^= m3393else(i3, this.f3062import[i14], this.f3066while[i14]);
            i3 ^= m3389case(i4, this.f3062import[i11], this.f3066while[i11]);
        }
        iArr[0] = i;
        iArr[1] = i2;
        iArr[2] = i3;
        iArr[3] = i4;
    }

    @Override // android.support.v4.ie, org.bouncycastle.crypto.BlockCipher
    public String getAlgorithmName() {
        return "CAST6";
    }

    @Override // android.support.v4.ie, org.bouncycastle.crypto.BlockCipher
    public int getBlockSize() {
        return 16;
    }

    @Override // android.support.v4.ie, org.bouncycastle.crypto.BlockCipher
    public void reset() {
    }
}
