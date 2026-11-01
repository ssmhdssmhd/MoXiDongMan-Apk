package com.google.zxing.oned.rss.expanded;

import android.support.v4.cc0;
import android.support.v4.j41;
import android.support.v4.ld0;
import android.support.v4.lk1;
import android.support.v4.oc;
import android.support.v4.pw;
import android.support.v4.w8;
import android.support.v4.wn1;
import android.support.v4.xx0;
import android.support.v4.yn1;
import com.google.zxing.oned.Cwhile;
import com.google.zxing.oned.rss.Cdo;
import com.google.zxing.oned.rss.expanded.decoders.Cbreak;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* renamed from: com.google.zxing.oned.rss.expanded.new, reason: invalid class name */
/* loaded from: classes2.dex */
public final class Cnew extends Cdo {

    /* renamed from: default, reason: not valid java name */
    private static final int f17723default = 5;

    /* renamed from: finally, reason: not valid java name */
    private static final int f17725finally = 11;

    /* renamed from: public, reason: not valid java name */
    private static final int f17728public = 0;

    /* renamed from: return, reason: not valid java name */
    private static final int f17729return = 1;

    /* renamed from: static, reason: not valid java name */
    private static final int f17730static = 2;

    /* renamed from: switch, reason: not valid java name */
    private static final int f17732switch = 3;

    /* renamed from: throws, reason: not valid java name */
    private static final int f17734throws = 4;

    /* renamed from: catch, reason: not valid java name */
    private final List<Cif> f17736catch = new ArrayList(11);

    /* renamed from: class, reason: not valid java name */
    private final List<Cfor> f17737class = new ArrayList();

    /* renamed from: const, reason: not valid java name */
    private final int[] f17738const = new int[2];

    /* renamed from: final, reason: not valid java name */
    private boolean f17739final;

    /* renamed from: super, reason: not valid java name */
    private static final int[] f17731super = {7, 5, 4, 3, 1};

    /* renamed from: throw, reason: not valid java name */
    private static final int[] f17733throw = {4, 20, 52, 104, 204};

    /* renamed from: while, reason: not valid java name */
    private static final int[] f17735while = {0, 348, 1388, 2948, 3988};

    /* renamed from: import, reason: not valid java name */
    private static final int[][] f17726import = {new int[]{1, 8, 4, 1}, new int[]{3, 6, 4, 1}, new int[]{3, 4, 6, 1}, new int[]{3, 2, 8, 1}, new int[]{2, 6, 5, 1}, new int[]{2, 2, 9, 1}};

    /* renamed from: native, reason: not valid java name */
    private static final int[][] f17727native = {new int[]{1, 3, 9, 27, 81, 32, 96, 77}, new int[]{20, 60, 180, 118, 143, 7, 21, 63}, new int[]{189, 145, 13, 39, 117, 140, 209, 205}, new int[]{193, 157, 49, 147, 19, 57, 171, 91}, new int[]{62, 186, 136, 197, 169, 85, 44, 132}, new int[]{185, 133, 188, 142, 4, 12, 36, 108}, new int[]{113, 128, 173, 97, 80, 29, 87, 50}, new int[]{150, 28, 84, 41, 123, 158, 52, 156}, new int[]{46, 138, 203, 187, 139, 206, 196, 166}, new int[]{76, 17, 51, 153, 37, 111, 122, 155}, new int[]{43, 129, 176, 106, 107, 110, 119, 146}, new int[]{16, 48, 144, 10, 30, 90, 59, 177}, new int[]{109, 116, 137, 200, 178, 112, 125, 164}, new int[]{70, oc.f4541try, 208, 202, 184, 130, 179, 115}, new int[]{134, 191, 151, 31, 93, 68, 204, 190}, new int[]{148, 22, 66, 198, 172, 94, 71, 2}, new int[]{6, 18, 54, 162, 64, 192, 154, 40}, new int[]{120, 149, 25, 75, 14, 42, 126, 167}, new int[]{79, 26, 78, 23, 69, 207, 199, 175}, new int[]{103, 98, 83, 38, 114, 131, 182, 124}, new int[]{161, 61, 183, 127, 170, 88, 53, 159}, new int[]{55, 165, 73, 8, 24, 72, 5, 15}, new int[]{45, 135, 194, 160, 58, 174, 100, 89}};

