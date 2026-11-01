package freemarker.core;

import android.support.v4.ca2;
import android.support.v4.e91;
import android.support.v4.ez1;
import freemarker.core.h0;
import freemarker.template.Cstatic;
import freemarker.template.TemplateException;
import freemarker.template.TemplateModel;
import freemarker.template.TemplateScalarModel;
import freemarker.template.utility.Csuper;
import java.io.StringReader;
import java.util.List;

/* loaded from: classes.dex */
final class x3 extends h0 implements TemplateScalarModel {

    /* renamed from: goto, reason: not valid java name */
    private final String f24282goto;

    /* renamed from: this, reason: not valid java name */
    private List<Object> f24283this;

    public x3(String str) {
        this.f24282goto = str;
    }

    private void d(int i) {
        List<Object> list = this.f24283this;
        if (list == null || i >= list.size()) {
            throw new IndexOutOfBoundsException();
        }
    }

    @Override // freemarker.core.h4
    /* renamed from: case */
    public String mo27813case() {
        return this.f24283this == null ? mo27815for() : "dynamic \"...\"";
    }

    public boolean e() {
        List<Object> list = this.f24283this;
        return list != null && list.size() == 1 && (this.f24283this.get(0) instanceof z0);
    }

    @Override // freemarker.core.h4
    /* renamed from: else */
    public int mo27814else() {
        List<Object> list = this.f24283this;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    public void f(j0 j0Var, e91 e91Var) throws h3 {
        Cstatic template = getTemplate();
        ParserConfiguration parserConfigurationJ1 = template.j1();
        int interpolationSyntax = parserConfigurationJ1.getInterpolationSyntax();
        if (this.f24282goto.length() > 3) {
            if (((interpolationSyntax == 20 || interpolationSyntax == 21) && (this.f24282goto.indexOf("${") != -1 || (interpolationSyntax == 20 && this.f24282goto.indexOf("#{") != -1))) || (interpolationSyntax == 22 && this.f24282goto.indexOf("[=") != -1)) {
                try {
                    t3 t3Var = new t3(new StringReader(this.f24282goto), this.f23822for, this.f23823if + 1, this.f24282goto.length());
                    t3Var.m28308package(parserConfigurationJ1.getTabSize());
                    j0 j0Var2 = new j0(template, false, new k0(t3Var), parserConfigurationJ1);
                    j0Var2.f3(j0Var, e91Var);
                    try {
                        this.f24283this = j0Var2.K();
                        this.f23810else = null;
                    } finally {
                        j0Var2.h3(j0Var);
                    }
                } catch (h3 e) {
                    e.setTemplateName(template.q1());
                    throw e;
                }
            }
        }
    }

    @Override // freemarker.core.h4
    /* renamed from: for */
    public String mo27815for() {
        if (this.f24283this == null) {
            return Csuper.m29311finally(this.f24282goto);
        }
        StringBuilder sb = new StringBuilder();
        sb.append(ca2.f674do);
        for (Object obj : this.f24283this) {
            if (obj instanceof z0) {
                sb.append(((z0) obj).t());
            } else {
                sb.append(Csuper.m29312for((String) obj, ca2.f674do));
            }
        }
        sb.append(ca2.f674do);
        return sb.toString();
    }

    @Override // freemarker.template.TemplateScalarModel
    public String getAsString() {
        return this.f24282goto;
    }

    @Override // freemarker.core.h4
    /* renamed from: goto */
    public f3 mo27816goto(int i) {
        d(i);
        return f3.f23783volatile;
    }

    @Override // freemarker.core.h0
    /* renamed from: instanceof */
    public boolean mo27817instanceof() {
        return this.f24283this == null;
    }

    @Override // freemarker.core.h0
    /* renamed from: native */
    public TemplateModel mo27807native(d0 d0Var) throws TemplateException {
        List<Object> list = this.f24283this;
        if (list == null) {
            return new ez1(this.f24282goto);
        }
        TemplateMarkupOutputModel templateMarkupOutputModelM28010const = null;
        StringBuilder sb = null;
        for (Object objR : list) {
            if (!(objR instanceof String)) {
                objR = ((z0) objR).r(d0Var);
            }
            if (templateMarkupOutputModelM28010const != null) {
                templateMarkupOutputModelM28010const = f0.m28010const(this, templateMarkupOutputModelM28010const, objR instanceof String ? templateMarkupOutputModelM28010const.getOutputFormat().mo28200goto((String) objR) : (TemplateMarkupOutputModel) objR);
            } else if (objR instanceof String) {
                String str = (String) objR;
                if (sb == null) {
                    sb = new StringBuilder(str);
                } else {
                    sb.append(str);
                }
            } else {
                templateMarkupOutputModelM28010const = (TemplateMarkupOutputModel) objR;
                if (sb != null) {
                    templateMarkupOutputModelM28010const = f0.m28010const(this, templateMarkupOutputModelM28010const.getOutputFormat().mo28200goto(sb.toString()), templateMarkupOutputModelM28010const);
                    sb = null;
                }
            }
        }
        return templateMarkupOutputModelM28010const != null ? templateMarkupOutputModelM28010const : sb != null ? new ez1(sb.toString()) : TemplateScalarModel.EMPTY_STRING;
    }

    @Override // freemarker.core.h0
    /* renamed from: static */
    public h0 mo27818static(String str, h0 h0Var, h0.Cdo cdo) {
        x3 x3Var = new x3(this.f24282goto);
        x3Var.f24283this = this.f24283this;
        return x3Var;
    }

    @Override // freemarker.core.h4
    /* renamed from: this */
    public Object mo27819this(int i) {
        d(i);
        return this.f24283this.get(i);
    }
}
