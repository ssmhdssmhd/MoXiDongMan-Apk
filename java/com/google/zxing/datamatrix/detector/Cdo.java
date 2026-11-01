package com.google.zxing.datamatrix.detector;

import android.support.v4.ci0;
import android.support.v4.j41;
import android.support.v4.on0;
import android.support.v4.oz;
import android.support.v4.xx0;
import android.support.v4.yf2;
import android.support.v4.yn1;
import android.support.v4.z8;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Map;
import org.jsoup.nodes.Attributes;

/* renamed from: com.google.zxing.datamatrix.detector.do, reason: invalid class name */
/* loaded from: classes2.dex */
public final class Cdo {

    /* renamed from: do, reason: not valid java name */
    private final z8 f17495do;

    /* renamed from: if, reason: not valid java name */
    private final yf2 f17496if;

    /* renamed from: com.google.zxing.datamatrix.detector.do$for, reason: invalid class name */
    public static final class Cfor implements Serializable, Comparator<Cif> {
        private Cfor() {
        }

        @Override // java.util.Comparator
        public int compare(Cif cif, Cif cif2) {
            return cif.m21883for() - cif2.m21883for();
        }
    }

    /* renamed from: com.google.zxing.datamatrix.detector.do$if, reason: invalid class name */
    public static final class Cif {

        /* renamed from: do, reason: not valid java name */
        private final yn1 f17497do;

        /* renamed from: for, reason: not valid java name */
        private final int f17498for;

        /* renamed from: if, reason: not valid java name */
        private final yn1 f17499if;

        /* renamed from: do, reason: not valid java name */
        public yn1 m21882do() {
            return this.f17497do;
        }

        /* renamed from: for, reason: not valid java name */
        public int m21883for() {
            return this.f17498for;
        }

        /* renamed from: if, reason: not valid java name */
        public yn1 m21884if() {
            return this.f17499if;
        }

        public String toString() {
            return this.f17497do + on0.f4694final + this.f17499if + Attributes.InternalPrefix + this.f17498for;
        }

        private Cif(yn1 yn1Var, yn1 yn1Var2, int i) {
            this.f17497do = yn1Var;
            this.f17499if = yn1Var2;
            this.f17498for = i;
        }
    }

    public Cdo(z8 z8Var) throws j41 {
        this.f17495do = z8Var;
        this.f17496if = new yf2(z8Var);
    }

    /* renamed from: case, reason: not valid java name */
    private boolean m21874case(yn1 yn1Var) {
        return yn1Var.m9911for() >= 0.0f && yn1Var.m9911for() < ((float) this.f17495do.m10091class()) && yn1Var.m9912new() > 0.0f && yn1Var.m9912new() < ((float) this.f17495do.m10094goto());
    }

    /* renamed from: do, reason: not valid java name */
    private yn1 m21875do(yn1 yn1Var, yn1 yn1Var2, yn1 yn1Var3, yn1 yn1Var4, int i) {
        float f = i;
        float fM21879new = m21879new(yn1Var, yn1Var2) / f;
        float fM21879new2 = m21879new(yn1Var3, yn1Var4);
        yn1 yn1Var5 = new yn1(yn1Var4.m9911for() + (((yn1Var4.m9911for() - yn1Var3.m9911for()) / fM21879new2) * fM21879new), yn1Var4.m9912new() + (fM21879new * ((yn1Var4.m9912new() - yn1Var3.m9912new()) / fM21879new2)));
        float fM21879new3 = m21879new(yn1Var, yn1Var3) / f;
        float fM21879new4 = m21879new(yn1Var2, yn1Var4);
        yn1 yn1Var6 = new yn1(yn1Var4.m9911for() + (((yn1Var4.m9911for() - yn1Var2.m9911for()) / fM21879new4) * fM21879new3), yn1Var4.m9912new() + (fM21879new3 * ((yn1Var4.m9912new() - yn1Var2.m9912new()) / fM21879new4)));
        if (m21874case(yn1Var5)) {
            return (m21874case(yn1Var6) && Math.abs(m21877goto(yn1Var3, yn1Var5).m21883for() - m21877goto(yn1Var2, yn1Var5).m21883for()) > Math.abs(m21877goto(yn1Var3, yn1Var6).m21883for() - m21877goto(yn1Var2, yn1Var6).m21883for())) ? yn1Var6 : yn1Var5;
        }
        if (m21874case(yn1Var6)) {
            return yn1Var6;
        }
        return null;
    }

