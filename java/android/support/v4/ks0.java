package android.support.v4;

import java.util.Iterator;
import org.antlr.v4.runtime.CharStream;
import org.antlr.v4.runtime.atn.Ccase;
import org.antlr.v4.runtime.atn.Ccatch;
import org.antlr.v4.runtime.atn.Celse;
import org.antlr.v4.runtime.atn.Cif;

/* loaded from: classes3.dex */
public class ks0 extends Cextends {

    /* renamed from: const, reason: not valid java name */
    public static final boolean f3464const = false;

    /* renamed from: final, reason: not valid java name */
    public static final boolean f3465final = false;

    /* renamed from: import, reason: not valid java name */
    public static final /* synthetic */ boolean f3466import = false;

    /* renamed from: super, reason: not valid java name */
    public static final int f3467super = 0;

    /* renamed from: throw, reason: not valid java name */
    public static final int f3468throw = 127;

    /* renamed from: while, reason: not valid java name */
    public static int f3469while;

    /* renamed from: break, reason: not valid java name */
    public final org.antlr.v4.runtime.dfa.Cdo[] f3470break;

    /* renamed from: case, reason: not valid java name */
    public final is0 f3471case;

    /* renamed from: catch, reason: not valid java name */
    public int f3472catch;

    /* renamed from: class, reason: not valid java name */
    public final Cdo f3473class;

    /* renamed from: else, reason: not valid java name */
    public int f3474else;

    /* renamed from: goto, reason: not valid java name */
    public int f3475goto;

    /* renamed from: this, reason: not valid java name */
    public int f3476this;

    /* renamed from: android.support.v4.ks0$do, reason: invalid class name */
    public static class Cdo {

        /* renamed from: new, reason: not valid java name */
        public au f3480new;

        /* renamed from: do, reason: not valid java name */
        public int f3477do = -1;

        /* renamed from: if, reason: not valid java name */
        public int f3479if = 0;

        /* renamed from: for, reason: not valid java name */
        public int f3478for = -1;

        /* renamed from: do, reason: not valid java name */
        public void m4509do() {
            this.f3477do = -1;
            this.f3479if = 0;
            this.f3478for = -1;
            this.f3480new = null;
        }
    }

    public ks0(Cstatic cstatic, org.antlr.v4.runtime.dfa.Cdo[] cdoArr, ef1 ef1Var) {
        this(null, cstatic, cdoArr, ef1Var);
    }

    /* renamed from: abstract, reason: not valid java name */
    public au m4483abstract(au auVar, int i) {
        au[] auVarArr = auVar.f238for;
        if (auVarArr == null || i < 0 || i > 127) {
            return null;
        }
        return auVarArr[i + 0];
    }

    /* renamed from: continue, reason: not valid java name */
    public int m4484continue() {
        return this.f3475goto;
    }

    /* renamed from: default, reason: not valid java name */
    public int m4485default(CharStream charStream, au auVar) {
        if (auVar.f241new) {
            m4490import(this.f3473class, charStream, auVar);
        }
        int iLA = charStream.LA(1);
        while (true) {
            au auVarM4483abstract = m4483abstract(auVar, iLA);
            if (auVarM4483abstract == null) {
                auVarM4483abstract = m4498return(charStream, auVar, iLA);
            }
            if (auVarM4483abstract == Cextends.f1618try) {
                break;
            }
            if (iLA != -1) {
                m4499static(charStream);
            }
            if (auVarM4483abstract.f241new) {
                m4490import(this.f3473class, charStream, auVarM4483abstract);
                if (iLA == -1) {
                    break;
                }
            }
            iLA = charStream.LA(1);
            auVar = auVarM4483abstract;
        }
        return m4486extends(this.f3473class, charStream, auVar.f240if, iLA);
    }

    /* renamed from: extends, reason: not valid java name */
    public int m4486extends(Cdo cdo, CharStream charStream, Cthrows cthrows, int i) {
        au auVar = cdo.f3480new;
        if (auVar != null) {
            m4487final(charStream, auVar.f235case, this.f3474else, cdo.f3477do, cdo.f3479if, cdo.f3478for);
            return cdo.f3480new.f242try;
        }
        if (i == -1 && charStream.index() == this.f3474else) {
            return -1;
        }
        throw new ss0(this.f3471case, charStream, this.f3474else, cthrows);
    }

