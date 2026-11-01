package android.support.v4;

import java.lang.reflect.Array;

/* loaded from: classes3.dex */
public class cl1 {
    /* renamed from: break, reason: not valid java name */
    public static boolean m958break(short[][] sArr, short[][] sArr2) {
        if (sArr.length != sArr2.length) {
            return false;
        }
        boolean zM967this = true;
        for (int length = sArr.length - 1; length >= 0; length--) {
            zM967this &= m967this(sArr[length], sArr2[length]);
        }
        return zM967this;
    }

    /* renamed from: case, reason: not valid java name */
    public static short[][][] m959case(byte[][][] bArr) {
        short[][][] sArr = (short[][][]) Array.newInstance((Class<?>) short.class, bArr.length, bArr[0].length, bArr[0][0].length);
        for (int i = 0; i < bArr.length; i++) {
            for (int i2 = 0; i2 < bArr[0].length; i2++) {
                for (int i3 = 0; i3 < bArr[0][0].length; i3++) {
                    sArr[i][i2][i3] = (short) (bArr[i][i2][i3] & 255);
                }
            }
        }
        return sArr;
    }

    /* renamed from: catch, reason: not valid java name */
    public static boolean m960catch(short[][][] sArr, short[][][] sArr2) {
        if (sArr.length != sArr2.length) {
            return false;
        }
        boolean zM958break = true;
        for (int length = sArr.length - 1; length >= 0; length--) {
            zM958break &= m958break(sArr[length], sArr2[length]);
        }
        return zM958break;
    }

    /* renamed from: do, reason: not valid java name */
    public static byte[] m961do(short[] sArr) {
        byte[] bArr = new byte[sArr.length];
        for (int i = 0; i < sArr.length; i++) {
            bArr[i] = (byte) sArr[i];
        }
        return bArr;
    }

    /* renamed from: else, reason: not valid java name */
    public static int[] m962else(byte[] bArr) {
        int[] iArr = new int[bArr.length];
        for (int i = 0; i < bArr.length; i++) {
            iArr[i] = bArr[i] & 255;
        }
        return iArr;
    }

    /* renamed from: for, reason: not valid java name */
    public static byte[][] m963for(short[][] sArr) {
        byte[][] bArr = (byte[][]) Array.newInstance((Class<?>) byte.class, sArr.length, sArr[0].length);
        for (int i = 0; i < sArr.length; i++) {
            for (int i2 = 0; i2 < sArr[0].length; i2++) {
                bArr[i][i2] = (byte) sArr[i][i2];
            }
        }
        return bArr;
    }

    /* renamed from: goto, reason: not valid java name */
    public static byte[] m964goto(int[] iArr) {
        byte[] bArr = new byte[iArr.length];
        for (int i = 0; i < iArr.length; i++) {
            bArr[i] = (byte) iArr[i];
        }
        return bArr;
    }

    /* renamed from: if, reason: not valid java name */
    public static short[] m965if(byte[] bArr) {
        short[] sArr = new short[bArr.length];
        for (int i = 0; i < bArr.length; i++) {
            sArr[i] = (short) (bArr[i] & 255);
        }
        return sArr;
    }

    /* renamed from: new, reason: not valid java name */
    public static short[][] m966new(byte[][] bArr) {
        short[][] sArr = (short[][]) Array.newInstance((Class<?>) short.class, bArr.length, bArr[0].length);
        for (int i = 0; i < bArr.length; i++) {
            for (int i2 = 0; i2 < bArr[0].length; i2++) {
                sArr[i][i2] = (short) (bArr[i][i2] & 255);
            }
        }
        return sArr;
    }

    /* renamed from: this, reason: not valid java name */
    public static boolean m967this(short[] sArr, short[] sArr2) {
        if (sArr.length != sArr2.length) {
            return false;
        }
        boolean z = true;
        for (int length = sArr.length - 1; length >= 0; length--) {
            z &= sArr[length] == sArr2[length];
        }
        return z;
    }

    /* renamed from: try, reason: not valid java name */
    public static byte[][][] m968try(short[][][] sArr) {
        byte[][][] bArr = (byte[][][]) Array.newInstance((Class<?>) byte.class, sArr.length, sArr[0].length, sArr[0][0].length);
        for (int i = 0; i < sArr.length; i++) {
            for (int i2 = 0; i2 < sArr[0].length; i2++) {
                for (int i3 = 0; i3 < sArr[0][0].length; i3++) {
                    bArr[i][i2][i3] = (byte) sArr[i][i2][i3];
                }
            }
        }
        return bArr;
    }
}
