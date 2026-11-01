package org.brotli.dec;

/* renamed from: org.brotli.dec.else, reason: invalid class name */
/* loaded from: classes3.dex */
final class Celse {

    /* renamed from: do, reason: not valid java name */
    public static final int f32867do = 1080;

    /* renamed from: if, reason: not valid java name */
    private static final int f32868if = 15;

    /* renamed from: do, reason: not valid java name */
    public static void m36666do(int[] iArr, int i, int i2, int[] iArr2, int i3) {
        int[] iArr3 = new int[i3];
        int[] iArr4 = new int[16];
        int[] iArr5 = new int[16];
        int iM36668if = 0;
        for (int i4 = 0; i4 < i3; i4++) {
            int i5 = iArr2[i4];
            iArr4[i5] = iArr4[i5] + 1;
        }
        iArr5[1] = 0;
        int i6 = 1;
        while (i6 < 15) {
            int i7 = i6 + 1;
            iArr5[i7] = iArr5[i6] + iArr4[i6];
            i6 = i7;
        }
        for (int i8 = 0; i8 < i3; i8++) {
            if (iArr2[i8] != 0) {
                int i9 = iArr2[i8];
                int i10 = iArr5[i9];
                iArr5[i9] = i10 + 1;
                iArr3[i10] = i8;
            }
        }
        int i11 = 1 << i2;
        if (iArr5[15] == 1) {
            for (int i12 = 0; i12 < i11; i12++) {
                iArr[i + i12] = iArr3[0];
            }
            return;
        }
        int i13 = 2;
        int i14 = 0;
        int i15 = 1;
        int i16 = 2;
        while (i15 <= i2) {
            while (iArr4[i15] > 0) {
                m36669new(iArr, i + iM36668if, i16, i11, iArr3[i14] | (i15 << 16));
                iM36668if = m36668if(iM36668if, i15);
                iArr4[i15] = iArr4[i15] - 1;
                i14++;
            }
            i15++;
            i16 <<= 1;
        }
        int i17 = i11 - 1;
        int i18 = -1;
        int i19 = i2 + 1;
        int i20 = i;
        while (i19 <= 15) {
            while (iArr4[i19] > 0) {
                int i21 = iM36668if & i17;
                if (i21 != i18) {
                    i20 += i11;
                    int iM36667for = m36667for(iArr4, i19, i2);
                    iArr[i + i21] = ((iM36667for + i2) << 16) | ((i20 - i) - i21);
                    i11 = 1 << iM36667for;
                    i18 = i21;
                }
                m36669new(iArr, (iM36668if >> i2) + i20, i13, i11, ((i19 - i2) << 16) | iArr3[i14]);
                iM36668if = m36668if(iM36668if, i19);
                iArr4[i19] = iArr4[i19] - 1;
                i14++;
            }
            i19++;
            i13 <<= 1;
        }
    }

    /* renamed from: for, reason: not valid java name */
    private static int m36667for(int[] iArr, int i, int i2) {
        int i3;
        int i4 = 1 << (i - i2);
        while (i < 15 && (i3 = i4 - iArr[i]) > 0) {
            i++;
            i4 = i3 << 1;
        }
        return i - i2;
    }

    /* renamed from: if, reason: not valid java name */
    private static int m36668if(int i, int i2) {
        int i3 = 1 << (i2 - 1);
        while ((i & i3) != 0) {
            i3 >>= 1;
        }
        return (i & (i3 - 1)) + i3;
    }

    /* renamed from: new, reason: not valid java name */
    private static void m36669new(int[] iArr, int i, int i2, int i3, int i4) {
        do {
            i3 -= i2;
            iArr[i + i3] = i4;
        } while (i3 > 0);
    }
}
