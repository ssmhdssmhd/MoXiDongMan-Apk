package freemarker.core;

import freemarker.core.h0;
import freemarker.template.TemplateException;
import freemarker.template.TemplateMethodModel;
import freemarker.template.TemplateMethodModelEx;
import freemarker.template.TemplateModel;
import java.util.ArrayList;

/* loaded from: classes.dex */
final class a2 extends h0 {

    /* renamed from: goto, reason: not valid java name */
    private final h0 f23479goto;

    /* renamed from: this, reason: not valid java name */
    private final t1 f23480this;

    public a2(h0 h0Var, ArrayList arrayList) {
        this(h0Var, new t1(arrayList));
    }

    @Override // freemarker.core.h4
    /* renamed from: case */
    public String mo27813case() {
        return "...(...)";
    }

    public TemplateModel d() {
        return null;
    }

    @Override // freemarker.core.h4
    /* renamed from: else */
    public int mo27814else() {
        return this.f23480this.f24195goto.size() + 1;
    }

    @Override // freemarker.core.h4
    /* renamed from: for */
    public String mo27815for() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f23479goto.mo27815for());
        sb.append("(");
        String strMo27815for = this.f23480this.mo27815for();
        sb.append(strMo27815for.substring(1, strMo27815for.length() - 1));
        sb.append(")");
        return sb.toString();
    }

    @Override // freemarker.core.h4
    /* renamed from: goto */
    public f3 mo27816goto(int i) {
        if (i == 0) {
            return f3.f23763implements;
        }
        if (i < mo27814else()) {
            return f3.f23748abstract;
        }
        throw new IndexOutOfBoundsException();
    }

    @Override // freemarker.core.h0
    /* renamed from: instanceof */
    public boolean mo27817instanceof() {
        return false;
    }

    @Override // freemarker.core.h0
    /* renamed from: native */
    public TemplateModel mo27807native(d0 d0Var) throws TemplateException {
        TemplateModel templateModelM28055throws = this.f23479goto.m28055throws(d0Var);
        if (templateModelM28055throws instanceof TemplateMethodModel) {
            TemplateMethodModel templateMethodModel = (TemplateMethodModel) templateModelM28055throws;
            return d0Var.m28258implements().wrap(templateMethodModel.exec(templateMethodModel instanceof TemplateMethodModelEx ? this.f23480this.f(d0Var) : this.f23480this.g(d0Var)));
        }
        if (templateModelM28055throws instanceof x1) {
            return d0Var.O2(d0Var, (x1) templateModelM28055throws, this.f23480this.f24195goto, this);
        }
        throw new o2(this.f23479goto, templateModelM28055throws, true, false, null, d0Var);
    }

    @Override // freemarker.core.h0
    /* renamed from: static */
    public h0 mo27818static(String str, h0 h0Var, h0.Cdo cdo) {
        return new a2(this.f23479goto.m28053return(str, h0Var, cdo), (t1) this.f23480this.m28053return(str, h0Var, cdo));
    }

    @Override // freemarker.core.h4
    /* renamed from: this */
    public Object mo27819this(int i) {
        if (i == 0) {
            return this.f23479goto;
        }
        if (i < mo27814else()) {
            return this.f23480this.f24195goto.get(i - 1);
        }
        throw new IndexOutOfBoundsException();
    }

    private a2(h0 h0Var, t1 t1Var) {
        this.f23479goto = h0Var;
        this.f23480this = t1Var;
    }
}
