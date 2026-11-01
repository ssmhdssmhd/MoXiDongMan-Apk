package org.antlr.v4.runtime.atn;

import android.support.v4.Cstatic;
import android.support.v4.ap1;
import android.support.v4.d02;
import android.support.v4.ef1;
import android.support.v4.h20;
import android.support.v4.p3;
import android.support.v4.vo1;
import android.support.v4.y01;
import android.support.v4.z60;
import com.umeng.analytics.pro.ak;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.antlr.v4.runtime.Cthis;

/* renamed from: org.antlr.v4.runtime.atn.else, reason: invalid class name */
/* loaded from: classes3.dex */
public abstract class Celse {

    /* renamed from: else, reason: not valid java name */
    public static final /* synthetic */ boolean f28468else = false;

    /* renamed from: new, reason: not valid java name */
    public static final int f28470new = Integer.MAX_VALUE;

    /* renamed from: try, reason: not valid java name */
    private static final int f28471try = 1;

    /* renamed from: do, reason: not valid java name */
    public final int f28472do;

    /* renamed from: if, reason: not valid java name */
    public final int f28473if;

    /* renamed from: for, reason: not valid java name */
    public static final z60 f28469for = new z60();

    /* renamed from: case, reason: not valid java name */
    public static int f28467case = 0;

    /* renamed from: org.antlr.v4.runtime.atn.else$do, reason: invalid class name */
    public static class Cdo implements Comparator<Celse> {
        @Override // java.util.Comparator
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public int compare(Celse celse, Celse celse2) {
            return celse.f28472do - celse2.f28472do;
        }
    }

    public Celse(int i) {
        int i2 = f28467case;
        f28467case = i2 + 1;
        this.f28472do = i2;
        this.f28473if = i;
    }

    /* renamed from: case, reason: not valid java name */
    public static List<Celse> m31871case(Celse celse) {
        ArrayList arrayList = new ArrayList();
        m31874else(celse, arrayList, new IdentityHashMap());
        return arrayList;
    }

    /* renamed from: const, reason: not valid java name */
    public static Celse m31872const(Celse celse, Celse celse2, boolean z, h20<Celse, Celse, Celse> h20Var) {
        if (celse == celse2 || celse.equals(celse2)) {
            return celse;
        }
        boolean z2 = celse instanceof d02;
        if (z2 && (celse2 instanceof d02)) {
            return m31882throw((d02) celse, (d02) celse2, z, h20Var);
        }
        if (z) {
            if (celse instanceof z60) {
                return celse;
            }
            if (celse2 instanceof z60) {
                return celse2;
            }
        }
        if (z2) {
            celse = new p3((d02) celse);
        }
        if (celse2 instanceof d02) {
            celse2 = new p3((d02) celse2);
        }
        return m31875final((p3) celse, (p3) celse2, z, h20Var);
    }

    /* renamed from: do, reason: not valid java name */
    public static int m31873do() {
        return y01.m9664do(y01.m9667new(1), 0);
    }

    /* renamed from: else, reason: not valid java name */
    public static void m31874else(Celse celse, List<Celse> list, Map<Celse, Celse> map) {
        if (celse == null || map.containsKey(celse)) {
            return;
        }
        map.put(celse, celse);
        list.add(celse);
        for (int i = 0; i < celse.mo1096while(); i++) {
            m31874else(celse.mo1095this(i), list, map);
        }
    }

