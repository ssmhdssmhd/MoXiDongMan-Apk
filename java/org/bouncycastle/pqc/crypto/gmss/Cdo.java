package org.bouncycastle.pqc.crypto.gmss;

import android.support.v4.q3;

/* renamed from: org.bouncycastle.pqc.crypto.gmss.do, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cdo {

    /* renamed from: do, reason: not valid java name */
    private int f32171do;

    /* renamed from: for, reason: not valid java name */
    private int[] f32172for;

    /* renamed from: if, reason: not valid java name */
    private int[] f32173if;

    /* renamed from: new, reason: not valid java name */
    private int[] f32174new;

    public Cdo(int i) throws IllegalArgumentException {
        if (i <= 10) {
            m35589try(1, new int[]{10}, new int[]{3}, new int[]{2});
        } else if (i <= 20) {
            m35589try(2, new int[]{10, 10}, new int[]{5, 4}, new int[]{2, 2});
        } else {
            m35589try(4, new int[]{10, 10, 10, 10}, new int[]{9, 9, 9, 3}, new int[]{2, 2, 2, 2});
        }
    }

    public Cdo(int i, int[] iArr, int[] iArr2, int[] iArr3) throws IllegalArgumentException {
        m35589try(i, iArr, iArr2, iArr3);
    }

    /* renamed from: try, reason: not valid java name */
    private void m35589try(int i, int[] iArr, int[] iArr2, int[] iArr3) throws IllegalArgumentException {
        String str;
        boolean z;
        this.f32171do = i;
        if (i == iArr2.length && i == iArr.length && i == iArr3.length) {
            z = true;
            str = "";
        } else {
            str = "Unexpected parameterset format";
            z = false;
        }
        for (int i2 = 0; i2 < this.f32171do; i2++) {
            if (iArr3[i2] < 2 || (iArr[i2] - iArr3[i2]) % 2 != 0) {
                str = "Wrong parameter K (K >= 2 and H-K even required)!";
                z = false;
            }
            if (iArr[i2] < 4 || iArr2[i2] < 2) {
                str = "Wrong parameter H or w (H > 3 and w > 1 required)!";
                z = false;
            }
        }
        if (!z) {
            throw new IllegalArgumentException(str);
        }
        this.f32173if = q3.m6398while(iArr);
        this.f32172for = q3.m6398while(iArr2);
        this.f32174new = q3.m6398while(iArr3);
    }

    /* renamed from: do, reason: not valid java name */
    public int[] m35590do() {
        return q3.m6398while(this.f32173if);
    }

    /* renamed from: for, reason: not valid java name */
    public int m35591for() {
        return this.f32171do;
    }

    /* renamed from: if, reason: not valid java name */
    public int[] m35592if() {
        return q3.m6398while(this.f32174new);
    }

    /* renamed from: new, reason: not valid java name */
    public int[] m35593new() {
        return q3.m6398while(this.f32172for);
    }
}
