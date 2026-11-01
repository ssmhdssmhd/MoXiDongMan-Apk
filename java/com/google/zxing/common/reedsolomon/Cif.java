package com.google.zxing.common.reedsolomon;

/* renamed from: com.google.zxing.common.reedsolomon.if, reason: invalid class name */
/* loaded from: classes2.dex */
final class Cif {

    /* renamed from: do, reason: not valid java name */
    private final Cdo f17466do;

    /* renamed from: if, reason: not valid java name */
    private final int[] f17467if;

    public Cif(Cdo cdo, int[] iArr) {
        if (iArr.length == 0) {
            throw new IllegalArgumentException();
        }
        this.f17466do = cdo;
        int length = iArr.length;
        if (length <= 1 || iArr[0] != 0) {
            this.f17467if = iArr;
            return;
        }
        int i = 1;
        while (i < length && iArr[i] == 0) {
            i++;
        }
        if (i == length) {
            this.f17467if = new int[]{0};
            return;
        }
        int[] iArr2 = new int[length - i];
        this.f17467if = iArr2;
        System.arraycopy(iArr, i, iArr2, 0, iArr2.length);
    }

    /* renamed from: break, reason: not valid java name */
    public Cif m21824break(int i, int i2) {
        if (i < 0) {
            throw new IllegalArgumentException();
        }
        if (i2 == 0) {
            return this.f17466do.m21813else();
        }
        int length = this.f17467if.length;
        int[] iArr = new int[i + length];
        for (int i3 = 0; i3 < length; i3++) {
            iArr[i3] = this.f17466do.m21811break(this.f17467if[i3], i2);
        }
        return new Cif(this.f17466do, iArr);
    }

    /* renamed from: case, reason: not valid java name */
    public int m21825case() {
        return this.f17467if.length - 1;
    }

    /* renamed from: do, reason: not valid java name */
    public Cif m21826do(Cif cif) {
        if (!this.f17466do.equals(cif.f17466do)) {
            throw new IllegalArgumentException("GenericGFPolys do not have same GenericGF field");
        }
        if (m21827else()) {
            return cif;
        }
        if (cif.m21827else()) {
            return this;
        }
        int[] iArr = this.f17467if;
        int[] iArr2 = cif.f17467if;
        if (iArr.length <= iArr2.length) {
            iArr = iArr2;
            iArr2 = iArr;
        }
        int[] iArr3 = new int[iArr.length];
        int length = iArr.length - iArr2.length;
        System.arraycopy(iArr, 0, iArr3, 0, length);
        for (int i = length; i < iArr.length; i++) {
            iArr3[i] = Cdo.m21810do(iArr2[i - length], iArr[i]);
        }
        return new Cif(this.f17466do, iArr3);
    }

    /* renamed from: else, reason: not valid java name */
    public boolean m21827else() {
        return this.f17467if[0] == 0;
    }

    /* renamed from: for, reason: not valid java name */
    public int m21828for(int i) {
        if (i == 0) {
            return m21831new(0);
        }
        if (i == 1) {
            int iM21810do = 0;
            for (int i2 : this.f17467if) {
                iM21810do = Cdo.m21810do(iM21810do, i2);
            }
            return iM21810do;
        }
        int[] iArr = this.f17467if;
        int iM21810do2 = iArr[0];
        int length = iArr.length;
        for (int i3 = 1; i3 < length; i3++) {
            iM21810do2 = Cdo.m21810do(this.f17466do.m21811break(i, iM21810do2), this.f17467if[i3]);
        }
        return iM21810do2;
    }

    /* renamed from: goto, reason: not valid java name */
    public Cif m21829goto(int i) {
        if (i == 0) {
            return this.f17466do.m21813else();
        }
        if (i == 1) {
            return this;
        }
        int length = this.f17467if.length;
        int[] iArr = new int[length];
        for (int i2 = 0; i2 < length; i2++) {
            iArr[i2] = this.f17466do.m21811break(this.f17467if[i2], i);
        }
        return new Cif(this.f17466do, iArr);
    }

    /* renamed from: if, reason: not valid java name */
    public Cif[] m21830if(Cif cif) {
        if (!this.f17466do.equals(cif.f17466do)) {
            throw new IllegalArgumentException("GenericGFPolys do not have same GenericGF field");
        }
        if (cif.m21827else()) {
            throw new IllegalArgumentException("Divide by 0");
        }
        Cif cifM21813else = this.f17466do.m21813else();
        int iM21815goto = this.f17466do.m21815goto(cif.m21831new(cif.m21825case()));
        Cif cifM21826do = this;
        while (cifM21826do.m21825case() >= cif.m21825case() && !cifM21826do.m21827else()) {
            int iM21825case = cifM21826do.m21825case() - cif.m21825case();
            int iM21811break = this.f17466do.m21811break(cifM21826do.m21831new(cifM21826do.m21825case()), iM21815goto);
            Cif cifM21824break = cif.m21824break(iM21825case, iM21811break);
            cifM21813else = cifM21813else.m21826do(this.f17466do.m21816if(iM21825case, iM21811break));
            cifM21826do = cifM21826do.m21826do(cifM21824break);
        }
        return new Cif[]{cifM21813else, cifM21826do};
    }

    /* renamed from: new, reason: not valid java name */
    public int m21831new(int i) {
        return this.f17467if[(r0.length - 1) - i];
    }

    /* renamed from: this, reason: not valid java name */
    public Cif m21832this(Cif cif) {
        if (!this.f17466do.equals(cif.f17466do)) {
            throw new IllegalArgumentException("GenericGFPolys do not have same GenericGF field");
        }
        if (m21827else() || cif.m21827else()) {
            return this.f17466do.m21813else();
        }
        int[] iArr = this.f17467if;
        int length = iArr.length;
        int[] iArr2 = cif.f17467if;
        int length2 = iArr2.length;
        int[] iArr3 = new int[(length + length2) - 1];
        for (int i = 0; i < length; i++) {
            int i2 = iArr[i];
            for (int i3 = 0; i3 < length2; i3++) {
                int i4 = i + i3;
                iArr3[i4] = Cdo.m21810do(iArr3[i4], this.f17466do.m21811break(i2, iArr2[i3]));
            }
        }
        return new Cif(this.f17466do, iArr3);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(m21825case() * 8);
        for (int iM21825case = m21825case(); iM21825case >= 0; iM21825case--) {
            int iM21831new = m21831new(iM21825case);
            if (iM21831new != 0) {
                if (iM21831new < 0) {
                    sb.append(" - ");
                    iM21831new = -iM21831new;
                } else if (sb.length() > 0) {
                    sb.append(" + ");
                }
                if (iM21825case == 0 || iM21831new != 1) {
                    int iM21818this = this.f17466do.m21818this(iM21831new);
                    if (iM21818this == 0) {
                        sb.append('1');
                    } else if (iM21818this == 1) {
                        sb.append('a');
                    } else {
                        sb.append("a^");
                        sb.append(iM21818this);
                    }
                }
                if (iM21825case != 0) {
                    if (iM21825case == 1) {
                        sb.append('x');
                    } else {
                        sb.append("x^");
                        sb.append(iM21825case);
                    }
                }
            }
        }
        return sb.toString();
    }

    /* renamed from: try, reason: not valid java name */
    public int[] m21833try() {
        return this.f17467if;
    }
}