    /* renamed from: final, reason: not valid java name */
    public static Celse m31875final(p3 p3Var, p3 p3Var2, boolean z, h20<Celse, Celse, Celse> h20Var) {
        int[] iArr;
        if (h20Var != null) {
            Celse celseM2877do = h20Var.m2877do(p3Var, p3Var2);
            if (celseM2877do != null) {
                return celseM2877do;
            }
            Celse celseM2877do2 = h20Var.m2877do(p3Var2, p3Var);
            if (celseM2877do2 != null) {
                return celseM2877do2;
            }
        }
        int[] iArr2 = p3Var.f4830this;
        int length = iArr2.length;
        int[] iArr3 = p3Var2.f4830this;
        int[] iArrCopyOf = new int[length + iArr3.length];
        int length2 = iArr2.length + iArr3.length;
        Celse[] celseArr = new Celse[length2];
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        while (true) {
            iArr = p3Var.f4830this;
            if (i >= iArr.length) {
                break;
            }
            int[] iArr4 = p3Var2.f4830this;
            if (i2 >= iArr4.length) {
                break;
            }
            Celse celse = p3Var.f4829goto[i];
            Celse celse2 = p3Var2.f4829goto[i2];
            if (iArr[i] == iArr4[i2]) {
                int i4 = iArr[i];
                boolean z2 = i4 == Integer.MAX_VALUE && celse == null && celse2 == null;
                boolean z3 = (celse == null || celse2 == null || !celse.equals(celse2)) ? false : true;
                if (z2 || z3) {
                    celseArr[i3] = celse;
                    iArrCopyOf[i3] = i4;
                } else {
                    celseArr[i3] = m31872const(celse, celse2, z, h20Var);
                    iArrCopyOf[i3] = i4;
                }
                i++;
            } else if (iArr[i] < iArr4[i2]) {
                celseArr[i3] = celse;
                iArrCopyOf[i3] = iArr[i];
                i++;
                i3++;
            } else {
                celseArr[i3] = celse2;
                iArrCopyOf[i3] = iArr4[i2];
            }
            i2++;
            i3++;
        }
        if (i >= iArr.length) {
            while (true) {
                int[] iArr5 = p3Var2.f4830this;
                if (i2 >= iArr5.length) {
                    break;
                }
                celseArr[i3] = p3Var2.f4829goto[i2];
                iArrCopyOf[i3] = iArr5[i2];
                i3++;
                i2++;
            }
        } else {
            while (true) {
                int[] iArr6 = p3Var.f4830this;
                if (i >= iArr6.length) {
                    break;
                }
                celseArr[i3] = p3Var.f4829goto[i];
                iArrCopyOf[i3] = iArr6[i];
                i3++;
                i++;
            }
        }
        if (i3 < length2) {
            if (i3 == 1) {
                d02 d02VarM1093static = d02.m1093static(celseArr[0], iArrCopyOf[0]);
                if (h20Var != null) {
                    h20Var.m2881try(p3Var, p3Var2, d02VarM1093static);
                }
                return d02VarM1093static;
            }
            celseArr = (Celse[]) Arrays.copyOf(celseArr, i3);
            iArrCopyOf = Arrays.copyOf(iArrCopyOf, i3);
        }
        p3 p3Var3 = new p3(celseArr, iArrCopyOf);
        if (p3Var3.equals(p3Var)) {
            if (h20Var != null) {
                h20Var.m2881try(p3Var, p3Var2, p3Var);
            }
            return p3Var;
        }
        if (p3Var3.equals(p3Var2)) {
            if (h20Var != null) {
                h20Var.m2881try(p3Var, p3Var2, p3Var2);
            }
            return p3Var2;
        }
        m31880new(celseArr);
        if (h20Var != null) {
            h20Var.m2881try(p3Var, p3Var2, p3Var3);
        }
        return p3Var3;
    }

    /* renamed from: for, reason: not valid java name */
    public static int m31876for(Celse[] celseArr, int[] iArr) {
        int iM9667new = y01.m9667new(1);
        for (Celse celse : celseArr) {
            iM9667new = y01.m9663case(iM9667new, celse);
        }
        for (int i : iArr) {
            iM9667new = y01.m9668try(iM9667new, i);
        }
        return y01.m9664do(iM9667new, celseArr.length * 2);
    }

    /* renamed from: goto, reason: not valid java name */
    public static Celse m31877goto(Celse celse, ef1 ef1Var, IdentityHashMap<Celse, Celse> identityHashMap) {
        if (celse.mo5849class()) {
            return celse;
        }
        Celse celse2 = identityHashMap.get(celse);
        if (celse2 != null) {
            return celse2;
        }
        Celse celseM1872if = ef1Var.m1872if(celse);
        if (celseM1872if != null) {
            identityHashMap.put(celse, celseM1872if);
            return celseM1872if;
        }
        Celse[] celseArr = new Celse[celse.mo1096while()];
        boolean z = false;
        for (int i = 0; i < celseArr.length; i++) {
            Celse celseM31877goto = m31877goto(celse.mo1095this(i), ef1Var, identityHashMap);
            if (z || celseM31877goto != celse.mo1095this(i)) {
                if (!z) {
                    celseArr = new Celse[celse.mo1096while()];
                    for (int i2 = 0; i2 < celse.mo1096while(); i2++) {
                        celseArr[i2] = celse.mo1095this(i2);
                    }
                    z = true;
                }
                celseArr[i] = celseM31877goto;
            }
        }
        if (!z) {
            ef1Var.m1870do(celse);
            identityHashMap.put(celse, celse);
            return celse;
        }
        Celse celseM1093static = celseArr.length == 0 ? f28469for : celseArr.length == 1 ? d02.m1093static(celseArr[0], celse.mo1094break(0)) : new p3(celseArr, ((p3) celse).f4830this);
        ef1Var.m1870do(celseM1093static);
        identityHashMap.put(celseM1093static, celseM1093static);
        identityHashMap.put(celse, celseM1093static);
        return celseM1093static;
    }

    /* renamed from: if, reason: not valid java name */
    public static int m31878if(Celse celse, int i) {
        return y01.m9664do(y01.m9668try(y01.m9663case(y01.m9667new(1), celse), i), 2);
    }

