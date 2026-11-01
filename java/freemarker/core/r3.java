package freemarker.core;

import android.support.v4.ca2;
import android.support.v4.nl2;
import freemarker.core.d1;
import freemarker.template.TemplateException;
import java.io.IOException;

/* loaded from: classes.dex */
class r3 extends b4 {
    public r3(c4 c4Var) {
        p(c4Var);
    }

    @Override // freemarker.core.h4
    /* renamed from: case */
    public String mo27813case() {
        return "#sep";
    }

    @Override // freemarker.core.h4
    /* renamed from: else */
    public int mo27814else() {
        return 0;
    }

    @Override // freemarker.core.b4
    public boolean f() {
        return false;
    }

    @Override // freemarker.core.h4
    /* renamed from: goto */
    public f3 mo27816goto(int i) {
        throw new IndexOutOfBoundsException();
    }

    @Override // freemarker.core.b4
    /* renamed from: native */
    public b4[] mo27820native(d0 d0Var) throws TemplateException, IOException {
        d1.Cdo cdoK1 = d0Var.k1();
        if (cdoK1 == null) {
            throw new nl2(d0Var, mo27813case(), " without iteration in context");
        }
        if (cdoK1.m27947case()) {
            return m27837finally();
        }
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
        throw new IndexOutOfBoundsException();
    }
}
