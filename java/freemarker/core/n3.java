package freemarker.core;

import android.support.v4.ca2;
import android.support.v4.nl2;
import freemarker.template.Creturn;
import freemarker.template.TemplateException;
import freemarker.template.TemplateHashModel;
import freemarker.template.TemplateModel;
import freemarker.template.TemplateNodeModel;
import freemarker.template.TemplateScalarModel;
import freemarker.template.TemplateSequenceModel;
import java.io.IOException;

/* loaded from: classes.dex */
final class n3 extends b4 {

    /* renamed from: class, reason: not valid java name */
    public h0 f24013class;

    /* renamed from: const, reason: not valid java name */
    public h0 f24014const;

    public n3(h0 h0Var, h0 h0Var2) {
        this.f24013class = h0Var;
        this.f24014const = h0Var2;
    }

    @Override // freemarker.core.h4
    /* renamed from: case */
    public String mo27813case() {
        return "#recurse";
    }

    @Override // freemarker.core.h4
    /* renamed from: else */
    public int mo27814else() {
        return 2;
    }

    @Override // freemarker.core.b4
    public boolean f() {
        return false;
    }

    @Override // freemarker.core.h4
    /* renamed from: goto */
    public f3 mo27816goto(int i) {
        if (i == 0) {
            return f3.f23781transient;
        }
        if (i == 1) {
            return f3.f23752class;
        }
        throw new IndexOutOfBoundsException();
    }

    @Override // freemarker.core.b4
    public boolean h() {
        return true;
    }

    @Override // freemarker.core.b4
    /* renamed from: native */
    public b4[] mo27820native(d0 d0Var) throws TemplateException, IOException {
        h0 h0Var = this.f24013class;
        TemplateModel templateModelM28055throws = h0Var == null ? null : h0Var.m28055throws(d0Var);
        if (templateModelM28055throws != null && !(templateModelM28055throws instanceof TemplateNodeModel)) {
            throw new q2(this.f24013class, templateModelM28055throws, k.f23935package, d0Var);
        }
        h0 h0Var2 = this.f24014const;
        TemplateModel templateModelM28055throws2 = h0Var2 == null ? null : h0Var2.m28055throws(d0Var);
        h0 h0Var3 = this.f24014const;
        if (h0Var3 instanceof x3) {
            templateModelM28055throws2 = d0Var.H2(((TemplateScalarModel) templateModelM28055throws2).getAsString(), null);
        } else if (h0Var3 instanceof t1) {
            templateModelM28055throws2 = ((t1) h0Var3).e(d0Var);
        }
        if (templateModelM28055throws2 != null) {
            if (templateModelM28055throws2 instanceof TemplateHashModel) {
                Creturn creturn = new Creturn(1);
                creturn.add(templateModelM28055throws2);
                templateModelM28055throws2 = creturn;
            } else if (!(templateModelM28055throws2 instanceof TemplateSequenceModel)) {
                if (this.f24014const != null) {
                    throw new s2(this.f24014const, templateModelM28055throws2, d0Var);
                }
                throw new nl2(d0Var, "Expecting a sequence of namespaces after \"using\"");
            }
        }
        d0Var.g3((TemplateNodeModel) templateModelM28055throws, (TemplateSequenceModel) templateModelM28055throws2);
        return null;
    }

    @Override // freemarker.core.b4
    /* renamed from: switch */
    public String mo27846switch(boolean z) {
        StringBuilder sb = new StringBuilder();
        if (z) {
            sb.append(ca2.f687new);
        }
        sb.append(mo27813case());
        if (this.f24013class != null) {
            sb.append(' ');
            sb.append(this.f24013class.mo27815for());
        }
        if (this.f24014const != null) {
            sb.append(" using ");
            sb.append(this.f24014const.mo27815for());
        }
        if (z) {
            sb.append("/>");
        }
        return sb.toString();
    }

    @Override // freemarker.core.h4
    /* renamed from: this */
    public Object mo27819this(int i) {
        if (i == 0) {
            return this.f24013class;
        }
        if (i == 1) {
            return this.f24014const;
        }
        throw new IndexOutOfBoundsException();
    }
}