    /* renamed from: import, reason: not valid java name */
    public static String m31879import(Celse celse) {
        if (celse == null) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        sb.append("digraph G {\n");
        sb.append("rankdir=LR;\n");
        List<Celse> listM31871case = m31871case(celse);
        Collections.sort(listM31871case, new Cdo());
        Iterator<Celse> it = listM31871case.iterator();
        while (true) {
            boolean z = true;
            if (!it.hasNext()) {
                break;
            }
            Celse next = it.next();
            if (next instanceof d02) {
                String strValueOf = String.valueOf(next.f28472do);
                sb.append("  s");
                sb.append(strValueOf);
                String strValueOf2 = next instanceof z60 ? "$" : String.valueOf(next.mo1094break(0));
                sb.append(" [label=\"");
                sb.append(strValueOf2);
                sb.append("\"];\n");
            } else {
                p3 p3Var = (p3) next;
                sb.append("  s");
                sb.append(p3Var.f28472do);
                sb.append(" [shape=box, label=\"");
                sb.append("[");
                int[] iArr = p3Var.f4830this;
                int length = iArr.length;
                int i = 0;
                while (i < length) {
                    int i2 = iArr[i];
                    if (!z) {
                        sb.append(", ");
                    }
                    if (i2 == Integer.MAX_VALUE) {
                        sb.append("$");
                    } else {
                        sb.append(i2);
                    }
                    i++;
                    z = false;
                }
                sb.append("]");
                sb.append("\"];\n");
            }
        }
        for (Celse celse2 : listM31871case) {
            if (celse2 != f28469for) {
                for (int i3 = 0; i3 < celse2.mo1096while(); i3++) {
                    if (celse2.mo1095this(i3) != null) {
                        String strValueOf3 = String.valueOf(celse2.f28472do);
                        sb.append("  s");
                        sb.append(strValueOf3);
                        sb.append("->");
                        sb.append(ak.aB);
                        sb.append(celse2.mo1095this(i3).f28472do);
                        if (celse2.mo1096while() > 1) {
                            sb.append(" [label=\"parent[" + i3 + "]\"];\n");
                        } else {
                            sb.append(";\n");
                        }
                    }
                }
            }
        }
        sb.append("}\n");
        return sb.toString();
    }

    /* renamed from: new, reason: not valid java name */
    public static void m31880new(Celse[] celseArr) {
        HashMap map = new HashMap();
        for (Celse celse : celseArr) {
            if (!map.containsKey(celse)) {
                map.put(celse, celse);
            }
        }
        for (int i = 0; i < celseArr.length; i++) {
            celseArr[i] = (Celse) map.get(celseArr[i]);
        }
    }

    /* renamed from: super, reason: not valid java name */
    public static Celse m31881super(d02 d02Var, d02 d02Var2, boolean z) {
        if (z) {
            z60 z60Var = f28469for;
            if (d02Var == z60Var || d02Var2 == z60Var) {
                return z60Var;
            }
        } else {
            z60 z60Var2 = f28469for;
            if (d02Var == z60Var2 && d02Var2 == z60Var2) {
                return z60Var2;
            }
            if (d02Var == z60Var2) {
                return new p3(new Celse[]{d02Var2.f906goto, null}, new int[]{d02Var2.f907this, Integer.MAX_VALUE});
            }
            if (d02Var2 == z60Var2) {
                return new p3(new Celse[]{d02Var.f906goto, null}, new int[]{d02Var.f907this, Integer.MAX_VALUE});
            }
        }
        return null;
    }

