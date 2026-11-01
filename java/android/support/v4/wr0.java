package android.support.v4;

import java.util.BitSet;
import java.util.HashSet;
import java.util.Set;
import org.antlr.v4.runtime.atn.Ccatch;
import org.antlr.v4.runtime.atn.Celse;

/* loaded from: classes3.dex */
public class wr0 {

    /* renamed from: if, reason: not valid java name */
    public static final int f7679if = 0;

    /* renamed from: do, reason: not valid java name */
    public final Cstatic f7680do;

    public wr0(Cstatic cstatic) {
        this.f7680do = cstatic;
    }

    /* renamed from: do, reason: not valid java name */
    public sn0 m9264do(Cfinally cfinally, Cfinally cfinally2, vo1 vo1Var) throws Throwable {
        sn0 sn0Var = new sn0(new int[0]);
        m9265for(cfinally, cfinally2, vo1Var != null ? Celse.m31883try(cfinally.f1852do, vo1Var) : null, sn0Var, new HashSet(), new BitSet(), true, true);
        return sn0Var;
    }

    /* renamed from: for, reason: not valid java name */
    public void m9265for(Cfinally cfinally, Cfinally cfinally2, Celse celse, sn0 sn0Var, Set<Cswitch> set, BitSet bitSet, boolean z, boolean z2) throws Throwable {
        int i;
        int i2;
        ap1 ap1Var;
        if (set.add(new Cswitch(cfinally, 0, celse))) {
            if (cfinally == cfinally2) {
                if (celse == null) {
                    sn0Var.add(-2);
                    return;
                } else if (celse.mo5849class() && z2) {
                    sn0Var.add(-1);
                    return;
                }
            }
            if (cfinally instanceof yo1) {
                if (celse == null) {
                    sn0Var.add(-2);
                    return;
                }
                if (celse.mo5849class() && z2) {
                    sn0Var.add(-1);
                    return;
                }
                if (celse != Celse.f28469for) {
                    boolean z3 = bitSet.get(cfinally.f1853for);
                    try {
                        bitSet.clear(cfinally.f1853for);
                        for (int i3 = 0; i3 < celse.mo1096while(); i3++) {
                            m9265for(this.f7680do.f6258do.get(celse.mo1094break(i3)), cfinally2, celse.mo1095this(i3), sn0Var, set, bitSet, z, z2);
                        }
                        if (z3) {
                            return;
                        } else {
                            return;
                        }
                    } finally {
                        if (z3) {
                            bitSet.set(cfinally.f1853for);
                        }
                    }
                }
            }
            int i4 = 0;
            for (int iM2309for = cfinally.m2309for(); i4 < iM2309for; iM2309for = i2) {
                Ccatch ccatchM2306catch = cfinally.m2306catch(i4);
                if (ccatchM2306catch.getClass() == ap1.class) {
                    ap1 ap1Var2 = (ap1) ccatchM2306catch;
                    if (bitSet.get(ap1Var2.f28465do.f1853for)) {
                        i = i4;
                        i2 = iM2309for;
                    } else {
                        d02 d02VarM1093static = d02.m1093static(celse, ap1Var2.f226throw.f1854if);
                        try {
                            bitSet.set(((ap1) ccatchM2306catch).f28465do.f1853for);
                            ap1Var = ap1Var2;
                            i = i4;
                            i2 = iM2309for;
                        } catch (Throwable th) {
                            th = th;
                            ap1Var = ap1Var2;
                        }
                        try {
                            m9265for(ccatchM2306catch.f28465do, cfinally2, d02VarM1093static, sn0Var, set, bitSet, z, z2);
                            bitSet.clear(ap1Var.f28465do.f1853for);
                        } catch (Throwable th2) {
                            th = th2;
                            bitSet.clear(ap1Var.f28465do.f1853for);
                            throw th;
                        }
                    }
                } else {
                    i = i4;
                    i2 = iM2309for;
                    if (ccatchM2306catch instanceof d) {
                        if (z) {
                            m9265for(ccatchM2306catch.f28465do, cfinally2, celse, sn0Var, set, bitSet, z, z2);
                        } else {
                            sn0Var.add(0);
                        }
                    } else if (ccatchM2306catch.mo311if()) {
                        m9265for(ccatchM2306catch.f28465do, cfinally2, celse, sn0Var, set, bitSet, z, z2);
                    } else if (ccatchM2306catch.getClass() == bg2.class) {
                        sn0Var.addAll(sn0.m7518throw(1, this.f7680do.f6259else));
                    } else {
                        sn0 sn0VarMo2573for = ccatchM2306catch.mo2573for();
                        if (sn0VarMo2573for != null) {
                            if (ccatchM2306catch instanceof o41) {
                                sn0VarMo2573for = sn0VarMo2573for.complement(sn0.m7518throw(1, this.f7680do.f6259else));
                            }
                            sn0Var.addAll(sn0VarMo2573for);
                        }
                    }
                }
                i4 = i + 1;
            }
        }
    }

    /* renamed from: if, reason: not valid java name */
    public sn0 m9266if(Cfinally cfinally, vo1 vo1Var) {
        return m9264do(cfinally, null, vo1Var);
    }

    /* renamed from: new, reason: not valid java name */
    public sn0[] m9267new(Cfinally cfinally) throws Throwable {
        if (cfinally == null) {
            return null;
        }
        sn0[] sn0VarArr = new sn0[cfinally.m2309for()];
        for (int i = 0; i < cfinally.m2309for(); i++) {
            sn0VarArr[i] = new sn0(new int[0]);
            m9265for(cfinally.m2306catch(i).f28465do, null, Celse.f28469for, sn0VarArr[i], new HashSet(), new BitSet(), false, false);
            if (sn0VarArr[i].size() == 0 || sn0VarArr[i].contains(0)) {
                sn0VarArr[i] = null;
            }
        }
        return sn0VarArr;
    }
}
