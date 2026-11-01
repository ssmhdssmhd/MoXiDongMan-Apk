package com.google.zxing.oned.rss;

import android.support.v4.cc0;
import android.support.v4.j41;
import android.support.v4.lk1;
import android.support.v4.pw;
import android.support.v4.w8;
import android.support.v4.wn1;
import android.support.v4.xx0;
import android.support.v4.yn1;
import com.google.zxing.Cdo;
import com.google.zxing.Cnew;
import com.google.zxing.ResultPointCallback;
import com.google.zxing.oned.Cwhile;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* renamed from: com.google.zxing.oned.rss.for, reason: invalid class name */
/* loaded from: classes2.dex */
public final class Cfor extends Cdo {

    /* renamed from: catch, reason: not valid java name */
    private final List<Cif> f17747catch = new ArrayList();

    /* renamed from: class, reason: not valid java name */
    private final List<Cif> f17748class = new ArrayList();

    /* renamed from: const, reason: not valid java name */
    private static final int[] f17740const = {1, 10, 34, 70, 126};

    /* renamed from: final, reason: not valid java name */
    private static final int[] f17741final = {4, 20, 48, 81};

    /* renamed from: super, reason: not valid java name */
    private static final int[] f17744super = {0, 161, 961, 2015, 2715};

    /* renamed from: throw, reason: not valid java name */
    private static final int[] f17745throw = {0, 336, 1036, 1516};

    /* renamed from: while, reason: not valid java name */
    private static final int[] f17746while = {8, 6, 4, 3, 1};

    /* renamed from: import, reason: not valid java name */
    private static final int[] f17742import = {2, 4, 6, 8};

    /* renamed from: native, reason: not valid java name */
    private static final int[][] f17743native = {new int[]{3, 8, 2, 1}, new int[]{3, 5, 5, 1}, new int[]{3, 3, 7, 1}, new int[]{3, 1, 9, 1}, new int[]{2, 7, 4, 1}, new int[]{2, 5, 6, 1}, new int[]{2, 3, 8, 1}, new int[]{1, 5, 7, 1}, new int[]{1, 3, 9, 1}};

