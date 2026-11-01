package freemarker.core;

import freemarker.core.h0;
import freemarker.template.TemplateException;

/* renamed from: freemarker.core.case, reason: invalid class name */
/* loaded from: classes.dex */
final class Ccase extends Cthrow {

    /* renamed from: goto, reason: not valid java name */
    private final h0 f23570goto;

    /* renamed from: this, reason: not valid java name */
    private final h0 f23571this;

    public Ccase(h0 h0Var, h0 h0Var2) {
        this.f23570goto = h0Var;
        this.f23571this = h0Var2;
    }

    @Override // freemarker.core.h4
    /* renamed from: case */
    public String mo27813case() {
        return "&&";
    }

    @Override // freemarker.core.h0
    /* renamed from: continue */
    public boolean mo27884continue(d0 d0Var) throws TemplateException {
        return this.f23570goto.mo27884continue(d0Var) && this.f23571this.mo27884continue(d0Var);
    }

    @Override // freemarker.core.h4
    /* renamed from: else */
    public int mo27814else() {
        return 2;
    }

    @Override // freemarker.core.h4
    /* renamed from: for */
    public String mo27815for() {
        return this.f23570goto.mo27815for() + " && " + this.f23571this.mo27815for();
    }

    @Override // freemarker.core.h4
    /* renamed from: goto */
    public f3 mo27816goto(int i) {
        return f3.m28031do(i);
    }

    @Override // freemarker.core.h0
    /* renamed from: instanceof */
    public boolean mo27817instanceof() {
        return this.f23810else != null || (this.f23570goto.mo27817instanceof() && this.f23571this.mo27817instanceof());
    }

    @Override // freemarker.core.h0
    /* renamed from: static */
    public h0 mo27818static(String str, h0 h0Var, h0.Cdo cdo) {
        return new Ccase(this.f23570goto.m28053return(str, h0Var, cdo), this.f23571this.m28053return(str, h0Var, cdo));
    }

    @Override // freemarker.core.h4
    /* renamed from: this */
    public Object mo27819this(int i) {
        if (i == 0) {
            return this.f23570goto;
        }
        if (i == 1) {
            return this.f23571this;
        }
        throw new IndexOutOfBoundsException();
    }
}
