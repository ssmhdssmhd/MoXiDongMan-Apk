package android.support.v4;

import org.antlr.v4.runtime.atn.Cbreak;
import org.antlr.v4.runtime.atn.Celse;
import org.antlr.v4.runtime.atn.Cif;

/* loaded from: classes3.dex */
public class js0 extends Cswitch {

    /* renamed from: else, reason: not valid java name */
    private final Cif f3212else;

    /* renamed from: goto, reason: not valid java name */
    private final boolean f3213goto;

    public js0(Cfinally cfinally, int i, Celse celse) {
        super(cfinally, i, celse, Cbreak.f28443do);
        this.f3213goto = false;
        this.f3212else = null;
    }

    /* renamed from: case, reason: not valid java name */
    private static boolean m4096case(js0 js0Var, Cfinally cfinally) {
        return js0Var.f3213goto || ((cfinally instanceof jx) && ((jx) cfinally).f3236throws);
    }

    @Override // android.support.v4.Cswitch
    /* renamed from: do, reason: not valid java name */
    public boolean mo4097do(Cswitch cswitch) {
        if (this == cswitch) {
            return true;
        }
        if (!(cswitch instanceof js0)) {
            return false;
        }
        js0 js0Var = (js0) cswitch;
        if (this.f3213goto == js0Var.f3213goto && r51.f5664do.equals(this.f3212else, js0Var.f3212else)) {
            return super.mo4097do(cswitch);
        }
        return false;
    }

    /* renamed from: else, reason: not valid java name */
    public final Cif m4098else() {
        return this.f3212else;
    }

    /* renamed from: goto, reason: not valid java name */
    public final boolean m4099goto() {
        return this.f3213goto;
    }

    @Override // android.support.v4.Cswitch
    public int hashCode() {
        return y01.m9664do(y01.m9663case(y01.m9668try(y01.m9663case(y01.m9663case(y01.m9668try(y01.m9668try(y01.m9667new(7), this.f6323do.f1854if), this.f6325if), this.f6324for), this.f6327try), this.f3213goto ? 1 : 0), this.f3212else), 6);
    }

    public js0(Cfinally cfinally, int i, Celse celse, Cif cif) {
        super(cfinally, i, celse, Cbreak.f28443do);
        this.f3212else = cif;
        this.f3213goto = false;
    }

    public js0(js0 js0Var, Cfinally cfinally) {
        super(js0Var, cfinally, js0Var.f6324for, js0Var.f6327try);
        this.f3212else = js0Var.f3212else;
        this.f3213goto = m4096case(js0Var, cfinally);
    }

    public js0(js0 js0Var, Cfinally cfinally, Cif cif) {
        super(js0Var, cfinally, js0Var.f6324for, js0Var.f6327try);
        this.f3212else = cif;
        this.f3213goto = m4096case(js0Var, cfinally);
    }

    public js0(js0 js0Var, Cfinally cfinally, Celse celse) {
        super(js0Var, cfinally, celse, js0Var.f6327try);
        this.f3212else = js0Var.f3212else;
        this.f3213goto = m4096case(js0Var, cfinally);
    }
}
