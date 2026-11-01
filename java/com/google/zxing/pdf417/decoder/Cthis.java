package com.google.zxing.pdf417.decoder;

import android.support.v4.w91;
import android.support.v4.xx0;
import java.lang.reflect.Array;

/* renamed from: com.google.zxing.pdf417.decoder.this, reason: invalid class name */
/* loaded from: classes2.dex */
final class Cthis {

    /* renamed from: do, reason: not valid java name */
    private static final float[][] f17813do = (float[][]) Array.newInstance((Class<?>) float.class, w91.f7426this.length, 8);

    static {
        int i;
        int i2 = 0;
        while (true) {
            int[] iArr = w91.f7426this;
            if (i2 >= iArr.length) {
                return;
            }
            int i3 = iArr[i2];
            int i4 = i3 & 1;
            int i5 = 0;
            while (i5 < 8) {
                float f = 0.0f;
                while (true) {
                    i = i3 & 1;
                    if (i == i4) {
                        f += 1.0f;
                        i3 >>= 1;
                    }
                }
                f17813do[i2][(8 - i5) - 1] = f / 17.0f;
                i5++;
                i4 = i;
            }
            i2++;
        }
    }

    private Cthis() {
    }

    /* renamed from: do, reason: not valid java name */
    private static int m22262do(int[] iArr) {
        long j = 0;
        for (int i = 0; i < iArr.length; i++) {
            for (int i2 = 0; i2 < iArr[i]; i2++) {
                int i3 = 1;
                long j2 = j << 1;
                if (i % 2 != 0) {
                    i3 = 0;
                }
                j = j2 | i3;
            }
        }
        return (int) j;
    }

    /* renamed from: for, reason: not valid java name */
    private static int m22263for(int[] iArr) {
        int iM22262do = m22262do(iArr);
        if (w91.m9108if(iM22262do) == -1) {
            return -1;
        }
        return iM22262do;
    }

    /* renamed from: if, reason: not valid java name */
    private static int m22264if(int[] iArr) {
        int iM9611new = xx0.m9611new(iArr);
        float[] fArr = new float[8];
        if (iM9611new > 1) {
            for (int i = 0; i < 8; i++) {
                fArr[i] = iArr[i] / iM9611new;
            }
        }
        float f = Float.MAX_VALUE;
        int i2 = -1;
        int i3 = 0;
        while (true) {
            float[][] fArr2 = f17813do;
            if (i3 >= fArr2.length) {
                return i2;
            }
            float f2 = 0.0f;
            float[] fArr3 = fArr2[i3];
            for (int i4 = 0; i4 < 8; i4++) {
                float f3 = fArr3[i4] - fArr[i4];
                f2 += f3 * f3;
                if (f2 >= f) {
                    break;
                }
            }
            if (f2 < f) {
                i2 = w91.f7426this[i3];
                f = f2;
            }
            i3++;
        }
    }

    /* renamed from: new, reason: not valid java name */
    public static int m22265new(int[] iArr) {
        int iM22263for = m22263for(m22266try(iArr));
        return iM22263for != -1 ? iM22263for : m22264if(iArr);
    }

    /* renamed from: try, reason: not valid java name */
    private static int[] m22266try(int[] iArr) {
        float fM9611new = xx0.m9611new(iArr);
        int[] iArr2 = new int[8];
        int i = 0;
        int i2 = 0;
        for (int i3 = 0; i3 < 17; i3++) {
            if (iArr[i2] + i <= (fM9611new / 34.0f) + ((i3 * fM9611new) / 17.0f)) {
                i += iArr[i2];
                i2++;
            }
            iArr2[i2] = iArr2[i2] + 1;
        }
        return iArr2;
    }
}
