package android.support.v4;

/* loaded from: classes3.dex */
public final class lt0 {
    private lt0() {
    }

    /* renamed from: break, reason: not valid java name */
    public static byte[] m4760break(int[] iArr, int i) {
        int length = iArr.length;
        byte[] bArr = new byte[i];
        int i2 = 0;
        int i3 = 0;
        while (i2 <= length - 2) {
            m4763do(iArr[i2], bArr, i3);
            i2++;
            i3 += 4;
        }
        m4767if(iArr[length - 1], bArr, i3, i - i3);
        return bArr;
    }

    /* renamed from: case, reason: not valid java name */
    public static int m4761case(byte[] bArr) {
        return ((bArr[3] & 255) << 24) | (bArr[0] & 255) | ((bArr[1] & 255) << 8) | ((bArr[2] & 255) << 16);
    }

    /* renamed from: catch, reason: not valid java name */
    public static int[] m4762catch(byte[] bArr) {
        int length = (bArr.length + 3) / 4;
        int length2 = bArr.length & 3;
        int[] iArr = new int[length];
        int i = 0;
        int i2 = 0;
        while (i <= length - 2) {
            iArr[i] = m4764else(bArr, i2);
            i++;
            i2 += 4;
        }
        int i3 = length - 1;
        if (length2 != 0) {
            iArr[i3] = m4766goto(bArr, i2, length2);
        } else {
            iArr[i3] = m4764else(bArr, i2);
        }
        return iArr;
    }

    /* renamed from: do, reason: not valid java name */
    public static void m4763do(int i, byte[] bArr, int i2) {
        int i3 = i2 + 1;
        bArr[i2] = (byte) i;
        int i4 = i3 + 1;
        bArr[i3] = (byte) (i >>> 8);
        bArr[i4] = (byte) (i >>> 16);
        bArr[i4 + 1] = (byte) (i >>> 24);
    }

    /* renamed from: else, reason: not valid java name */
    public static int m4764else(byte[] bArr, int i) {
        int i2 = i + 1;
        int i3 = i2 + 1;
        int i4 = (bArr[i] & 255) | ((bArr[i2] & 255) << 8);
        int i5 = i3 + 1;
        return ((bArr[i5] & 255) << 24) | i4 | ((bArr[i3] & 255) << 16);
    }

    /* renamed from: for, reason: not valid java name */
    public static void m4765for(long j, byte[] bArr, int i) {
        int i2 = i + 1;
        bArr[i] = (byte) j;
        int i3 = i2 + 1;
        bArr[i2] = (byte) (j >>> 8);
        int i4 = i3 + 1;
        bArr[i3] = (byte) (j >>> 16);
        int i5 = i4 + 1;
        bArr[i4] = (byte) (j >>> 24);
        int i6 = i5 + 1;
        bArr[i5] = (byte) (j >>> 32);
        int i7 = i6 + 1;
        bArr[i6] = (byte) (j >>> 40);
        bArr[i7] = (byte) (j >>> 48);
        bArr[i7 + 1] = (byte) (j >>> 56);
    }

    /* renamed from: goto, reason: not valid java name */
    public static int m4766goto(byte[] bArr, int i, int i2) {
        int i3 = 0;
        for (int i4 = i2 - 1; i4 >= 0; i4--) {
            i3 |= (bArr[i + i4] & 255) << (i4 * 8);
        }
        return i3;
    }

    /* renamed from: if, reason: not valid java name */
    public static void m4767if(int i, byte[] bArr, int i2, int i3) {
        for (int i4 = i3 - 1; i4 >= 0; i4--) {
            bArr[i2 + i4] = (byte) (i >>> (i4 * 8));
        }
    }

    /* renamed from: new, reason: not valid java name */
    public static byte[] m4768new(int i) {
        return new byte[]{(byte) i, (byte) (i >>> 8), (byte) (i >>> 16), (byte) (i >>> 24)};
    }

    /* renamed from: this, reason: not valid java name */
    public static long m4769this(byte[] bArr, int i) {
        long j = bArr[i] & 255;
        long j2 = j | ((bArr[r0] & 255) << 8);
        long j3 = j2 | ((bArr[r8] & 255) << 16);
        long j4 = j3 | ((bArr[r0] & 255) << 24);
        long j5 = j4 | ((bArr[r8] & 255) << 32);
        long j6 = j5 | ((bArr[r0] & 255) << 40);
        int i2 = i + 1 + 1 + 1 + 1 + 1 + 1 + 1;
        return ((bArr[i2] & 255) << 56) | j6 | ((bArr[r8] & 255) << 48);
    }

    /* renamed from: try, reason: not valid java name */
    public static byte[] m4770try(long j) {
        return new byte[]{(byte) j, (byte) (j >>> 8), (byte) (j >>> 16), (byte) (j >>> 24), (byte) (j >>> 32), (byte) (j >>> 40), (byte) (j >>> 48), (byte) (j >>> 56)};
    }
}
