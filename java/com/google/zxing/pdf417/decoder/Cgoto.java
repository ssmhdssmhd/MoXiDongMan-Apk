package com.google.zxing.pdf417.decoder;

import android.support.v4.yn1;

/* renamed from: com.google.zxing.pdf417.decoder.goto, reason: invalid class name */
/* loaded from: classes2.dex */
final class Cgoto extends Celse {

    /* renamed from: new, reason: not valid java name */
    private final boolean f17805new;

    public Cgoto(Cfor cfor, boolean z) {
        super(cfor);
        this.f17805new = z;
    }

    /* renamed from: class, reason: not valid java name */
    private void m22242class(Cnew[] cnewArr, Cdo cdo) {
        for (int i = 0; i < cnewArr.length; i++) {
            Cnew cnew = cnewArr[i];
            if (cnewArr[i] != null) {
                int iM22261try = cnew.m22261try() % 30;
                int iM22256for = cnew.m22256for();
                if (iM22256for > cdo.m22197for()) {
                    cnewArr[i] = null;
                } else {
                    if (!this.f17805new) {
                        iM22256for += 2;
                    }
                    int i2 = iM22256for % 3;
                    if (i2 != 0) {
                        if (i2 != 1) {
                            if (i2 == 2 && iM22261try + 1 != cdo.m22196do()) {
                                cnewArr[i] = null;
                            }
                        } else if (iM22261try / 3 != cdo.m22198if() || iM22261try % 3 != cdo.m22199new()) {
                            cnewArr[i] = null;
                        }
                    } else if ((iM22261try * 3) + 1 != cdo.m22200try()) {
                        cnewArr[i] = null;
                    }
                }
            }
        }
    }

    /* renamed from: const, reason: not valid java name */
    private void m22243const() {
        for (Cnew cnew : m22230new()) {
            if (cnew != null) {
                cnew.m22252break();
            }
        }
    }

    /* renamed from: goto, reason: not valid java name */
    private void m22244goto(Cdo cdo) {
        Cfor cforM22227do = m22227do();
        yn1 yn1VarM22237goto = this.f17805new ? cforM22227do.m22237goto() : cforM22227do.m22240this();
        yn1 yn1VarM22238if = this.f17805new ? cforM22227do.m22238if() : cforM22227do.m22236for();
        int iM22231try = m22231try((int) yn1VarM22238if.m9912new());
        Cnew[] cnewArrM22230new = m22230new();
        int iM22256for = -1;
        int i = 0;
        int iMax = 1;
        for (int iM22231try2 = m22231try((int) yn1VarM22237goto.m9912new()); iM22231try2 < iM22231try; iM22231try2++) {
            if (cnewArrM22230new[iM22231try2] != null) {
                Cnew cnew = cnewArrM22230new[iM22231try2];
                cnew.m22252break();
                int iM22256for2 = cnew.m22256for() - iM22256for;
                if (iM22256for2 == 0) {
                    i++;
                } else {
                    if (iM22256for2 == 1) {
                        iMax = Math.max(iMax, i);
                        iM22256for = cnew.m22256for();
                    } else if (cnew.m22256for() >= cdo.m22197for()) {
                        cnewArrM22230new[iM22231try2] = null;
                    } else {
                        iM22256for = cnew.m22256for();
                    }
                    i = 1;
                }
            }
        }
    }

    /* renamed from: break, reason: not valid java name */
    public int[] m22245break() {
        int iM22256for;
        Cdo cdoM22248this = m22248this();
        if (cdoM22248this == null) {
            return null;
        }
        m22244goto(cdoM22248this);
        int iM22197for = cdoM22248this.m22197for();
        int[] iArr = new int[iM22197for];
        for (Cnew cnew : m22230new()) {
            if (cnew != null && (iM22256for = cnew.m22256for()) < iM22197for) {
                iArr[iM22256for] = iArr[iM22256for] + 1;
            }
        }
        return iArr;
    }

    /* renamed from: catch, reason: not valid java name */
    public boolean m22246catch() {
        return this.f17805new;
    }

    /* renamed from: else, reason: not valid java name */
    public void m22247else(Cdo cdo) {
        Cnew[] cnewArrM22230new = m22230new();
        m22243const();
        m22242class(cnewArrM22230new, cdo);
        Cfor cforM22227do = m22227do();
        yn1 yn1VarM22237goto = this.f17805new ? cforM22227do.m22237goto() : cforM22227do.m22240this();
        yn1 yn1VarM22238if = this.f17805new ? cforM22227do.m22238if() : cforM22227do.m22236for();
        int iM22231try = m22231try((int) yn1VarM22237goto.m9912new());
        int iM22231try2 = m22231try((int) yn1VarM22238if.m9912new());
        int iM22256for = -1;
        int i = 0;
        int iMax = 1;
        while (iM22231try < iM22231try2) {
            if (cnewArrM22230new[iM22231try] != null) {
                Cnew cnew = cnewArrM22230new[iM22231try];
                int iM22256for2 = cnew.m22256for() - iM22256for;
                if (iM22256for2 == 0) {
                    i++;
                } else {
                    if (iM22256for2 == 1) {
                        iMax = Math.max(iMax, i);
                        iM22256for = cnew.m22256for();
                    } else if (iM22256for2 < 0 || cnew.m22256for() >= cdo.m22197for() || iM22256for2 > iM22231try) {
                        cnewArrM22230new[iM22231try] = null;
                    } else {
                        if (iMax > 2) {
                            iM22256for2 *= iMax - 2;
                        }
                        boolean z = iM22256for2 >= iM22231try;
                        for (int i2 = 1; i2 <= iM22256for2 && !z; i2++) {
                            z = cnewArrM22230new[iM22231try - i2] != null;
                        }
                        if (z) {
                            cnewArrM22230new[iM22231try] = null;
                        } else {
                            iM22256for = cnew.m22256for();
                        }
                    }
                    i = 1;
                }
            }
            iM22231try++;
        }
    }

    /* renamed from: this, reason: not valid java name */
    public Cdo m22248this() {
        Cnew[] cnewArrM22230new = m22230new();
        Cif cif = new Cif();
        Cif cif2 = new Cif();
        Cif cif3 = new Cif();
        Cif cif4 = new Cif();
        for (Cnew cnew : cnewArrM22230new) {
            if (cnew != null) {
                cnew.m22252break();
                int iM22261try = cnew.m22261try() % 30;
                int iM22256for = cnew.m22256for();
                if (!this.f17805new) {
                    iM22256for += 2;
                }
                int i = iM22256for % 3;
                if (i == 0) {
                    cif2.m22250for((iM22261try * 3) + 1);
                } else if (i == 1) {
                    cif4.m22250for(iM22261try / 3);
                    cif3.m22250for(iM22261try % 3);
                } else if (i == 2) {
                    cif.m22250for(iM22261try + 1);
                }
            }
        }
        if (cif.m22251if().length == 0 || cif2.m22251if().length == 0 || cif3.m22251if().length == 0 || cif4.m22251if().length == 0 || cif.m22251if()[0] <= 0 || cif2.m22251if()[0] + cif3.m22251if()[0] < 3 || cif2.m22251if()[0] + cif3.m22251if()[0] > 90) {
            return null;
        }
        Cdo cdo = new Cdo(cif.m22251if()[0], cif2.m22251if()[0], cif3.m22251if()[0], cif4.m22251if()[0]);
        m22242class(cnewArrM22230new, cdo);
        return cdo;
    }

    @Override // com.google.zxing.pdf417.decoder.Celse
    public String toString() {
        return "IsLeft: " + this.f17805new + '\n' + super.toString();
    }
}
