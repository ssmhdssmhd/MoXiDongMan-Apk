package freemarker.core;

import android.support.v4.ca2;
import android.support.v4.ez1;
import android.support.v4.k52;
import android.support.v4.mc;
import freemarker.core.d0;
import freemarker.template.TemplateException;
import freemarker.template.TemplateModel;
import java.io.IOException;
import java.io.StringWriter;

/* renamed from: freemarker.core.final, reason: invalid class name */
/* loaded from: classes.dex */
final class Cfinal extends b4 {

    /* renamed from: class, reason: not valid java name */
    private final String f23786class;

    /* renamed from: const, reason: not valid java name */
    private final h0 f23787const;

    /* renamed from: final, reason: not valid java name */
    private final int f23788final;

    /* renamed from: super, reason: not valid java name */
    private final y1<?> f23789super;

    public Cfinal(c4 c4Var, String str, int i, h0 h0Var, y1<?> y1Var) {
        p(c4Var);
        this.f23786class = str;
        this.f23787const = h0Var;
        this.f23788final = i;
        this.f23789super = y1Var;
    }

    private TemplateModel r(String str) throws k52 {
        y1<?> y1Var = this.f23789super;
        return y1Var == null ? new ez1(str) : y1Var.mo28198else(str);
    }

    @Override // freemarker.core.h4
    /* renamed from: case */
    public String mo27813case() {
        return Cthis.r(this.f23788final);
    }

    @Override // freemarker.core.h4
    /* renamed from: else */
    public int mo27814else() {
        return 3;
    }

    @Override // freemarker.core.b4
    public boolean f() {
        return false;
    }

    @Override // freemarker.core.h4
    /* renamed from: goto */
    public f3 mo27816goto(int i) {
        if (i == 0) {
            return f3.f23761goto;
        }
        if (i == 1) {
            return f3.f23751catch;
        }
        if (i == 2) {
            return f3.f23752class;
        }
        throw new IndexOutOfBoundsException();
    }

    @Override // freemarker.core.b4
    /* renamed from: native */
    public b4[] mo27820native(d0 d0Var) throws TemplateException, IOException {
        TemplateModel templateModelR;
        b4[] b4VarArrM27837finally = m27837finally();
        if (b4VarArrM27837finally != null) {
            StringWriter stringWriter = new StringWriter();
            d0Var.C3(b4VarArrM27837finally, stringWriter);
            templateModelR = r(stringWriter.toString());
        } else {
            templateModelR = r("");
        }
        h0 h0Var = this.f23787const;
        if (h0Var != null) {
            ((d0.Cthis) h0Var.m28055throws(d0Var)).put(this.f23786class, templateModelR);
            return null;
        }
        int i = this.f23788final;
        if (i == 1) {
            d0Var.u3(this.f23786class, templateModelR);
            return null;
        }
        if (i == 3) {
            d0Var.p3(this.f23786class, templateModelR);
            return null;
        }
        if (i != 2) {
            throw new mc("Unhandled scope");
        }
        d0Var.r3(this.f23786class, templateModelR);
        return null;
    }

    @Override // freemarker.core.b4
    /* renamed from: switch */
    public String mo27846switch(boolean z) {
        StringBuilder sb = new StringBuilder();
        if (z) {
            sb.append("<");
        }
        sb.append(mo27813case());
        sb.append(' ');
        sb.append(this.f23786class);
        if (this.f23787const != null) {
            sb.append(" in ");
            sb.append(this.f23787const.mo27815for());
        }
        if (z) {
            sb.append(ca2.f702try);
            sb.append(m27841private());
            sb.append("</");
            sb.append(mo27813case());
            sb.append(ca2.f702try);
        } else {
            sb.append(" = .nested_output");
        }
        return sb.toString();
    }

    @Override // freemarker.core.h4
    /* renamed from: this */
    public Object mo27819this(int i) {
        if (i == 0) {
            return this.f23786class;
        }
        if (i == 1) {
            return Integer.valueOf(this.f23788final);
        }
        if (i == 2) {
            return this.f23787const;
        }
        throw new IndexOutOfBoundsException();
    }
}