    /* renamed from: else, reason: not valid java name */
    private static z8 m21876else(z8 z8Var, yn1 yn1Var, yn1 yn1Var2, yn1 yn1Var3, yn1 yn1Var4, int i, int i2) throws j41 {
        float f = i - 0.5f;
        float f2 = i2 - 0.5f;
        return ci0.m933if().mo935for(z8Var, i, i2, 0.5f, 0.5f, f, 0.5f, f, f2, 0.5f, f2, yn1Var.m9911for(), yn1Var.m9912new(), yn1Var4.m9911for(), yn1Var4.m9912new(), yn1Var3.m9911for(), yn1Var3.m9912new(), yn1Var2.m9911for(), yn1Var2.m9912new());
    }

    /* renamed from: goto, reason: not valid java name */
    private Cif m21877goto(yn1 yn1Var, yn1 yn1Var2) {
        int iM9911for = (int) yn1Var.m9911for();
        int iM9912new = (int) yn1Var.m9912new();
        int iM9911for2 = (int) yn1Var2.m9911for();
        int iM9912new2 = (int) yn1Var2.m9912new();
        int i = 0;
        boolean z = Math.abs(iM9912new2 - iM9912new) > Math.abs(iM9911for2 - iM9911for);
        if (z) {
            iM9912new = iM9911for;
            iM9911for = iM9912new;
            iM9912new2 = iM9911for2;
            iM9911for2 = iM9912new2;
        }
        int iAbs = Math.abs(iM9911for2 - iM9911for);
        int iAbs2 = Math.abs(iM9912new2 - iM9912new);
        int i2 = (-iAbs) / 2;
        int i3 = iM9912new < iM9912new2 ? 1 : -1;
        int i4 = iM9911for >= iM9911for2 ? -1 : 1;
        boolean zM10105try = this.f17495do.m10105try(z ? iM9912new : iM9911for, z ? iM9911for : iM9912new);
        while (iM9911for != iM9911for2) {
            boolean zM10105try2 = this.f17495do.m10105try(z ? iM9912new : iM9911for, z ? iM9911for : iM9912new);
            if (zM10105try2 != zM10105try) {
                i++;
                zM10105try = zM10105try2;
            }
            i2 += iAbs2;
            if (i2 > 0) {
                if (iM9912new == iM9912new2) {
                    break;
                }
                iM9912new += i3;
                i2 -= iAbs;
            }
            iM9911for += i4;
        }
        return new Cif(yn1Var, yn1Var2, i);
    }

    /* renamed from: if, reason: not valid java name */
    private yn1 m21878if(yn1 yn1Var, yn1 yn1Var2, yn1 yn1Var3, yn1 yn1Var4, int i, int i2) {
        float fM21879new = m21879new(yn1Var, yn1Var2) / i;
        float fM21879new2 = m21879new(yn1Var3, yn1Var4);
        yn1 yn1Var5 = new yn1(yn1Var4.m9911for() + (((yn1Var4.m9911for() - yn1Var3.m9911for()) / fM21879new2) * fM21879new), yn1Var4.m9912new() + (fM21879new * ((yn1Var4.m9912new() - yn1Var3.m9912new()) / fM21879new2)));
        float fM21879new3 = m21879new(yn1Var, yn1Var3) / i2;
        float fM21879new4 = m21879new(yn1Var2, yn1Var4);
        yn1 yn1Var6 = new yn1(yn1Var4.m9911for() + (((yn1Var4.m9911for() - yn1Var2.m9911for()) / fM21879new4) * fM21879new3), yn1Var4.m9912new() + (fM21879new3 * ((yn1Var4.m9912new() - yn1Var2.m9912new()) / fM21879new4)));
        if (m21874case(yn1Var5)) {
            return (m21874case(yn1Var6) && Math.abs(i - m21877goto(yn1Var3, yn1Var5).m21883for()) + Math.abs(i2 - m21877goto(yn1Var2, yn1Var5).m21883for()) > Math.abs(i - m21877goto(yn1Var3, yn1Var6).m21883for()) + Math.abs(i2 - m21877goto(yn1Var2, yn1Var6).m21883for())) ? yn1Var6 : yn1Var5;
        }
        if (m21874case(yn1Var6)) {
            return yn1Var6;
        }
        return null;
    }

    /* renamed from: new, reason: not valid java name */
    private static int m21879new(yn1 yn1Var, yn1 yn1Var2) {
        return xx0.m9609for(yn1.m9909if(yn1Var, yn1Var2));
    }

