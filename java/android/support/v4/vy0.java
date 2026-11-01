package android.support.v4;

import org.bouncycastle.pqc.jcajce.provider.mceliece.Cdo;
import org.bouncycastle.pqc.jcajce.provider.mceliece.Cif;

/* loaded from: classes3.dex */
public final class vy0 {
    private vy0() {
    }

    /* renamed from: do, reason: not valid java name */
    public static re0[] m8998do(xy0 xy0Var, re0 re0Var) {
        int iM9620case = xy0Var.m9620case();
        fd1 fd1VarM9623goto = xy0Var.m9623goto();
        se0 se0VarM9622for = xy0Var.m9622for();
        pe1 pe1VarM9624new = xy0Var.m9624new();
        qe0 qe0VarM9626try = xy0Var.m9626try();
        pe1[] pe1VarArrM9625this = xy0Var.m9625this();
        re0 re0Var2 = (re0) re0Var.mo3006try(fd1VarM9623goto.m2248do());
        re0 re0VarM8450for = uh0.m8450for((re0) qe0VarM9626try.mo403this(re0Var2), se0VarM9622for, pe1VarM9624new, pe1VarArrM9625this);
        re0 re0Var3 = (re0) ((re0) re0Var2.mo3002do(re0VarM8450for)).mo3006try(fd1VarM9623goto);
        return new re0[]{re0Var3.m6946goto(iM9620case), (re0) re0VarM8450for.mo3006try(fd1VarM9623goto)};
    }

    /* renamed from: for, reason: not valid java name */
    public static re0 m8999for(zy0 zy0Var, re0 re0Var, re0 re0Var2) {
        return (re0) zy0Var.m10328for().m6525finally(re0Var).mo3002do(re0Var2);
    }

    /* renamed from: if, reason: not valid java name */
    public static re0[] m9000if(Cdo cdo, re0 re0Var) {
        int k = cdo.getK();
        fd1 p = cdo.getP();
        se0 field = cdo.getField();
        pe1 goppaPoly = cdo.getGoppaPoly();
        qe0 h = cdo.getH();
        pe1[] qInv = cdo.getQInv();
        re0 re0Var2 = (re0) re0Var.mo3006try(p.m2248do());
        re0 re0VarM8450for = uh0.m8450for((re0) h.mo403this(re0Var2), field, goppaPoly, qInv);
        re0 re0Var3 = (re0) ((re0) re0Var2.mo3002do(re0VarM8450for)).mo3006try(p);
        return new re0[]{re0Var3.m6946goto(k), (re0) re0VarM8450for.mo3006try(p)};
    }

    /* renamed from: new, reason: not valid java name */
    public static re0 m9001new(Cif cif, re0 re0Var, re0 re0Var2) {
        return (re0) cif.getG().m6525finally(re0Var).mo3002do(re0Var2);
    }
}