    /* JADX WARN: Removed duplicated region for block: B:27:0x003f A[PHI: r6 r7
      0x003f: PHI (r6v6 boolean) = (r6v3 boolean), (r6v13 boolean) binds: [B:26:0x003d, B:13:0x0025] A[DONT_GENERATE, DONT_INLINE]
      0x003f: PHI (r7v4 boolean) = (r7v1 boolean), (r7v11 boolean) binds: [B:26:0x003d, B:13:0x0025] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0041 A[PHI: r6 r7
      0x0041: PHI (r6v9 boolean) = (r6v3 boolean), (r6v13 boolean) binds: [B:26:0x003d, B:13:0x0025] A[DONT_GENERATE, DONT_INLINE]
      0x0041: PHI (r7v9 boolean) = (r7v1 boolean), (r7v11 boolean) binds: [B:26:0x003d, B:13:0x0025] A[DONT_GENERATE, DONT_INLINE]] */
    /* renamed from: import, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void m22125import(boolean z, int i) throws j41 {
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        int iM9611new = xx0.m9611new(m22037class());
        int iM9611new2 = xx0.m9611new(m22035break());
        boolean z6 = true;
        if (z) {
            if (iM9611new > 12) {
                z2 = false;
                z3 = true;
            } else {
                z2 = iM9611new < 4;
                z3 = false;
            }
            if (iM9611new2 <= 12) {
                z4 = iM9611new2 < 4;
                z5 = false;
            }
            z4 = false;
            z5 = true;
        } else {
            if (iM9611new > 11) {
                z2 = false;
                z3 = true;
            } else {
                z2 = iM9611new < 5;
                z3 = false;
            }
            if (iM9611new2 <= 10) {
                if (iM9611new2 < 4) {
                }
                z5 = false;
            }
            z4 = false;
            z5 = true;
        }
        int i2 = (iM9611new + iM9611new2) - i;
        boolean z7 = (iM9611new & 1) == z;
        boolean z8 = (iM9611new2 & 1) == 1;
        if (i2 == 1) {
            if (z7) {
                if (z8) {
                    throw j41.getNotFoundInstance();
                }
                z6 = z2;
                z3 = true;
            } else {
                if (!z8) {
                    throw j41.getNotFoundInstance();
                }
                z6 = z2;
                z5 = true;
            }
        } else if (i2 == -1) {
            if (z7) {
                if (z8) {
                    throw j41.getNotFoundInstance();
                }
            } else {
                if (!z8) {
                    throw j41.getNotFoundInstance();
                }
                z6 = z2;
                z4 = true;
            }
        } else {
            if (i2 != 0) {
                throw j41.getNotFoundInstance();
            }
            if (z7) {
                if (!z8) {
                    throw j41.getNotFoundInstance();
                }
                if (iM9611new >= iM9611new2) {
                    z6 = z2;
                    z4 = true;
                    z3 = true;
                }
                z5 = true;
            } else {
                if (z8) {
                    throw j41.getNotFoundInstance();
                }
                z6 = z2;
            }
        }
        if (z6) {
            if (z3) {
                throw j41.getNotFoundInstance();
            }
            Cdo.m22032final(m22037class(), m22038const());
        }
        if (z3) {
            Cdo.m22031else(m22037class(), m22038const());
        }
        if (z4) {
            if (z5) {
                throw j41.getNotFoundInstance();
            }
            Cdo.m22032final(m22035break(), m22038const());
        }
        if (z5) {
            Cdo.m22031else(m22035break(), m22036catch());
        }
    }

    /* renamed from: native, reason: not valid java name */
    private static boolean m22126native(Cif cif, Cif cif2) {
        int iM6229do = (cif.m6229do() + (cif2.m6229do() * 16)) % 79;
        int iM844for = (cif.m22134new().m844for() * 9) + cif2.m22134new().m844for();
        if (iM844for > 72) {
            iM844for--;
        }
        if (iM844for > 8) {
            iM844for--;
        }
        return iM6229do == iM844for;
    }

    /* renamed from: public, reason: not valid java name */
    private static wn1 m22127public(Cif cif, Cif cif2) {
        String strValueOf = String.valueOf((cif.m6230if() * 4537077) + cif2.m6230if());
        StringBuilder sb = new StringBuilder(14);
        for (int length = 13 - strValueOf.length(); length > 0; length--) {
            sb.append('0');
        }
        sb.append(strValueOf);
        int i = 0;
        for (int i2 = 0; i2 < 13; i2++) {
            int iCharAt = sb.charAt(i2) - '0';
            if ((i2 & 1) == 0) {
                iCharAt *= 3;
            }
            i += iCharAt;
        }
        int i3 = 10 - (i % 10);
        if (i3 == 10) {
            i3 = 0;
        }
        sb.append(i3);
        yn1[] yn1VarArrM843do = cif.m22134new().m843do();
        yn1[] yn1VarArrM843do2 = cif2.m22134new().m843do();
        return new wn1(sb.toString(), null, new yn1[]{yn1VarArrM843do[0], yn1VarArrM843do[1], yn1VarArrM843do2[0], yn1VarArrM843do2[1]}, Cdo.RSS_14);
    }