    /* renamed from: try, reason: not valid java name */
    private static void m21880try(Map<yn1, Integer> map, yn1 yn1Var) {
        Integer num = map.get(yn1Var);
        map.put(yn1Var, Integer.valueOf(num != null ? 1 + num.intValue() : 1));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r14v3, types: [android.support.v4.yn1] */
    /* JADX WARN: Type inference failed for: r16v3, types: [android.support.v4.yn1] */
    /* JADX WARN: Type inference failed for: r22v0, types: [android.support.v4.yn1] */
    /* JADX WARN: Type inference failed for: r23v0, types: [com.google.zxing.datamatrix.detector.do] */
    /* JADX WARN: Type inference failed for: r2v4, types: [android.support.v4.yn1[]] */
    /* JADX WARN: Type inference failed for: r4v6, types: [android.support.v4.yn1[]] */
    /* JADX WARN: Type inference failed for: r6v2, types: [android.support.v4.yn1] */
    /* renamed from: for, reason: not valid java name */
    public oz m21881for() throws j41 {
        yn1 yn1Var;
        z8 z8VarM21876else;
        yn1[] yn1VarArrM9834for = this.f17496if.m9834for();
        yn1 yn1Var2 = yn1VarArrM9834for[0];
        yn1 yn1Var3 = yn1VarArrM9834for[1];
        yn1 yn1Var4 = yn1VarArrM9834for[2];
        yn1 yn1Var5 = yn1VarArrM9834for[3];
        ArrayList arrayList = new ArrayList(4);
        arrayList.add(m21877goto(yn1Var2, yn1Var3));
        arrayList.add(m21877goto(yn1Var2, yn1Var4));
        arrayList.add(m21877goto(yn1Var3, yn1Var5));
        arrayList.add(m21877goto(yn1Var4, yn1Var5));
        C0165do c0165do = null;
        Collections.sort(arrayList, new Cfor());
        Cif cif = (Cif) arrayList.get(0);
        Cif cif2 = (Cif) arrayList.get(1);
        HashMap map = new HashMap();
        m21880try(map, cif.m21882do());
        m21880try(map, cif.m21884if());
        m21880try(map, cif2.m21882do());
        m21880try(map, cif2.m21884if());
        Object obj = null;
        Object obj2 = null;
        for (Map.Entry entry : map.entrySet()) {
            ?? r16 = (yn1) entry.getKey();
            if (((Integer) entry.getValue()).intValue() == 2) {
                obj = r16;
            } else if (c0165do == null) {
                c0165do = r16;
            } else {
                obj2 = r16;
            }
        }
        if (c0165do == null || obj == null || obj2 == null) {
            throw j41.getNotFoundInstance();
        }
        ?? r4 = {c0165do, obj, obj2};
        yn1.m9910try(r4);
        ?? r14 = r4[0];
        ?? r22 = r4[1];
        ?? r6 = r4[2];
        yn1 yn1Var6 = !map.containsKey(yn1Var2) ? yn1Var2 : !map.containsKey(yn1Var3) ? yn1Var3 : !map.containsKey(yn1Var4) ? yn1Var4 : yn1Var5;
        int iM21883for = m21877goto(r6, yn1Var6).m21883for();
        int iM21883for2 = m21877goto(r14, yn1Var6).m21883for();
        if ((iM21883for & 1) == 1) {
            iM21883for++;
        }
        int i = iM21883for + 2;
        if ((iM21883for2 & 1) == 1) {
            iM21883for2++;
        }
        int i2 = iM21883for2 + 2;
        if (i * 4 >= i2 * 7 || i2 * 4 >= i * 7) {
            yn1Var = r6;
            yn1 yn1VarM21878if = m21878if(r22, r14, r6, yn1Var6, i, i2);
            if (yn1VarM21878if != null) {
                yn1Var6 = yn1VarM21878if;
            }
            int iM21883for3 = m21877goto(yn1Var, yn1Var6).m21883for();
            int iM21883for4 = m21877goto(r14, yn1Var6).m21883for();
            if ((iM21883for3 & 1) == 1) {
                iM21883for3++;
            }
            int i3 = iM21883for3;
            if ((iM21883for4 & 1) == 1) {
                iM21883for4++;
            }
            z8VarM21876else = m21876else(this.f17495do, yn1Var, r22, r14, yn1Var6, i3, iM21883for4);
        } else {
            yn1 yn1VarM21875do = m21875do(r22, r14, r6, yn1Var6, Math.min(i2, i));
            if (yn1VarM21875do != null) {
                yn1Var6 = yn1VarM21875do;
            }
            int iMax = Math.max(m21877goto(r6, yn1Var6).m21883for(), m21877goto(r14, yn1Var6).m21883for()) + 1;
            if ((iMax & 1) == 1) {
                iMax++;
            }
            int i4 = iMax;
            z8VarM21876else = m21876else(this.f17495do, r6, r22, r14, yn1Var6, i4, i4);
            yn1Var = r6;
        }
        return new oz(z8VarM21876else, new yn1[]{yn1Var, r22, r14, yn1Var6});
    }
}
