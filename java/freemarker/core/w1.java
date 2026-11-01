package freemarker.core;

import freemarker.core.h0;
import freemarker.template.TemplateException;
import freemarker.template.TemplateModel;
import java.util.List;

/* loaded from: classes.dex */
final class w1 extends h0 {

    /* renamed from: goto, reason: not valid java name */
    private final Cdo f24254goto;

    /* renamed from: this, reason: not valid java name */
    private final h0 f24255this;

    /* renamed from: freemarker.core.w1$do, reason: invalid class name */
    public static class Cdo {

        /* renamed from: do, reason: not valid java name */
        private final m4 f24256do;

        /* renamed from: for, reason: not valid java name */
        private final List<w0> f24257for;

        /* renamed from: if, reason: not valid java name */
        private final m4 f24258if;

        public Cdo(m4 m4Var, List<w0> list, m4 m4Var2) {
            this.f24256do = m4Var;
            this.f24258if = m4Var2;
            this.f24257for = list;
        }

        /* renamed from: do, reason: not valid java name */
        public String m28340do() {
            if (this.f24257for.size() == 1) {
                return this.f24257for.get(0).mo27815for();
            }
            StringBuilder sb = new StringBuilder();
            sb.append('(');
            for (int i = 0; i < this.f24257for.size(); i++) {
                if (i != 0) {
                    sb.append(", ");
                }
                sb.append(this.f24257for.get(i).mo27815for());
            }
            sb.append(')');
            return sb.toString();
        }

        /* renamed from: for, reason: not valid java name */
        public m4 m28341for() {
            return this.f24256do;
        }

        /* renamed from: if, reason: not valid java name */
        public m4 m28342if() {
            return this.f24258if;
        }

        /* renamed from: new, reason: not valid java name */
        public List<w0> m28343new() {
            return this.f24257for;
        }
    }

    public w1(Cdo cdo, h0 h0Var) {
        this.f24254goto = cdo;
        this.f24255this = h0Var;
    }

    @Override // freemarker.core.h4
    /* renamed from: case */
    public String mo27813case() {
        return "->";
    }

    public Cdo d() {
        return this.f24254goto;
    }

    public TemplateModel e(TemplateModel templateModel, d0 d0Var) throws TemplateException {
        h0 h0Var = this.f24255this;
        String strD = this.f24254goto.m28343new().get(0).d();
        if (templateModel == null) {
            templateModel = y2.f24308do;
        }
        return d0Var.i1(h0Var, strD, templateModel);
    }

    @Override // freemarker.core.h4
    /* renamed from: else */
    public int mo27814else() {
        return 2;
    }

    @Override // freemarker.core.h4
    /* renamed from: for */
    public String mo27815for() {
        return this.f24254goto.m28340do() + " -> " + this.f24255this.mo27815for();
    }

    @Override // freemarker.core.h4
    /* renamed from: goto */
    public f3 mo27816goto(int i) {
        return f3.m28031do(i);
    }

    @Override // freemarker.core.h0
    /* renamed from: instanceof */
    public boolean mo27817instanceof() {
        return false;
    }

    @Override // freemarker.core.h0
    /* renamed from: native */
    public TemplateModel mo27807native(d0 d0Var) throws TemplateException {
        throw new TemplateException("Can't get lambda expression as a value: Lambdas currently can only be used on a few special places.", d0Var);
    }

    @Override // freemarker.core.h0
    /* renamed from: static */
    public h0 mo27818static(String str, h0 h0Var, h0.Cdo cdo) {
        return new w1(this.f24254goto, this.f24255this.m28053return(str, h0Var, cdo));
    }

    @Override // freemarker.core.h4
    /* renamed from: this */
    public Object mo27819this(int i) {
        if (i == 0) {
            return this.f24254goto;
        }
        if (i == 1) {
            return this.f24255this;
        }
        throw new IndexOutOfBoundsException();
    }
}
