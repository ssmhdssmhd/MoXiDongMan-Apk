package freemarker.core;

import freemarker.template.TemplateException;
import java.io.IOException;

/* loaded from: classes.dex */
final class c2 extends b4 {
    @Override // freemarker.core.h4
    /* renamed from: case */
    public String mo27813case() {
        return "#mixed_content";
    }

    @Override // freemarker.core.b4
    public boolean d(boolean z) {
        return m27840package() == 0;
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

    @Override // freemarker.core.b4
    public boolean g() {
        int iM27840package = m27840package();
        for (int i = 0; i < iM27840package; i++) {
            if (!m27835default(i).g()) {
                return false;
            }
        }
        return true;
    }

    @Override // freemarker.core.h4
    /* renamed from: goto */
    public f3 mo27816goto(int i) {
        throw new IndexOutOfBoundsException();
    }

    @Override // freemarker.core.b4
    public b4 k(boolean z) throws h3 {
        super.k(z);
        return m27840package() == 1 ? m27835default(0) : this;
    }

    @Override // freemarker.core.b4
    /* renamed from: native */
    public b4[] mo27820native(d0 d0Var) throws TemplateException, IOException {
        return m27837finally();
    }

    @Deprecated
    public void r(int i, b4 b4Var) {
        m27843public(i, b4Var);
    }

    @Deprecated
    public void s(b4 b4Var) {
        m27844return(b4Var);
    }

    @Override // freemarker.core.b4
    /* renamed from: switch */
    public String mo27846switch(boolean z) {
        return z ? m27841private() : m27847synchronized() == null ? "root" : mo27813case();
    }

    @Override // freemarker.core.h4
    /* renamed from: this */
    public Object mo27819this(int i) {
        throw new IndexOutOfBoundsException();
    }
}
