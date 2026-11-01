package org.bouncycastle.pqc.math.linearalgebra;

import org.apache.commons.lang3.Cclass;

/* renamed from: org.bouncycastle.pqc.math.linearalgebra.if, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cif {

    /* renamed from: do, reason: not valid java name */
    private static final char[] f32634do = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    private Cif() {
    }

    /* renamed from: break, reason: not valid java name */
    public static byte[] m36266break(String str) {
        char[] charArray = str.toUpperCase().toCharArray();
        int i = 0;
        for (int i2 = 0; i2 < charArray.length; i2++) {
            if ((charArray[i2] >= '0' && charArray[i2] <= '9') || (charArray[i2] >= 'A' && charArray[i2] <= 'F')) {
                i++;
            }
        }
        byte[] bArr = new byte[(i + 1) >> 1];
        int i3 = i & 1;
        for (int i4 = 0; i4 < charArray.length; i4++) {
            if (charArray[i4] >= '0' && charArray[i4] <= '9') {
                int i5 = i3 >> 1;
                bArr[i5] = (byte) (bArr[i5] << 4);
                bArr[i5] = (byte) (bArr[i5] | (charArray[i4] - '0'));
            } else if (charArray[i4] >= 'A' && charArray[i4] <= 'F') {
                int i6 = i3 >> 1;
                bArr[i6] = (byte) (bArr[i6] << 4);
                bArr[i6] = (byte) (bArr[i6] | ((charArray[i4] - 'A') + 10));
            }
            i3++;
        }
        return bArr;
    }

    /* renamed from: case, reason: not valid java name */
    public static int m36267case(byte[][][] bArr) {
        int iM36282try = 1;
        for (byte[][] bArr2 : bArr) {
            iM36282try = (iM36282try * 31) + m36282try(bArr2);
        }
        return iM36282try;
    }

    /* renamed from: catch, reason: not valid java name */
    public static byte[][] m36268catch(byte[] bArr, int i) throws ArrayIndexOutOfBoundsException {
        if (i > bArr.length) {
            throw new ArrayIndexOutOfBoundsException();
        }
        byte[][] bArr2 = {new byte[i], new byte[bArr.length - i]};
        System.arraycopy(bArr, 0, bArr2[0], 0, i);
        System.arraycopy(bArr, i, bArr2[1], 0, bArr.length - i);
        return bArr2;
    }

    /* renamed from: class, reason: not valid java name */
    public static byte[] m36269class(byte[] bArr, int i) {
        return m36270const(bArr, i, bArr.length);
    }

    /* renamed from: const, reason: not valid java name */
    public static byte[] m36270const(byte[] bArr, int i, int i2) {
        int i3 = i2 - i;
        byte[] bArr2 = new byte[i3];
        System.arraycopy(bArr, i, bArr2, 0, i3);
        return bArr2;
    }

    /* renamed from: do, reason: not valid java name */
    public static byte[] m36271do(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        byte[] bArr2 = new byte[bArr.length];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        return bArr2;
    }

    /* renamed from: else, reason: not valid java name */
    public static boolean m36272else(byte[] bArr, byte[] bArr2) {
        if (bArr == null) {
            return bArr2 == null;
        }
        if (bArr2 == null || bArr.length != bArr2.length) {
            return false;
        }
        boolean z = true;
        for (int length = bArr.length - 1; length >= 0; length--) {
            z &= bArr[length] == bArr2[length];
        }
        return z;
    }

    /* renamed from: final, reason: not valid java name */
    public static String m36273final(byte[] bArr) {
        String str = "";
        for (int i = 0; i < bArr.length; i++) {
            byte b = bArr[i];
            for (int i2 = 0; i2 < 8; i2++) {
                str = str + ((b >>> i2) & 1);
            }
            if (i != bArr.length - 1) {
                str = str + Cclass.f28652do;
            }
        }
        return str;
    }

    /* renamed from: for, reason: not valid java name */
    public static byte[] m36274for(byte[][] bArr) {
        int length = bArr[0].length;
        byte[] bArr2 = new byte[bArr.length * length];
        int i = 0;
        for (byte[] bArr3 : bArr) {
            System.arraycopy(bArr3, 0, bArr2, i, length);
            i += length;
        }
        return bArr2;
    }

    /* renamed from: goto, reason: not valid java name */
    public static boolean m36275goto(byte[][] bArr, byte[][] bArr2) {
        if (bArr.length != bArr2.length) {
            return false;
        }
        boolean zM36272else = true;
        for (int length = bArr.length - 1; length >= 0; length--) {
            zM36272else &= m36272else(bArr[length], bArr2[length]);
        }
        return zM36272else;
    }

    /* renamed from: if, reason: not valid java name */
    public static byte[] m36276if(byte[] bArr, byte[] bArr2) {
        byte[] bArr3 = new byte[bArr.length + bArr2.length];
        System.arraycopy(bArr, 0, bArr3, 0, bArr.length);
        System.arraycopy(bArr2, 0, bArr3, bArr.length, bArr2.length);
        return bArr3;
    }

    /* renamed from: import, reason: not valid java name */
    public static byte[] m36277import(byte[] bArr, byte[] bArr2) {
        byte[] bArr3 = new byte[bArr.length];
        for (int length = bArr.length - 1; length >= 0; length--) {
            bArr3[length] = (byte) (bArr[length] ^ bArr2[length]);
        }
        return bArr3;
    }

    /* renamed from: new, reason: not valid java name */
    public static int m36278new(byte[] bArr) {
        int i = 1;
        for (byte b : bArr) {
            i = (i * 31) + b;
        }
        return i;
    }

    /* renamed from: super, reason: not valid java name */
    public static char[] m36279super(byte[] bArr) {
        char[] cArr = new char[bArr.length];
        for (int i = 0; i < bArr.length; i++) {
            cArr[i] = (char) bArr[i];
        }
        return cArr;
    }

    /* renamed from: this, reason: not valid java name */
    public static boolean m36280this(byte[][][] bArr, byte[][][] bArr2) {
        if (bArr.length != bArr2.length) {
            return false;
        }
        boolean zM36272else = true;
        for (int length = bArr.length - 1; length >= 0; length--) {
            if (bArr[length].length != bArr2[length].length) {
                return false;
            }
            for (int length2 = bArr[length].length - 1; length2 >= 0; length2--) {
                zM36272else &= m36272else(bArr[length][length2], bArr2[length][length2]);
            }
        }
        return zM36272else;
    }

    /* renamed from: throw, reason: not valid java name */
    public static String m36281throw(byte[] bArr) {
        String str = "";
        for (int i = 0; i < bArr.length; i++) {
            StringBuilder sb = new StringBuilder();
            sb.append(str);
            char[] cArr = f32634do;
            sb.append(cArr[(bArr[i] >>> 4) & 15]);
            str = sb.toString() + cArr[bArr[i] & 15];
        }
        return str;
    }

    /* renamed from: try, reason: not valid java name */
    public static int m36282try(byte[][] bArr) {
        int iM36278new = 1;
        for (byte[] bArr2 : bArr) {
            iM36278new = (iM36278new * 31) + m36278new(bArr2);
        }
        return iM36278new;
    }

    /* renamed from: while, reason: not valid java name */
    public static String m36283while(byte[] bArr, String str, String str2) {
        String str3 = new String(str);
        for (int i = 0; i < bArr.length; i++) {
            StringBuilder sb = new StringBuilder();
            sb.append(str3);
            char[] cArr = f32634do;
            sb.append(cArr[(bArr[i] >>> 4) & 15]);
            str3 = sb.toString() + cArr[bArr[i] & 15];
            if (i < bArr.length - 1) {
                str3 = str3 + str2;
            }
        }
        return str3;
    }
}
