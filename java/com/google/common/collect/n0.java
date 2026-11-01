package com.google.common.collect;

import android.support.v4.b51;
import android.support.v4.ki0;

@ki0
/* loaded from: classes2.dex */
final class n0 {

    /* renamed from: do, reason: not valid java name */
    private static final long f14477do = -862048943;

    /* renamed from: for, reason: not valid java name */
    private static final int f14478for = 1073741824;

    /* renamed from: if, reason: not valid java name */
    private static final long f14479if = 461845907;

    private n0() {
    }

    /* renamed from: do, reason: not valid java name */
    public static int m16083do(int i, double d) {
        int iMax = Math.max(i, 2);
        int iHighestOneBit = Integer.highestOneBit(iMax);
        double d2 = iHighestOneBit;
        Double.isNaN(d2);
        if (iMax <= ((int) (d * d2))) {
            return iHighestOneBit;
        }
        int i2 = iHighestOneBit << 1;
        if (i2 > 0) {
            return i2;
        }
        return 1073741824;
    }

    /* renamed from: for, reason: not valid java name */
    public static int m16084for(int i) {
        return (int) (Integer.rotateLeft((int) (i * f14477do), 15) * f14479if);
    }

    /* renamed from: if, reason: not valid java name */
    public static boolean m16085if(int i, int i2, double d) {
        double d2 = i;
        double d3 = i2;
        Double.isNaN(d3);
        return d2 > d * d3 && i2 < 1073741824;
    }

    /* renamed from: new, reason: not valid java name */
    public static int m16086new(@b51 Object obj) {
        return m16084for(obj == null ? 0 : obj.hashCode());
    }
}
