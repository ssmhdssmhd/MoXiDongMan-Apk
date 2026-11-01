package freemarker.core;

import freemarker.core.h0;
import freemarker.template.TemplateException;
import freemarker.template.TemplateModel;

/* loaded from: classes.dex */
final class g3 extends h0 {

    /* renamed from: goto, reason: not valid java name */
    private final h0 f23798goto;

    public g3(h0 h0Var) {
        this.f23798goto = h0Var;
    }

    @Override // freemarker.core.h4
    /* renamed from: case */
    public String mo27813case() {
        return "(...)";
    }

    @Override // freemarker.core.h0
    /* renamed from: continue */
    public boolean mo27884continue(d0 d0Var) throws TemplateException {
        return this.f23798goto.mo27884continue(d0Var);
    }

    public h0 d() {
        return this.f23798goto;
    }

    @Override // freemarker.core.h4
    /* renamed from: else */
    public int mo27814else() {
        return 1;
    }

    @Override // freemarker.core.h4
    /* renamed from: for */
    public String mo27815for() {
        return "(" + this.f23798goto.mo27815for() + ")";
    }

    @Override // freemarker.core.h4
    /* renamed from: goto */
    public f3 mo27816goto(int i) {
        if (i == 0) {
            return f3.f23782try;
        }
        throw new IndexOutOfBoundsException();
    }

    @Override // freemarker.core.h0
    /* renamed from: instanceof */
    public boolean mo27817instanceof() {
        return this.f23798goto.mo27817instanceof();
    }

    @Override // freemarker.core.h0
    /* renamed from: native */
    public TemplateModel mo27807native(d0 d0Var) throws TemplateException {
        return this.f23798goto.m28055throws(d0Var);
    }

    @Override // freemarker.core.h0
    /* renamed from: static */
    public h0 mo27818static(String str, h0 h0Var, h0.Cdo cdo) {
        return new g3(this.f23798goto.m28053return(str, h0Var, cdo));
    }

    @Override // freemarker.core.h0
    /* renamed from: switch */
    public void mo27808switch() {
        this.f23798goto.mo27808switch();
    }

    @Override // freemarker.core.h4
    /* renamed from: this */
    public Object mo27819this(int i) {
        if (i == 0) {
            return this.f23798goto;
        }
        throw new IndexOutOfBoundsException();
    }
}