    /* renamed from: extends, reason: not valid java name */
    private static final int[][] f17724extends = {new int[]{0, 0}, new int[]{0, 1, 1}, new int[]{0, 2, 1, 3}, new int[]{0, 4, 1, 3, 2}, new int[]{0, 4, 1, 3, 3, 5}, new int[]{0, 4, 1, 3, 4, 5, 5}, new int[]{0, 0, 1, 1, 2, 2, 3, 3}, new int[]{0, 0, 1, 1, 2, 2, 3, 4, 4}, new int[]{0, 0, 1, 1, 2, 2, 3, 4, 5, 5}, new int[]{0, 0, 1, 1, 2, 3, 3, 4, 4, 5, 5}};

    /* renamed from: abstract, reason: not valid java name */
    private cc0 m22107abstract(w8 w8Var, int i, boolean z) {
        int i2;
        int i3;
        int i4;
        if (z) {
            int i5 = this.f17738const[0] - 1;
            while (i5 >= 0 && !w8Var.m9084goto(i5)) {
                i5--;
            }
            int i6 = i5 + 1;
            int[] iArr = this.f17738const;
            i4 = iArr[0] - i6;
            i2 = iArr[1];
            i3 = i6;
        } else {
            int[] iArr2 = this.f17738const;
            int i7 = iArr2[0];
            int iM9077catch = w8Var.m9077catch(iArr2[1] + 1);
            i2 = iM9077catch;
            i3 = i7;
            i4 = iM9077catch - this.f17738const[1];
        }
        int[] iArrM22040this = m22040this();
        System.arraycopy(iArrM22040this, 0, iArrM22040this, 1, iArrM22040this.length - 1);
        iArrM22040this[0] = i4;
        try {
            return new cc0(Cdo.m22034throw(iArrM22040this, f17726import), new int[]{i3, i2}, i3, i2, i);
        } catch (j41 unused) {
            return null;
        }
    }

    /* renamed from: continue, reason: not valid java name */
    private static void m22108continue(List<Cif> list, List<Cfor> list2) {
        boolean z;
        Iterator<Cfor> it = list2.iterator();
        while (it.hasNext()) {
            Cfor next = it.next();
            if (next.m22096do().size() != list.size()) {
                Iterator<Cif> it2 = next.m22096do().iterator();
                while (true) {
                    z = false;
                    boolean z2 = true;
                    if (!it2.hasNext()) {
                        z = true;
                        break;
                    }
                    Cif next2 = it2.next();
                    Iterator<Cif> it3 = list.iterator();
                    while (true) {
                        if (!it3.hasNext()) {
                            z2 = false;
                            break;
                        } else if (next2.equals(it3.next())) {
                            break;
                        }
                    }
                    if (!z2) {
                        break;
                    }
                }
                if (z) {
                    it.remove();
                }
            }
        }
    }

    /* renamed from: default, reason: not valid java name */
    private static int m22109default(w8 w8Var, int i) {
        return w8Var.m9084goto(i) ? w8Var.m9076break(w8Var.m9077catch(i)) : w8Var.m9077catch(w8Var.m9076break(i));
    }

    /* renamed from: finally, reason: not valid java name */
    private static boolean m22110finally(cc0 cc0Var, boolean z, boolean z2) {
        return (cc0Var.m844for() == 0 && z && z2) ? false : true;
    }

