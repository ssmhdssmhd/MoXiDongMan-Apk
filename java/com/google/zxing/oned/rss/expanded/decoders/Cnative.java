package com.google.zxing.oned.rss.expanded.decoders;

import android.support.v4.ca2;
import android.support.v4.hy1;
import android.support.v4.j41;
import android.support.v4.ld0;
import android.support.v4.w8;
import com.scwang.smartrefresh.header.flyrefresh.MountainSceneView;
import org.apache.commons.lang3.Ctry;
import org.jsoup.nodes.Attributes;

/* renamed from: com.google.zxing.oned.rss.expanded.decoders.native, reason: invalid class name */
/* loaded from: classes2.dex */
final class Cnative {

    /* renamed from: do, reason: not valid java name */
    private final w8 f17698do;

    /* renamed from: if, reason: not valid java name */
    private final Cconst f17700if = new Cconst();

    /* renamed from: for, reason: not valid java name */
    private final StringBuilder f17699for = new StringBuilder();

    public Cnative(w8 w8Var) {
        this.f17698do = w8Var;
    }

    /* renamed from: break, reason: not valid java name */
    private boolean m22066break(int i) {
        int i2;
        if (i + 1 > this.f17698do.m9078class()) {
            return false;
        }
        for (int i3 = 0; i3 < 4 && (i2 = i3 + i) < this.f17698do.m9078class(); i3++) {
            if (this.f17698do.m9084goto(i2)) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: catch, reason: not valid java name */
    private boolean m22067catch(int i) {
        int iM22080case;
        if (i + 5 > this.f17698do.m9078class()) {
            return false;
        }
        int iM22080case2 = m22080case(i, 5);
        if (iM22080case2 < 5 || iM22080case2 >= 16) {
            return i + 6 <= this.f17698do.m9078class() && (iM22080case = m22080case(i, 6)) >= 16 && iM22080case < 63;
        }
        return true;
    }

    /* renamed from: class, reason: not valid java name */
    private boolean m22068class(int i) {
        int iM22080case;
        if (i + 5 > this.f17698do.m9078class()) {
            return false;
        }
        int iM22080case2 = m22080case(i, 5);
        if (iM22080case2 >= 5 && iM22080case2 < 16) {
            return true;
        }
        if (i + 7 > this.f17698do.m9078class()) {
            return false;
        }
        int iM22080case3 = m22080case(i, 7);
        if (iM22080case3 < 64 || iM22080case3 >= 116) {
            return i + 8 <= this.f17698do.m9078class() && (iM22080case = m22080case(i, 8)) >= 232 && iM22080case < 253;
        }
        return true;
    }

    /* renamed from: const, reason: not valid java name */
    private boolean m22069const(int i) {
        if (i + 7 > this.f17698do.m9078class()) {
            return i + 4 <= this.f17698do.m9078class();
        }
        int i2 = i;
        while (true) {
            int i3 = i + 3;
            if (i2 >= i3) {
                return this.f17698do.m9084goto(i3);
            }
            if (this.f17698do.m9084goto(i2)) {
                return true;
            }
            i2++;
        }
    }

    /* renamed from: else, reason: not valid java name */
    public static int m22070else(w8 w8Var, int i, int i2) {
        int i3 = 0;
        for (int i4 = 0; i4 < i2; i4++) {
            if (w8Var.m9084goto(i + i4)) {
                i3 |= 1 << ((i2 - i4) - 1);
            }
        }
        return i3;
    }

    /* renamed from: final, reason: not valid java name */
    private Cclass m22071final() {
        while (m22067catch(this.f17700if.m22048do())) {
            Cfinal cfinalM22073if = m22073if(this.f17700if.m22048do());
            this.f17700if.m22054this(cfinalM22073if.m22094do());
            if (cfinalM22073if.m22058for()) {
                return new Cclass(new Csuper(this.f17700if.m22048do(), this.f17699for.toString()), true);
            }
            this.f17699for.append(cfinalM22073if.m22059if());
        }
        if (m22072goto(this.f17700if.m22048do())) {
            this.f17700if.m22052if(3);
            this.f17700if.m22051goto();
        } else if (m22076this(this.f17700if.m22048do())) {
            if (this.f17700if.m22048do() + 5 < this.f17698do.m9078class()) {
                this.f17700if.m22052if(5);
            } else {
                this.f17700if.m22054this(this.f17698do.m9078class());
            }
            this.f17700if.m22049else();
        }
        return new Cclass(false);
    }

    /* renamed from: goto, reason: not valid java name */
    private boolean m22072goto(int i) {
        int i2 = i + 3;
        if (i2 > this.f17698do.m9078class()) {
            return false;
        }
        while (i < i2) {
            if (this.f17698do.m9084goto(i)) {
                return false;
            }
            i++;
        }
        return true;
    }

    /* renamed from: if, reason: not valid java name */
    private Cfinal m22073if(int i) {
        char c;
        int iM22080case = m22080case(i, 5);
        if (iM22080case == 15) {
            return new Cfinal(i + 5, '$');
        }
        if (iM22080case >= 5 && iM22080case < 15) {
            return new Cfinal(i + 5, (char) ((iM22080case + 48) - 5));
        }
        int iM22080case2 = m22080case(i, 6);
        if (iM22080case2 >= 32 && iM22080case2 < 58) {
            return new Cfinal(i + 6, (char) (iM22080case2 + 33));
        }
        switch (iM22080case2) {
            case 58:
                c = '*';
                break;
            case 59:
                c = ',';
                break;
            case 60:
                c = hy1.f2561for;
                break;
            case 61:
                c = Ctry.f28883do;
                break;
            case 62:
                c = Attributes.InternalPrefix;
                break;
            default:
                throw new IllegalStateException("Decoding invalid alphanumeric value: ".concat(String.valueOf(iM22080case2)));
        }
        return new Cfinal(i + 6, c);
    }

    /* renamed from: new, reason: not valid java name */
    private Cfinal m22074new(int i) throws ld0 {
        char c;
        int iM22080case = m22080case(i, 5);
        if (iM22080case == 15) {
            return new Cfinal(i + 5, '$');
        }
        if (iM22080case >= 5 && iM22080case < 15) {
            return new Cfinal(i + 5, (char) ((iM22080case + 48) - 5));
        }
        int iM22080case2 = m22080case(i, 7);
        if (iM22080case2 >= 64 && iM22080case2 < 90) {
            return new Cfinal(i + 7, (char) (iM22080case2 + 1));
        }
        if (iM22080case2 >= 90 && iM22080case2 < 116) {
            return new Cfinal(i + 7, (char) (iM22080case2 + 7));
        }
        switch (m22080case(i, 8)) {
            case 232:
                c = '!';
                break;
            case 233:
                c = ca2.f674do;
                break;
            case 234:
                c = '%';
                break;
            case 235:
                c = ca2.f679for;
                break;
            case 236:
                c = '\'';
                break;
            case 237:
                c = '(';
                break;
            case 238:
                c = ')';
                break;
            case 239:
                c = '*';
                break;
            case MountainSceneView.f20267finally /* 240 */:
                c = hy1.f2562if;
                break;
            case 241:
                c = ',';
                break;
            case 242:
                c = hy1.f2561for;
                break;
            case 243:
                c = Ctry.f28883do;
                break;
            case 244:
                c = Attributes.InternalPrefix;
                break;
            case 245:
                c = ':';
                break;
            case 246:
                c = ';';
                break;
            case 247:
                c = ca2.f687new;
                break;
            case 248:
                c = hy1.f2563new;
                break;
            case 249:
                c = ca2.f702try;
                break;
            case 250:
                c = '?';
                break;
            case 251:
                c = '_';
                break;
            case 252:
                c = ' ';
                break;
            default:
                throw ld0.getFormatInstance();
        }
        return new Cfinal(i + 8, c);
    }

    /* renamed from: super, reason: not valid java name */
    private Csuper m22075super() throws ld0 {
        Cclass cclassM22079while;
        boolean zM22046if;
        do {
            int iM22048do = this.f17700if.m22048do();
            if (this.f17700if.m22050for()) {
                cclassM22079while = m22071final();
                zM22046if = cclassM22079while.m22046if();
            } else if (this.f17700if.m22053new()) {
                cclassM22079while = m22077throw();
                zM22046if = cclassM22079while.m22046if();
            } else {
                cclassM22079while = m22079while();
                zM22046if = cclassM22079while.m22046if();
            }
            if (!(iM22048do != this.f17700if.m22048do()) && !zM22046if) {
                break;
            }
        } while (!zM22046if);
        return cclassM22079while.m22045do();
    }

    /* renamed from: this, reason: not valid java name */
    private boolean m22076this(int i) {
        int i2;
        if (i + 1 > this.f17698do.m9078class()) {
            return false;
        }
        for (int i3 = 0; i3 < 5 && (i2 = i3 + i) < this.f17698do.m9078class(); i3++) {
            if (i3 == 2) {
                if (!this.f17698do.m9084goto(i + 2)) {
                    return false;
                }
            } else if (this.f17698do.m9084goto(i2)) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: throw, reason: not valid java name */
    private Cclass m22077throw() throws ld0 {
        while (m22068class(this.f17700if.m22048do())) {
            Cfinal cfinalM22074new = m22074new(this.f17700if.m22048do());
            this.f17700if.m22054this(cfinalM22074new.m22094do());
            if (cfinalM22074new.m22058for()) {
                return new Cclass(new Csuper(this.f17700if.m22048do(), this.f17699for.toString()), true);
            }
            this.f17699for.append(cfinalM22074new.m22059if());
        }
        if (m22072goto(this.f17700if.m22048do())) {
            this.f17700if.m22052if(3);
            this.f17700if.m22051goto();
        } else if (m22076this(this.f17700if.m22048do())) {
            if (this.f17700if.m22048do() + 5 < this.f17698do.m9078class()) {
                this.f17700if.m22052if(5);
            } else {
                this.f17700if.m22054this(this.f17698do.m9078class());
            }
            this.f17700if.m22047case();
        }
        return new Cclass(false);
    }

    /* renamed from: try, reason: not valid java name */
    private Cthrow m22078try(int i) throws ld0 {
        int i2 = i + 7;
        if (i2 > this.f17698do.m9078class()) {
            int iM22080case = m22080case(i, 4);
            return iM22080case == 0 ? new Cthrow(this.f17698do.m9078class(), 10, 10) : new Cthrow(this.f17698do.m9078class(), iM22080case - 1, 10);
        }
        int iM22080case2 = m22080case(i, 7) - 8;
        return new Cthrow(i2, iM22080case2 / 11, iM22080case2 % 11);
    }

    /* renamed from: while, reason: not valid java name */
    private Cclass m22079while() throws ld0 {
        while (m22069const(this.f17700if.m22048do())) {
            Cthrow cthrowM22078try = m22078try(this.f17700if.m22048do());
            this.f17700if.m22054this(cthrowM22078try.m22094do());
            if (cthrowM22078try.m22087case()) {
                return new Cclass(cthrowM22078try.m22088else() ? new Csuper(this.f17700if.m22048do(), this.f17699for.toString()) : new Csuper(this.f17700if.m22048do(), this.f17699for.toString(), cthrowM22078try.m22089for()), true);
            }
            this.f17699for.append(cthrowM22078try.m22090if());
            if (cthrowM22078try.m22088else()) {
                return new Cclass(new Csuper(this.f17700if.m22048do(), this.f17699for.toString()), true);
            }
            this.f17699for.append(cthrowM22078try.m22089for());
        }
        if (m22066break(this.f17700if.m22048do())) {
            this.f17700if.m22047case();
            this.f17700if.m22052if(4);
        }
        return new Cclass(false);
    }

    /* renamed from: case, reason: not valid java name */
    public int m22080case(int i, int i2) {
        return m22070else(this.f17698do, i, i2);
    }

    /* renamed from: do, reason: not valid java name */
    public String m22081do(StringBuilder sb, int i) throws ld0, j41 {
        String str = null;
        while (true) {
            Csuper csuperM22082for = m22082for(i, str);
            String strM22063do = Cimport.m22063do(csuperM22082for.m22084if());
            if (strM22063do != null) {
                sb.append(strM22063do);
            }
            String strValueOf = csuperM22082for.m22085new() ? String.valueOf(csuperM22082for.m22083for()) : null;
            if (i == csuperM22082for.m22094do()) {
                return sb.toString();
            }
            i = csuperM22082for.m22094do();
            str = strValueOf;
        }
    }

    /* renamed from: for, reason: not valid java name */
    public Csuper m22082for(int i, String str) throws ld0 {
        this.f17699for.setLength(0);
        if (str != null) {
            this.f17699for.append(str);
        }
        this.f17700if.m22054this(i);
        Csuper csuperM22075super = m22075super();
        return (csuperM22075super == null || !csuperM22075super.m22085new()) ? new Csuper(this.f17700if.m22048do(), this.f17699for.toString()) : new Csuper(this.f17700if.m22048do(), this.f17699for.toString(), csuperM22075super.m22083for());
    }
}
