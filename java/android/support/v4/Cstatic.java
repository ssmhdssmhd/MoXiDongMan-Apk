package android.support.v4;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import org.antlr.v4.runtime.atn.Cdo;
import org.antlr.v4.runtime.atn.LexerAction;

/* renamed from: android.support.v4.static, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cstatic {

    /* renamed from: catch, reason: not valid java name */
    public static final int f6255catch = 0;

    /* renamed from: case, reason: not valid java name */
    public final Cdo f6257case;

    /* renamed from: else, reason: not valid java name */
    public final int f6259else;

    /* renamed from: for, reason: not valid java name */
    public xo1[] f6260for;

    /* renamed from: goto, reason: not valid java name */
    public int[] f6261goto;

    /* renamed from: new, reason: not valid java name */
    public yo1[] f6263new;

    /* renamed from: this, reason: not valid java name */
    public LexerAction[] f6264this;

    /* renamed from: do, reason: not valid java name */
    public final List<Cfinally> f6258do = new ArrayList();

    /* renamed from: if, reason: not valid java name */
    public final List<jx> f6262if = new ArrayList();

    /* renamed from: try, reason: not valid java name */
    public final Map<String, y72> f6265try = new LinkedHashMap();

    /* renamed from: break, reason: not valid java name */
    public final List<y72> f6256break = new ArrayList();

    public Cstatic(Cdo cdo, int i) {
        this.f6257case = cdo;
        this.f6259else = i;
    }

    /* renamed from: case, reason: not valid java name */
    public sn0 m7597case(Cfinally cfinally) {
        sn0 sn0Var = cfinally.f1851case;
        if (sn0Var != null) {
            return sn0Var;
        }
        sn0 sn0VarM7599else = m7599else(cfinally, null);
        cfinally.f1851case = sn0VarM7599else;
        sn0VarM7599else.m7533native(true);
        return cfinally.f1851case;
    }

    /* renamed from: do, reason: not valid java name */
    public void m7598do(Cfinally cfinally) {
        if (cfinally != null) {
            cfinally.f1852do = this;
            cfinally.f1854if = this.f6258do.size();
        }
        this.f6258do.add(cfinally);
    }

    /* renamed from: else, reason: not valid java name */
    public sn0 m7599else(Cfinally cfinally, vo1 vo1Var) {
        return new wr0(this).m9266if(cfinally, vo1Var);
    }

    /* renamed from: for, reason: not valid java name */
    public jx m7600for(int i) {
        if (this.f6262if.isEmpty()) {
            return null;
        }
        return this.f6262if.get(i);
    }

    /* renamed from: goto, reason: not valid java name */
    public void m7601goto(Cfinally cfinally) {
        this.f6258do.set(cfinally.f1854if, null);
    }

    /* renamed from: if, reason: not valid java name */
    public int m7602if(jx jxVar) {
        this.f6262if.add(jxVar);
        int size = this.f6262if.size() - 1;
        jxVar.f3235switch = size;
        return size;
    }

    /* renamed from: new, reason: not valid java name */
    public sn0 m7603new(int i, vo1 vo1Var) {
        if (i < 0 || i >= this.f6258do.size()) {
            throw new IllegalArgumentException("Invalid state number.");
        }
        sn0 sn0VarM7597case = m7597case(this.f6258do.get(i));
        if (!sn0VarM7597case.contains(-2)) {
            return sn0VarM7597case;
        }
        sn0 sn0Var = new sn0(new int[0]);
        sn0Var.addAll(sn0VarM7597case);
        sn0Var.remove(-2);
        while (vo1Var != null && vo1Var.f7304if >= 0 && sn0VarM7597case.contains(-2)) {
            sn0VarM7597case = m7597case(((ap1) this.f6258do.get(vo1Var.f7304if).m2306catch(0)).f226throw);
            sn0Var.addAll(sn0VarM7597case);
            sn0Var.remove(-2);
            vo1Var = vo1Var.f7303do;
        }
        if (sn0VarM7597case.contains(-2)) {
            sn0Var.add(-1);
        }
        return sn0Var;
    }

    /* renamed from: try, reason: not valid java name */
    public int m7604try() {
        return this.f6262if.size();
    }
}
