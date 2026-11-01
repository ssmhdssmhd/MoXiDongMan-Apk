package com.google.common.collect;

import android.support.v4.ab2;
import android.support.v4.b51;
import android.support.v4.li0;
import com.google.common.base.Cthrow;
import java.util.Arrays;

@li0
/* renamed from: com.google.common.collect.private, reason: invalid class name */
/* loaded from: classes2.dex */
final class Cprivate {

    /* renamed from: break, reason: not valid java name */
    private static final int f14505break = 65536;

    /* renamed from: case, reason: not valid java name */
    public static final int f14506case = 3;

    /* renamed from: catch, reason: not valid java name */
    private static final int f14507catch = 65535;

    /* renamed from: do, reason: not valid java name */
    public static final byte f14508do = 0;

    /* renamed from: else, reason: not valid java name */
    private static final int f14509else = 4;

    /* renamed from: for, reason: not valid java name */
    public static final int f14510for = 32;

    /* renamed from: goto, reason: not valid java name */
    private static final int f14511goto = 256;

    /* renamed from: if, reason: not valid java name */
    private static final int f14512if = 5;

    /* renamed from: new, reason: not valid java name */
    public static final int f14513new = 31;

    /* renamed from: this, reason: not valid java name */
    private static final int f14514this = 255;

    /* renamed from: try, reason: not valid java name */
    public static final int f14515try = 1073741823;

    private Cprivate() {
    }

    /* renamed from: break, reason: not valid java name */
    public static int m16128break(int i) {
        return Math.max(4, n0.m16083do(i + 1, 1.0d));
    }

    /* renamed from: case, reason: not valid java name */
    public static int m16129case(@b51 Object obj, @b51 Object obj2, int i, Object obj3, int[] iArr, Object[] objArr, @b51 Object[] objArr2) {
        int i2;
        int i3;
        int iM16086new = n0.m16086new(obj);
        int i4 = iM16086new & i;
        int iM16133goto = m16133goto(obj3, i4);
        if (iM16133goto == 0) {
            return -1;
        }
        int iM16134if = m16134if(iM16086new, i);
        int i5 = -1;
        while (true) {
            i2 = iM16133goto - 1;
            i3 = iArr[i2];
            if (m16134if(i3, i) == iM16134if && Cthrow.m15205do(obj, objArr[i2]) && (objArr2 == null || Cthrow.m15205do(obj2, objArr2[i2]))) {
                break;
            }
            int iM16132for = m16132for(i3, i);
            if (iM16132for == 0) {
                return -1;
            }
            i5 = i2;
            iM16133goto = iM16132for;
        }
        int iM16132for2 = m16132for(i3, i);
        if (i5 == -1) {
            m16136this(obj3, i4, iM16132for2);
        } else {
            iArr[i5] = m16135new(iArr[i5], iM16132for2, i);
        }
        return i2;
    }

    /* renamed from: do, reason: not valid java name */
    public static Object m16130do(int i) {
        if (i >= 2 && i <= 1073741824 && Integer.highestOneBit(i) == i) {
            return i <= 256 ? new byte[i] : i <= 65536 ? new short[i] : new int[i];
        }
        throw new IllegalArgumentException("must be power of 2 between 2^1 and 2^30: " + i);
    }

    /* renamed from: else, reason: not valid java name */
    public static void m16131else(Object obj) {
        if (obj instanceof byte[]) {
            Arrays.fill((byte[]) obj, (byte) 0);
        } else if (obj instanceof short[]) {
            Arrays.fill((short[]) obj, (short) 0);
        } else {
            Arrays.fill((int[]) obj, 0);
        }
    }

    /* renamed from: for, reason: not valid java name */
    public static int m16132for(int i, int i2) {
        return i & i2;
    }

    /* renamed from: goto, reason: not valid java name */
    public static int m16133goto(Object obj, int i) {
        return obj instanceof byte[] ? ((byte[]) obj)[i] & 255 : obj instanceof short[] ? ((short[]) obj)[i] & ab2.f80for : ((int[]) obj)[i];
    }

    /* renamed from: if, reason: not valid java name */
    public static int m16134if(int i, int i2) {
        return i & (i2 ^ (-1));
    }

    /* renamed from: new, reason: not valid java name */
    public static int m16135new(int i, int i2, int i3) {
        return (i & (i3 ^ (-1))) | (i2 & i3);
    }

    /* renamed from: this, reason: not valid java name */
    public static void m16136this(Object obj, int i, int i2) {
        if (obj instanceof byte[]) {
            ((byte[]) obj)[i] = (byte) i2;
        } else if (obj instanceof short[]) {
            ((short[]) obj)[i] = (short) i2;
        } else {
            ((int[]) obj)[i] = i2;
        }
    }

    /* renamed from: try, reason: not valid java name */
    public static int m16137try(int i) {
        return (i < 32 ? 4 : 2) * (i + 1);
    }
}
