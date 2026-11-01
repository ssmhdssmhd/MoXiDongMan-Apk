package freemarker.core;

import android.support.v4.ca2;
import android.support.v4.hy1;
import android.support.v4.ul2;
import android.support.v4.yk2;
import freemarker.template.Cdo;
import freemarker.template.Cstatic;
import freemarker.template.TemplateBooleanModel;
import freemarker.template.TemplateException;
import freemarker.template.TemplateModel;
import freemarker.template.TemplateNumberModel;
import freemarker.template.TemplateScalarModel;
import freemarker.template.utility.Csuper;
import java.util.Arrays;

/* loaded from: classes.dex */
final class i3 extends b4 {

    /* renamed from: final, reason: not valid java name */
    public static final String[] f23851final = {t.V, "boolean_format", t.G, "classic_compatible", t.r, "date_format", t.x, "datetime_format", "locale", t.i, "number_format", "outputEncoding", "output_encoding", t.D, "sql_date_and_time_time_zone", t.o, t.A, "time_format", "time_zone", "urlEscapingCharset", "url_escaping_charset"};

    /* renamed from: class, reason: not valid java name */
    private final String f23852class;

    /* renamed from: const, reason: not valid java name */
    private final h0 f23853const;

    /* JADX WARN: Removed duplicated region for block: B:20:0x005e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public i3(m4 m4Var, k0 k0Var, h0 h0Var, Cdo cdo) throws h3 {
        String str = m4Var.image;
        if (Arrays.binarySearch(f23851final, str) >= 0) {
            this.f23852class = str;
            this.f23853const = h0Var;
            return;
        }
        StringBuilder sb = new StringBuilder();
        boolean z = true;
        if (!ul2.m8498case(cdo, true).contains(str) && !ul2.m8498case(cdo, false).contains(str)) {
            sb.append("Unknown setting name: ");
            sb.append(Csuper.m29330synchronized(str));
            sb.append(".");
            sb.append(" The allowed setting names are: ");
            int i = k0Var.f23985super;
            i = i == 10 ? 11 : i;
            int i2 = 0;
            while (true) {
                String[] strArr = f23851final;
                if (i2 >= strArr.length) {
                    break;
                }
                int iM9891for = yk2.m9891for(strArr[i2]);
                if (i == 12) {
                    if (iM9891for != 11) {
                        if (z) {
                            z = false;
                        } else {
                            sb.append(", ");
                        }
                        sb.append(strArr[i2]);
                    }
                } else if (iM9891for != 12) {
                }
                i2++;
            }
        } else {
            sb.append("The setting name is recognized, but changing this setting from inside a template isn't supported.");
        }
        throw new h3(sb.toString(), (Cstatic) null, m4Var);
    }

    @Override // freemarker.core.h4
    /* renamed from: case */
    public String mo27813case() {
        return "#setting";
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
            return f3.f23756else;
        }
        if (i == 1) {
            return f3.f23750case;
        }
        throw new IndexOutOfBoundsException();
    }

    @Override // freemarker.core.b4
    /* renamed from: native */
    public b4[] mo27820native(d0 d0Var) throws TemplateException, h3 {
        TemplateModel templateModelM28055throws = this.f23853const.m28055throws(d0Var);
        d0Var.B0(this.f23852class, templateModelM28055throws instanceof TemplateScalarModel ? ((TemplateScalarModel) templateModelM28055throws).getAsString() : templateModelM28055throws instanceof TemplateBooleanModel ? ((TemplateBooleanModel) templateModelM28055throws).getAsBoolean() ? b2.f23511if : b2.f23510do : templateModelM28055throws instanceof TemplateNumberModel ? ((TemplateNumberModel) templateModelM28055throws).getAsNumber().toString() : this.f23853const.m28050private(d0Var));
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
        sb.append(' ');
        sb.append(yk2.m9890else(this.f23852class));
        sb.append(hy1.f2563new);
        sb.append(this.f23853const.mo27815for());
        if (z) {
            sb.append("/>");
        }
        return sb.toString();
    }

    @Override // freemarker.core.h4
    /* renamed from: this */
    public Object mo27819this(int i) {
        if (i == 0) {
            return this.f23852class;
        }
        if (i == 1) {
            return this.f23853const;
        }
        throw new IndexOutOfBoundsException();
    }
}
