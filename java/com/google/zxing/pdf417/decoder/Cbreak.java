package com.google.zxing.pdf417.decoder;

import android.support.v4.j41;
import android.support.v4.ld0;
import android.support.v4.ll;
import android.support.v4.mx;
import android.support.v4.w91;
import android.support.v4.xx0;
import android.support.v4.yn1;
import android.support.v4.z8;
import com.google.zxing.pdf417.decoder.ec.Cdo;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Formatter;

/* renamed from: com.google.zxing.pdf417.decoder.break, reason: invalid class name */
/* loaded from: classes2.dex */
public final class Cbreak {

    /* renamed from: do, reason: not valid java name */
    private static final int f17770do = 2;

    /* renamed from: for, reason: not valid java name */
    private static final int f17771for = 512;

    /* renamed from: if, reason: not valid java name */
    private static final int f17772if = 3;

    /* renamed from: new, reason: not valid java name */
    private static final Cdo f17773new = new Cdo();

    private Cbreak() {
    }

    /* renamed from: break, reason: not valid java name */
    private static mx m22155break(int[] iArr, int i, int[] iArr2) throws ll, ld0 {
        if (iArr.length == 0) {
            throw ld0.getFormatInstance();
        }
        int i2 = 1 << (i + 1);
        int iM22177try = m22177try(iArr, iArr2, i2);
        m22176throws(iArr, i2);
        mx mxVarM22271if = Ctry.m22271if(iArr, String.valueOf(i));
        mxVarM22271if.m5033const(Integer.valueOf(iM22177try));
        mxVarM22271if.m5032class(Integer.valueOf(iArr2.length));
        return mxVarM22271if;
    }

    /* renamed from: case, reason: not valid java name */
    private static Cif[][] m22156case(Ccase ccase) {
        int iM22256for;
        Cif[][] cifArr = (Cif[][]) Array.newInstance((Class<?>) Cif.class, ccase.m22190class(), ccase.m22188break() + 2);
        for (int i = 0; i < cifArr.length; i++) {
            for (int i2 = 0; i2 < cifArr[i].length; i2++) {
                cifArr[i][i2] = new Cif();
            }
        }
        int i3 = 0;
        for (Celse celse : ccase.m22193super()) {
            if (celse != null) {
                for (Cnew cnew : celse.m22230new()) {
                    if (cnew != null && (iM22256for = cnew.m22256for()) >= 0 && iM22256for < cifArr.length) {
                        cifArr[iM22256for][i3].m22250for(cnew.m22261try());
                    }
                }
            }
            i3++;
        }
        return cifArr;
    }

    /* renamed from: catch, reason: not valid java name */
    private static Cnew m22157catch(z8 z8Var, int i, int i2, boolean z, int i3, int i4, int i5, int i6) {
        int i7;
        int iM22265new;
        int iM9108if;
        int iM22163for = m22163for(z8Var, i, i2, z, i3, i4);
        int[] iArrM22178while = m22178while(z8Var, i, i2, z, iM22163for, i4);
        if (iArrM22178while == null) {
            return null;
        }
        int iM9611new = xx0.m9611new(iArrM22178while);
        if (z) {
            i7 = iM22163for + iM9611new;
        } else {
            for (int i8 = 0; i8 < iArrM22178while.length / 2; i8++) {
                int i9 = iArrM22178while[i8];
                iArrM22178while[i8] = iArrM22178while[(iArrM22178while.length - 1) - i8];
                iArrM22178while[(iArrM22178while.length - 1) - i8] = i9;
            }
            iM22163for -= iM9611new;
            i7 = iM22163for;
        }
        if (m22168new(iM9611new, i5, i6) && (iM9108if = w91.m9108if((iM22265new = Cthis.m22265new(iArrM22178while)))) != -1) {
            return new Cnew(iM22163for, i7, m22162final(iM22265new), iM9108if);
        }
        return null;
    }

