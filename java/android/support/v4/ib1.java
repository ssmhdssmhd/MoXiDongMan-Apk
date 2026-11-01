package android.support.v4;

/* loaded from: classes3.dex */
public abstract class ib1 {
    /* renamed from: abstract, reason: not valid java name */
    public static byte[] m3346abstract(long[] jArr) {
        byte[] bArr = new byte[jArr.length * 8];
        m3365package(jArr, bArr, 0);
        return bArr;
    }

    /* renamed from: break, reason: not valid java name */
    public static void m3347break(int i, byte[] bArr, int i2) {
        bArr[i2] = (byte) i;
        int i3 = i2 + 1;
        bArr[i3] = (byte) (i >>> 8);
        int i4 = i3 + 1;
        bArr[i4] = (byte) (i >>> 16);
        bArr[i4 + 1] = (byte) (i >>> 24);
    }

    /* renamed from: case, reason: not valid java name */
    public static void m3348case(int i, byte[] bArr, int i2) {
        bArr[i2] = (byte) (i >>> 24);
        int i3 = i2 + 1;
        bArr[i3] = (byte) (i >>> 16);
        int i4 = i3 + 1;
        bArr[i4] = (byte) (i >>> 8);
        bArr[i4 + 1] = (byte) i;
    }

    /* renamed from: catch, reason: not valid java name */
    public static void m3349catch(int[] iArr, byte[] bArr, int i) {
        for (int i2 : iArr) {
            m3347break(i2, bArr, i);
            i += 4;
        }
    }

    /* renamed from: class, reason: not valid java name */
    public static byte[] m3350class(int i) {
        byte[] bArr = new byte[4];
        m3347break(i, bArr, 0);
        return bArr;
    }

    /* renamed from: const, reason: not valid java name */
    public static byte[] m3351const(int[] iArr) {
        byte[] bArr = new byte[iArr.length * 4];
        m3349catch(iArr, bArr, 0);
        return bArr;
    }

    /* renamed from: continue, reason: not valid java name */
    public static void m3352continue(short s, byte[] bArr, int i) {
        bArr[i] = (byte) s;
        bArr[i + 1] = (byte) (s >>> 8);
    }

    /* renamed from: default, reason: not valid java name */
    public static byte[] m3353default(long[] jArr) {
        byte[] bArr = new byte[jArr.length * 8];
        m3372switch(jArr, bArr, 0);
        return bArr;
    }

    /* renamed from: do, reason: not valid java name */
    public static int m3354do(byte[] bArr, int i) {
        int i2 = bArr[i] << t3.f6397package;
        int i3 = i + 1;
        int i4 = i2 | ((bArr[i3] & 255) << 16);
        int i5 = i3 + 1;
        return (bArr[i5 + 1] & 255) | i4 | ((bArr[i5] & 255) << 8);
    }

    /* renamed from: else, reason: not valid java name */
    public static void m3355else(int[] iArr, byte[] bArr, int i) {
        for (int i2 : iArr) {
            m3348case(i2, bArr, i);
            i += 4;
        }
    }

    /* renamed from: extends, reason: not valid java name */
    public static void m3356extends(long j, byte[] bArr, int i) {
        m3347break((int) (4294967295L & j), bArr, i);
        m3347break((int) (j >>> 32), bArr, i + 4);
    }

    /* renamed from: final, reason: not valid java name */
    public static int m3357final(byte[] bArr, int i) {
        int i2 = bArr[i] & 255;
        int i3 = i + 1;
        int i4 = i2 | ((bArr[i3] & 255) << 8);
        int i5 = i3 + 1;
        return (bArr[i5 + 1] << t3.f6397package) | i4 | ((bArr[i5] & 255) << 16);
    }

    /* renamed from: finally, reason: not valid java name */
    public static void m3358finally(long[] jArr, int i, int i2, byte[] bArr, int i3) {
        for (int i4 = 0; i4 < i2; i4++) {
            m3356extends(jArr[i + i4], bArr, i3);
            i3 += 8;
        }
    }

    /* renamed from: for, reason: not valid java name */
    public static long m3359for(byte[] bArr, int i) {
        return (m3354do(bArr, i + 4) & 4294967295L) | ((m3354do(bArr, i) & 4294967295L) << 32);
    }