    /* renamed from: throw, reason: not valid java name */
    public static Celse m31882throw(d02 d02Var, d02 d02Var2, boolean z, h20<Celse, Celse, Celse> h20Var) {
        Celse celse;
        if (h20Var != null) {
            Celse celseM2877do = h20Var.m2877do(d02Var, d02Var2);
            if (celseM2877do != null) {
                return celseM2877do;
            }
            Celse celseM2877do2 = h20Var.m2877do(d02Var2, d02Var);
            if (celseM2877do2 != null) {
                return celseM2877do2;
            }
        }
        Celse celseM31881super = m31881super(d02Var, d02Var2, z);
        if (celseM31881super != null) {
            if (h20Var != null) {
                h20Var.m2881try(d02Var, d02Var2, celseM31881super);
            }
            return celseM31881super;
        }
        if (d02Var.f907this == d02Var2.f907this) {
            Celse celseM31872const = m31872const(d02Var.f906goto, d02Var2.f906goto, z, h20Var);
            if (celseM31872const == d02Var.f906goto) {
                return d02Var;
            }
            if (celseM31872const == d02Var2.f906goto) {
                return d02Var2;
            }
            d02 d02VarM1093static = d02.m1093static(celseM31872const, d02Var.f907this);
            if (h20Var != null) {
                h20Var.m2881try(d02Var, d02Var2, d02VarM1093static);
            }
            return d02VarM1093static;
        }
        Celse celse2 = null;
        if (d02Var == d02Var2 || ((celse = d02Var.f906goto) != null && celse.equals(d02Var2.f906goto))) {
            celse2 = d02Var.f906goto;
        }
        if (celse2 != null) {
            int i = d02Var.f907this;
            int i2 = d02Var2.f907this;
            int[] iArr = {i, i2};
            if (i > i2) {
                iArr[0] = i2;
                iArr[1] = i;
            }
            p3 p3Var = new p3(new Celse[]{celse2, celse2}, iArr);
            if (h20Var != null) {
                h20Var.m2881try(d02Var, d02Var2, p3Var);
            }
            return p3Var;
        }
        int i3 = d02Var.f907this;
        int i4 = d02Var2.f907this;
        int[] iArr2 = {i3, i4};
        Celse celse3 = d02Var.f906goto;
        Celse celse4 = d02Var2.f906goto;
        Celse[] celseArr = {celse3, celse4};
        if (i3 > i4) {
            iArr2[0] = i4;
            iArr2[1] = i3;
            celseArr = new Celse[]{celse4, celse3};
        }
        p3 p3Var2 = new p3(celseArr, iArr2);
        if (h20Var != null) {
            h20Var.m2881try(d02Var, d02Var2, p3Var2);
        }
        return p3Var2;
    }

    /* renamed from: try, reason: not valid java name */
    public static Celse m31883try(Cstatic cstatic, vo1 vo1Var) {
        if (vo1Var == null) {
            vo1Var = vo1.f7302for;
        }
        vo1 vo1Var2 = vo1Var.f7303do;
        return (vo1Var2 == null || vo1Var == vo1.f7302for) ? f28469for : d02.m1093static(m31883try(cstatic, vo1Var2), ((ap1) cstatic.f6258do.get(vo1Var.f7304if).m2306catch(0)).f226throw.f1854if);
    }

    /* renamed from: break */
    public abstract int mo1094break(int i);

    /* renamed from: catch, reason: not valid java name */
    public boolean m31884catch() {
        return mo1094break(mo1096while() - 1) == Integer.MAX_VALUE;
    }

    /* renamed from: class */
    public boolean mo5849class() {
        return this == f28469for;
    }

    public abstract boolean equals(Object obj);

    public final int hashCode() {
        return this.f28473if;
    }

    /* renamed from: native, reason: not valid java name */
    public String m31885native(Cthis<?, ?> cthis) {
        return toString();
    }

    /* renamed from: public, reason: not valid java name */
    public String[] m31886public(Cthis<?, ?> cthis, int i) {
        return m31887return(cthis, f28469for, i);
    }

    /* renamed from: return, reason: not valid java name */
    public String[] m31887return(Cthis<?, ?> cthis, Celse celse, int i) {
        int i2;
        int i3;
        ArrayList arrayList = new ArrayList();
        int i4 = 0;
        while (true) {
            StringBuilder sb = new StringBuilder();
            sb.append("[");
            int iMo1094break = i;
            boolean z = true;
            int i5 = 0;
            for (Celse celseMo1095this = this; !celseMo1095this.mo5849class() && celseMo1095this != celse; celseMo1095this = celseMo1095this.mo1095this(i2)) {
                if (celseMo1095this.mo1096while() > 0) {
                    int i6 = 1;
                    while (true) {
                        i3 = 1 << i6;
                        if (i3 >= celseMo1095this.mo1096while()) {
                            break;
                        }
                        i6++;
                    }
                    i2 = (i3 - 1) & (i4 >> i5);
                    z &= i2 >= celseMo1095this.mo1096while() - 1;
                    if (i2 >= celseMo1095this.mo1096while()) {
                        break;
                    }
                    i5 += i6;
                } else {
                    i2 = 0;
                }
                if (cthis != null) {
                    if (sb.length() > 1) {
                        sb.append(' ');
                    }
                    sb.append(cthis.mo2318class()[cthis.mo2321for().f6258do.get(iMo1094break).f1853for]);
                } else if (celseMo1095this.mo1094break(i2) != Integer.MAX_VALUE && !celseMo1095this.mo5849class()) {
                    if (sb.length() > 1) {
                        sb.append(' ');
                    }
                    sb.append(celseMo1095this.mo1094break(i2));
                }
                iMo1094break = celseMo1095this.mo1094break(i2);
            }
            sb.append("]");
            arrayList.add(sb.toString());
            if (z) {
                return (String[]) arrayList.toArray(new String[arrayList.size()]);
            }
            i4++;
        }
    }

    /* renamed from: this */
    public abstract Celse mo1095this(int i);

    /* renamed from: while */
    public abstract int mo1096while();
}
