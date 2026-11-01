package freemarker.core;

import android.support.v4.ca2;
import android.support.v4.mc;
import freemarker.template.TemplateException;
import java.io.IOException;

/* loaded from: classes.dex */
final class s extends b4 {

    /* renamed from: final, reason: not valid java name */
    public static final int f24116final = 0;

    /* renamed from: super, reason: not valid java name */
    public static final int f24117super = 1;

    /* renamed from: throw, reason: not valid java name */
    public static final int f24118throw = 2;

    /* renamed from: class, reason: not valid java name */
    public final h0 f24119class;

    /* renamed from: const, reason: not valid java name */
    private final int f24120const;

    public s(h0 h0Var, c4 c4Var, int i) {
        this.f24119class = h0Var;
        p(c4Var);
        this.f24120const = i;
    }

    @Override // freemarker.core.h4
    /* renamed from: case */
    public String mo27813case() {
        int i = this.f24120const;
        if (i == 1) {
            return "#else";
        }
        if (i == 0) {
            return "#if";
        }
        if (i == 2) {
            return "#elseif";
        }
        throw new mc("Unknown type");
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
            return f3.f23776super;
        }
        if (i == 1) {
            return f3.f23784while;
        }
        throw new IndexOutOfBoundsException();
    }

    @Override // freemarker.core.b4
    /* renamed from: native */
    public b4[] mo27820native(d0 d0Var) throws TemplateException, IOException {
        h0 h0Var = this.f24119class;
        if (h0Var == null || h0Var.mo27884continue(d0Var)) {
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
        if (this.f24119class != null) {
            sb.append(' ');
            sb.append(this.f24119class.mo27815for());
        }
        if (z) {
            sb.append(">");
            sb.append(m27841private());
            if (!(m27847synchronized() instanceof x0)) {
                sb.append("</#if>");
            }
        }
        return sb.toString();
    }

    @Override // freemarker.core.h4
    /* renamed from: this */
    public Object mo27819this(int i) {
        if (i == 0) {
            return this.f24119class;
        }
        if (i == 1) {
            return Integer.valueOf(this.f24120const);
        }
        throw new IndexOutOfBoundsException();
    }
}
