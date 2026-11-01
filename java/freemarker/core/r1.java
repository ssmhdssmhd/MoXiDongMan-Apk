package freemarker.core;

import android.support.v4.ca2;
import android.support.v4.dl2;
import android.support.v4.fl2;
import android.support.v4.fx0;
import android.support.v4.nl2;
import android.support.v4.yk2;
import freemarker.template.Cstatic;
import freemarker.template.TemplateException;
import java.io.IOException;

@Deprecated
/* loaded from: classes.dex */
public final class r1 extends b4 {

    /* renamed from: class, reason: not valid java name */
    private h0 f24107class;

    /* renamed from: const, reason: not valid java name */
    private String f24108const;

    public r1(Cstatic cstatic, h0 h0Var, String str) {
        this.f24108const = str;
        this.f24107class = h0Var;
    }

    @Override // freemarker.core.h4
    /* renamed from: case */
    public String mo27813case() {
        return "#import";
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
            return f3.f23774static;
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
        String strMo28045default = this.f24107class.mo28045default(d0Var);
        try {
            try {
                d0Var.H2(d0Var.x3(getTemplate().h1(), strMo28045default), this.f24108const);
                return null;
            } catch (IOException e) {
                throw new nl2(e, d0Var, "Template importing failed (for parameter value ", new fl2(strMo28045default), "):\n", new dl2(e));
            }
        } catch (fx0 e2) {
            throw new nl2(e2, d0Var, "Malformed template name ", new fl2(e2.getTemplateName()), ":\n", e2.getMalformednessDescription());
        }
    }

    public String r() {
        return this.f24107class.toString();
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
        sb.append(this.f24107class.mo27815for());
        sb.append(" as ");
        sb.append(yk2.m9890else(this.f24108const));
        if (z) {
            sb.append("/>");
        }
        return sb.toString();
    }

    @Override // freemarker.core.h4
    /* renamed from: this */
    public Object mo27819this(int i) {
        if (i == 0) {
            return this.f24107class;
        }
        if (i == 1) {
            return this.f24108const;
        }
        throw new IndexOutOfBoundsException();
    }
}
