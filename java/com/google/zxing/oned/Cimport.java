package com.google.zxing.oned;

import android.support.v4.ig2;
import android.support.v4.z8;
import com.google.zxing.Cdo;
import com.google.zxing.Ctry;
import com.google.zxing.Writer;
import java.util.Map;

/* renamed from: com.google.zxing.oned.import, reason: invalid class name */
/* loaded from: classes2.dex */
public abstract class Cimport implements Writer {
    /* renamed from: do, reason: not valid java name */
    public static int m22019do(boolean[] zArr, int i, int[] iArr, boolean z) {
        int i2 = 0;
        for (int i3 : iArr) {
            int i4 = 0;
            while (i4 < i3) {
                zArr[i] = z;
                i4++;
                i++;
            }
            i2 += i3;
            z = !z;
        }
        return i2;
    }

    /* renamed from: new, reason: not valid java name */
    private static z8 m22020new(boolean[] zArr, int i, int i2, int i3) {
        int length = zArr.length;
        int i4 = i3 + length;
        int iMax = Math.max(i, i4);
        int iMax2 = Math.max(1, i2);
        int i5 = iMax / i4;
        int i6 = (iMax - (length * i5)) / 2;
        z8 z8Var = new z8(iMax, iMax2);
        int i7 = 0;
        while (i7 < length) {
            if (zArr[i7]) {
                z8Var.m10106while(i6, 0, i5, iMax2);
            }
            i7++;
            i6 += i5;
        }
        return z8Var;
    }

    @Override // com.google.zxing.Writer
    public final z8 encode(String str, Cdo cdo, int i, int i2) throws ig2 {
        return encode(str, cdo, i, i2, null);
    }

    /* renamed from: for */
    public int mo8822for() {
        return 10;
    }

    /* renamed from: if */
    public abstract boolean[] mo7057if(String str);

    @Override // com.google.zxing.Writer
    public z8 encode(String str, Cdo cdo, int i, int i2, Map<Ctry, ?> map) throws ig2, NumberFormatException {
        if (str.isEmpty()) {
            throw new IllegalArgumentException("Found empty contents");
        }
        if (i < 0 || i2 < 0) {
            throw new IllegalArgumentException("Negative size is not allowed. Input: " + i + 'x' + i2);
        }
        int iMo8822for = mo8822for();
        if (map != null) {
            Ctry ctry = Ctry.MARGIN;
            if (map.containsKey(ctry)) {
                iMo8822for = Integer.parseInt(map.get(ctry).toString());
            }
        }
        return m22020new(mo7057if(str), i, i2, iMo8822for);
    }
}
