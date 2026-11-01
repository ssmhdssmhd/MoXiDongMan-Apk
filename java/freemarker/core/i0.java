package freemarker.core;

import freemarker.core.h0;
import freemarker.template.TemplateException;
import freemarker.template.TemplateModel;

/* loaded from: classes.dex */
class i0 extends h0 {

    /* renamed from: goto, reason: not valid java name */
    private final TemplateModel f23847goto;

    /* renamed from: this, reason: not valid java name */
    private final h0 f23848this;

    public i0(TemplateModel templateModel, h0 h0Var) {
        this.f23847goto = templateModel;
        this.f23848this = h0Var;
    }

    @Override // freemarker.core.h4
    /* renamed from: case */
    public String mo27813case() {
        return this.f23848this.mo27813case();
    }

    @Override // freemarker.core.h4
    /* renamed from: else */
    public int mo27814else() {
        return this.f23848this.mo27814else();
    }

    @Override // freemarker.core.h4
    /* renamed from: for */
    public String mo27815for() {
        return this.f23848this.mo27815for();
    }

    @Override // freemarker.core.h4
    /* renamed from: goto */
    public f3 mo27816goto(int i) {
        return this.f23848this.mo27816goto(i);
    }

    @Override // freemarker.core.h0
    /* renamed from: instanceof */
    public boolean mo27817instanceof() {
        return this.f23848this.mo27817instanceof();
    }

    @Override // freemarker.core.h0
    /* renamed from: native */
    public TemplateModel mo27807native(d0 d0Var) throws TemplateException {
        return this.f23847goto;
    }

    @Override // freemarker.core.h0
    /* renamed from: static */
    public h0 mo27818static(String str, h0 h0Var, h0.Cdo cdo) {
        return new i0(this.f23847goto, this.f23848this.m28053return(str, h0Var, cdo));
    }

    @Override // freemarker.core.h4
    /* renamed from: this */
    public Object mo27819this(int i) {
        return this.f23848this.mo27819this(i);
    }
}