    /* renamed from: goto, reason: not valid java name */
    public static byte[] m3360goto(int i) {
        byte[] bArr = new byte[4];
        m3348case(i, bArr, 0);
        return bArr;
    }

    /* renamed from: if, reason: not valid java name */
    public static void m3361if(byte[] bArr, int i, int[] iArr) {
        for (int i2 = 0; i2 < iArr.length; i2++) {
            iArr[i2] = m3354do(bArr, i);
            i += 4;
        }
    }

    /* renamed from: import, reason: not valid java name */
    public static long m3362import(byte[] bArr, int i) {
        return ((m3357final(bArr, i + 4) & 4294967295L) << 32) | (4294967295L & m3357final(bArr, i));
    }

    /* renamed from: native, reason: not valid java name */
    public static void m3363native(byte[] bArr, int i, long[] jArr) {
        for (int i2 = 0; i2 < jArr.length; i2++) {
            jArr[i2] = m3362import(bArr, i);
            i += 8;
        }
    }

    /* renamed from: new, reason: not valid java name */
    public static void m3364new(byte[] bArr, int i, long[] jArr) {
        for (int i2 = 0; i2 < jArr.length; i2++) {
            jArr[i2] = m3359for(bArr, i);
            i += 8;
        }
    }

    /* renamed from: package, reason: not valid java name */
    public static void m3365package(long[] jArr, byte[] bArr, int i) {
        for (long j : jArr) {
            m3356extends(j, bArr, i);
            i += 8;
        }
    }

    /* renamed from: private, reason: not valid java name */
    public static byte[] m3366private(long j) {
        byte[] bArr = new byte[8];
        m3356extends(j, bArr, 0);
        return bArr;
    }

    /* renamed from: public, reason: not valid java name */
    public static void m3367public(byte[] bArr, int i, long[] jArr, int i2, int i3) {
        for (int i4 = 0; i4 < i3; i4++) {
            jArr[i2 + i4] = m3362import(bArr, i);
            i += 8;
        }
    }

    /* renamed from: return, reason: not valid java name */
    public static short m3368return(byte[] bArr, int i) {
        return (short) (((bArr[i + 1] & 255) << 8) | (bArr[i] & 255));
    }

    /* renamed from: static, reason: not valid java name */
    public static void m3369static(long j, byte[] bArr, int i) {
        m3348case((int) (j >>> 32), bArr, i);
        m3348case((int) (j & 4294967295L), bArr, i + 4);
    }

    /* renamed from: strictfp, reason: not valid java name */
    public static byte[] m3370strictfp(short s) {
        byte[] bArr = new byte[2];
        m3352continue(s, bArr, 0);
        return bArr;
    }

    /* renamed from: super, reason: not valid java name */
    public static void m3371super(byte[] bArr, int i, int[] iArr) {
        for (int i2 = 0; i2 < iArr.length; i2++) {
            iArr[i2] = m3357final(bArr, i);
            i += 4;
        }
    }

    /* renamed from: switch, reason: not valid java name */
    public static void m3372switch(long[] jArr, byte[] bArr, int i) {
        for (long j : jArr) {
            m3369static(j, bArr, i);
            i += 8;
        }
    }

    /* renamed from: this, reason: not valid java name */
    public static byte[] m3373this(int[] iArr) {
        byte[] bArr = new byte[iArr.length * 4];
        m3355else(iArr, bArr, 0);
        return bArr;
    }

    /* renamed from: throw, reason: not valid java name */
    public static void m3374throw(byte[] bArr, int i, int[] iArr, int i2, int i3) {
        for (int i4 = 0; i4 < i3; i4++) {
            iArr[i2 + i4] = m3357final(bArr, i);
            i += 4;
        }
    }

    /* renamed from: throws, reason: not valid java name */
    public static byte[] m3375throws(long j) {
        byte[] bArr = new byte[8];
        m3369static(j, bArr, 0);
        return bArr;
    }

    /* renamed from: try, reason: not valid java name */
    public static short m3376try(byte[] bArr, int i) {
        return (short) ((bArr[i + 1] & 255) | ((bArr[i] & 255) << 8));
    }

    /* renamed from: while, reason: not valid java name */
    public static int[] m3377while(byte[] bArr, int i, int i2) {
        int[] iArr = new int[i2];
        for (int i3 = 0; i3 < i2; i3++) {
            iArr[i3] = m3357final(bArr, i);
            i += 4;
        }
        return iArr;
    }
}
