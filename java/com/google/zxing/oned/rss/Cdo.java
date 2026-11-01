package com.google.zxing.oned.rss;

import android.support.v4.j41;
import android.support.v4.xx0;
import com.google.zxing.oned.Cwhile;

/* renamed from: com.google.zxing.oned.rss.do, reason: invalid class name */
/* loaded from: classes2.dex */
public abstract class Cdo extends Cwhile {

    /* renamed from: break, reason: not valid java name */
    private static final float f17667break = 0.89285713f;

    /* renamed from: else, reason: not valid java name */
    private static final float f17668else = 0.2f;

    /* renamed from: goto, reason: not valid java name */
    private static final float f17669goto = 0.45f;

    /* renamed from: this, reason: not valid java name */
    private static final float f17670this = 0.7916667f;

    /* renamed from: case, reason: not valid java name */
    private final int[] f17671case;

    /* renamed from: if, reason: not valid java name */
    private final int[] f17674if;

    /* renamed from: try, reason: not valid java name */
    private final int[] f17676try;

    /* renamed from: do, reason: not valid java name */
    private final int[] f17672do = new int[4];

    /* renamed from: for, reason: not valid java name */
    private final float[] f17673for = new float[4];

    /* renamed from: new, reason: not valid java name */
    private final float[] f17675new = new float[4];

    public Cdo() {
        int[] iArr = new int[8];
        this.f17674if = iArr;
        this.f17676try = new int[iArr.length / 2];
        this.f17671case = new int[iArr.length / 2];
    }

    @Deprecated
    /* renamed from: case, reason: not valid java name */
    public static int m22030case(int[] iArr) {
        return xx0.m9611new(iArr);
    }

    /* renamed from: else, reason: not valid java name */
    public static void m22031else(int[] iArr, float[] fArr) {
        int i = 0;
        float f = fArr[0];
        for (int i2 = 1; i2 < iArr.length; i2++) {
            if (fArr[i2] < f) {
                f = fArr[i2];
                i = i2;
            }
        }
        iArr[i] = iArr[i] - 1;
    }

    /* renamed from: final, reason: not valid java name */
    public static void m22032final(int[] iArr, float[] fArr) {
        int i = 0;
        float f = fArr[0];
        for (int i2 = 1; i2 < iArr.length; i2++) {
            if (fArr[i2] > f) {
                f = fArr[i2];
                i = i2;
            }
        }
        iArr[i] = iArr[i] + 1;
    }

    /* renamed from: super, reason: not valid java name */
    public static boolean m22033super(int[] iArr) {
        float f = (iArr[0] + iArr[1]) / ((iArr[2] + r1) + iArr[3]);
        if (f >= f17670this && f <= f17667break) {
            int i = Integer.MAX_VALUE;
            int i2 = Integer.MIN_VALUE;
            for (int i3 : iArr) {
                if (i3 > i2) {
                    i2 = i3;
                }
                if (i3 < i) {
                    i = i3;
                }
            }
            if (i2 < i * 10) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: throw, reason: not valid java name */
    public static int m22034throw(int[] iArr, int[][] iArr2) throws j41 {
        for (int i = 0; i < iArr2.length; i++) {
            if (Cwhile.m22151for(iArr, iArr2[i], f17669goto) < 0.2f) {
                return i;
            }
        }
        throw j41.getNotFoundInstance();
    }

    /* renamed from: break, reason: not valid java name */
    public final int[] m22035break() {
        return this.f17671case;
    }

    /* renamed from: catch, reason: not valid java name */
    public final float[] m22036catch() {
        return this.f17675new;
    }

    /* renamed from: class, reason: not valid java name */
    public final int[] m22037class() {
        return this.f17676try;
    }

    /* renamed from: const, reason: not valid java name */
    public final float[] m22038const() {
        return this.f17673for;
    }

    /* renamed from: goto, reason: not valid java name */
    public final int[] m22039goto() {
        return this.f17674if;
    }

    /* renamed from: this, reason: not valid java name */
    public final int[] m22040this() {
        return this.f17672do;
    }
}