    /* renamed from: import, reason: not valid java name */
    private boolean m22111import() {
        Cif cif = this.f17736catch.get(0);
        pw pwVarM22104for = cif.m22104for();
        pw pwVarM22106new = cif.m22106new();
        if (pwVarM22106new == null) {
            return false;
        }
        int iM6229do = pwVarM22106new.m6229do();
        int i = 2;
        for (int i2 = 1; i2 < this.f17736catch.size(); i2++) {
            Cif cif2 = this.f17736catch.get(i2);
            iM6229do += cif2.m22104for().m6229do();
            i++;
            pw pwVarM22106new2 = cif2.m22106new();
            if (pwVarM22106new2 != null) {
                iM6229do += pwVarM22106new2.m6229do();
                i++;
            }
        }
        return ((i + (-4)) * org.bouncycastle.math.Cdo.f31781do) + (iM6229do % org.bouncycastle.math.Cdo.f31781do) == pwVarM22104for.m6230if();
    }

    /* renamed from: interface, reason: not valid java name */
    private void m22112interface(int i, boolean z) {
        boolean zM22097for = false;
        int i2 = 0;
        boolean zM22097for2 = false;
        while (true) {
            if (i2 >= this.f17737class.size()) {
                break;
            }
            Cfor cfor = this.f17737class.get(i2);
            if (cfor.m22098if() > i) {
                zM22097for = cfor.m22097for(this.f17736catch);
                break;
            } else {
                zM22097for2 = cfor.m22097for(this.f17736catch);
                i2++;
            }
        }
        if (zM22097for || zM22097for2 || m22114package(this.f17736catch, this.f17737class)) {
            return;
        }
        this.f17737class.add(i2, new Cfor(this.f17736catch, i, z));
        m22108continue(this.f17736catch, this.f17737class);
    }

    /* renamed from: native, reason: not valid java name */
    private List<Cif> m22113native(List<Cfor> list, int i) throws j41 {
        while (i < this.f17737class.size()) {
            Cfor cfor = this.f17737class.get(i);
            this.f17736catch.clear();
            Iterator<Cfor> it = list.iterator();
            while (it.hasNext()) {
                this.f17736catch.addAll(it.next().m22096do());
            }
            this.f17736catch.addAll(cfor.m22096do());
            if (m22115private(this.f17736catch)) {
                if (m22111import()) {
                    return this.f17736catch;
                }
                ArrayList arrayList = new ArrayList(list);
                arrayList.add(cfor);
                try {
                    return m22113native(arrayList, i + 1);
                } catch (j41 unused) {
                    continue;
                }
            }
            i++;
        }
        throw j41.getNotFoundInstance();
    }

