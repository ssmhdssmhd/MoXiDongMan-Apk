package org.bouncycastle.pqc.crypto.newhope;

import android.support.v4.ab2;
import android.support.v4.dq1;
import android.support.v4.ib1;

/* renamed from: org.bouncycastle.pqc.crypto.newhope.this, reason: invalid class name */
/* loaded from: classes3.dex */
class Cthis {
    /* renamed from: case, reason: not valid java name */
    public static void m35661case(short[] sArr, short[] sArr2, short[] sArr3) {
        for (int i = 0; i < 1024; i++) {
            sArr3[i] = Ccatch.m35642if((sArr[i] & ab2.f80for) * (65535 & Ccatch.m35642if((sArr2[i] & ab2.f80for) * 3186)));
        }
    }

    /* renamed from: do, reason: not valid java name */
    public static void m35662do(short[] sArr, short[] sArr2, short[] sArr3) {
        for (int i = 0; i < 1024; i++) {
            sArr3[i] = Ccatch.m35641do((short) (sArr[i] + sArr2[i]));
        }
    }

    /* renamed from: else, reason: not valid java name */
    public static void m35663else(byte[] bArr, short[] sArr) {
        for (int i = 0; i < 256; i++) {
            int i2 = i * 4;
            short sM35669try = m35669try(sArr[i2 + 0]);
            short sM35669try2 = m35669try(sArr[i2 + 1]);
            short sM35669try3 = m35669try(sArr[i2 + 2]);
            short sM35669try4 = m35669try(sArr[i2 + 3]);
            int i3 = i * 7;
            bArr[i3 + 0] = (byte) sM35669try;
            bArr[i3 + 1] = (byte) ((sM35669try >> 8) | (sM35669try2 << 6));
            bArr[i3 + 2] = (byte) (sM35669try2 >> 2);
            bArr[i3 + 3] = (byte) ((sM35669try2 >> 10) | (sM35669try3 << 4));
            bArr[i3 + 4] = (byte) (sM35669try3 >> 4);
            bArr[i3 + 5] = (byte) ((sM35669try3 >> 12) | (sM35669try4 << 2));
            bArr[i3 + 6] = (byte) (sM35669try4 >> 6);
        }
    }

    /* renamed from: for, reason: not valid java name */
    public static void m35664for(short[] sArr) {
        Ccase.m35638do(sArr);
        Ccase.m35640if(sArr, Cbreak.f32235if);
        Ccase.m35639for(sArr, Cbreak.f32236new);
    }

    /* renamed from: goto, reason: not valid java name */
    public static void m35665goto(short[] sArr) {
        Ccase.m35639for(sArr, Cbreak.f32234for);
        Ccase.m35640if(sArr, Cbreak.f32233do);
    }

    /* renamed from: if, reason: not valid java name */
    public static void m35666if(short[] sArr, byte[] bArr) {
        for (int i = 0; i < 256; i++) {
            int i2 = i * 7;
            int i3 = bArr[i2 + 0] & 255;
            int i4 = bArr[i2 + 1] & 255;
            int i5 = bArr[i2 + 2] & 255;
            int i6 = bArr[i2 + 3] & 255;
            int i7 = bArr[i2 + 4] & 255;
            int i8 = bArr[i2 + 5] & 255;
            int i9 = bArr[i2 + 6] & 255;
            int i10 = i * 4;
            sArr[i10 + 0] = (short) (i3 | ((i4 & 63) << 8));
            sArr[i10 + 1] = (short) ((i4 >>> 6) | (i5 << 2) | ((i6 & 15) << 10));
            sArr[i10 + 2] = (short) ((i6 >>> 4) | (i7 << 4) | ((i8 & 3) << 12));
            sArr[i10 + 3] = (short) ((i9 << 6) | (i8 >>> 2));
        }
    }

    /* renamed from: new, reason: not valid java name */
    public static void m35667new(short[] sArr, byte[] bArr, byte b) {
        byte[] bArr2 = new byte[8];
        bArr2[0] = b;
        byte[] bArr3 = new byte[4096];
        Cdo.m35643do(bArr, bArr2, bArr3, 0, 4096);
        for (int i = 0; i < 1024; i++) {
            int iM3354do = ib1.m3354do(bArr3, i * 4);
            int i2 = 0;
            for (int i3 = 0; i3 < 8; i3++) {
                i2 += (iM3354do >> i3) & 16843009;
            }
            sArr[i] = (short) (((((i2 >>> 24) + (i2 >>> 0)) & 255) + Cgoto.f32249for) - (((i2 >>> 16) + (i2 >>> 8)) & 255));
        }
    }

    /* renamed from: this, reason: not valid java name */
    public static void m35668this(short[] sArr, byte[] bArr) {
        dq1 dq1Var = new dq1(128);
        dq1Var.update(bArr, 0, bArr.length);
        int i = 0;
        while (true) {
            byte[] bArr2 = new byte[256];
            dq1Var.doOutput(bArr2, 0, 256);
            for (int i2 = 0; i2 < 256; i2 += 2) {
                int i3 = (bArr2[i2] & 255) | ((bArr2[i2 + 1] & 255) << 8);
                if (i3 < 61445) {
                    int i4 = i + 1;
                    sArr[i] = (short) i3;
                    if (i4 == 1024) {
                        return;
                    } else {
                        i = i4;
                    }
                }
            }
        }
    }

    /* renamed from: try, reason: not valid java name */
    private static short m35669try(short s) {
        short sM35641do = Ccatch.m35641do(s);
        int i = sM35641do - 12289;
        return (short) (((sM35641do ^ i) & (i >> 31)) ^ i);
    }
}