    /* renamed from: final, reason: not valid java name */
    public void m4487final(CharStream charStream, Cif cif, int i, int i2, int i3, int i4) {
        is0 is0Var;
        charStream.seek(i2);
        this.f3475goto = i3;
        this.f3476this = i4;
        if (cif == null || (is0Var = this.f3471case) == null) {
            return;
        }
        cif.m31893if(is0Var, charStream, i);
    }

    /* renamed from: finally, reason: not valid java name */
    public int m4488finally() {
        return this.f3476this;
    }

    @Override // android.support.v4.Cextends
    /* renamed from: for */
    public void mo2071for() {
        int i = 0;
        while (true) {
            org.antlr.v4.runtime.dfa.Cdo[] cdoArr = this.f3470break;
            if (i >= cdoArr.length) {
                return;
            }
            cdoArr[i] = new org.antlr.v4.runtime.dfa.Cdo(this.f1619do.m7600for(i), i);
            i++;
        }
    }

    @Override // android.support.v4.Cextends
    /* renamed from: goto */
    public void mo2072goto() {
        this.f3473class.m4509do();
        this.f3474else = -1;
        this.f3475goto = 1;
        this.f3476this = 0;
        this.f3472catch = 0;
    }

    /* renamed from: implements, reason: not valid java name */
    public int m4489implements(CharStream charStream) {
        Cthrows cthrowsM4497public = m4497public(charStream, this.f1619do.f6256break.get(this.f3472catch));
        boolean z = cthrowsM4497public.f6560case;
        cthrowsM4497public.f6560case = false;
        au auVarM4508while = m4508while(cthrowsM4497public);
        if (!z) {
            this.f3470break[this.f3472catch].f28537if = auVarM4508while;
        }
        return m4485default(charStream, auVarM4508while);
    }

    /* renamed from: import, reason: not valid java name */
    public void m4490import(Cdo cdo, CharStream charStream, au auVar) {
        cdo.f3477do = charStream.index();
        cdo.f3479if = this.f3475goto;
        cdo.f3478for = this.f3476this;
        cdo.f3480new = auVar;
    }

    /* renamed from: instanceof, reason: not valid java name */
    public void m4491instanceof(int i) {
        this.f3476this = i;
    }

    /* renamed from: interface, reason: not valid java name */
    public String m4492interface(CharStream charStream) {
        return charStream.getText(rn0.m7059case(this.f3474else, charStream.index() - 1));
    }

    /* renamed from: native, reason: not valid java name */
    public boolean m4493native(CharStream charStream, js0 js0Var, Cthrows cthrows, boolean z, boolean z2, boolean z3) {
        Cfinally cfinally = js0Var.f6323do;
        if (!(cfinally instanceof yo1)) {
            if (!cfinally.m2308else() && (!z || !js0Var.m4099goto())) {
                cthrows.add(js0Var);
            }
            Cfinally cfinally2 = js0Var.f6323do;
            boolean zM4493native = z;
            for (int i = 0; i < cfinally2.m2309for(); i++) {
                js0 js0VarM4495private = m4495private(charStream, js0Var, cfinally2.m2306catch(i), cthrows, z2, z3);
                if (js0VarM4495private != null) {
                    zM4493native = m4493native(charStream, js0VarM4495private, cthrows, zM4493native, z2, z3);
                }
            }
            return zM4493native;
        }
        Celse celse = js0Var.f6324for;
        boolean z4 = true;
        if (celse == null || celse.m31884catch()) {
            Celse celse2 = js0Var.f6324for;
            if (celse2 == null || celse2.mo5849class()) {
                cthrows.add(js0Var);
                return true;
            }
            cthrows.add(new js0(js0Var, js0Var.f6323do, Celse.f28469for));
        } else {
            z4 = z;
        }
        Celse celse3 = js0Var.f6324for;
        if (celse3 == null || celse3.mo5849class()) {
            return z4;
        }
        boolean zM4493native2 = z4;
        for (int i2 = 0; i2 < js0Var.f6324for.mo1096while(); i2++) {
            if (js0Var.f6324for.mo1094break(i2) != Integer.MAX_VALUE) {
                zM4493native2 = m4493native(charStream, new js0(js0Var, this.f1619do.f6258do.get(js0Var.f6324for.mo1094break(i2)), js0Var.f6324for.mo1095this(i2)), cthrows, zM4493native2, z2, z3);
            }
        }
        return zM4493native2;
    }