    /* renamed from: package, reason: not valid java name */
    private static boolean m22114package(Iterable<Cif> iterable, Iterable<Cfor> iterable2) {
        boolean z;
        boolean z2;
        Iterator<Cfor> it = iterable2.iterator();
        do {
            z = false;
            if (!it.hasNext()) {
                return false;
            }
            Cfor next = it.next();
            Iterator<Cif> it2 = iterable.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    z = true;
                    break;
                }
                Cif next2 = it2.next();
                Iterator<Cif> it3 = next.m22096do().iterator();
                while (true) {
                    if (!it3.hasNext()) {
                        z2 = false;
                        break;
                    }
                    if (next2.equals(it3.next())) {
                        z2 = true;
                        break;
                    }
                }
                if (!z2) {
                    break;
                }
            }
        } while (!z);
        return true;
    }

    /* renamed from: private, reason: not valid java name */
    private static boolean m22115private(List<Cif> list) {
        boolean z;
        for (int[] iArr : f17724extends) {
            if (list.size() <= iArr.length) {
                int i = 0;
                while (true) {
                    if (i >= list.size()) {
                        z = true;
                        break;
                    }
                    if (list.get(i).m22105if().m844for() != iArr[i]) {
                        z = false;
                        break;
                    }
                    i++;
                }
                if (z) {
                    return true;
                }
            }
        }
        return false;
    }

    /* renamed from: public, reason: not valid java name */
    private List<Cif> m22116public(boolean z) {
        List<Cif> listM22113native = null;
        if (this.f17737class.size() > 25) {
            this.f17737class.clear();
            return null;
        }
        this.f17736catch.clear();
        if (z) {
            Collections.reverse(this.f17737class);
        }
        try {
            listM22113native = m22113native(new ArrayList(), 0);
        } catch (j41 unused) {
        }
        if (z) {
            Collections.reverse(this.f17737class);
        }
        return listM22113native;
    }

    /* renamed from: return, reason: not valid java name */
    public static wn1 m22117return(List<Cif> list) throws ld0, j41 {
        String strMo22044new = Cbreak.m22041do(Cdo.m22095do(list)).mo22044new();
        yn1[] yn1VarArrM843do = list.get(0).m22105if().m843do();
        yn1[] yn1VarArrM843do2 = list.get(list.size() - 1).m22105if().m843do();
        return new wn1(strMo22044new, null, new yn1[]{yn1VarArrM843do[0], yn1VarArrM843do[1], yn1VarArrM843do2[0], yn1VarArrM843do2[1]}, com.google.zxing.Cdo.RSS_EXPANDED);
    }

    /* renamed from: throws, reason: not valid java name */
    private void m22118throws(w8 w8Var, List<Cif> list, int i) throws j41 {
        int[] iArrM22040this = m22040this();
        iArrM22040this[0] = 0;
        iArrM22040this[1] = 0;
        iArrM22040this[2] = 0;
        iArrM22040this[3] = 0;
        int iM9078class = w8Var.m9078class();
        if (i < 0) {
            i = list.isEmpty() ? 0 : list.get(list.size() - 1).m22105if().m845if()[1];
        }
        boolean z = list.size() % 2 != 0;
        if (this.f17739final) {
            z = !z;
        }
        boolean z2 = false;
        while (i < iM9078class) {
            z2 = !w8Var.m9084goto(i);
            if (!z2) {
                break;
            } else {
                i++;
            }
        }
        boolean z3 = z2;
        int i2 = 0;
        int i3 = i;
        while (i < iM9078class) {
            if (w8Var.m9084goto(i) != z3) {
                iArrM22040this[i2] = iArrM22040this[i2] + 1;
            } else {
                if (i2 == 3) {
                    if (z) {
                        m22119volatile(iArrM22040this);
                    }
                    if (Cdo.m22033super(iArrM22040this)) {
                        int[] iArr = this.f17738const;
                        iArr[0] = i3;
                        iArr[1] = i;
                        return;
                    }
                    if (z) {
                        m22119volatile(iArrM22040this);
                    }
                    i3 += iArrM22040this[0] + iArrM22040this[1];
                    iArrM22040this[0] = iArrM22040this[2];
                    iArrM22040this[1] = iArrM22040this[3];
                    iArrM22040this[2] = 0;
                    iArrM22040this[3] = 0;
                    i2--;
                } else {
                    i2++;
                }
                iArrM22040this[i2] = 1;
                z3 = !z3;
            }
            i++;
        }
        throw j41.getNotFoundInstance();
    }

    /* renamed from: volatile, reason: not valid java name */
    private static void m22119volatile(int[] iArr) {
        int length = iArr.length;
        for (int i = 0; i < length / 2; i++) {
            int i2 = iArr[i];
            int i3 = (length - i) - 1;
            iArr[i] = iArr[i3];
            iArr[i3] = i2;
        }
    }

    /* renamed from: while, reason: not valid java name */
    private void m22120while(int i) throws j41 {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        int iM9611new = xx0.m9611new(m22037class());
        int iM9611new2 = xx0.m9611new(m22035break());
        boolean z5 = true;
        if (iM9611new > 13) {
            z = false;
            z2 = true;
        } else {
            z = iM9611new < 4;
            z2 = false;
        }
        if (iM9611new2 > 13) {
            z3 = false;
            z4 = true;
        } else {
            z3 = iM9611new2 < 4;
            z4 = false;
        }
        int i2 = (iM9611new + iM9611new2) - i;
        boolean z6 = (iM9611new & 1) == 1;
        boolean z7 = (iM9611new2 & 1) == 0;
        if (i2 == 1) {
            if (z6) {
                if (z7) {
                    throw j41.getNotFoundInstance();
                }
                z5 = z;
                z2 = true;
            } else {
                if (!z7) {
                    throw j41.getNotFoundInstance();
                }
                z5 = z;
                z4 = true;
            }
        } else if (i2 == -1) {
            if (z6) {
                if (z7) {
                    throw j41.getNotFoundInstance();
                }
            } else {
                if (!z7) {
                    throw j41.getNotFoundInstance();
                }
                z5 = z;
                z3 = true;
            }
        } else {
            if (i2 != 0) {
                throw j41.getNotFoundInstance();
            }
            if (z6) {
                if (!z7) {
                    throw j41.getNotFoundInstance();
                }
                if (iM9611new >= iM9611new2) {
                    z5 = z;
                    z3 = true;
                    z2 = true;
                }
                z4 = true;
            } else {
                if (z7) {
                    throw j41.getNotFoundInstance();
                }
                z5 = z;
            }
        }
        if (z5) {
            if (z2) {
                throw j41.getNotFoundInstance();
            }
            Cdo.m22032final(m22037class(), m22038const());
        }
        if (z2) {
            Cdo.m22031else(m22037class(), m22038const());
        }
        if (z3) {
            if (z4) {
                throw j41.getNotFoundInstance();
            }
            Cdo.m22032final(m22035break(), m22038const());
        }
        if (z4) {
            Cdo.m22031else(m22035break(), m22036catch());
        }
    }

    @Override // com.google.zxing.oned.Cwhile
    /* renamed from: do */
    public wn1 mo21989do(int i, w8 w8Var, Map<com.google.zxing.Cnew, ?> map) throws ld0, j41 {
        this.f17736catch.clear();
        this.f17739final = false;
        try {
            return m22117return(m22124switch(i, w8Var));
        } catch (j41 unused) {
            this.f17736catch.clear();
            this.f17739final = true;
            return m22117return(m22124switch(i, w8Var));
        }
    }

    /* renamed from: extends, reason: not valid java name */
    public List<Cfor> m22121extends() {
        return this.f17737class;
    }

    @Override // com.google.zxing.oned.Cwhile, com.google.zxing.Reader
    public void reset() {
        this.f17736catch.clear();
        this.f17737class.clear();
    }

    /* renamed from: static, reason: not valid java name */
    public pw m22122static(w8 w8Var, cc0 cc0Var, boolean z, boolean z2) throws j41 {
        int[] iArrM22039goto = m22039goto();
        for (int i = 0; i < iArrM22039goto.length; i++) {
            iArrM22039goto[i] = 0;
        }
        if (z2) {
            Cwhile.m22154try(w8Var, cc0Var.m845if()[0], iArrM22039goto);
        } else {
            Cwhile.m22153new(w8Var, cc0Var.m845if()[1], iArrM22039goto);
            int i2 = 0;
            for (int length = iArrM22039goto.length - 1; i2 < length; length--) {
                int i3 = iArrM22039goto[i2];
                iArrM22039goto[i2] = iArrM22039goto[length];
                iArrM22039goto[length] = i3;
                i2++;
            }
        }
        float fM9611new = xx0.m9611new(iArrM22039goto) / 17.0f;
        float f = (cc0Var.m845if()[1] - cc0Var.m845if()[0]) / 15.0f;
        if (Math.abs(fM9611new - f) / f > 0.3f) {
            throw j41.getNotFoundInstance();
        }
        int[] iArrM22037class = m22037class();
        int[] iArrM22035break = m22035break();
        float[] fArrM22038const = m22038const();
        float[] fArrM22036catch = m22036catch();
        for (int i4 = 0; i4 < iArrM22039goto.length; i4++) {
            float f2 = (iArrM22039goto[i4] * 1.0f) / fM9611new;
            int i5 = (int) (0.5f + f2);
            if (i5 <= 0) {
                if (f2 < 0.3f) {
                    throw j41.getNotFoundInstance();
                }
                i5 = 1;
            } else if (i5 > 8) {
                if (f2 > 8.7f) {
                    throw j41.getNotFoundInstance();
                }
                i5 = 8;
            }
            int i6 = i4 / 2;
            if ((i4 & 1) == 0) {
                iArrM22037class[i6] = i5;
                fArrM22038const[i6] = f2 - i5;
            } else {
                iArrM22035break[i6] = i5;
                fArrM22036catch[i6] = f2 - i5;
            }
        }
        m22120while(17);
        int iM844for = (((cc0Var.m844for() * 4) + (z ? 0 : 2)) + (!z2 ? 1 : 0)) - 1;
        int i7 = 0;
        int i8 = 0;
        for (int length2 = iArrM22037class.length - 1; length2 >= 0; length2--) {
            if (m22110finally(cc0Var, z, z2)) {
                i7 += iArrM22037class[length2] * f17727native[iM844for][length2 * 2];
            }
            i8 += iArrM22037class[length2];
        }
        int i9 = 0;
        for (int length3 = iArrM22035break.length - 1; length3 >= 0; length3--) {
            if (m22110finally(cc0Var, z, z2)) {
                i9 += iArrM22035break[length3] * f17727native[iM844for][(length3 * 2) + 1];
            }
        }
        int i10 = i7 + i9;
        if ((i8 & 1) != 0 || i8 > 13 || i8 < 4) {
            throw j41.getNotFoundInstance();
        }
        int i11 = (13 - i8) / 2;
        int i12 = f17731super[i11];
        return new pw((lk1.m4708if(iArrM22037class, i12, true) * f17733throw[i11]) + lk1.m4708if(iArrM22035break, 9 - i12, false) + f17735while[i11], i10);
    }

    /* renamed from: strictfp, reason: not valid java name */
    public Cif m22123strictfp(w8 w8Var, List<Cif> list, int i) throws j41 {
        cc0 cc0VarM22107abstract;
        pw pwVarM22122static;
        boolean z = list.size() % 2 == 0;
        if (this.f17739final) {
            z = !z;
        }
        int iM22109default = -1;
        boolean z2 = true;
        do {
            m22118throws(w8Var, list, iM22109default);
            cc0VarM22107abstract = m22107abstract(w8Var, i, z);
            if (cc0VarM22107abstract == null) {
                iM22109default = m22109default(w8Var, this.f17738const[0]);
            } else {
                z2 = false;
            }
        } while (z2);
        pw pwVarM22122static2 = m22122static(w8Var, cc0VarM22107abstract, z, true);
        if (!list.isEmpty() && list.get(list.size() - 1).m22103else()) {
            throw j41.getNotFoundInstance();
        }
        try {
            pwVarM22122static = m22122static(w8Var, cc0VarM22107abstract, z, false);
        } catch (j41 unused) {
            pwVarM22122static = null;
        }
        return new Cif(pwVarM22122static2, pwVarM22122static, cc0VarM22107abstract, true);
    }

    /* renamed from: switch, reason: not valid java name */
    public List<Cif> m22124switch(int i, w8 w8Var) throws j41 {
        boolean z = false;
        while (!z) {
            try {
                List<Cif> list = this.f17736catch;
                list.add(m22123strictfp(w8Var, list, i));
            } catch (j41 e) {
                if (this.f17736catch.isEmpty()) {
                    throw e;
                }
                z = true;
            }
        }
        if (m22111import()) {
            return this.f17736catch;
        }
        boolean z2 = !this.f17737class.isEmpty();
        m22112interface(i, false);
        if (z2) {
            List<Cif> listM22116public = m22116public(false);
            if (listM22116public != null) {
                return listM22116public;
            }
            List<Cif> listM22116public2 = m22116public(true);
            if (listM22116public2 != null) {
                return listM22116public2;
            }
        }
        throw j41.getNotFoundInstance();
    }
}