    /* renamed from: class, reason: not valid java name */
    private static Cdo m22158class(Cgoto cgoto, Cgoto cgoto2) {
        Cdo cdoM22248this;
        Cdo cdoM22248this2;
        if (cgoto == null || (cdoM22248this = cgoto.m22248this()) == null) {
            if (cgoto2 == null) {
                return null;
            }
            return cgoto2.m22248this();
        }
        if (cgoto2 == null || (cdoM22248this2 = cgoto2.m22248this()) == null || cdoM22248this.m22196do() == cdoM22248this2.m22196do() || cdoM22248this.m22198if() == cdoM22248this2.m22198if() || cdoM22248this.m22197for() == cdoM22248this2.m22197for()) {
            return cdoM22248this;
        }
        return null;
    }

    /* renamed from: const, reason: not valid java name */
    private static int[] m22159const(int i) {
        int[] iArr = new int[8];
        int i2 = 0;
        int i3 = 7;
        while (true) {
            int i4 = i & 1;
            if (i4 != i2) {
                i3--;
                if (i3 < 0) {
                    return iArr;
                }
                i2 = i4;
            }
            iArr[i3] = iArr[i3] + 1;
            i >>= 1;
        }
    }

    /* renamed from: do, reason: not valid java name */
    private static Cfor m22160do(Cgoto cgoto) throws j41 {
        int[] iArrM22245break;
        if (cgoto == null || (iArrM22245break = cgoto.m22245break()) == null) {
            return null;
        }
        int iM22175throw = m22175throw(iArrM22245break);
        int i = 0;
        int i2 = 0;
        for (int i3 : iArrM22245break) {
            i2 += iM22175throw - i3;
            if (i3 > 0) {
                break;
            }
        }
        Cnew[] cnewArrM22230new = cgoto.m22230new();
        for (int i4 = 0; i2 > 0 && cnewArrM22230new[i4] == null; i4++) {
            i2--;
        }
        for (int length = iArrM22245break.length - 1; length >= 0; length--) {
            i += iM22175throw - iArrM22245break[length];
            if (iArrM22245break[length] > 0) {
                break;
            }
        }
        for (int length2 = cnewArrM22230new.length - 1; i > 0 && cnewArrM22230new[length2] == null; length2--) {
            i--;
        }
        return cgoto.m22227do().m22234do(i2, i, cgoto.m22246catch());
    }

    /* renamed from: else, reason: not valid java name */
    private static mx m22161else(Ccase ccase) throws ll, ld0, j41 {
        Cif[][] cifArrM22156case = m22156case(ccase);
        m22165if(ccase, cifArrM22156case);
        ArrayList arrayList = new ArrayList();
        int[] iArr = new int[ccase.m22190class() * ccase.m22188break()];
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        for (int i = 0; i < ccase.m22190class(); i++) {
            int i2 = 0;
            while (i2 < ccase.m22188break()) {
                int i3 = i2 + 1;
                int[] iArrM22251if = cifArrM22156case[i][i3].m22251if();
                int iM22188break = (ccase.m22188break() * i) + i2;
                if (iArrM22251if.length == 0) {
                    arrayList.add(Integer.valueOf(iM22188break));
                } else if (iArrM22251if.length == 1) {
                    iArr[iM22188break] = iArrM22251if[0];
                } else {
                    arrayList3.add(Integer.valueOf(iM22188break));
                    arrayList2.add(iArrM22251if);
                }
                i2 = i3;
            }
        }
        int size = arrayList2.size();
        int[][] iArr2 = new int[size][];
        for (int i4 = 0; i4 < size; i4++) {
            iArr2[i4] = (int[]) arrayList2.get(i4);
        }
        return m22164goto(ccase.m22189catch(), iArr, w91.m9107for(arrayList), w91.m9107for(arrayList3), iArr2);
    }

