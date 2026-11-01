package org.bouncycastle.pqc.crypto.newhope;

import android.support.v4.q3;
import android.support.v4.vl;
import com.uc.crashsdk.export.LogType;

/* renamed from: org.bouncycastle.pqc.crypto.newhope.if, reason: invalid class name */
/* loaded from: classes3.dex */
class Cif {
    /* renamed from: case, reason: not valid java name */
    public static void m35655case(byte[] bArr, short[] sArr, short[] sArr2) {
        q3.c(bArr, (byte) 0);
        int[] iArr = new int[4];
        for (int i = 0; i < 256; i++) {
            int i2 = i + 0;
            int i3 = (sArr[i2] * 8) + 196624;
            int i4 = sArr2[i2] * 2;
            int i5 = i + LogType.UNEXP_OTHER;
            iArr[0] = i3 - ((i4 + sArr2[i5]) * Cgoto.f32249for);
            int i6 = i + 256;
            iArr[1] = ((sArr[i6] * 8) + 196624) - (((sArr2[i6] * 2) + sArr2[i5]) * Cgoto.f32249for);
            int i7 = i + 512;
            iArr[2] = ((sArr[i7] * 8) + 196624) - (((sArr2[i7] * 2) + sArr2[i5]) * Cgoto.f32249for);
            iArr[3] = ((sArr[i5] * 8) + 196624) - (sArr2[i5] * 12289);
            int i8 = i >>> 3;
            bArr[i8] = (byte) ((m35656do(iArr[0], iArr[1], iArr[2], iArr[3]) << (i & 7)) | bArr[i8]);
        }
    }

    /* renamed from: do, reason: not valid java name */
    public static short m35656do(int i, int i2, int i3, int i4) {
        return (short) (((((m35659new(i) + m35659new(i2)) + m35659new(i3)) + m35659new(i4)) - 98312) >>> 31);
    }

    /* renamed from: for, reason: not valid java name */
    public static int m35657for(int[] iArr, int i, int i2, int i3) {
        int i4 = (i3 * 2730) >> 25;
        int i5 = i4 - ((12288 - (i3 - (i4 * Cgoto.f32249for))) >> 31);
        iArr[i] = (i5 >> 1) + (i5 & 1);
        int i6 = i5 - 1;
        iArr[i2] = (i6 >> 1) + (i6 & 1);
        return m35658if(i3 - ((iArr[i] * 2) * Cgoto.f32249for));
    }

    /* renamed from: if, reason: not valid java name */
    public static int m35658if(int i) {
        int i2 = i >> 31;
        return (i ^ i2) - i2;
    }

    /* renamed from: new, reason: not valid java name */
    public static int m35659new(int i) {
        int i2 = (i * 2730) >> 27;
        int i3 = i2 - ((vl.T - (i - (vl.U * i2))) >> 31);
        return m35658if((((i3 >> 1) + (i3 & 1)) * 98312) - i);
    }

    /* renamed from: try, reason: not valid java name */
    public static void m35660try(short[] sArr, short[] sArr2, byte[] bArr, byte b) {
        byte[] bArr2 = new byte[8];
        bArr2[0] = b;
        byte[] bArr3 = new byte[32];
        Cdo.m35643do(bArr, bArr2, bArr3, 0, 32);
        int[] iArr = new int[8];
        int[] iArr2 = new int[4];
        for (int i = 0; i < 256; i++) {
            int i2 = i + 0;
            int i3 = ((bArr3[i >>> 3] >>> (i & 7)) & 1) * 4;
            int i4 = i + 256;
            int i5 = i + 512;
            int iM35657for = m35657for(iArr, 0, 4, (sArr2[i2] * 8) + i3) + m35657for(iArr, 1, 5, (sArr2[i4] * 8) + i3) + m35657for(iArr, 2, 6, (sArr2[i5] * 8) + i3);
            int i6 = i + LogType.UNEXP_OTHER;
            int iM35657for2 = (24577 - (iM35657for + m35657for(iArr, 3, 7, (sArr2[i6] * 8) + i3))) >> 31;
            int i7 = iM35657for2 ^ (-1);
            iArr2[0] = (i7 & iArr[0]) ^ (iM35657for2 & iArr[4]);
            iArr2[1] = (i7 & iArr[1]) ^ (iM35657for2 & iArr[5]);
            iArr2[2] = (i7 & iArr[2]) ^ (iM35657for2 & iArr[6]);
            iArr2[3] = (i7 & iArr[3]) ^ (iArr[7] & iM35657for2);
            sArr[i2] = (short) ((iArr2[0] - iArr2[3]) & 3);
            sArr[i4] = (short) ((iArr2[1] - iArr2[3]) & 3);
            sArr[i5] = (short) ((iArr2[2] - iArr2[3]) & 3);
            sArr[i6] = (short) (3 & ((-iM35657for2) + (iArr2[3] * 2)));
        }
    }
}
