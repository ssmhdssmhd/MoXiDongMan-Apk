package android.support.v4;

import java.security.SecureRandom;
import org.bouncycastle.math.ec.rfc8032.Cif;

/* loaded from: classes3.dex */
public abstract class og2 {

    /* renamed from: do, reason: not valid java name */
    public static final int f4608do = 56;

    /* renamed from: for, reason: not valid java name */
    private static final int f4609for = 156326;

    /* renamed from: if, reason: not valid java name */
    public static final int f4610if = 56;

    /* renamed from: new, reason: not valid java name */
    private static final int f4611new = 39082;

    /* renamed from: android.support.v4.og2$do, reason: invalid class name */
    public static class Cdo {

        /* renamed from: do, reason: not valid java name */
        private static final Cdo f4612do = new Cdo();

        private Cdo() {
        }
    }

    /* renamed from: case, reason: not valid java name */
    private static void m5641case(int[] iArr, int[] iArr2) {
        int[] iArrM6566else = qg2.m6566else();
        int[] iArrM6566else2 = qg2.m6566else();
        qg2.m6565do(iArr, iArr2, iArrM6566else);
        qg2.m6557abstract(iArr, iArr2, iArrM6566else2);
        qg2.m6576package(iArrM6566else, iArrM6566else);
        qg2.m6576package(iArrM6566else2, iArrM6566else2);
        qg2.m6579return(iArrM6566else, iArrM6566else2, iArr);
        qg2.m6557abstract(iArrM6566else, iArrM6566else2, iArrM6566else);
        qg2.m6578public(iArrM6566else, f4611new, iArr2);
        qg2.m6565do(iArr2, iArrM6566else2, iArr2);
        qg2.m6579return(iArr2, iArrM6566else, iArr2);
    }

    /* renamed from: do, reason: not valid java name */
    public static boolean m5642do(byte[] bArr, int i, byte[] bArr2, int i2, byte[] bArr3, int i3) {
        m5645goto(bArr, i, bArr2, i2, bArr3, i3);
        return !q3.m6396try(bArr3, i3, 56);
    }

    /* renamed from: else, reason: not valid java name */
    public static void m5643else() {
        Cif.m35560volatile();
    }

    /* renamed from: for, reason: not valid java name */
    private static void m5644for(byte[] bArr, int i, int[] iArr) {
        for (int i2 = 0; i2 < 14; i2++) {
            iArr[i2] = m5646if(bArr, (i2 * 4) + i);
        }
        iArr[0] = iArr[0] & (-4);
        iArr[13] = iArr[13] | Integer.MIN_VALUE;
    }

    /* renamed from: goto, reason: not valid java name */
    public static void m5645goto(byte[] bArr, int i, byte[] bArr2, int i2, byte[] bArr3, int i3) {
        int[] iArr = new int[14];
        m5644for(bArr, i, iArr);
        int[] iArrM6566else = qg2.m6566else();
        qg2.m6558break(bArr2, i2, iArrM6566else);
        int[] iArrM6566else2 = qg2.m6566else();
        qg2.m6559case(iArrM6566else, 0, iArrM6566else2, 0);
        int[] iArrM6566else3 = qg2.m6566else();
        iArrM6566else3[0] = 1;
        int[] iArrM6566else4 = qg2.m6566else();
        iArrM6566else4[0] = 1;
        int[] iArrM6566else5 = qg2.m6566else();
        int[] iArrM6566else6 = qg2.m6566else();
        int[] iArrM6566else7 = qg2.m6566else();
        int i4 = 447;
        int i5 = 1;
        while (true) {
            qg2.m6565do(iArrM6566else4, iArrM6566else5, iArrM6566else6);
            qg2.m6557abstract(iArrM6566else4, iArrM6566else5, iArrM6566else4);
            qg2.m6565do(iArrM6566else2, iArrM6566else3, iArrM6566else5);
            qg2.m6557abstract(iArrM6566else2, iArrM6566else3, iArrM6566else2);
            qg2.m6579return(iArrM6566else6, iArrM6566else2, iArrM6566else6);
            qg2.m6579return(iArrM6566else4, iArrM6566else5, iArrM6566else4);
            qg2.m6576package(iArrM6566else5, iArrM6566else5);
            qg2.m6576package(iArrM6566else2, iArrM6566else2);
            qg2.m6557abstract(iArrM6566else5, iArrM6566else2, iArrM6566else7);
            qg2.m6578public(iArrM6566else7, f4611new, iArrM6566else3);
            qg2.m6565do(iArrM6566else3, iArrM6566else2, iArrM6566else3);
            qg2.m6579return(iArrM6566else3, iArrM6566else7, iArrM6566else3);
            qg2.m6579return(iArrM6566else2, iArrM6566else5, iArrM6566else2);
            qg2.m6557abstract(iArrM6566else6, iArrM6566else4, iArrM6566else5);
            qg2.m6565do(iArrM6566else6, iArrM6566else4, iArrM6566else4);
            qg2.m6576package(iArrM6566else4, iArrM6566else4);
            qg2.m6576package(iArrM6566else5, iArrM6566else5);
            qg2.m6579return(iArrM6566else5, iArrM6566else, iArrM6566else5);
            i4--;
            int i6 = (iArr[i4 >>> 5] >>> (i4 & 31)) & 1;
            int i7 = i5 ^ i6;
            qg2.m6584this(i7, iArrM6566else2, iArrM6566else4);
            qg2.m6584this(i7, iArrM6566else3, iArrM6566else5);
            if (i4 < 2) {
                break;
            } else {
                i5 = i6;
            }
        }
        for (int i8 = 0; i8 < 2; i8++) {
            m5641case(iArrM6566else2, iArrM6566else3);
        }
        qg2.m6573import(iArrM6566else3, iArrM6566else3);
        qg2.m6579return(iArrM6566else2, iArrM6566else3, iArrM6566else2);
        qg2.m6583switch(iArrM6566else2);
        qg2.m6568final(iArrM6566else2, bArr3, i3);
    }

    /* renamed from: if, reason: not valid java name */
    private static int m5646if(byte[] bArr, int i) {
        int i2 = bArr[i] & 255;
        int i3 = i + 1;
        int i4 = i2 | ((bArr[i3] & 255) << 8);
        int i5 = i3 + 1;
        return (bArr[i5 + 1] << t3.f6397package) | i4 | ((bArr[i5] & 255) << 16);
    }

    /* renamed from: new, reason: not valid java name */
    public static void m5647new(SecureRandom secureRandom, byte[] bArr) {
        secureRandom.nextBytes(bArr);
        bArr[0] = (byte) (bArr[0] & 252);
        bArr[55] = (byte) (bArr[55] | 128);
    }

    /* renamed from: this, reason: not valid java name */
    public static void m5648this(byte[] bArr, int i, byte[] bArr2, int i2) {
        int[] iArrM6566else = qg2.m6566else();
        int[] iArrM6566else2 = qg2.m6566else();
        Cif.m35541instanceof(Cdo.f4612do, bArr, i, iArrM6566else, iArrM6566else2);
        qg2.m6573import(iArrM6566else, iArrM6566else);
        qg2.m6579return(iArrM6566else, iArrM6566else2, iArrM6566else);
        qg2.m6576package(iArrM6566else, iArrM6566else);
        qg2.m6583switch(iArrM6566else);
        qg2.m6568final(iArrM6566else, bArr2, i2);
    }

    /* renamed from: try, reason: not valid java name */
    public static void m5649try(byte[] bArr, int i, byte[] bArr2, int i2) {
        m5648this(bArr, i, bArr2, i2);
    }
}
