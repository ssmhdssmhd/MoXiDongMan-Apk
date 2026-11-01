package freemarker.core;

import freemarker.template.TemplateException;
import java.io.IOException;

/* loaded from: classes.dex */
final class x0 extends b4 {
    public x0(s sVar) {
        o(1);
        r(sVar);
    }

    @Override // freemarker.core.h4
    /* renamed from: case */
    public String mo27813case() {
        return "#if-#elseif-#else-container";
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
    public b4 k(boolean z) throws h3 {
        if (m27840package() != 1) {
            return super.k(z);
        }
        s sVar = (s) m27835default(0);
        sVar.m28068final(getTemplate(), sVar, this);
        return sVar.k(z);
    }

    @Override // freemarker.core.b4
    /* renamed from: native */
    public b4[] mo27820native(d0 d0Var) throws TemplateException, IOException {
        int iM27840package = m27840package();
        for (int i = 0; i < iM27840package; i++) {
            s sVar = (s) m27835default(i);
            h0 h0Var = sVar.f24119class;
            d0Var.i3(sVar);
            if (h0Var == null || h0Var.mo27884continue(d0Var)) {
                return sVar.m27837finally();
            }
        }
        return null;
    }

    public void r(s sVar) {
        m27844return(sVar);
    }

    @Override // freemarker.core.b4
    /* renamed from: switch */
    public String mo27846switch(boolean z) {
        if (!z) {
            return mo27813case();
        }
        StringBuilder sb = new StringBuilder();
        int iM27840package = m27840package();
        for (int i = 0; i < iM27840package; i++) {
            sb.append(((s) m27835default(i)).mo27846switch(z));
        }
        sb.append("</#if>");
        return sb.toString();
    }

    @Override // freemarker.core.h4
    /* renamed from: this */
    public Object mo27819this(int i) {
        throw new IndexOutOfBoundsException();
    }
}
