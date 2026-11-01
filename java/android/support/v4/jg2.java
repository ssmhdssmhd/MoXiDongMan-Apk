package android.support.v4;

import com.google.common.primitives.Cfinal;
import java.security.SecureRandom;

/* loaded from: classes3.dex */
public abstract class jg2 {

    /* renamed from: do, reason: not valid java name */
    public static final int f3102do = 32;

    /* renamed from: for, reason: not valid java name */
    private static final int f3103for = 486662;

    /* renamed from: if, reason: not valid java name */
    public static final int f3104if = 32;

    /* renamed from: new, reason: not valid java name */
    private static final int f3105new = 121666;

    /* renamed from: android.support.v4.jg2$do, reason: invalid class name */
    public static class Cdo {

        /* renamed from: do, reason: not valid java name */
        private static final Cdo f3106do = new Cdo();

        private Cdo() {
        }
    }

    /* renamed from: case, reason: not valid java name */
    private static void m3868case(int[] iArr, int[] iArr2) {
        int[] iArrM4666goto = lg2.m4666goto();
        int[] iArrM4666goto2 = lg2.m4666goto();
        lg2.m4670new(iArr, iArr2, iArrM4666goto, iArrM4666goto2);
        lg2.m4664finally(iArrM4666goto, iArrM4666goto);
        lg2.m4664finally(iArrM4666goto2, iArrM4666goto2);
        lg2.m4673public(iArrM4666goto, iArrM4666goto2, iArr);
        lg2.m4672private(iArrM4666goto, iArrM4666goto2, iArrM4666goto);
        lg2.m4669native(iArrM4666goto, f3105new, iArr2);
        lg2.m4660do(iArr2, iArrM4666goto2, iArr2);
        lg2.m4673public(iArr2, iArrM4666goto, iArr2);
    }

    /* renamed from: do, reason: not valid java name */
    public static boolean m3869do(byte[] bArr, int i, byte[] bArr2, int i2, byte[] bArr3, int i3) {
        m3872goto(bArr, i, bArr2, i2, bArr3, i3);
        return !q3.m6396try(bArr3, i3, 32);
    }

    /* renamed from: else, reason: not valid java name */
    public static void m3870else() {
        org.bouncycastle.math.ec.rfc8032.Cdo.m35519transient();
    }

    /* renamed from: for, reason: not valid java name */
    private static void m3871for(byte[] bArr, int i, int[] iArr) {
        for (int i2 = 0; i2 < 8; i2++) {
            iArr[i2] = m3873if(bArr, (i2 * 4) + i);
        }
        iArr[0] = iArr[0] & (-8);
        iArr[7] = iArr[7] & Integer.MAX_VALUE;
        iArr[7] = iArr[7] | 1073741824;
    }