    /* renamed from: final, reason: not valid java name */
    private static int m22162final(int i) {
        return m22172super(m22159const(i));
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0022, code lost:
    
        r0 = -r0;
        r8 = !r8;
        r1 = r1 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0022, code lost:
    
        continue;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0022, code lost:
    
        continue;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0022, code lost:
    
        continue;
     */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0011  */
    /* renamed from: for, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static int m22163for(z8 z8Var, int i, int i2, boolean z, int i3, int i4) {
        int i5 = z ? -1 : 1;
        int i6 = 0;
        int i7 = i3;
        while (i6 < 2) {
            while (true) {
                if (z) {
                    if (i7 >= i) {
                        if (z == z8Var.m10105try(i7, i4)) {
                            if (Math.abs(i3 - i7) > 2) {
                                return i3;
                            }
                            i7 += i5;
                        }
                    }
                } else if (i7 < i2) {
                }
            }
        }
        return i7;
    }

    /* renamed from: goto, reason: not valid java name */
    private static mx m22164goto(int i, int[] iArr, int[] iArr2, int[] iArr3, int[][] iArr4) throws ll, ld0 {
        int length = iArr3.length;
        int[] iArr5 = new int[length];
        int i2 = 100;
        while (true) {
            int i3 = i2 - 1;
            if (i2 <= 0) {
                throw ll.getChecksumInstance();
            }
            for (int i4 = 0; i4 < length; i4++) {
                iArr[iArr3[i4]] = iArr4[i4][iArr5[i4]];
            }
            try {
                return m22155break(iArr, i, iArr2);
            } catch (ll unused) {
                if (length == 0) {
                    throw ll.getChecksumInstance();
                }
                int i5 = 0;
                while (true) {
                    if (i5 >= length) {
                        break;
                    }
                    if (iArr5[i5] < iArr4[i5].length - 1) {
                        iArr5[i5] = iArr5[i5] + 1;
                        break;
                    }
                    iArr5[i5] = 0;
                    if (i5 == length - 1) {
                        throw ll.getChecksumInstance();
                    }
                    i5++;
                }
                i2 = i3;
            }
        }
    }

    /* renamed from: if, reason: not valid java name */
    private static void m22165if(Ccase ccase, Cif[][] cifArr) throws j41 {
        Cif cif = cifArr[0][1];
        int[] iArrM22251if = cif.m22251if();
        int iM22188break = (ccase.m22188break() * ccase.m22190class()) - m22166import(ccase.m22189catch());
        if (iArrM22251if.length != 0) {
            if (iArrM22251if[0] != iM22188break) {
                cif.m22250for(iM22188break);
            }
        } else {
            if (iM22188break <= 0 || iM22188break > 928) {
                throw j41.getNotFoundInstance();
            }
            cif.m22250for(iM22188break);
        }
    }

    /* renamed from: import, reason: not valid java name */
    private static int m22166import(int i) {
        return 2 << i;
    }

    /* renamed from: native, reason: not valid java name */
    private static Cgoto m22167native(z8 z8Var, Cfor cfor, yn1 yn1Var, boolean z, int i, int i2) {
        Cgoto cgoto = new Cgoto(cfor, z);
        int i3 = 0;
        while (i3 < 2) {
            int i4 = i3 == 0 ? 1 : -1;
            int iM9911for = (int) yn1Var.m9911for();
            for (int iM9912new = (int) yn1Var.m9912new(); iM9912new <= cfor.m22241try() && iM9912new >= cfor.m22235else(); iM9912new += i4) {
                Cnew cnewM22157catch = m22157catch(z8Var, 0, z8Var.m10091class(), z, iM9911for, iM9912new, i, i2);
                if (cnewM22157catch != null) {
                    cgoto.m22226case(iM9912new, cnewM22157catch);
                    iM9911for = z ? cnewM22157catch.m22259new() : cnewM22157catch.m22258if();
                }
            }
            i3++;
        }
        return cgoto;
    }

    /* renamed from: new, reason: not valid java name */
    private static boolean m22168new(int i, int i2, int i3) {
        return i2 + (-2) <= i && i <= i3 + 2;
    }

    /* renamed from: public, reason: not valid java name */
    private static int m22169public(Ccase ccase, int i, int i2, boolean z) {
        int i3 = z ? 1 : -1;
        int i4 = i - i3;
        Cnew cnewM22229if = m22170return(ccase, i4) ? ccase.m22192final(i4).m22229if(i2) : null;
        if (cnewM22229if != null) {
            return z ? cnewM22229if.m22258if() : cnewM22229if.m22259new();
        }
        Cnew cnewM22228for = ccase.m22192final(i).m22228for(i2);
        if (cnewM22228for != null) {
            return z ? cnewM22228for.m22259new() : cnewM22228for.m22258if();
        }
        if (m22170return(ccase, i4)) {
            cnewM22228for = ccase.m22192final(i4).m22228for(i2);
        }
        if (cnewM22228for != null) {
            return z ? cnewM22228for.m22258if() : cnewM22228for.m22259new();
        }
        int i5 = 0;
        while (true) {
            i -= i3;
            if (!m22170return(ccase, i)) {
                Cfor cforM22191const = ccase.m22191const();
                return z ? cforM22191const.m22233case() : cforM22191const.m22239new();
            }
            for (Cnew cnew : ccase.m22192final(i).m22230new()) {
                if (cnew != null) {
                    return (z ? cnew.m22258if() : cnew.m22259new()) + (i3 * i5 * (cnew.m22258if() - cnew.m22259new()));
                }
            }
            i5++;
        }
    }

    /* renamed from: return, reason: not valid java name */
    private static boolean m22170return(Ccase ccase, int i) {
        return i >= 0 && i <= ccase.m22188break() + 1;
    }

    /* renamed from: static, reason: not valid java name */
    private static Ccase m22171static(Cgoto cgoto, Cgoto cgoto2) throws j41 {
        Cdo cdoM22158class;
        if ((cgoto == null && cgoto2 == null) || (cdoM22158class = m22158class(cgoto, cgoto2)) == null) {
            return null;
        }
        return new Ccase(cdoM22158class, Cfor.m22232break(m22160do(cgoto), m22160do(cgoto2)));
    }

    /* renamed from: super, reason: not valid java name */
    private static int m22172super(int[] iArr) {
        return ((((iArr[0] - iArr[2]) + iArr[4]) - iArr[6]) + 9) % 9;
    }

    /* renamed from: switch, reason: not valid java name */
    public static String m22173switch(Cif[][] cifArr) {
        Formatter formatter = new Formatter();
        for (int i = 0; i < cifArr.length; i++) {
            try {
                formatter.format("Row %2d: ", Integer.valueOf(i));
                for (int i2 = 0; i2 < cifArr[i].length; i2++) {
                    Cif cif = cifArr[i][i2];
                    if (cif.m22251if().length == 0) {
                        formatter.format("        ", null);
                    } else {
                        formatter.format("%4d(%2d)", Integer.valueOf(cif.m22251if()[0]), cif.m22249do(cif.m22251if()[0]));
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

    /* renamed from: this, reason: not valid java name */
    public static mx m22174this(z8 z8Var, yn1 yn1Var, yn1 yn1Var2, yn1 yn1Var3, yn1 yn1Var4, int i, int i2) throws ll, ld0, j41 {
        int i3;
        int i4;
        int i5;
        Cgoto cgotoM22167native = null;
        Cgoto cgotoM22167native2 = null;
        Ccase ccaseM22171static = null;
        Cfor cfor = new Cfor(z8Var, yn1Var, yn1Var2, yn1Var3, yn1Var4);
        for (int i6 = 0; i6 < 2; i6++) {
            if (yn1Var != null) {
                cgotoM22167native = m22167native(z8Var, cfor, yn1Var, true, i, i2);
            }
            if (yn1Var3 != null) {
                cgotoM22167native2 = m22167native(z8Var, cfor, yn1Var3, false, i, i2);
            }
            ccaseM22171static = m22171static(cgotoM22167native, cgotoM22167native2);
            if (ccaseM22171static == null) {
                throw j41.getNotFoundInstance();
            }
            if (i6 != 0 || ccaseM22171static.m22191const() == null || (ccaseM22171static.m22191const().m22235else() >= cfor.m22235else() && ccaseM22171static.m22191const().m22241try() <= cfor.m22241try())) {
                ccaseM22171static.m22194throw(cfor);
                break;
            }
            cfor = ccaseM22171static.m22191const();
        }
        int iM22188break = ccaseM22171static.m22188break() + 1;
        ccaseM22171static.m22195while(0, cgotoM22167native);
        ccaseM22171static.m22195while(iM22188break, cgotoM22167native2);
        boolean z = cgotoM22167native != null;
        int iMin = i;
        int iMax = i2;
        for (int i7 = 1; i7 <= iM22188break; i7++) {
            int i8 = z ? i7 : iM22188break - i7;
            if (ccaseM22171static.m22192final(i8) == null) {
                Celse cgoto = (i8 == 0 || i8 == iM22188break) ? new Cgoto(cfor, i8 == 0) : new Celse(cfor);
                ccaseM22171static.m22195while(i8, cgoto);
                int i9 = -1;
                int iM22235else = cfor.m22235else();
                int i10 = -1;
                while (iM22235else <= cfor.m22241try()) {
                    int iM22169public = m22169public(ccaseM22171static, i8, iM22235else, z);
                    if (iM22169public >= 0 && iM22169public <= cfor.m22239new()) {
                        i5 = iM22169public;
                    } else if (i10 != i9) {
                        i5 = i10;
                    } else {
                        i3 = i10;
                        i4 = iM22235else;
                        i10 = i3;
                        iM22235else = i4 + 1;
                        i9 = -1;
                    }
                    i3 = i10;
                    int i11 = iM22235else;
                    Cnew cnewM22157catch = m22157catch(z8Var, cfor.m22233case(), cfor.m22239new(), z, i5, i11, iMin, iMax);
                    i4 = i11;
                    if (cnewM22157catch != null) {
                        cgoto.m22226case(i4, cnewM22157catch);
                        iMin = Math.min(iMin, cnewM22157catch.m22253case());
                        iMax = Math.max(iMax, cnewM22157catch.m22253case());
                        i10 = i5;
                    } else {
                        i10 = i3;
                    }
                    iM22235else = i4 + 1;
                    i9 = -1;
                }
            }
        }
        return m22161else(ccaseM22171static);
    }

    /* renamed from: throw, reason: not valid java name */
    private static int m22175throw(int[] iArr) {
        int iMax = -1;
        for (int i : iArr) {
            iMax = Math.max(iMax, i);
        }
        return iMax;
    }

    /* renamed from: throws, reason: not valid java name */
    private static void m22176throws(int[] iArr, int i) throws ld0 {
        if (iArr.length < 4) {
            throw ld0.getFormatInstance();
        }
        int i2 = iArr[0];
        if (i2 > iArr.length) {
            throw ld0.getFormatInstance();
        }
        if (i2 == 0) {
            if (i >= iArr.length) {
                throw ld0.getFormatInstance();
            }
            iArr[0] = iArr.length - i;
        }
    }

    /* renamed from: try, reason: not valid java name */
    private static int m22177try(int[] iArr, int[] iArr2, int i) throws ll {
        if ((iArr2 == null || iArr2.length <= (i / 2) + 3) && i >= 0 && i <= 512) {
            return f17773new.m22204do(iArr, i, iArr2);
        }
        throw ll.getChecksumInstance();
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0013  */
    /* renamed from: while, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static int[] m22178while(z8 z8Var, int i, int i2, boolean z, int i3, int i4) {
        int[] iArr = new int[8];
        int i5 = z ? 1 : -1;
        int i6 = 0;
        boolean z2 = z;
        while (true) {
            if (!z) {
                if (i3 < i) {
                    break;
                }
            } else {
                if (i3 >= i2) {
                    break;
                }
                if (i6 >= 8) {
                    break;
                }
                if (z8Var.m10105try(i3, i4) == z2) {
                    iArr[i6] = iArr[i6] + 1;
                    i3 += i5;
                } else {
                    i6++;
                    z2 = !z2;
                }
            }
        }
        if (i6 != 8) {
            if (z) {
                i = i2;
            }
            if (i3 != i || i6 != 7) {
                return null;
            }
        }
        return iArr;
    }
}
