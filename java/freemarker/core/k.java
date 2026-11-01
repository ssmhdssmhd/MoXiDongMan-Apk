package freemarker.core;

import android.support.v4.ez1;
import android.support.v4.k52;
import android.support.v4.nl2;
import android.support.v4.ul2;
import android.support.v4.wy1;
import android.support.v4.yk2;
import freemarker.core.h0;
import freemarker.core.x1;
import freemarker.template.Cstatic;
import freemarker.template.TemplateException;
import freemarker.template.TemplateHashModel;
import freemarker.template.TemplateModel;
import freemarker.template.TemplateScalarModel;
import freemarker.template.utility.Csuper;
import java.util.Arrays;
import java.util.Date;

/* loaded from: classes.dex */
final class k extends h0 {
    public static final String b = "urlEscapingCharset";
    public static final String c = "url_escaping_charset";

    /* renamed from: implements, reason: not valid java name */
    public static final String f23930implements = "outputFormat";

    /* renamed from: instanceof, reason: not valid java name */
    public static final String f23932instanceof = "output_format";

    /* renamed from: interface, reason: not valid java name */
    public static final String f23933interface = "error";

    /* renamed from: protected, reason: not valid java name */
    public static final String f23937protected = "outputEncoding";

    /* renamed from: strictfp, reason: not valid java name */
    public static final String f23941strictfp = "incompatibleImprovements";

    /* renamed from: switch, reason: not valid java name */
    public static final String f23943switch = "locale";

    /* renamed from: transient, reason: not valid java name */
    public static final String f23947transient = "output_encoding";

    /* renamed from: volatile, reason: not valid java name */
    public static final String f23948volatile = "incompatible_improvements";

    /* renamed from: goto, reason: not valid java name */
    private final String f23950goto;

    /* renamed from: this, reason: not valid java name */
    private final TemplateModel f23951this;

    /* renamed from: synchronized, reason: not valid java name */
    public static final String f23944synchronized = "autoEsc";
    public static final String a = "auto_esc";
    public static final String h = "callerTemplateName";
    public static final String g = "caller_template_name";

    /* renamed from: extends, reason: not valid java name */
    public static final String f23927extends = "currentNode";

    /* renamed from: final, reason: not valid java name */
    public static final String f23928final = "currentTemplateName";

    /* renamed from: finally, reason: not valid java name */
    public static final String f23929finally = "current_node";

    /* renamed from: super, reason: not valid java name */
    public static final String f23942super = "current_template_name";

    /* renamed from: public, reason: not valid java name */
    public static final String f23938public = "dataModel";

    /* renamed from: return, reason: not valid java name */
    public static final String f23939return = "data_model";
    public static final String f = "getOptionalTemplate";
    public static final String e = "get_optional_template";

    /* renamed from: import, reason: not valid java name */
    public static final String f23931import = "globals";

    /* renamed from: static, reason: not valid java name */
    public static final String f23940static = "lang";

    /* renamed from: throws, reason: not valid java name */
    public static final String f23946throws = "localeObject";

    /* renamed from: default, reason: not valid java name */
    public static final String f23926default = "locale_object";

    /* renamed from: native, reason: not valid java name */
    public static final String f23934native = "locals";

    /* renamed from: while, reason: not valid java name */
    public static final String f23949while = "main";

    /* renamed from: class, reason: not valid java name */
    public static final String f23923class = "mainTemplateName";

    /* renamed from: const, reason: not valid java name */
    public static final String f23924const = "main_template_name";

    /* renamed from: throw, reason: not valid java name */
    public static final String f23945throw = "namespace";

    /* renamed from: package, reason: not valid java name */
    public static final String f23935package = "node";
    public static final String d = "now";

    /* renamed from: private, reason: not valid java name */
    public static final String f23936private = "pass";

    /* renamed from: break, reason: not valid java name */
    public static final String f23921break = "templateName";

    /* renamed from: catch, reason: not valid java name */
    public static final String f23922catch = "template_name";

    /* renamed from: abstract, reason: not valid java name */
    public static final String f23920abstract = "vars";

    /* renamed from: continue, reason: not valid java name */
    public static final String f23925continue = "version";
    public static final String[] i = {f23944synchronized, a, h, g, f23927extends, f23928final, f23929finally, f23942super, f23938public, f23939return, "error", f, e, f23931import, "incompatibleImprovements", "incompatible_improvements", f23940static, "locale", f23946throws, f23926default, f23934native, f23949while, f23923class, f23924const, f23945throw, f23935package, d, "outputEncoding", "outputFormat", "output_encoding", "output_format", f23936private, f23921break, f23922catch, "urlEscapingCharset", "url_escaping_charset", f23920abstract, f23925continue};

    /* renamed from: freemarker.core.k$do, reason: invalid class name */
    public static class Cdo implements TemplateHashModel {

        /* renamed from: do, reason: not valid java name */
        public d0 f23952do;

        public Cdo(d0 d0Var) {
            this.f23952do = d0Var;
        }

        @Override // freemarker.template.TemplateHashModel
        public TemplateModel get(String str) throws k52 {
            return this.f23952do.D2(str);
        }

