package android.support.v4;

import okio.Utf8;

/* loaded from: classes3.dex */
public class eb2 {

    /* renamed from: break, reason: not valid java name */
    private static final byte f1352break = 9;

    /* renamed from: case, reason: not valid java name */
    private static final byte f1353case = 5;

    /* renamed from: catch, reason: not valid java name */
    private static final byte f1354catch = 10;

    /* renamed from: class, reason: not valid java name */
    private static final byte f1355class = -2;

    /* renamed from: const, reason: not valid java name */
    private static final byte f1356const = -1;

    /* renamed from: do, reason: not valid java name */
    private static final byte f1357do = 0;

    /* renamed from: else, reason: not valid java name */
    private static final byte f1358else = 6;

    /* renamed from: final, reason: not valid java name */
    private static final byte f1359final = 0;

    /* renamed from: for, reason: not valid java name */
    private static final byte f1360for = 2;

    /* renamed from: goto, reason: not valid java name */
    private static final byte f1361goto = 7;

    /* renamed from: if, reason: not valid java name */
    private static final byte f1362if = 1;

    /* renamed from: import, reason: not valid java name */
    private static final byte f1363import = 64;

    /* renamed from: native, reason: not valid java name */
    private static final byte f1364native = 80;

    /* renamed from: new, reason: not valid java name */
    private static final byte f1365new = 3;

    /* renamed from: public, reason: not valid java name */
    private static final byte f1366public = 96;

    /* renamed from: return, reason: not valid java name */
    private static final short[] f1367return = new short[128];

    /* renamed from: static, reason: not valid java name */
    private static final byte[] f1368static;

    /* renamed from: super, reason: not valid java name */
    private static final byte f1369super = 16;

    /* renamed from: this, reason: not valid java name */
    private static final byte f1370this = 8;

    /* renamed from: throw, reason: not valid java name */
    private static final byte f1371throw = 32;

    /* renamed from: try, reason: not valid java name */
    private static final byte f1372try = 4;

    /* renamed from: while, reason: not valid java name */
    private static final byte f1373while = 48;

    static {
        byte[] bArr = new byte[112];
        f1368static = bArr;
        byte[] bArr2 = new byte[128];
        m1768do(bArr2, 0, 15, (byte) 1);
        m1768do(bArr2, 16, 31, (byte) 2);
        m1768do(bArr2, 32, 63, (byte) 3);
        m1768do(bArr2, 64, 65, (byte) 0);
        m1768do(bArr2, 66, 95, (byte) 4);
        m1768do(bArr2, 96, 96, (byte) 5);
        m1768do(bArr2, 97, 108, (byte) 6);
        m1768do(bArr2, 109, 109, (byte) 7);
        m1768do(bArr2, 110, 111, (byte) 6);
        m1768do(bArr2, 112, 112, (byte) 8);
        m1768do(bArr2, 113, 115, (byte) 9);
        m1768do(bArr2, 116, 116, (byte) 10);
        m1768do(bArr2, 117, 127, (byte) 0);
        m1768do(bArr, 0, bArr.length - 1, f1355class);
        m1768do(bArr, 8, 11, (byte) -1);
        m1768do(bArr, 24, 27, (byte) 0);
        m1768do(bArr, 40, 43, (byte) 16);
        m1768do(bArr, 58, 59, (byte) 0);
        m1768do(bArr, 72, 73, (byte) 0);
        m1768do(bArr, 89, 91, (byte) 16);
        m1768do(bArr, 104, 104, (byte) 16);
        byte[] bArr3 = {0, 0, 0, 0, t3.f6399protected, 15, 15, 15, 7, 7, 7};
        byte[] bArr4 = {f1355class, f1355class, f1355class, f1355class, 0, f1373while, 16, 64, f1364native, 32, f1366public};
        for (int i = 0; i < 128; i++) {
            byte b = bArr2[i];
            f1367return[i] = (short) (bArr4[b] | ((bArr3[b] & i) << 8));
        }
    }

    /* renamed from: do, reason: not valid java name */
    private static void m1768do(byte[] bArr, int i, int i2, byte b) {
        while (i <= i2) {
            bArr[i] = b;
            i++;
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static int m1769if(byte[] bArr, char[] cArr) {
        int i = 0;
        int i2 = 0;
        while (i < bArr.length) {
            int i3 = i + 1;
            byte b = bArr[i];
            if (b < 0) {
                short s = f1367return[b & Byte.MAX_VALUE];
                int i4 = s >>> 8;
                byte b2 = (byte) s;
                while (b2 >= 0) {
                    if (i3 >= bArr.length) {
                        return -1;
                    }
                    int i5 = i3 + 1;
                    byte b3 = bArr[i3];
                    i4 = (i4 << 6) | (b3 & Utf8.REPLACEMENT_BYTE);
                    b2 = f1368static[b2 + ((b3 & 255) >>> 4)];
                    i3 = i5;
                }
                if (b2 == -2) {
                    return -1;
                }
                if (i4 <= 65535) {
                    if (i2 >= cArr.length) {
                        return -1;
                    }
                    cArr[i2] = (char) i4;
                    i2++;
                } else {
                    if (i2 >= cArr.length - 1) {
                        return -1;
                    }
                    int i6 = i2 + 1;
                    cArr[i2] = (char) ((i4 >>> 10) + Utf8.HIGH_SURROGATE_HEADER);
                    i2 = i6 + 1;
                    cArr[i6] = (char) (56320 | (i4 & 1023));
                }
                i = i3;
            } else {
                if (i2 >= cArr.length) {
                    return -1;
                }
                cArr[i2] = (char) b;
                i = i3;
                i2++;
            }
        }
        return i2;
    }
}