    /* renamed from: package, reason: not valid java name */
    public final org.antlr.v4.runtime.dfa.Cdo m4494package(int i) {
        return this.f3470break[i];
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* renamed from: private, reason: not valid java name */
    public js0 m4495private(CharStream charStream, js0 js0Var, Ccatch ccatch, Cthrows cthrows, boolean z, boolean z2) {
        js0 js0Var2;
        int iMo310do = ccatch.mo310do();
        if (iMo310do == 10) {
            throw new UnsupportedOperationException("Precedence predicates are not supported in lexers.");
        }
        switch (iMo310do) {
            case 1:
                return new js0(js0Var, ccatch.f28465do);
            case 2:
            case 5:
            case 7:
                if (z2 && ccatch.mo312new(-1, 0, is0.f2856extends)) {
                    return new js0(js0Var, ccatch.f28465do);
                }
                return null;
            case 3:
                js0Var2 = new js0(js0Var, ccatch.f28465do, d02.m1093static(js0Var.f6324for, ((ap1) ccatch).f226throw.f1854if));
                return js0Var2;
            case 4:
                Ccase ccase = (Ccase) ccatch;
                cthrows.f6560case = true;
                if (m4505throws(charStream, ccase.f28450final, ccase.f28451super, z)) {
                    return new js0(js0Var, ccatch.f28465do);
                }
                return null;
            case 6:
                Celse celse = js0Var.f6324for;
                if (celse != null && !celse.m31884catch()) {
                    return new js0(js0Var, ccatch.f28465do);
                }
                js0Var2 = new js0(js0Var, ccatch.f28465do, Cif.m31891do(js0Var.m4098else(), this.f1619do.f6264this[((u) ccatch).f6715super]));
                return js0Var2;
            default:
                return null;
        }
    }

    /* renamed from: protected, reason: not valid java name */
    public String m4496protected(int i) {
        if (i == -1) {
            return "EOF";
        }
        return "'" + ((char) i) + "'";
    }

    /* renamed from: public, reason: not valid java name */
    public Cthrows m4497public(CharStream charStream, Cfinally cfinally) {
        z60 z60Var = Celse.f28469for;
        k81 k81Var = new k81();
        int i = 0;
        while (i < cfinally.m2309for()) {
            int i2 = i + 1;
            m4493native(charStream, new js0(cfinally.m2306catch(i).f28465do, i2, z60Var), k81Var, false, false, false);
            i = i2;
        }
        return k81Var;
    }

    /* renamed from: return, reason: not valid java name */
    public au m4498return(CharStream charStream, au auVar, int i) {
        k81 k81Var = new k81();
        m4500strictfp(charStream, auVar.f240if, k81Var, i);
        if (!k81Var.isEmpty()) {
            return m4501super(auVar, i, k81Var);
        }
        if (!k81Var.f6560case) {
            m4504throw(auVar, i, Cextends.f1618try);
        }
        return Cextends.f1618try;
    }

    /* renamed from: static, reason: not valid java name */
    public void m4499static(CharStream charStream) {
        if (charStream.LA(1) == 10) {
            this.f3475goto++;
            this.f3476this = 0;
        } else {
            this.f3476this++;
        }
        charStream.consume();
    }

    /* renamed from: strictfp, reason: not valid java name */
    public void m4500strictfp(CharStream charStream, Cthrows cthrows, Cthrows cthrows2, int i) {
        int i2;
        Iterator<Cswitch> it = cthrows.iterator();
        int i3 = 0;
        while (it.hasNext()) {
            Cswitch next = it.next();
            boolean z = next.f6325if == i3;
            if (!z || !((js0) next).m4099goto()) {
                int iM2309for = next.f6323do.m2309for();
                int i4 = 0;
                while (true) {
                    if (i4 >= iM2309for) {
                        break;
                    }
                    Cfinally cfinallyM4507volatile = m4507volatile(next.f6323do.m2306catch(i4), i);
                    if (cfinallyM4507volatile != null) {
                        js0 js0Var = (js0) next;
                        Cif cifM4098else = js0Var.m4098else();
                        if (cifM4098else != null) {
                            cifM4098else = cifM4098else.m31892for(charStream.index() - this.f3474else);
                        }
                        i2 = i4;
                        if (m4493native(charStream, new js0(js0Var, cfinallyM4507volatile, cifM4098else), cthrows2, z, true, i == -1)) {
                            i3 = next.f6325if;
                            break;
                        }
                    } else {
                        i2 = i4;
                    }
                    i4 = i2 + 1;
                }
            }
        }
    }

    /* renamed from: super, reason: not valid java name */
    public au m4501super(au auVar, int i, Cthrows cthrows) {
        boolean z = cthrows.f6560case;
        cthrows.f6560case = false;
        au auVarM4508while = m4508while(cthrows);
        if (z) {
            return auVarM4508while;
        }
        m4504throw(auVar, i, auVarM4508while);
        return auVarM4508while;
    }

    /* renamed from: switch, reason: not valid java name */
    public void m4502switch(ks0 ks0Var) {
        this.f3476this = ks0Var.f3476this;
        this.f3475goto = ks0Var.f3475goto;
        this.f3472catch = ks0Var.f3472catch;
        this.f3474else = ks0Var.f3474else;
    }

    /* renamed from: synchronized, reason: not valid java name */
    public void m4503synchronized(int i) {
        this.f3475goto = i;
    }

    /* renamed from: throw, reason: not valid java name */
    public void m4504throw(au auVar, int i, au auVar2) {
        if (i < 0 || i > 127) {
            return;
        }
        synchronized (auVar) {
            if (auVar.f238for == null) {
                auVar.f238for = new au[128];
            }
            auVar.f238for[i + 0] = auVar2;
        }
    }

    /* renamed from: throws, reason: not valid java name */
    public boolean m4505throws(CharStream charStream, int i, int i2, boolean z) {
        is0 is0Var = this.f3471case;
        if (is0Var == null) {
            return true;
        }
        if (!z) {
            return is0Var.m32081switch(null, i, i2);
        }
        int i3 = this.f3476this;
        int i4 = this.f3475goto;
        int iIndex = charStream.index();
        int iMark = charStream.mark();
        try {
            m4499static(charStream);
            return this.f3471case.m32081switch(null, i, i2);
        } finally {
            this.f3476this = i3;
            this.f3475goto = i4;
            charStream.seek(iIndex);
            charStream.release(iMark);
        }
    }

    /* renamed from: transient, reason: not valid java name */
    public int m4506transient(CharStream charStream, int i) {
        f3469while++;
        this.f3472catch = i;
        int iMark = charStream.mark();
        try {
            this.f3474else = charStream.index();
            this.f3473class.m4509do();
            org.antlr.v4.runtime.dfa.Cdo cdo = this.f3470break[i];
            return cdo.f28537if == null ? m4489implements(charStream) : m4485default(charStream, cdo.f28537if);
        } finally {
            charStream.release(iMark);
        }
    }

    /* renamed from: volatile, reason: not valid java name */
    public Cfinally m4507volatile(Ccatch ccatch, int i) {
        if (ccatch.mo312new(i, 0, is0.f2856extends)) {
            return ccatch.f28465do;
        }
        return null;
    }

    /* renamed from: while, reason: not valid java name */
    public au m4508while(Cthrows cthrows) {
        au auVar = new au(cthrows);
        Cswitch cswitch = null;
        Iterator<Cswitch> it = cthrows.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            Cswitch next = it.next();
            if (next.f6323do instanceof yo1) {
                cswitch = next;
                break;
            }
        }
        if (cswitch != null) {
            auVar.f241new = true;
            auVar.f235case = ((js0) cswitch).m4098else();
            auVar.f242try = this.f1619do.f6261goto[cswitch.f6323do.f1853for];
        }
        org.antlr.v4.runtime.dfa.Cdo cdo = this.f3470break[this.f3472catch];
        synchronized (cdo.f28535do) {
            au auVar2 = cdo.f28535do.get(auVar);
            if (auVar2 != null) {
                return auVar2;
            }
            auVar.f236do = cdo.f28535do.size();
            cthrows.m7931catch(true);
            auVar.f240if = cthrows;
            cdo.f28535do.put(auVar, auVar);
            return auVar;
        }
    }

    public ks0(is0 is0Var, Cstatic cstatic, org.antlr.v4.runtime.dfa.Cdo[] cdoArr, ef1 ef1Var) {
        super(cstatic, ef1Var);
        this.f3474else = -1;
        this.f3475goto = 1;
        this.f3476this = 0;
        this.f3472catch = 0;
        this.f3473class = new Cdo();
        this.f3470break = cdoArr;
        this.f3471case = is0Var;
    }
}
