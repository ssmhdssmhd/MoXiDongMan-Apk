package freemarker.core;

import android.support.v4.ca2;
import android.support.v4.dl2;
import android.support.v4.fl2;
import android.support.v4.fx0;
import android.support.v4.mc;
import android.support.v4.nl2;
import freemarker.template.Cstatic;
import freemarker.template.TemplateException;
import freemarker.template.TemplateModel;
import freemarker.template.TemplateScalarModel;
import freemarker.template.utility.Csuper;
import java.io.IOException;

/* loaded from: classes.dex */
final class y0 extends b4 {

    /* renamed from: class, reason: not valid java name */
    private final h0 f24301class;

    /* renamed from: const, reason: not valid java name */
    private final h0 f24302const;

    /* renamed from: final, reason: not valid java name */
    private final h0 f24303final;

    /* renamed from: import, reason: not valid java name */
    private final Boolean f24304import;

    /* renamed from: super, reason: not valid java name */
    private final h0 f24305super;

    /* renamed from: throw, reason: not valid java name */
    private final String f24306throw;

    /* renamed from: while, reason: not valid java name */
    private final Boolean f24307while;

    public y0(Cstatic cstatic, h0 h0Var, h0 h0Var2, h0 h0Var3, h0 h0Var4) throws h3 {
        this.f24301class = h0Var;
        this.f24302const = h0Var2;
        if (h0Var2 != null && h0Var2.mo27817instanceof()) {
            try {
                TemplateModel templateModelM28055throws = h0Var2.m28055throws(null);
                if (!(templateModelM28055throws instanceof TemplateScalarModel)) {
                    throw new h3("Expected a string as the value of the \"encoding\" argument", h0Var2);
                }
                this.f24306throw = ((TemplateScalarModel) templateModelM28055throws).getAsString();
            } catch (TemplateException e) {
                throw new mc(e);
            }
        } else {
            this.f24306throw = null;
        }
        this.f24303final = h0Var3;
        if (h0Var3 == null) {
            this.f24307while = Boolean.TRUE;
        } else if (h0Var3.mo27817instanceof()) {
            try {
                if (h0Var3 instanceof x3) {
                    this.f24307while = Boolean.valueOf(Csuper.m29321package(h0Var3.mo28045default(null)));
                } else {
                    try {
                        this.f24307while = Boolean.valueOf(h0Var3.m28057volatile(cstatic.b1()));
                    } catch (h2 e2) {
                        throw new h3("Expected a boolean or string as the value of the parse attribute", h0Var3, e2);
                    }
                }
            } catch (TemplateException e3) {
                throw new mc(e3);
            }
        } else {
            this.f24307while = null;
        }
        this.f24305super = h0Var4;
        if (h0Var4 != null) {
            try {
                if (h0Var4.mo27817instanceof()) {
                    try {
                        this.f24304import = Boolean.valueOf(h0Var4.m28057volatile(cstatic.b1()));
                        return;
                    } catch (h2 e4) {
                        throw new h3("Expected a boolean as the value of the \"ignore_missing\" attribute", h0Var4, e4);
                    }
                }
            } catch (TemplateException e5) {
                throw new mc(e5);
            }
        }
        this.f24304import = null;
    }

    private boolean r(h0 h0Var, String str) throws TemplateException {
        try {
            return Csuper.m29321package(str);
        } catch (IllegalArgumentException unused) {
            throw new nl2(h0Var, "Value must be boolean (or one of these strings: \"n\", \"no\", \"f\", \"false\", \"y\", \"yes\", \"t\", \"true\"), but it was ", new fl2(str), ".");
        }
    }

    @Override // freemarker.core.h4
    /* renamed from: case */
    public String mo27813case() {
        return "#include";
    }

    @Override // freemarker.core.h4
    /* renamed from: else */
    public int mo27814else() {
        return 4;
    }

    @Override // freemarker.core.b4
    public boolean f() {
        return false;
    }

    @Override // freemarker.core.h4
    /* renamed from: goto */
    public f3 mo27816goto(int i) {
        if (i == 0) {
            return f3.f23774static;
        }
        if (i == 1) {
            return f3.f23777switch;
        }
        if (i == 2) {
            return f3.f23780throws;
        }
        if (i == 3) {
            return f3.f23755default;
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
        boolean zM28054synchronized;
        boolean zMo27884continue;
        String strMo28045default = this.f24301class.mo28045default(d0Var);
        try {
            String strX3 = d0Var.x3(getTemplate().h1(), strMo28045default);
            String strMo28045default2 = this.f24306throw;
            if (strMo28045default2 == null) {
                h0 h0Var = this.f24302const;
                strMo28045default2 = h0Var != null ? h0Var.mo28045default(d0Var) : null;
            }
            Boolean bool = this.f24307while;
            if (bool != null) {
                zM28054synchronized = bool.booleanValue();
            } else {
                TemplateModel templateModelM28055throws = this.f24303final.m28055throws(d0Var);
                if (templateModelM28055throws instanceof TemplateScalarModel) {
                    h0 h0Var2 = this.f24303final;
                    zM28054synchronized = r(h0Var2, f0.m28018native((TemplateScalarModel) templateModelM28055throws, h0Var2, d0Var));
                } else {
                    zM28054synchronized = this.f24303final.m28054synchronized(templateModelM28055throws, d0Var);
                }
            }
            Boolean bool2 = this.f24304import;
            if (bool2 != null) {
                zMo27884continue = bool2.booleanValue();
            } else {
                h0 h0Var3 = this.f24305super;
                zMo27884continue = h0Var3 != null ? h0Var3.mo27884continue(d0Var) : false;
            }
            try {
                Cstatic cstaticU2 = d0Var.u2(strX3, strMo28045default2, zM28054synchronized, zMo27884continue);
                if (cstaticU2 != null) {
                    d0Var.K2(cstaticU2);
                }
                return null;
            } catch (IOException e) {
                throw new nl2(e, d0Var, "Template inclusion failed (for parameter value ", new fl2(strMo28045default), "):\n", new dl2(e));
            }
        } catch (fx0 e2) {
            throw new nl2(e2, d0Var, "Malformed template name ", new fl2(e2.getTemplateName()), ":\n", e2.getMalformednessDescription());
        }
    }

    @Override // freemarker.core.b4
    /* renamed from: switch */
    public String mo27846switch(boolean z) {
        StringBuilder sb = new StringBuilder();
        if (z) {
            sb.append(ca2.f687new);
        }
        sb.append(mo27813case());
        sb.append(' ');
        sb.append(this.f24301class.mo27815for());
        if (this.f24302const != null) {
            sb.append(" encoding=");
            sb.append(this.f24302const.mo27815for());
        }
        if (this.f24303final != null) {
            sb.append(" parse=");
            sb.append(this.f24303final.mo27815for());
        }
        if (this.f24305super != null) {
            sb.append(" ignore_missing=");
            sb.append(this.f24305super.mo27815for());
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
            return this.f24301class;
        }
        if (i == 1) {
            return this.f24303final;
        }
        if (i == 2) {
            return this.f24302const;
        }
        if (i == 3) {
            return this.f24305super;
        }
        throw new IndexOutOfBoundsException();
    }
}