        @Override // freemarker.template.TemplateHashModel
        public boolean isEmpty() {
            return false;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x008f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public k(m4 m4Var, k0 k0Var, TemplateModel templateModel) throws h3 {
        String str = m4Var.image;
        this.f23951this = templateModel;
        if (Arrays.binarySearch(i, str) >= 0) {
            this.f23950goto = str.intern();
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Unknown special variable name: ");
        sb.append(Csuper.m29330synchronized(str));
        sb.append(".");
        int i2 = k0Var.f23985super;
        i2 = i2 == 10 ? 11 : i2;
        String str2 = (str.equals("auto_escape") || str.equals("auto_escaping") || str.equals("autoesc")) ? a : (str.equals("autoEscape") || str.equals("autoEscaping")) ? f23944synchronized : null;
        if (str2 != null) {
            sb.append(" You may meant: ");
            sb.append(Csuper.m29330synchronized(str2));
            sb.append(".");
        }
        sb.append("\nThe allowed special variable names are: ");
        boolean z = true;
        int i3 = 0;
        while (true) {
            String[] strArr = i;
            if (i3 >= strArr.length) {
                throw new h3(sb.toString(), (Cstatic) null, m4Var);
            }
            String str3 = strArr[i3];
            int iM9891for = yk2.m9891for(str3);
            if (i2 == 12) {
                if (iM9891for != 11) {
                    if (z) {
                        z = false;
                    } else {
                        sb.append(", ");
                    }
                    sb.append(str3);
                }
            } else if (iM9891for != 12) {
            }
            i3++;
        }
    }

    @Override // freemarker.core.h4
    /* renamed from: case */
    public String mo27813case() {
        return mo27815for();
    }

    @Override // freemarker.core.h4
    /* renamed from: else */
    public int mo27814else() {
        return 0;
    }

    @Override // freemarker.core.h4
    /* renamed from: for */
    public String mo27815for() {
        return "." + this.f23950goto;
    }

    @Override // freemarker.core.h4
    /* renamed from: goto */
    public f3 mo27816goto(int i2) {
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
        TemplateModel templateModel = this.f23951this;
        if (templateModel != null) {
            return templateModel;
        }
        String str = this.f23950goto;
        if (str == f23945throw) {
            return d0Var.y1();
        }
        if (str == f23949while) {
            return d0Var.U1();
        }
        if (str == f23931import) {
            return d0Var.K1();
        }
        if (str == f23934native) {
            x1.Cdo cdoX1 = d0Var.x1();
            if (cdoX1 == null) {
                return null;
            }
            return cdoX1.m28344do();
        }
        if (str == f23939return || str == f23938public) {
            return d0Var.D1();
        }
        if (str == f23920abstract) {
            return new Cdo(d0Var);
        }
        if (str == "locale") {
            return new ez1(d0Var.m28268strictfp().toString());
        }
        if (str == f23926default || str == f23946throws) {
            return d0Var.m28258implements().wrap(d0Var.m28268strictfp());
        }
        if (str == f23940static) {
            return new ez1(d0Var.m28268strictfp().getLanguage());
        }
        if (str == f23929finally || str == f23935package || str == f23927extends) {
            return d0Var.B1();
        }
        if (str == f23922catch || str == f23921break) {
            return d0Var.u1().getIncompatibleImprovements().intValue() >= ul2.f6928case ? new ez1(d0Var.f2().h1()) : new ez1(d0Var.e2().h1());
        }
        if (str == f23924const || str == f23923class) {
            return ez1.newInstanceOrNull(d0Var.V1().h1());
        }
        if (str == f23942super || str == f23928final) {
            return ez1.newInstanceOrNull(d0Var.A1().h1());
        }
        if (str == f23936private) {
            return x1.f24268while;
        }
        if (str == "output_encoding" || str == "outputEncoding") {
            return ez1.newInstanceOrNull(d0Var.m28260instanceof());
        }
        if (str == "url_escaping_charset" || str == "urlEscapingCharset") {
            return ez1.newInstanceOrNull(d0Var.k());
        }
        if (str == "error") {
            return new ez1(d0Var.z1());
        }
        if (str == d) {
            return new wy1(new Date(), 3);
        }
        if (str == f23925continue) {
            return new ez1(freemarker.template.Cdo.b2());
        }
        if (str == "incompatible_improvements" || str == "incompatibleImprovements") {
            return new ez1(d0Var.u1().getIncompatibleImprovements().toString());
        }
        if (str == e) {
            return p0.f24050if;
        }
        if (str == f) {
            return p0.f24048for;
        }
        if (str != g && str != h) {
            throw new nl2(this, "Invalid special variable: ", this.f23950goto);
        }
        x1.Cdo cdoX12 = d0Var.x1();
        if (cdoX12 != null) {
            h4 h4Var = cdoX12.f24278if;
            String strH1 = h4Var != null ? h4Var.getTemplate().h1() : null;
            return strH1 != null ? new ez1(strH1) : TemplateScalarModel.EMPTY_STRING;
        }
        throw new TemplateException("Can't get ." + this.f23950goto + " here, as there's no macro or function (that's implemented in the template) call in context.", d0Var);
    }

    @Override // freemarker.core.h0
    /* renamed from: static */
    public h0 mo27818static(String str, h0 h0Var, h0.Cdo cdo) {
        return this;
    }

    @Override // freemarker.core.h4
    /* renamed from: this */
    public Object mo27819this(int i2) {
        throw new IndexOutOfBoundsException();
    }

    @Override // freemarker.core.h4
    public String toString() {
        return "." + this.f23950goto;
    }
}
