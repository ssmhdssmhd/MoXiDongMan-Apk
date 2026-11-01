package freemarker.core;

import freemarker.template.TemplateException;
import freemarker.template.utility.Cfinal;
import java.io.IOException;

/* loaded from: classes.dex */
final class r extends b4 {
    public r(c4 c4Var) {
        p(c4Var);
    }

    @Override // freemarker.core.h4
    /* renamed from: case */
    public String mo27813case() {
        return "#compress";
    }

    @Override // freemarker.core.b4
    public boolean d(boolean z) {
        return m27840package() == 0 && mo27814else() == 0;
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
        b4[] b4VarArrM27837finally = m27837finally();
        if (b4VarArrM27837finally != null) {
            d0Var.D3(b4VarArrM27837finally, Cfinal.f25188new, null);
        }
        return null;
    }

    @Override // freemarker.core.b4
    /* renamed from: switch */
    public String mo27846switch(boolean z) {
        if (!z) {
            return mo27813case();
        }
        return "<" + mo27813case() + ">" + m27841private() + "</" + mo27813case() + ">";
    }

    @Override // freemarker.core.h4
    /* renamed from: this */
    public Object mo27819this(int i) {
        throw new IndexOutOfBoundsException();
    }
}
