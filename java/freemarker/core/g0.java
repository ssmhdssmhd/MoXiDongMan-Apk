package freemarker.core;

import freemarker.core.h0;
import freemarker.template.TemplateBooleanModel;
import freemarker.template.TemplateException;
import freemarker.template.TemplateModel;

/* loaded from: classes.dex */
class g0 extends h0 {

    /* renamed from: goto, reason: not valid java name */
    public final h0 f23795goto;

    public g0(h0 h0Var) {
        this.f23795goto = h0Var;
    }

    @Override // freemarker.core.h4
    /* renamed from: case */
    public String mo27813case() {
        return "??";
    }

    @Override // freemarker.core.h4
    /* renamed from: else */
    public int mo27814else() {
        return 1;
    }

    @Override // freemarker.core.h4
    /* renamed from: for */
    public String mo27815for() {
        return this.f23795goto.mo27815for() + mo27813case();
    }

    @Override // freemarker.core.h4
    /* renamed from: goto */
    public f3 mo27816goto(int i) {
        return f3.f23760for;
    }

    @Override // freemarker.core.h0
    /* renamed from: instanceof */
    public boolean mo27817instanceof() {
        return false;
    }

    @Override // freemarker.core.h0
    /* renamed from: native */
    public TemplateModel mo27807native(d0 d0Var) throws TemplateException {
        TemplateModel templateModelM28055throws;
        h0 h0Var = this.f23795goto;
        if (h0Var instanceof g3) {
            boolean zO3 = d0Var.o3(true);
            try {
                templateModelM28055throws = this.f23795goto.m28055throws(d0Var);
            } catch (b1 unused) {
                templateModelM28055throws = null;
            } catch (Throwable th) {
                d0Var.o3(zO3);
                throw th;
            }
            d0Var.o3(zO3);
        } else {
            templateModelM28055throws = h0Var.m28055throws(d0Var);
        }
        return templateModelM28055throws == null ? TemplateBooleanModel.FALSE : TemplateBooleanModel.TRUE;
    }

    @Override // freemarker.core.h0
    /* renamed from: static */
    public h0 mo27818static(String str, h0 h0Var, h0.Cdo cdo) {
        return new g0(this.f23795goto.m28053return(str, h0Var, cdo));
    }

    @Override // freemarker.core.h4
    /* renamed from: this */
    public Object mo27819this(int i) {
        return this.f23795goto;
    }
}
