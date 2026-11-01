package com.google.common.base;

import android.support.v4.af2;
import android.support.v4.li0;
import com.google.common.base.Cnew;
import java.util.BitSet;

@li0
/* renamed from: com.google.common.base.static, reason: invalid class name */
/* loaded from: classes.dex */
final class Cstatic extends Cnew.Cstatic {

    /* renamed from: case, reason: not valid java name */
    public static final int f13721case = 1023;

    /* renamed from: else, reason: not valid java name */
    private static final int f13722else = -862048943;

    /* renamed from: goto, reason: not valid java name */
    private static final int f13723goto = 461845907;

    /* renamed from: this, reason: not valid java name */
    private static final double f13724this = 0.5d;

    /* renamed from: for, reason: not valid java name */
    private final char[] f13725for;

    /* renamed from: new, reason: not valid java name */
    private final boolean f13726new;

    /* renamed from: try, reason: not valid java name */
    private final long f13727try;

    private Cstatic(char[] cArr, long j, boolean z, String str) {
        super(str);
        this.f13725for = cArr;
        this.f13727try = j;
        this.f13726new = z;
    }

    private boolean l(int i) {
        return 1 == ((this.f13727try >> i) & 1);
    }

    @af2
    public static int m(int i) {
        if (i == 1) {
            return 2;
        }
        int iHighestOneBit = Integer.highestOneBit(i - 1) << 1;
        while (true) {
            double d = iHighestOneBit;
            Double.isNaN(d);
            if (d * f13724this >= i) {
                return iHighestOneBit;
            }
            iHighestOneBit <<= 1;
        }
    }

    public static Cnew n(BitSet bitSet, String str) {
        int i;
        int iCardinality = bitSet.cardinality();
        boolean z = bitSet.get(0);
        int iM = m(iCardinality);
        char[] cArr = new char[iM];
        int i2 = iM - 1;
        int iNextSetBit = bitSet.nextSetBit(0);
        long j = 0;
        while (iNextSetBit != -1) {
            long j2 = (1 << iNextSetBit) | j;
            int iO = o(iNextSetBit);
            while (true) {
                i = iO & i2;
                if (cArr[i] == 0) {
                    break;
                }
                iO = i + 1;
            }
            cArr[i] = (char) iNextSetBit;
            iNextSetBit = bitSet.nextSetBit(iNextSetBit + 1);
            j = j2;
        }
        return new Cstatic(cArr, j, z, str);
    }

    public static int o(int i) {
        return Integer.rotateLeft(i * f13722else, 15) * f13723goto;
    }

    @Override // com.google.common.base.Cnew
    public void d(BitSet bitSet) {
        if (this.f13726new) {
            bitSet.set(0);
        }
        for (char c : this.f13725for) {
            if (c != 0) {
                bitSet.set(c);
            }
        }
    }

    @Override // com.google.common.base.Cnew
    /* renamed from: package */
    public boolean mo15151package(char c) {
        if (c == 0) {
            return this.f13726new;
        }
        if (!l(c)) {
            return false;
        }
        int length = this.f13725for.length - 1;
        int iO = o(c) & length;
        int i = iO;
        do {
            char[] cArr = this.f13725for;
            if (cArr[i] == 0) {
                return false;
            }
            if (cArr[i] == c) {
                return true;
            }
            i = (i + 1) & length;
        } while (i != iO);
        return false;
    }
}