    /* renamed from: return, reason: not valid java name */
    private pw m22128return(w8 w8Var, cc0 cc0Var, boolean z) throws j41 {
        int[] iArrM22039goto = m22039goto();
        for (int i = 0; i < iArrM22039goto.length; i++) {
            iArrM22039goto[i] = 0;
        }
        if (z) {
            Cwhile.m22154try(w8Var, cc0Var.m845if()[0], iArrM22039goto);
        } else {
            Cwhile.m22153new(w8Var, cc0Var.m845if()[1] + 1, iArrM22039goto);
            int i2 = 0;
            for (int length = iArrM22039goto.length - 1; i2 < length; length--) {
                int i3 = iArrM22039goto[i2];
                iArrM22039goto[i2] = iArrM22039goto[length];
                iArrM22039goto[length] = i3;
                i2++;
            }
        }
        int i4 = z ? 16 : 15;
        float fM9611new = xx0.m9611new(iArrM22039goto) / i4;
        int[] iArrM22037class = m22037class();
        int[] iArrM22035break = m22035break();
        float[] fArrM22038const = m22038const();
        float[] fArrM22036catch = m22036catch();
        for (int i5 = 0; i5 < iArrM22039goto.length; i5++) {
            float f = iArrM22039goto[i5] / fM9611new;
            int i6 = (int) (0.5f + f);
            if (i6 <= 0) {
                i6 = 1;
            } else if (i6 > 8) {
                i6 = 8;
            }
            int i7 = i5 / 2;
            if ((i5 & 1) == 0) {
                iArrM22037class[i7] = i6;
                fArrM22038const[i7] = f - i6;
            } else {
                iArrM22035break[i7] = i6;
                fArrM22036catch[i7] = f - i6;
            }
        }
        m22125import(z, i4);
        int i8 = 0;
        int i9 = 0;
        for (int length2 = iArrM22037class.length - 1; length2 >= 0; length2--) {
            i8 = (i8 * 9) + iArrM22037class[length2];
            i9 += iArrM22037class[length2];
        }
        int i10 = 0;
        int i11 = 0;
        for (int length3 = iArrM22035break.length - 1; length3 >= 0; length3--) {
            i10 = (i10 * 9) + iArrM22035break[length3];
            i11 += iArrM22035break[length3];
        }
        int i12 = i8 + (i10 * 3);
        if (!z) {
            if ((i11 & 1) != 0 || i11 > 10 || i11 < 4) {
                throw j41.getNotFoundInstance();
            }
            int i13 = (10 - i11) / 2;
            int i14 = f17742import[i13];
            return new pw((lk1.m4708if(iArrM22035break, 9 - i14, false) * f17741final[i13]) + lk1.m4708if(iArrM22037class, i14, true) + f17745throw[i13], i12);
        }
        if ((i9 & 1) != 0 || i9 > 12 || i9 < 4) {
            throw j41.getNotFoundInstance();
        }
        int i15 = (12 - i9) / 2;
        int i16 = f17746while[i15];
        return new pw((lk1.m4708if(iArrM22037class, i16, false) * f17740const[i15]) + lk1.m4708if(iArrM22035break, 9 - i16, true) + f17744super[i15], i12);
    }

    /* renamed from: static, reason: not valid java name */
    private Cif m22129static(w8 w8Var, boolean z, int i, Map<Cnew, ?> map) {
        try {
            cc0 cc0VarM22131throws = m22131throws(w8Var, i, z, m22130switch(w8Var, z));
            ResultPointCallback resultPointCallback = map == null ? null : (ResultPointCallback) map.get(Cnew.NEED_RESULT_POINT_CALLBACK);
            if (resultPointCallback != null) {
                float fM9078class = (r1[0] + r1[1]) / 2.0f;
                if (z) {
                    fM9078class = (w8Var.m9078class() - 1) - fM9078class;
                }
                resultPointCallback.foundPossibleResultPoint(new yn1(fM9078class, i));
            }
            pw pwVarM22128return = m22128return(w8Var, cc0VarM22131throws, true);
            pw pwVarM22128return2 = m22128return(w8Var, cc0VarM22131throws, false);
            return new Cif((pwVarM22128return.m6230if() * 1597) + pwVarM22128return2.m6230if(), pwVarM22128return.m6229do() + (pwVarM22128return2.m6229do() * 4), cc0VarM22131throws);
        } catch (j41 unused) {
            return null;
        }
    }

