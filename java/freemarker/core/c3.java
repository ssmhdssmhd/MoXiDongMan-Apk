package freemarker.core;

import freemarker.core.h0;
import freemarker.template.TemplateException;

/* loaded from: classes.dex */
final class c3 extends Cthrow {

    /* renamed from: goto, reason: not valid java name */
    private final h0 f23537goto;

    /* renamed from: this, reason: not valid java name */
    private final h0 f23538this;

    public c3(h0 h0Var, h0 h0Var2) {
        this.f23537goto = h0Var;
        this.f23538this = h0Var2;
    }

    @Override // freemarker.core.h4
    /* renamed from: case */
    public String mo27813case() {
        return "||";
    }

    @Override // freemarker.core.h0
    /* renamed from: continue, reason: not valid java name */
    public boolean mo27884continue(d0 d0Var) throws TemplateException {
        return this.f23537goto.mo27884continue(d0Var) || this.f23538this.mo27884continue(d0Var);
    }

    @Override // freemarker.core.h4
    /* renamed from: else */
    public int mo27814else() {
        return 2;
    }

    @Override // freemarker.core.h4
    /* renamed from: for */
    public String mo27815for() {
        return this.f23537goto.mo27815for() + " || " + this.f23538this.mo27815for();
    }

    @Override // freemarker.core.h4
    /* renamed from: goto */
    public f3 mo27816goto(int i) {
        return f3.m28031do(i);
    }

    @Override // freemarker.core.h0
    /* renamed from: instanceof */
    public boolean mo27817instanceof() {
        return this.f23810else != null || (this.f23537goto.mo27817instanceof() && this.f23538this.mo27817instanceof());
    }

    @Override // freemarker.core.h0
    /* renamed from: static */
    public h0 mo27818static(String str, h0 h0Var, h0.Cdo cdo) {
        return new c3(this.f23537goto.m28053return(str, h0Var, cdo), this.f23538this.m28053return(str, h0Var, cdo));
    }

    @Override // freemarker.core.h4
    /* renamed from: this */
    public Object mo27819this(int i) {
        if (i == 0) {
            return this.f23537goto;
        }
        if (i == 1) {
            return this.f23538this;
        }
        throw new IndexOutOfBoundsException();
    }
}
