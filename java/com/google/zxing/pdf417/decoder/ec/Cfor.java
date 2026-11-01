package com.google.zxing.pdf417.decoder.ec;

/* renamed from: com.google.zxing.pdf417.decoder.ec.for, reason: invalid class name */
/* loaded from: classes2.dex */
final class Cfor {

    /* renamed from: do, reason: not valid java name */
    private final Cif f17785do;

    /* renamed from: if, reason: not valid java name */
    private final int[] f17786if;

    public Cfor(Cif cif, int[] iArr) {
        if (iArr.length == 0) {
            throw new IllegalArgumentException();
        }
        this.f17785do = cif;
        int length = iArr.length;
        if (length <= 1 || iArr[0] != 0) {
            this.f17786if = iArr;
            return;
        }
        int i = 1;
        while (i < length && iArr[i] == 0) {
            i++;
        }
        if (i == length) {
            this.f17786if = new int[]{0};
            return;
        }
        int[] iArr2 = new int[length - i];
        this.f17786if = iArr2;
        System.arraycopy(iArr, i, iArr2, 0, iArr2.length);
    }

    /* renamed from: break, reason: not valid java name */
    public Cfor m22205break() {
        int length = this.f17786if.length;
        int[] iArr = new int[length];
        for (int i = 0; i < length; i++) {
            iArr[i] = this.f17785do.m22216break(0, this.f17786if[i]);
        }
        return new Cfor(this.f17785do, iArr);
    }

    /* renamed from: case, reason: not valid java name */
    public boolean m22206case() {
        return this.f17786if[0] == 0;
    }

    /* renamed from: catch, reason: not valid java name */
    public Cfor m22207catch(Cfor cfor) {
        if (this.f17785do.equals(cfor.f17785do)) {
            return cfor.m22206case() ? this : m22208do(cfor.m22205break());
        }
        throw new IllegalArgumentException("ModulusPolys do not have same ModulusGF field");
    }

    /* renamed from: do, reason: not valid java name */
    public Cfor m22208do(Cfor cfor) {
        if (!this.f17785do.equals(cfor.f17785do)) {
            throw new IllegalArgumentException("ModulusPolys do not have same ModulusGF field");
        }
        if (m22206case()) {
            return cfor;
        }
        if (cfor.m22206case()) {
            return this;
        }
        int[] iArr = this.f17786if;
        int[] iArr2 = cfor.f17786if;
        if (iArr.length <= iArr2.length) {
            iArr = iArr2;
            iArr2 = iArr;
        }
        int[] iArr3 = new int[iArr.length];
        int length = iArr.length - iArr2.length;
        System.arraycopy(iArr, 0, iArr3, 0, length);
        for (int i = length; i < iArr.length; i++) {
            iArr3[i] = this.f17785do.m22218do(iArr2[i - length], iArr[i]);
        }
        return new Cfor(this.f17785do, iArr3);
    }

    /* renamed from: else, reason: not valid java name */
    public Cfor m22209else(int i) {
        if (i == 0) {
            return this.f17785do.m22217case();
        }
        if (i == 1) {
            return this;
        }
        int length = this.f17786if.length;
        int[] iArr = new int[length];
        for (int i2 = 0; i2 < length; i2++) {
            iArr[i2] = this.f17785do.m22224this(this.f17786if[i2], i);
        }
        return new Cfor(this.f17785do, iArr);
    }

    /* renamed from: for, reason: not valid java name */
    public int m22210for(int i) {
        return this.f17786if[(r0.length - 1) - i];
    }

    /* renamed from: goto, reason: not valid java name */
    public Cfor m22211goto(Cfor cfor) {
        if (!this.f17785do.equals(cfor.f17785do)) {
            throw new IllegalArgumentException("ModulusPolys do not have same ModulusGF field");
        }
        if (m22206case() || cfor.m22206case()) {
            return this.f17785do.m22217case();
        }
        int[] iArr = this.f17786if;
        int length = iArr.length;
        int[] iArr2 = cfor.f17786if;
        int length2 = iArr2.length;
        int[] iArr3 = new int[(length + length2) - 1];
        for (int i = 0; i < length; i++) {
            int i2 = iArr[i];
            for (int i3 = 0; i3 < length2; i3++) {
                int i4 = i + i3;
                Cif cif = this.f17785do;
                iArr3[i4] = cif.m22218do(iArr3[i4], cif.m22224this(i2, iArr2[i3]));
            }
        }
        return new Cfor(this.f17785do, iArr3);
    }

    /* renamed from: if, reason: not valid java name */
    public int m22212if(int i) {
        if (i == 0) {
            return m22210for(0);
        }
        if (i == 1) {
            int iM22218do = 0;
            for (int i2 : this.f17786if) {
                iM22218do = this.f17785do.m22218do(iM22218do, i2);
            }
            return iM22218do;
        }
        int[] iArr = this.f17786if;
        int iM22218do2 = iArr[0];
        int length = iArr.length;
        for (int i3 = 1; i3 < length; i3++) {
            Cif cif = this.f17785do;
            iM22218do2 = cif.m22218do(cif.m22224this(i, iM22218do2), this.f17786if[i3]);
        }
        return iM22218do2;
    }

    /* renamed from: new, reason: not valid java name */
    public int[] m22213new() {
        return this.f17786if;
    }

    /* renamed from: this, reason: not valid java name */
    public Cfor m22214this(int i, int i2) {
        if (i < 0) {
            throw new IllegalArgumentException();
        }
        if (i2 == 0) {
            return this.f17785do.m22217case();
        }
        int length = this.f17786if.length;
        int[] iArr = new int[i + length];
        for (int i3 = 0; i3 < length; i3++) {
            iArr[i3] = this.f17785do.m22224this(this.f17786if[i3], i2);
        }
        return new Cfor(this.f17785do, iArr);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(m22215try() * 8);
        for (int iM22215try = m22215try(); iM22215try >= 0; iM22215try--) {
            int iM22210for = m22210for(iM22215try);
            if (iM22210for != 0) {
                if (iM22210for < 0) {
                    sb.append(" - ");
                    iM22210for = -iM22210for;
                } else if (sb.length() > 0) {
                    sb.append(" + ");
                }
                if (iM22215try == 0 || iM22210for != 1) {
                    sb.append(iM22210for);
                }
                if (iM22215try != 0) {
                    if (iM22215try == 1) {
                        sb.append('x');
                    } else {
                        sb.append("x^");
                        sb.append(iM22215try);
                    }
                }
            }
        }
        return sb.toString();
    }

    /* renamed from: try, reason: not valid java name */
    public int m22215try() {
        return this.f17786if.length - 1;
    }
}