    /* renamed from: switch, reason: not valid java name */
    private int[] m22130switch(w8 w8Var, boolean z) throws j41 {
        int[] iArrM22040this = m22040this();
        iArrM22040this[0] = 0;
        iArrM22040this[1] = 0;
        iArrM22040this[2] = 0;
        iArrM22040this[3] = 0;
        int iM9078class = w8Var.m9078class();
        int i = 0;
        boolean z2 = false;
        while (i < iM9078class) {
            z2 = !w8Var.m9084goto(i);
            if (z == z2) {
                break;
            }
            i++;
        }
        int i2 = i;
        int i3 = 0;
        while (i < iM9078class) {
            if (w8Var.m9084goto(i) != z2) {
                iArrM22040this[i3] = iArrM22040this[i3] + 1;
            } else {
                if (i3 != 3) {
                    i3++;
                } else {
                    if (Cdo.m22033super(iArrM22040this)) {
                        return new int[]{i2, i};
                    }
                    i2 += iArrM22040this[0] + iArrM22040this[1];
                    iArrM22040this[0] = iArrM22040this[2];
                    iArrM22040this[1] = iArrM22040this[3];
                    iArrM22040this[2] = 0;
                    iArrM22040this[3] = 0;
                    i3--;
                }
                iArrM22040this[i3] = 1;
                z2 = !z2;
            }
            i++;
        }
        throw j41.getNotFoundInstance();
    }

    /* renamed from: throws, reason: not valid java name */
    private cc0 m22131throws(w8 w8Var, int i, boolean z, int[] iArr) throws j41 {
        int iM9078class;
        int i2;
        boolean zM9084goto = w8Var.m9084goto(iArr[0]);
        int i3 = iArr[0] - 1;
        while (i3 >= 0 && zM9084goto != w8Var.m9084goto(i3)) {
            i3--;
        }
        int i4 = i3 + 1;
        int i5 = iArr[0] - i4;
        int[] iArrM22040this = m22040this();
        System.arraycopy(iArrM22040this, 0, iArrM22040this, 1, iArrM22040this.length - 1);
        iArrM22040this[0] = i5;
        int iM22034throw = Cdo.m22034throw(iArrM22040this, f17743native);
        int i6 = iArr[1];
        if (z) {
            int iM9078class2 = (w8Var.m9078class() - 1) - i4;
            iM9078class = (w8Var.m9078class() - 1) - i6;
            i2 = iM9078class2;
        } else {
            iM9078class = i6;
            i2 = i4;
        }
        return new cc0(iM22034throw, new int[]{i4, iArr[1]}, i2, iM9078class, i);
    }

    /* renamed from: while, reason: not valid java name */
    private static void m22132while(Collection<Cif> collection, Cif cif) {
        if (cif == null) {
            return;
        }
        boolean z = false;
        Iterator<Cif> it = collection.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            Cif next = it.next();
            if (next.m6230if() == cif.m6230if()) {
                next.m22135try();
                z = true;
                break;
            }
        }
        if (z) {
            return;
        }
        collection.add(cif);
    }

    @Override // com.google.zxing.oned.Cwhile
    /* renamed from: do */
    public wn1 mo21989do(int i, w8 w8Var, Map<Cnew, ?> map) throws j41 {
        m22132while(this.f17747catch, m22129static(w8Var, false, i, map));
        w8Var.m9092throw();
        m22132while(this.f17748class, m22129static(w8Var, true, i, map));
        w8Var.m9092throw();
        for (Cif cif : this.f17747catch) {
            if (cif.m22133for() > 1) {
                for (Cif cif2 : this.f17748class) {
                    if (cif2.m22133for() > 1 && m22126native(cif, cif2)) {
                        return m22127public(cif, cif2);
                    }
                }
            }
        }
        throw j41.getNotFoundInstance();
    }

    @Override // com.google.zxing.oned.Cwhile, com.google.zxing.Reader
    public void reset() {
        this.f17747catch.clear();
        this.f17748class.clear();
    }
}
