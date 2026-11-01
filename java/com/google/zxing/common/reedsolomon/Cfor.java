package com.google.zxing.common.reedsolomon;

import android.support.v4.am1;

/* renamed from: com.google.zxing.common.reedsolomon.for, reason: invalid class name */
/* loaded from: classes2.dex */
public final class Cfor {

    /* renamed from: do, reason: not valid java name */
    private final Cdo f17465do;

    public Cfor(Cdo cdo) {
        this.f17465do = cdo;
    }

    /* renamed from: for, reason: not valid java name */
    private int[] m21820for(Cif cif, int[] iArr) {
        int length = iArr.length;
        int[] iArr2 = new int[length];
        for (int i = 0; i < length; i++) {
            int iM21815goto = this.f17465do.m21815goto(iArr[i]);
            int iM21811break = 1;
            for (int i2 = 0; i2 < length; i2++) {
                if (i != i2) {
                    int iM21811break2 = this.f17465do.m21811break(iArr[i2], iM21815goto);
                    iM21811break = this.f17465do.m21811break(iM21811break, (iM21811break2 & 1) == 0 ? iM21811break2 | 1 : iM21811break2 & (-2));
                }
            }
            iArr2[i] = this.f17465do.m21811break(cif.m21828for(iM21815goto), this.f17465do.m21815goto(iM21811break));
            if (this.f17465do.m21817new() != 0) {
                iArr2[i] = this.f17465do.m21811break(iArr2[i], iM21815goto);
            }
        }
        return iArr2;
    }

    /* renamed from: if, reason: not valid java name */
    private int[] m21821if(Cif cif) throws am1 {
        int iM21825case = cif.m21825case();
        int i = 0;
        if (iM21825case == 1) {
            return new int[]{cif.m21831new(1)};
        }
        int[] iArr = new int[iM21825case];
        for (int i2 = 1; i2 < this.f17465do.m21812case() && i < iM21825case; i2++) {
            if (cif.m21828for(i2) == 0) {
                iArr[i] = this.f17465do.m21815goto(i2);
                i++;
            }
        }
        if (i == iM21825case) {
            return iArr;
        }
        throw new am1("Error locator degree does not match number of roots");
    }

    /* renamed from: new, reason: not valid java name */
    private Cif[] m21822new(Cif cif, Cif cif2, int i) throws am1 {
        if (cif.m21825case() < cif2.m21825case()) {
            cif2 = cif;
            cif = cif2;
        }
        Cif cifM21813else = this.f17465do.m21813else();
        Cif cifM21819try = this.f17465do.m21819try();
        do {
            Cif cif3 = cif2;
            cif2 = cif;
            cif = cif3;
            Cif cif4 = cifM21819try;
            Cif cif5 = cifM21813else;
            cifM21813else = cif4;
            if (cif.m21825case() < i / 2) {
                int iM21831new = cifM21813else.m21831new(0);
                if (iM21831new == 0) {
                    throw new am1("sigmaTilde(0) was zero");
                }
                int iM21815goto = this.f17465do.m21815goto(iM21831new);
                return new Cif[]{cifM21813else.m21829goto(iM21815goto), cif.m21829goto(iM21815goto)};
            }
            if (cif.m21827else()) {
                throw new am1("r_{i-1} was zero");
            }
            Cif cifM21813else2 = this.f17465do.m21813else();
            int iM21815goto2 = this.f17465do.m21815goto(cif.m21831new(cif.m21825case()));
            while (cif2.m21825case() >= cif.m21825case() && !cif2.m21827else()) {
                int iM21825case = cif2.m21825case() - cif.m21825case();
                int iM21811break = this.f17465do.m21811break(cif2.m21831new(cif2.m21825case()), iM21815goto2);
                cifM21813else2 = cifM21813else2.m21826do(this.f17465do.m21816if(iM21825case, iM21811break));
                cif2 = cif2.m21826do(cif.m21824break(iM21825case, iM21811break));
            }
            cifM21819try = cifM21813else2.m21832this(cifM21813else).m21826do(cif5);
        } while (cif2.m21825case() < cif.m21825case());
        throw new IllegalStateException("Division algorithm failed to reduce polynomial?");
    }

    /* renamed from: do, reason: not valid java name */
    public void m21823do(int[] iArr, int i) throws am1 {
        Cif cif = new Cif(this.f17465do, iArr);
        int[] iArr2 = new int[i];
        boolean z = true;
        for (int i2 = 0; i2 < i; i2++) {
            Cdo cdo = this.f17465do;
            int iM21828for = cif.m21828for(cdo.m21814for(cdo.m21817new() + i2));
            iArr2[(i - 1) - i2] = iM21828for;
            if (iM21828for != 0) {
                z = false;
            }
        }
        if (z) {
            return;
        }
        Cif[] cifArrM21822new = m21822new(this.f17465do.m21816if(i, 1), new Cif(this.f17465do, iArr2), i);
        Cif cif2 = cifArrM21822new[0];
        Cif cif3 = cifArrM21822new[1];
        int[] iArrM21821if = m21821if(cif2);
        int[] iArrM21820for = m21820for(cif3, iArrM21821if);
        for (int i3 = 0; i3 < iArrM21821if.length; i3++) {
            int length = (iArr.length - 1) - this.f17465do.m21818this(iArrM21821if[i3]);
            if (length < 0) {
                throw new am1("Bad error location");
            }
            iArr[length] = Cdo.m21810do(iArr[length], iArrM21820for[i3]);
        }
    }
}
