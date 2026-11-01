package freemarker.core;

import android.support.v4.az1;
import android.support.v4.dl2;
import android.support.v4.e91;
import android.support.v4.el2;
import android.support.v4.fl2;
import android.support.v4.fx0;
import android.support.v4.k52;
import android.support.v4.nl2;
import android.support.v4.ql2;
import android.support.v4.vl2;
import android.support.v4.w72;
import freemarker.template.Cstatic;
import freemarker.template.TemplateBooleanModel;
import freemarker.template.TemplateException;
import freemarker.template.TemplateMethodModelEx;
import freemarker.template.TemplateModel;
import freemarker.template.TemplateScalarModel;
import java.io.StringReader;
import java.util.List;

/* loaded from: classes.dex */
class h {

    /* renamed from: freemarker.core.h$do, reason: invalid class name */
    public static class Cdo extends Cstrictfp {

        /* renamed from: freemarker.core.h$do$do, reason: invalid class name and collision with other inner class name */
        public class C0241do implements TemplateScalarModel, TemplateMethodModelEx {

            /* renamed from: do, reason: not valid java name */
            private final String f23807do;

            /* renamed from: if, reason: not valid java name */
            private final d0 f23809if;

            public C0241do(String str, d0 d0Var) {
                this.f23807do = str;
                this.f23809if = d0Var;
            }

            /* renamed from: do, reason: not valid java name */
            private String m28040do(String str) throws k52 {
                try {
                    d0 d0Var = this.f23809if;
                    return d0Var.k3(d0Var.x3(str, this.f23807do));
                } catch (fx0 e) {
                    throw new vl2(e, "Can't resolve ", new fl2(this.f23807do), "to absolute template name using base ", new fl2(str), "; see cause exception");
                }
            }

            @Override // freemarker.template.TemplateMethodModelEx, freemarker.template.TemplateMethodModel
            public Object exec(List list) throws k52 {
                Cdo.this.f(list, 1);
                return m28040do(Cdo.this.k(list, 0));
            }

            @Override // freemarker.template.TemplateScalarModel
            public String getAsString() throws k52 {
                return m28040do(Cdo.this.getTemplate().h1());
            }
        }

        @Override // freemarker.core.Cstrictfp
        public TemplateModel r(String str, d0 d0Var) throws TemplateException {
            return new C0241do(str, d0Var);
        }
    }

    /* renamed from: freemarker.core.h$for, reason: invalid class name */
    public static class Cfor extends e3 {
        @Override // freemarker.core.e3
        public TemplateModel s(d0 d0Var) throws TemplateException {
            return t(Cstrictfp.s(this.f24114goto, d0Var), d0Var);
        }

        public TemplateModel t(String str, d0 d0Var) throws TemplateException, h3 {
            Cstatic template = getTemplate();
            try {
                try {
                    ParserConfiguration parserConfigurationJ1 = template.j1();
                    t3 t3Var = new t3(new StringReader("(" + str + ")"), h4.f23820case, 1, str.length() + 2);
                    t3Var.m28308package(parserConfigurationJ1.getTabSize());
                    k0 k0Var = new k0(t3Var);
                    k0Var.m28177try(2);
                    e91 outputFormat = parserConfigurationJ1.getOutputFormat();
                    e91 e91Var = this.f23683final;
                    if (outputFormat != e91Var) {
                        parserConfigurationJ1 = new ql2(parserConfigurationJ1, e91Var, Integer.valueOf(this.f23684super));
                    }
                    try {
                        return new j0(template, false, k0Var, parserConfigurationJ1).m28117switch().m28055throws(d0Var);
                    } catch (TemplateException e) {
                        throw new nl2(e, this, d0Var, "Failed to \"?", this.f24115this, "\" string with this error:\n\n", b5.f23525try, new el2(e), b5.f23520case, "\n\nThe failing expression:");
                    }
                } catch (w72 e2) {
                    throw e2.toParseException(template);
                }
            } catch (h3 e3) {
                throw new nl2(this, d0Var, "Failed to \"?", this.f24115this, "\" string with this error:\n\n", b5.f23525try, new dl2(e3), b5.f23520case, "\n\nThe failing expression:");
            }
        }
    }

    /* renamed from: freemarker.core.h$if, reason: invalid class name */
    public static class Cif extends Cstrictfp {
        /* JADX WARN: Removed duplicated region for block: B:4:0x000a  */
        @Override // freemarker.core.Cstrictfp
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public TemplateModel r(String str, d0 d0Var) throws TemplateException {
            boolean z = false;
            if (!str.equals(b2.f23511if)) {
                if (!str.equals(b2.f23510do)) {
                    if (str.equals(d0Var.i())) {
                        z = true;
                    } else if (!str.equals(d0Var.m28264private())) {
                        throw new nl2(this, d0Var, "Can't convert this string to boolean: ", new fl2(str));
                    }
                }
            }
            return z ? TemplateBooleanModel.TRUE : TemplateBooleanModel.FALSE;
        }
    }

    /* renamed from: freemarker.core.h$new, reason: invalid class name */
    public static class Cnew extends Cstrictfp {
        @Override // freemarker.core.Cstrictfp
        public TemplateModel r(String str, d0 d0Var) throws TemplateException {
            try {
                return new az1(d0Var.getArithmeticEngine().mo27993final(str));
            } catch (NumberFormatException unused) {
                throw r2.newMalformedNumberException(this, str, d0Var);
            }
        }
    }

    private h() {
    }
}
