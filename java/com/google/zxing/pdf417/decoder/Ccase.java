package com.google.zxing.pdf417.decoder;

import android.support.v4.w91;
import java.util.Formatter;

/* renamed from: com.google.zxing.pdf417.decoder.case, reason: invalid class name */
/* loaded from: classes2.dex */
final class Ccase {

    /* renamed from: try, reason: not valid java name */
    private static final int f17774try = 2;

    /* renamed from: do, reason: not valid java name */
    private final Cdo f17775do;

    /* renamed from: for, reason: not valid java name */
    private Cfor f17776for;

    /* renamed from: if, reason: not valid java name */
    private final Celse[] f17777if;

    /* renamed from: new, reason: not valid java name */
    private final int f17778new;

    public Ccase(Cdo cdo, Cfor cfor) {
        this.f17775do = cdo;
        int iM22196do = cdo.m22196do();
        this.f17778new = iM22196do;
        this.f17776for = cfor;
        this.f17777if = new Celse[iM22196do + 2];
    }

    /* renamed from: case, reason: not valid java name */
    private int m22179case() {
        m22181else();
        return m22183goto() + m22186this();
    }

    /* renamed from: do, reason: not valid java name */
    private void m22180do(Celse celse) {
        if (celse != null) {
            ((Cgoto) celse).m22247else(this.f17775do);
        }
    }

    /* renamed from: else, reason: not valid java name */
    private void m22181else() {
        Celse[] celseArr = this.f17777if;
        if (celseArr[0] == null || celseArr[this.f17778new + 1] == null) {
            return;
        }
        Cnew[] cnewArrM22230new = celseArr[0].m22230new();
        Cnew[] cnewArrM22230new2 = this.f17777if[this.f17778new + 1].m22230new();
        for (int i = 0; i < cnewArrM22230new.length; i++) {
            if (cnewArrM22230new[i] != null && cnewArrM22230new2[i] != null && cnewArrM22230new[i].m22256for() == cnewArrM22230new2[i].m22256for()) {
                for (int i2 = 1; i2 <= this.f17778new; i2++) {
                    Cnew cnew = this.f17777if[i2].m22230new()[i];
                    if (cnew != null) {
                        cnew.m22260this(cnewArrM22230new[i].m22256for());
                        if (!cnew.m22255else()) {
                            this.f17777if[i2].m22230new()[i] = null;
                        }
                    }
                }
            }
        }
    }

    /* renamed from: for, reason: not valid java name */
    private static int m22182for(int i, int i2, Cnew cnew) {
        if (cnew == null || cnew.m22255else()) {
            return i2;
        }
        if (!cnew.m22257goto(i)) {
            return i2 + 1;
        }
        cnew.m22260this(i);
        return 0;
    }

    /* renamed from: goto, reason: not valid java name */
    private int m22183goto() {
        Celse[] celseArr = this.f17777if;
        if (celseArr[0] == null) {
            return 0;
        }
        Cnew[] cnewArrM22230new = celseArr[0].m22230new();
        int i = 0;
        for (int i2 = 0; i2 < cnewArrM22230new.length; i2++) {
            if (cnewArrM22230new[i2] != null) {
                int iM22256for = cnewArrM22230new[i2].m22256for();
                int iM22182for = 0;
                for (int i3 = 1; i3 < this.f17778new + 1 && iM22182for < 2; i3++) {
                    Cnew cnew = this.f17777if[i3].m22230new()[i2];
                    if (cnew != null) {
                        iM22182for = m22182for(iM22256for, iM22182for, cnew);
                        if (!cnew.m22255else()) {
                            i++;
                        }
                    }
                }
            }
        }
        return i;
    }

    /* renamed from: if, reason: not valid java name */
    private static boolean m22184if(Cnew cnew, Cnew cnew2) {
        if (cnew2 == null || !cnew2.m22255else() || cnew2.m22254do() != cnew.m22254do()) {
            return false;
        }
        cnew.m22260this(cnew2.m22256for());
        return true;
    }

    /* renamed from: new, reason: not valid java name */
    private int m22185new() {
        int iM22179case = m22179case();
        if (iM22179case == 0) {
            return 0;
        }
        for (int i = 1; i < this.f17778new + 1; i++) {
            Cnew[] cnewArrM22230new = this.f17777if[i].m22230new();
            for (int i2 = 0; i2 < cnewArrM22230new.length; i2++) {
                if (cnewArrM22230new[i2] != null && !cnewArrM22230new[i2].m22255else()) {
                    m22187try(i, i2, cnewArrM22230new);
                }
            }
        }
        return iM22179case;
    }

