package android.support.v4;

import org.apache.commons.lang3.Cclass;
import org.bouncycastle.pqc.math.linearalgebra.Cdo;
import org.bouncycastle.pqc.math.linearalgebra.Cif;

/* loaded from: classes3.dex */
public final class fn0 {
    private fn0() {
    }

    /* renamed from: case, reason: not valid java name */
    public static void m2357case(int[] iArr, int i, int i2) {
        if (i2 > i) {
            int iM2363new = m2363new(iArr, i, i2, i2);
            m2357case(iArr, i, iM2363new - 1);
            m2357case(iArr, iM2363new + 1, i2);
        }
    }

    /* renamed from: do, reason: not valid java name */
    public static int[] m2358do(int[] iArr) {
        int[] iArr2 = new int[iArr.length];
        System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
        return iArr2;
    }

    /* renamed from: else, reason: not valid java name */
    public static int[] m2359else(int[] iArr, int i, int i2) {
        int i3 = i2 - i;
        int[] iArr2 = new int[i3];
        System.arraycopy(iArr, i, iArr2, 0, i3);
        return iArr2;
    }

    /* renamed from: for, reason: not valid java name */
    public static void m2360for(int[] iArr, int i) {
        for (int length = iArr.length - 1; length >= 0; length--) {
            iArr[length] = i;
        }
    }

    /* renamed from: goto, reason: not valid java name */
    public static String m2361goto(int[] iArr) {
        return Cif.m36281throw(Cdo.m36191catch(iArr));
    }

    /* renamed from: if, reason: not valid java name */
    public static boolean m2362if(int[] iArr, int[] iArr2) {
        if (iArr.length != iArr2.length) {
            return false;
        }
        boolean z = true;
        for (int length = iArr.length - 1; length >= 0; length--) {
            z &= iArr[length] == iArr2[length];
        }
        return z;
    }

    /* renamed from: new, reason: not valid java name */
    private static int m2363new(int[] iArr, int i, int i2, int i3) {
        int i4 = iArr[i3];
        iArr[i3] = iArr[i2];
        iArr[i2] = i4;
        int i5 = i;
        while (i < i2) {
            if (iArr[i] <= i4) {
                int i6 = iArr[i5];
                iArr[i5] = iArr[i];
                iArr[i] = i6;
                i5++;
            }
            i++;
        }
        int i7 = iArr[i5];
        iArr[i5] = iArr[i2];
        iArr[i2] = i7;
        return i5;
    }

    /* renamed from: this, reason: not valid java name */
    public static String m2364this(int[] iArr) {
        String str = "";
        for (int i : iArr) {
            str = str + i + Cclass.f28652do;
        }
        return str;
    }

    /* renamed from: try, reason: not valid java name */
    public static void m2365try(int[] iArr) {
        m2357case(iArr, 0, iArr.length - 1);
    }
}
