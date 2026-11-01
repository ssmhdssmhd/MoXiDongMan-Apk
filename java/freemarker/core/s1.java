package freemarker.core;

import freemarker.template.TemplateException;
import java.io.IOException;

/* loaded from: classes.dex */
class s1 extends b4 {

    /* renamed from: class, reason: not valid java name */
    private final d1 f24130class;

    /* renamed from: const, reason: not valid java name */
    private final c0 f24131const;

    public s1(d1 d1Var, c0 c0Var) {
        o(2);
        m27844return(d1Var);
        m27844return(c0Var);
        this.f24130class = d1Var;
        this.f24131const = c0Var;
    }

    @Override // freemarker.core.h4
    /* renamed from: case */
    public String mo27813case() {
        return "#list-#else-container";
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
        if (this.f24130class.r(d0Var)) {
            return null;
        }
        return this.f24131const.mo27820native(d0Var);
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
            sb.append(m27835default(i).mo27846switch(z));
        }
        sb.append("</#list>");
        return sb.toString();
    }

    @Override // freemarker.core.h4
    /* renamed from: this */
    public Object mo27819this(int i) {
        throw new IndexOutOfBoundsException();
    }
}
