package freemarker.core;

import android.support.v4.yk2;
import freemarker.core.h0;
import freemarker.template.TemplateException;
import freemarker.template.TemplateHashModel;
import freemarker.template.TemplateModel;

/* loaded from: classes.dex */
final class a0 extends h0 {

    /* renamed from: goto, reason: not valid java name */
    private final h0 f23473goto;

    /* renamed from: this, reason: not valid java name */
    private final String f23474this;

    public a0(h0 h0Var, String str) {
        this.f23473goto = h0Var;
        this.f23474this = str;
    }

    @Override // freemarker.core.h4
    /* renamed from: case, reason: not valid java name */
    public String mo27813case() {
        return ".";
    }

    public String d() {
        return this.f23474this;
    }

    public boolean e() {
        h0 h0Var = this.f23473goto;
        return (h0Var instanceof w0) || ((h0Var instanceof a0) && ((a0) h0Var).e());
    }

    @Override // freemarker.core.h4
    /* renamed from: else, reason: not valid java name */
    public int mo27814else() {
        return 2;
    }

    @Override // freemarker.core.h4
    /* renamed from: for, reason: not valid java name */
    public String mo27815for() {
        return this.f23473goto.mo27815for() + mo27813case() + yk2.m9894try(this.f23474this);
    }

    @Override // freemarker.core.h4
    /* renamed from: goto, reason: not valid java name */
    public f3 mo27816goto(int i) {
        return f3.m28031do(i);
    }

    @Override // freemarker.core.h0
    /* renamed from: instanceof, reason: not valid java name */
    public boolean mo27817instanceof() {
        return this.f23473goto.mo27817instanceof();
    }

    @Override // freemarker.core.h0
    /* renamed from: native */
    public TemplateModel mo27807native(d0 d0Var) throws TemplateException {
        TemplateModel templateModelM28055throws = this.f23473goto.m28055throws(d0Var);
        if (templateModelM28055throws instanceof TemplateHashModel) {
            return ((TemplateHashModel) templateModelM28055throws).get(this.f23474this);
        }
        if (templateModelM28055throws == null && d0Var.y()) {
            return null;
        }
        throw new l2(this.f23473goto, templateModelM28055throws, d0Var);
    }

    @Override // freemarker.core.h0
    /* renamed from: static, reason: not valid java name */
    public h0 mo27818static(String str, h0 h0Var, h0.Cdo cdo) {
        return new a0(this.f23473goto.m28053return(str, h0Var, cdo), this.f23474this);
    }

    @Override // freemarker.core.h4
    /* renamed from: this, reason: not valid java name */
    public Object mo27819this(int i) {
        return i == 0 ? this.f23473goto : this.f23474this;
    }
}