    /* renamed from: this, reason: not valid java name */
    private int m22186this() {
        Celse[] celseArr = this.f17777if;
        int i = this.f17778new;
        if (celseArr[i + 1] == null) {
            return 0;
        }
        Cnew[] cnewArrM22230new = celseArr[i + 1].m22230new();
        int i2 = 0;
        for (int i3 = 0; i3 < cnewArrM22230new.length; i3++) {
            if (cnewArrM22230new[i3] != null) {
                int iM22256for = cnewArrM22230new[i3].m22256for();
                int iM22182for = 0;
                for (int i4 = this.f17778new + 1; i4 > 0 && iM22182for < 2; i4--) {
                    Cnew cnew = this.f17777if[i4].m22230new()[i3];
                    if (cnew != null) {
                        iM22182for = m22182for(iM22256for, iM22182for, cnew);
                        if (!cnew.m22255else()) {
                            i2++;
                        }
                    }
                }
            }
        }
        return i2;
    }

    /* renamed from: try, reason: not valid java name */
    private void m22187try(int i, int i2, Cnew[] cnewArr) {
        Cnew cnew = cnewArr[i2];
        Cnew[] cnewArrM22230new = this.f17777if[i - 1].m22230new();
        Celse[] celseArr = this.f17777if;
        int i3 = i + 1;
        Cnew[] cnewArrM22230new2 = celseArr[i3] != null ? celseArr[i3].m22230new() : cnewArrM22230new;
        Cnew[] cnewArr2 = new Cnew[14];
        cnewArr2[2] = cnewArrM22230new[i2];
        cnewArr2[3] = cnewArrM22230new2[i2];
        if (i2 > 0) {
            int i4 = i2 - 1;
            cnewArr2[0] = cnewArr[i4];
            cnewArr2[4] = cnewArrM22230new[i4];
            cnewArr2[5] = cnewArrM22230new2[i4];
        }
        if (i2 > 1) {
            int i5 = i2 - 2;
            cnewArr2[8] = cnewArr[i5];
            cnewArr2[10] = cnewArrM22230new[i5];
            cnewArr2[11] = cnewArrM22230new2[i5];
        }
        if (i2 < cnewArr.length - 1) {
            int i6 = i2 + 1;
            cnewArr2[1] = cnewArr[i6];
            cnewArr2[6] = cnewArrM22230new[i6];
            cnewArr2[7] = cnewArrM22230new2[i6];
        }
        if (i2 < cnewArr.length - 2) {
            int i7 = i2 + 2;
            cnewArr2[9] = cnewArr[i7];
            cnewArr2[12] = cnewArrM22230new[i7];
            cnewArr2[13] = cnewArrM22230new2[i7];
        }
        for (int i8 = 0; i8 < 14 && !m22184if(cnew, cnewArr2[i8]); i8++) {
        }
    }

    /* renamed from: break, reason: not valid java name */
    public int m22188break() {
        return this.f17778new;
    }

    /* renamed from: catch, reason: not valid java name */
    public int m22189catch() {
        return this.f17775do.m22198if();
    }

    /* renamed from: class, reason: not valid java name */
    public int m22190class() {
        return this.f17775do.m22197for();
    }

    /* renamed from: const, reason: not valid java name */
    public Cfor m22191const() {
        return this.f17776for;
    }

    /* renamed from: final, reason: not valid java name */
    public Celse m22192final(int i) {
        return this.f17777if[i];
    }

    /* renamed from: super, reason: not valid java name */
    public Celse[] m22193super() {
        m22180do(this.f17777if[0]);
        m22180do(this.f17777if[this.f17778new + 1]);
        int i = w91.f7424if;
        while (true) {
            int iM22185new = m22185new();
            if (iM22185new <= 0 || iM22185new >= i) {
                break;
            }
            i = iM22185new;
        }
        return this.f17777if;
    }

    /* renamed from: throw, reason: not valid java name */
    public void m22194throw(Cfor cfor) {
        this.f17776for = cfor;
    }

    public String toString() {
        Celse[] celseArr = this.f17777if;
        Celse celse = celseArr[0];
        if (celse == null) {
            celse = celseArr[this.f17778new + 1];
        }
        Formatter formatter = new Formatter();
        for (int i = 0; i < celse.m22230new().length; i++) {
            try {
                formatter.format("CW %3d:", Integer.valueOf(i));
                for (int i2 = 0; i2 < this.f17778new + 2; i2++) {
                    Celse[] celseArr2 = this.f17777if;
                    if (celseArr2[i2] == null) {
                        formatter.format("    |   ", new Object[0]);
                    } else {
                        Cnew cnew = celseArr2[i2].m22230new()[i];
                        if (cnew == null) {
                            formatter.format("    |   ", new Object[0]);
                        } else {
                            formatter.format(" %3d|%3d", Integer.valueOf(cnew.m22256for()), Integer.valueOf(cnew.m22261try()));
                        }
                    }
                }
                formatter.format("%n", new Object[0]);
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    try {
                        formatter.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                    throw th2;
                }
            }
        }
        String string = formatter.toString();
        formatter.close();
        return string;
    }

    /* renamed from: while, reason: not valid java name */
    public void m22195while(int i, Celse celse) {
        this.f17777if[i] = celse;
    }
}
