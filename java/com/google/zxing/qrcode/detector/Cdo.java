package com.google.zxing.qrcode.detector;

import android.support.v4.j1;
import android.support.v4.j41;
import android.support.v4.z8;
import com.google.zxing.ResultPointCallback;
import java.util.ArrayList;
import java.util.List;

/* renamed from: com.google.zxing.qrcode.detector.do, reason: invalid class name */
/* loaded from: classes2.dex */
final class Cdo {

    /* renamed from: case, reason: not valid java name */
    private final int f17917case;

    /* renamed from: do, reason: not valid java name */
    private final z8 f17918do;

    /* renamed from: else, reason: not valid java name */
    private final float f17919else;

    /* renamed from: for, reason: not valid java name */
    private final int f17920for;

    /* renamed from: new, reason: not valid java name */
    private final int f17923new;

    /* renamed from: this, reason: not valid java name */
    private final ResultPointCallback f17924this;

    /* renamed from: try, reason: not valid java name */
    private final int f17925try;

    /* renamed from: if, reason: not valid java name */
    private final List<j1> f17922if = new ArrayList(5);

    /* renamed from: goto, reason: not valid java name */
    private final int[] f17921goto = new int[3];

    public Cdo(z8 z8Var, int i, int i2, int i3, int i4, float f, ResultPointCallback resultPointCallback) {
        this.f17918do = z8Var;
        this.f17920for = i;
        this.f17923new = i2;
        this.f17925try = i3;
        this.f17917case = i4;
        this.f17919else = f;
        this.f17924this = resultPointCallback;
    }

    /* renamed from: do, reason: not valid java name */
    private static float m22356do(int[] iArr, int i) {
        return (i - iArr[2]) - (iArr[1] / 2.0f);
    }

    /* renamed from: if, reason: not valid java name */
    private float m22357if(int i, int i2, int i3, int i4) {
        z8 z8Var = this.f17918do;
        int iM10094goto = z8Var.m10094goto();
        int[] iArr = this.f17921goto;
        iArr[0] = 0;
        iArr[1] = 0;
        iArr[2] = 0;
        int i5 = i;
        while (i5 >= 0 && z8Var.m10105try(i2, i5) && iArr[1] <= i3) {
            iArr[1] = iArr[1] + 1;
            i5--;
        }
        if (i5 >= 0 && iArr[1] <= i3) {
            while (i5 >= 0 && !z8Var.m10105try(i2, i5) && iArr[0] <= i3) {
                iArr[0] = iArr[0] + 1;
                i5--;
            }
            if (iArr[0] > i3) {
                return Float.NaN;
            }
            int i6 = i + 1;
            while (i6 < iM10094goto && z8Var.m10105try(i2, i6) && iArr[1] <= i3) {
                iArr[1] = iArr[1] + 1;
                i6++;
            }
            if (i6 != iM10094goto && iArr[1] <= i3) {
                while (i6 < iM10094goto && !z8Var.m10105try(i2, i6) && iArr[2] <= i3) {
                    iArr[2] = iArr[2] + 1;
                    i6++;
                }
                if (iArr[2] <= i3 && Math.abs(((iArr[0] + iArr[1]) + iArr[2]) - i4) * 5 < i4 * 2 && m22358new(iArr)) {
                    return m22356do(iArr, i6);
                }
            }
        }
        return Float.NaN;
    }

    /* renamed from: new, reason: not valid java name */
    private boolean m22358new(int[] iArr) {
        float f = this.f17919else;
        float f2 = f / 2.0f;
        for (int i = 0; i < 3; i++) {
            if (Math.abs(f - iArr[i]) >= f2) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: try, reason: not valid java name */
    private j1 m22359try(int[] iArr, int i, int i2) {
        int i3 = iArr[0] + iArr[1] + iArr[2];
        float fM22356do = m22356do(iArr, i2);
        float fM22357if = m22357if(i, (int) fM22356do, iArr[1] * 2, i3);
        if (Float.isNaN(fM22357if)) {
            return null;
        }
        float f = ((iArr[0] + iArr[1]) + iArr[2]) / 3.0f;
        for (j1 j1Var : this.f17922if) {
            if (j1Var.m3645case(f, fM22357if, fM22356do)) {
                return j1Var.m3646else(fM22357if, fM22356do, f);
            }
        }
        j1 j1Var2 = new j1(fM22356do, fM22357if, f);
        this.f17922if.add(j1Var2);
        ResultPointCallback resultPointCallback = this.f17924this;
        if (resultPointCallback == null) {
            return null;
        }
        resultPointCallback.foundPossibleResultPoint(j1Var2);
        return null;
    }

    /* renamed from: for, reason: not valid java name */
    public j1 m22360for() throws j41 {
        j1 j1VarM22359try;
        j1 j1VarM22359try2;
        int i = this.f17920for;
        int i2 = this.f17917case;
        int i3 = this.f17925try + i;
        int i4 = this.f17923new + (i2 / 2);
        int[] iArr = new int[3];
        for (int i5 = 0; i5 < i2; i5++) {
            int i6 = ((i5 & 1) == 0 ? (i5 + 1) / 2 : -((i5 + 1) / 2)) + i4;
            iArr[0] = 0;
            iArr[1] = 0;
            iArr[2] = 0;
            int i7 = i;
            while (i7 < i3 && !this.f17918do.m10105try(i7, i6)) {
                i7++;
            }
            int i8 = 0;
            while (i7 < i3) {
                if (!this.f17918do.m10105try(i7, i6)) {
                    if (i8 == 1) {
                        i8++;
                    }
                    iArr[i8] = iArr[i8] + 1;
                } else if (i8 == 1) {
                    iArr[1] = iArr[1] + 1;
                } else if (i8 != 2) {
                    i8++;
                    iArr[i8] = iArr[i8] + 1;
                } else {
                    if (m22358new(iArr) && (j1VarM22359try2 = m22359try(iArr, i6, i7)) != null) {
                        return j1VarM22359try2;
                    }
                    iArr[0] = iArr[2];
                    iArr[1] = 1;
                    iArr[2] = 0;
                    i8 = 1;
                }
                i7++;
            }
            if (m22358new(iArr) && (j1VarM22359try = m22359try(iArr, i6, i3)) != null) {
                return j1VarM22359try;
            }
        }
        if (this.f17922if.isEmpty()) {
            throw j41.getNotFoundInstance();
        }
        return this.f17922if.get(0);
    }
}
