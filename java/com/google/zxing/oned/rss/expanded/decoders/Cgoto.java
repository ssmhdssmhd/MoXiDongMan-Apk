package com.google.zxing.oned.rss.expanded.decoders;

import android.support.v4.w8;

/* renamed from: com.google.zxing.oned.rss.expanded.decoders.goto, reason: invalid class name */
/* loaded from: classes2.dex */
abstract class Cgoto extends Cbreak {

    /* renamed from: for, reason: not valid java name */
    public static final int f17692for = 40;

    public Cgoto(w8 w8Var) {
        super(w8Var);
    }

    /* renamed from: try, reason: not valid java name */
    private static void m22060try(StringBuilder sb, int i) {
        int i2 = 0;
        for (int i3 = 0; i3 < 13; i3++) {
            int iCharAt = sb.charAt(i3 + i) - '0';
            if ((i3 & 1) == 0) {
                iCharAt *= 3;
            }
            i2 += iCharAt;
        }
        int i4 = 10 - (i2 % 10);
        sb.append(i4 != 10 ? i4 : 0);
    }

    /* renamed from: case, reason: not valid java name */
    public final void m22061case(StringBuilder sb, int i) {
        sb.append("(01)");
        int length = sb.length();
        sb.append('9');
        m22062else(sb, i, length);
    }

    /* renamed from: else, reason: not valid java name */
    public final void m22062else(StringBuilder sb, int i, int i2) {
        for (int i3 = 0; i3 < 4; i3++) {
            int iM22080case = m22043if().m22080case((i3 * 10) + i, 10);
            if (iM22080case / 100 == 0) {
                sb.append('0');
            }
            if (iM22080case / 10 == 0) {
                sb.append('0');
            }
            sb.append(iM22080case);
        }
        m22060try(sb, i2);
    }
}