    /* renamed from: goto, reason: not valid java name */
    public static void m3872goto(byte[] bArr, int i, byte[] bArr2, int i2, byte[] bArr3, int i3) {
        int[] iArr = new int[8];
        m3871for(bArr, i, iArr);
        int[] iArrM4666goto = lg2.m4666goto();
        lg2.m4655catch(bArr2, i2, iArrM4666goto);
        int[] iArrM4666goto2 = lg2.m4666goto();
        lg2.m4661else(iArrM4666goto, 0, iArrM4666goto2, 0);
        int[] iArrM4666goto3 = lg2.m4666goto();
        iArrM4666goto3[0] = 1;
        int[] iArrM4666goto4 = lg2.m4666goto();
        iArrM4666goto4[0] = 1;
        int[] iArrM4666goto5 = lg2.m4666goto();
        int[] iArrM4666goto6 = lg2.m4666goto();
        int[] iArrM4666goto7 = lg2.m4666goto();
        int i4 = wd.i2;
        int i5 = 1;
        while (true) {
            lg2.m4670new(iArrM4666goto4, iArrM4666goto5, iArrM4666goto6, iArrM4666goto4);
            lg2.m4670new(iArrM4666goto2, iArrM4666goto3, iArrM4666goto5, iArrM4666goto2);
            lg2.m4673public(iArrM4666goto6, iArrM4666goto2, iArrM4666goto6);
            lg2.m4673public(iArrM4666goto4, iArrM4666goto5, iArrM4666goto4);
            lg2.m4664finally(iArrM4666goto5, iArrM4666goto5);
            lg2.m4664finally(iArrM4666goto2, iArrM4666goto2);
            lg2.m4672private(iArrM4666goto5, iArrM4666goto2, iArrM4666goto7);
            lg2.m4669native(iArrM4666goto7, f3105new, iArrM4666goto3);
            lg2.m4660do(iArrM4666goto3, iArrM4666goto2, iArrM4666goto3);
            lg2.m4673public(iArrM4666goto3, iArrM4666goto7, iArrM4666goto3);
            lg2.m4673public(iArrM4666goto2, iArrM4666goto5, iArrM4666goto2);
            lg2.m4670new(iArrM4666goto6, iArrM4666goto4, iArrM4666goto4, iArrM4666goto5);
            lg2.m4664finally(iArrM4666goto4, iArrM4666goto4);
            lg2.m4664finally(iArrM4666goto5, iArrM4666goto5);
            lg2.m4673public(iArrM4666goto5, iArrM4666goto, iArrM4666goto5);
            i4--;
            int i6 = (iArr[i4 >>> 5] >>> (i4 & 31)) & 1;
            int i7 = i5 ^ i6;
            lg2.m4653break(i7, iArrM4666goto2, iArrM4666goto4);
            lg2.m4653break(i7, iArrM4666goto3, iArrM4666goto5);
            if (i4 < 3) {
                break;
            } else {
                i5 = i6;
            }
        }
        for (int i8 = 0; i8 < 3; i8++) {
            m3868case(iArrM4666goto2, iArrM4666goto3);
        }
        lg2.m4682while(iArrM4666goto3, iArrM4666goto3);
        lg2.m4673public(iArrM4666goto2, iArrM4666goto3, iArrM4666goto2);
        lg2.m4675static(iArrM4666goto2);
        lg2.m4663final(iArrM4666goto2, bArr3, i3);
    }

    /* renamed from: if, reason: not valid java name */
    private static int m3873if(byte[] bArr, int i) {
        int i2 = bArr[i] & 255;
        int i3 = i + 1;
        int i4 = i2 | ((bArr[i3] & 255) << 8);
        int i5 = i3 + 1;
        return (bArr[i5 + 1] << t3.f6397package) | i4 | ((bArr[i5] & 255) << 16);
    }

    /* renamed from: new, reason: not valid java name */
    public static void m3874new(SecureRandom secureRandom, byte[] bArr) {
        secureRandom.nextBytes(bArr);
        bArr[0] = (byte) (bArr[0] & 248);
        bArr[31] = (byte) (bArr[31] & Byte.MAX_VALUE);
        bArr[31] = (byte) (bArr[31] | Cfinal.f15506do);
    }

    /* renamed from: this, reason: not valid java name */
    public static void m3875this(byte[] bArr, int i, byte[] bArr2, int i2) {
        int[] iArrM4666goto = lg2.m4666goto();
        int[] iArrM4666goto2 = lg2.m4666goto();
        org.bouncycastle.math.ec.rfc8032.Cdo.b(Cdo.f3106do, bArr, i, iArrM4666goto, iArrM4666goto2);
        lg2.m4670new(iArrM4666goto2, iArrM4666goto, iArrM4666goto, iArrM4666goto2);
        lg2.m4682while(iArrM4666goto2, iArrM4666goto2);
        lg2.m4673public(iArrM4666goto, iArrM4666goto2, iArrM4666goto);
        lg2.m4675static(iArrM4666goto);
        lg2.m4663final(iArrM4666goto, bArr2, i2);
    }

    /* renamed from: try, reason: not valid java name */
    public static void m3876try(byte[] bArr, int i, byte[] bArr2, int i2) {
        m3875this(bArr, i, bArr2, i2);
    }
}
