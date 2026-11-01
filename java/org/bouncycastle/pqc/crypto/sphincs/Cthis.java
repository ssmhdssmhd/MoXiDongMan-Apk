package org.bouncycastle.pqc.crypto.sphincs;

import android.support.v4.tw;

/* renamed from: org.bouncycastle.pqc.crypto.sphincs.this, reason: invalid class name */
/* loaded from: classes3.dex */
class Cthis {

    /* renamed from: case, reason: not valid java name */
    public static final int f32362case = 2144;

    /* renamed from: do, reason: not valid java name */
    public static final int f32363do = 4;

    /* renamed from: for, reason: not valid java name */
    public static final int f32364for = 64;

    /* renamed from: if, reason: not valid java name */
    public static final int f32365if = 16;

    /* renamed from: new, reason: not valid java name */
    public static final int f32366new = 67;

    /* renamed from: try, reason: not valid java name */
    public static final int f32367try = 7;

    /* renamed from: do, reason: not valid java name */
    private static void m35797do(byte[] bArr, int i, int i2) {
        for (int i3 = 0; i3 != i2; i3++) {
            bArr[i3 + i] = 0;
        }
    }

    /* renamed from: for, reason: not valid java name */
    public static void m35798for(Cdo cdo, byte[] bArr, int i, byte[] bArr2, int i2, byte[] bArr3, int i3, int i4) {
        for (int i5 = 0; i5 < 32; i5++) {
            bArr[i5 + i] = bArr2[i5 + i2];
        }
        for (int i6 = 0; i6 < i4 && i6 < 16; i6++) {
            cdo.m35785try(bArr, i, bArr, i, bArr3, i3 + (i6 * 32));
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static void m35799if(byte[] bArr, int i, byte[] bArr2, int i2) throws tw, IllegalArgumentException {
        m35797do(bArr, i, f32362case);
        Celse.m35787if(bArr, i, 2144L, bArr2, i2);
    }

    /* renamed from: case, reason: not valid java name */
    public void m35800case(Cdo cdo, byte[] bArr, byte[] bArr2, int i, byte[] bArr3, byte[] bArr4) {
        int[] iArr = new int[67];
        int i2 = 0;
        int i3 = 0;
        while (i2 < 64) {
            int i4 = i2 / 2;
            iArr[i2] = bArr3[i4] & 15;
            int i5 = i2 + 1;
            iArr[i5] = (bArr3[i4] & 255) >>> 4;
            i3 = i3 + (15 - iArr[i2]) + (15 - iArr[i5]);
            i2 += 2;
        }
        while (i2 < 67) {
            iArr[i2] = i3 & 15;
            i3 >>>= 4;
            i2++;
        }
        for (int i6 = 0; i6 < 67; i6++) {
            int i7 = i6 * 32;
            m35798for(cdo, bArr, i7, bArr2, i + i7, bArr4, iArr[i6] * 32, 15 - iArr[i6]);
        }
    }

    /* renamed from: new, reason: not valid java name */
    public void m35801new(Cdo cdo, byte[] bArr, int i, byte[] bArr2, int i2, byte[] bArr3, int i3) {
        m35799if(bArr, i, bArr2, i2);
        for (int i4 = 0; i4 < 67; i4++) {
            int i5 = i + (i4 * 32);
            m35798for(cdo, bArr, i5, bArr, i5, bArr3, i3, 15);
        }
    }

    /* renamed from: try, reason: not valid java name */
    public void m35802try(Cdo cdo, byte[] bArr, int i, byte[] bArr2, byte[] bArr3, byte[] bArr4) throws tw, IllegalArgumentException {
        int[] iArr = new int[67];
        int i2 = 0;
        int i3 = 0;
        while (i2 < 64) {
            int i4 = i2 / 2;
            iArr[i2] = bArr2[i4] & 15;
            int i5 = i2 + 1;
            iArr[i5] = (bArr2[i4] & 255) >>> 4;
            i3 = i3 + (15 - iArr[i2]) + (15 - iArr[i5]);
            i2 += 2;
        }
        while (i2 < 67) {
            iArr[i2] = i3 & 15;
            i3 >>>= 4;
            i2++;
        }
        m35799if(bArr, i, bArr3, 0);
        for (int i6 = 0; i6 < 67; i6++) {
            int i7 = i + (i6 * 32);
            m35798for(cdo, bArr, i7, bArr, i7, bArr4, 0, iArr[i6]);
        }
    }
}
