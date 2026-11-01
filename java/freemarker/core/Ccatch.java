package freemarker.core;

import freemarker.template.TemplateException;
import java.io.IOException;

/* renamed from: freemarker.core.catch, reason: invalid class name */
/* loaded from: classes.dex */
final class Ccatch extends b4 {

    /* renamed from: class, reason: not valid java name */
    private b4 f23572class;

    /* renamed from: const, reason: not valid java name */
    private m3 f23573const;

    public Ccatch(c4 c4Var, m3 m3Var) {
        b4 b4VarM27888if = c4Var.m27888if();
        this.f23572class = b4VarM27888if;
        this.f23573const = m3Var;
        o(2);
        m27844return(b4VarM27888if);
        m27844return(m3Var);
    }

    @Override // freemarker.core.h4
    /* renamed from: case */
    public String mo27813case() {
        return "#attempt";
    }

    @Override // freemarker.core.h4
    /* renamed from: else */
    public int mo27814else() {
        return 1;
    }

    @Override // freemarker.core.b4
    public boolean f() {
        return false;
    }

    @Override // freemarker.core.h4
    /* renamed from: goto */
    public f3 mo27816goto(int i) {
        if (i == 0) {
            return f3.f23753const;
        }
        throw new IndexOutOfBoundsException();
    }

    @Override // freemarker.core.b4
    /* renamed from: native */
    public b4[] mo27820native(d0 d0Var) throws TemplateException, IOException {
        d0Var.E3(this, this.f23572class, this.f23573const);
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
        if (i == 0) {
            return this.f23573const;
        }
        throw new IndexOutOfBoundsException();
    }
}
