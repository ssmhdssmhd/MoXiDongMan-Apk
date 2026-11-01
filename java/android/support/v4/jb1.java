package android.support.v4;

/* loaded from: classes3.dex */
public abstract class jb1 {
    /* renamed from: break, reason: not valid java name */
    public static void m3797break(int[] iArr, byte[] bArr, int i) {
        for (int i2 : iArr) {
            m3817this(i2, bArr, i);
            i += 4;
        }
    }

    /* renamed from: case, reason: not valid java name */
    public static void m3798case(int[] iArr, byte[] bArr, int i) {
        for (int i2 : iArr) {
            m3820try(i2, bArr, i);
            i += 4;
        }
    }

    /* renamed from: catch, reason: not valid java name */
    public static byte[] m3799catch(int i) {
        byte[] bArr = new byte[4];
        m3817this(i, bArr, 0);
        return bArr;
    }

    /* renamed from: class, reason: not valid java name */
    public static byte[] m3800class(int[] iArr) {
        byte[] bArr = new byte[iArr.length * 4];
        m3797break(iArr, bArr, 0);
        return bArr;
    }

    /* renamed from: const, reason: not valid java name */
    public static int m3801const(byte[] bArr, int i) {
        int i2 = bArr[i] & 255;
        int i3 = i + 1;
        int i4 = i2 | ((bArr[i3] & 255) << 8);
        int i5 = i3 + 1;
        return (bArr[i5 + 1] << t3.f6397package) | i4 | ((bArr[i5] & 255) << 16);
    }

    /* renamed from: default, reason: not valid java name */
    public static byte[] m3802default(long[] jArr) {
        byte[] bArr = new byte[jArr.length * 8];
        m3816switch(jArr, bArr, 0);
        return bArr;
    }

    /* renamed from: do, reason: not valid java name */
    public static int m3803do(byte[] bArr, int i) {
        int i2 = bArr[i] << t3.f6397package;
        int i3 = i + 1;
        int i4 = i2 | ((bArr[i3] & 255) << 16);
        int i5 = i3 + 1;
        return (bArr[i5 + 1] & 255) | i4 | ((bArr[i5] & 255) << 8);
    }

    /* renamed from: else, reason: not valid java name */
    public static byte[] m3804else(int i) {
        byte[] bArr = new byte[4];
        m3820try(i, bArr, 0);
        return bArr;
    }

    /* renamed from: final, reason: not valid java name */
    public static void m3805final(byte[] bArr, int i, int[] iArr) {
        for (int i2 = 0; i2 < iArr.length; i2++) {
            iArr[i2] = m3801const(bArr, i);
            i += 4;
        }
    }

    /* renamed from: for, reason: not valid java name */
    public static long m3806for(byte[] bArr, int i) {
        return (m3803do(bArr, i + 4) & 4294967295L) | ((m3803do(bArr, i) & 4294967295L) << 32);
    }

    /* renamed from: goto, reason: not valid java name */
    public static byte[] m3807goto(int[] iArr) {
        byte[] bArr = new byte[iArr.length * 4];
        m3798case(iArr, bArr, 0);
        return bArr;
    }

    /* renamed from: if, reason: not valid java name */
    public static void m3808if(byte[] bArr, int i, int[] iArr) {
        for (int i2 = 0; i2 < iArr.length; i2++) {
            iArr[i2] = m3803do(bArr, i);
            i += 4;
        }
    }

    /* renamed from: import, reason: not valid java name */
    public static void m3809import(long j, byte[] bArr, int i) {
        m3820try((int) (j >>> 32), bArr, i);
        m3820try((int) (j & 4294967295L), bArr, i + 4);
    }

    /* renamed from: native, reason: not valid java name */
    public static void m3810native(long[] jArr, byte[] bArr, int i) {
        for (long j : jArr) {
            m3809import(j, bArr, i);
            i += 8;
        }
    }

    /* renamed from: new, reason: not valid java name */
    public static void m3811new(byte[] bArr, int i, long[] jArr) {
        for (int i2 = 0; i2 < jArr.length; i2++) {
            jArr[i2] = m3806for(bArr, i);
            i += 8;
        }
    }

    /* renamed from: public, reason: not valid java name */
    public static byte[] m3812public(long j) {
        byte[] bArr = new byte[8];
        m3809import(j, bArr, 0);
        return bArr;
    }

    /* renamed from: return, reason: not valid java name */
    public static byte[] m3813return(long[] jArr) {
        byte[] bArr = new byte[jArr.length * 8];
        m3810native(jArr, bArr, 0);
        return bArr;
    }

    /* renamed from: static, reason: not valid java name */
    public static void m3814static(long j, byte[] bArr, int i) {
        m3817this((int) (4294967295L & j), bArr, i);
        m3817this((int) (j >>> 32), bArr, i + 4);
    }

    /* renamed from: super, reason: not valid java name */
    public static void m3815super(byte[] bArr, int i, int[] iArr, int i2, int i3) {
        for (int i4 = 0; i4 < i3; i4++) {
            iArr[i2 + i4] = m3801const(bArr, i);
            i += 4;
        }
    }

    /* renamed from: switch, reason: not valid java name */
    public static void m3816switch(long[] jArr, byte[] bArr, int i) {
        for (long j : jArr) {
            m3814static(j, bArr, i);
            i += 8;
        }
    }

    /* renamed from: this, reason: not valid java name */
    public static void m3817this(int i, byte[] bArr, int i2) {
        bArr[i2] = (byte) i;
        int i3 = i2 + 1;
        bArr[i3] = (byte) (i >>> 8);
        int i4 = i3 + 1;
        bArr[i4] = (byte) (i >>> 16);
        bArr[i4 + 1] = (byte) (i >>> 24);
    }

    /* renamed from: throw, reason: not valid java name */
    public static long m3818throw(byte[] bArr, int i) {
        return ((m3801const(bArr, i + 4) & 4294967295L) << 32) | (4294967295L & m3801const(bArr, i));
    }

    /* renamed from: throws, reason: not valid java name */
    public static byte[] m3819throws(long j) {
        byte[] bArr = new byte[8];
        m3814static(j, bArr, 0);
        return bArr;
    }

    /* renamed from: try, reason: not valid java name */
    public static void m3820try(int i, byte[] bArr, int i2) {
        bArr[i2] = (byte) (i >>> 24);
        int i3 = i2 + 1;
        bArr[i3] = (byte) (i >>> 16);
        int i4 = i3 + 1;
        bArr[i4] = (byte) (i >>> 8);
        bArr[i4 + 1] = (byte) i;
    }

    /* renamed from: while, reason: not valid java name */
    public static void m3821while(byte[] bArr, int i, long[] jArr) {
        for (int i2 = 0; i2 < jArr.length; i2++) {
            jArr[i2] = m3818throw(bArr, i);
            i += 8;
        }
    }
}
