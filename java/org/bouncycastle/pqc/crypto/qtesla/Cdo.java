package org.bouncycastle.pqc.crypto.qtesla;

/* renamed from: org.bouncycastle.pqc.crypto.qtesla.do, reason: invalid class name */
/* loaded from: classes3.dex */
class Cdo {
    /* renamed from: case, reason: not valid java name */
    public static void m35708case(byte[] bArr, int i, int i2) {
        int i3 = 0;
        if (bArr.length - i >= 4) {
            while (i3 < 4) {
                bArr[i + i3] = (byte) ((i2 >> (i3 * 8)) & 255);
                i3++;
            }
        } else {
            while (i3 < bArr.length - i) {
                bArr[i + i3] = (byte) ((i2 >> (i3 * 8)) & 255);
                i3++;
            }
        }
    }

    /* renamed from: do, reason: not valid java name */
    public static short m35709do(byte[] bArr, int i) {
        short s;
        int i2 = 0;
        if (bArr.length - i >= 2) {
            s = 0;
            while (i2 < 2) {
                s = (short) (s ^ (((short) (bArr[i + i2] & 255)) << (i2 * 8)));
                i2++;
            }
        } else {
            s = 0;
            while (i2 < bArr.length - i) {
                s = (short) (s ^ (((short) (bArr[i + i2] & 255)) << (i2 * 8)));
                i2++;
            }
        }
        return s;
    }

    /* renamed from: else, reason: not valid java name */
    public static void m35710else(byte[] bArr, int i, long j) {
        int i2 = 0;
        if (bArr.length - i >= 8) {
            while (i2 < 8) {
                bArr[i + i2] = (byte) ((j >> (i2 * 8)) & 255);
                i2++;
            }
        } else {
            while (i2 < bArr.length - i) {
                bArr[i + i2] = (byte) ((j >> (i2 * 8)) & 255);
                i2++;
            }
        }
    }

    /* renamed from: for, reason: not valid java name */
    public static long m35711for(byte[] bArr, int i) {
        int i2 = 0;
        long j = 0;
        if (bArr.length - i >= 8) {
            while (i2 < 8) {
                j ^= (bArr[i + i2] & 255) << (i2 * 8);
                i2++;
            }
        } else {
            while (i2 < bArr.length - i) {
                j ^= (bArr[i + i2] & 255) << (i2 * 8);
                i2++;
            }
        }
        return j;
    }

    /* renamed from: if, reason: not valid java name */
    public static int m35712if(byte[] bArr, int i) {
        int i2;
        int i3 = 0;
        if (bArr.length - i >= 4) {
            i2 = 0;
            while (i3 < 4) {
                i2 ^= (bArr[i + i3] & 255) << (i3 * 8);
                i3++;
            }
        } else {
            i2 = 0;
            while (i3 < bArr.length - i) {
                i2 ^= (bArr[i + i3] & 255) << (i3 * 8);
                i3++;
            }
        }
        return i2;
    }

    /* renamed from: new, reason: not valid java name */
    public static boolean m35713new(byte[] bArr, int i, byte[] bArr2, int i2, int i3) {
        if (i + i3 > bArr.length || i2 + i3 > bArr2.length) {
            return false;
        }
        for (int i4 = 0; i4 < i3; i4++) {
            if (bArr[i + i4] != bArr2[i2 + i4]) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: try, reason: not valid java name */
    public static void m35714try(byte[] bArr, int i, short s) {
        int i2 = 0;
        if (bArr.length - i >= 2) {
            while (i2 < 2) {
                bArr[i + i2] = (byte) ((s >> (i2 * 8)) & 255);
                i2++;
            }
        } else {
            while (i2 < bArr.length - i) {
                bArr[i + i2] = (byte) ((s >> (i2 * 8)) & 255);
                i2++;
            }
        }
    }
}
