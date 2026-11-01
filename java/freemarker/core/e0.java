package freemarker.core;

import android.support.v4.ca2;
import android.support.v4.yk2;
import freemarker.core.h0;
import freemarker.template.TemplateException;
import java.io.IOException;

/* loaded from: classes.dex */
class e0 extends b4 {

    /* renamed from: class, reason: not valid java name */
    private final String f23675class;

    /* renamed from: const, reason: not valid java name */
    private final h0 f23676const;

    /* renamed from: final, reason: not valid java name */
    private h0 f23677final;

    public e0(String str, h0 h0Var, h0 h0Var2) {
        this.f23675class = str;
        this.f23676const = h0Var;
        this.f23677final = h0Var2;
    }

    @Override // freemarker.core.h4
    /* renamed from: case */
    public String mo27813case() {
        return "#escape";
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

    @Override // freemarker.core.b4
    public boolean g() {
        return true;
    }

    @Override // freemarker.core.h4
    /* renamed from: goto */
    public f3 mo27816goto(int i) {
        if (i == 0) {
            return f3.f23764import;
        }
        if (i == 1) {
            return f3.f23767native;
        }
        throw new IndexOutOfBoundsException();
    }

    @Override // freemarker.core.b4
    /* renamed from: native */
    public b4[] mo27820native(d0 d0Var) throws TemplateException, IOException {
        return m27837finally();
    }

    public h0 r(h0 h0Var) {
        return this.f23677final.m28053return(this.f23675class, h0Var, new h0.Cdo());
    }

    public void s(c4 c4Var) {
        p(c4Var);
        this.f23677final = null;
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
        sb.append(yk2.m9888case(this.f23675class));
        sb.append(" as ");
        sb.append(this.f23676const.mo27815for());
        if (z) {
            sb.append(ca2.f702try);
            sb.append(m27841private());
            sb.append("</");
            sb.append(mo27813case());
            sb.append(ca2.f702try);
        }
        return sb.toString();
    }

    @Override // freemarker.core.h4
    /* renamed from: this */
    public Object mo27819this(int i) {
        if (i == 0) {
            return this.f23675class;
        }
        if (i == 1) {
            return this.f23676const;
        }
        throw new IndexOutOfBoundsException();
    }
}
