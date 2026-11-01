package freemarker.core;

import android.support.v4.ca2;
import freemarker.template.TemplateException;
import java.io.IOException;

/* renamed from: freemarker.core.break, reason: invalid class name */
/* loaded from: classes.dex */
final class Cbreak extends b4 {

    /* renamed from: class, reason: not valid java name */
    private int f23526class;

    /* renamed from: const, reason: not valid java name */
    private h0 f23527const;

    public Cbreak(int i) {
        this.f23526class = i;
        o(1);
    }

    @Override // freemarker.core.h4
    /* renamed from: case */
    public String mo27813case() {
        return Cthis.r(this.f23526class);
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
            return f3.f23751catch;
        }
        if (i != 1) {
            return null;
        }
        return f3.f23752class;
    }

    @Override // freemarker.core.b4
    /* renamed from: native */
    public b4[] mo27820native(d0 d0Var) throws TemplateException, IOException {
        return m27837finally();
    }

    public void r(Cthis cthis) {
        m27844return(cthis);
    }

    public void s(h0 h0Var) {
        this.f23527const = h0Var;
        int iM27840package = m27840package();
        for (int i = 0; i < iM27840package; i++) {
            ((Cthis) m27835default(i)).u(h0Var);
        }
    }

    @Override // freemarker.core.b4
    /* renamed from: switch */
    public String mo27846switch(boolean z) {
        StringBuilder sb = new StringBuilder();
        if (z) {
            sb.append(ca2.f687new);
        }
        sb.append(Cthis.r(this.f23526class));
        if (z) {
            sb.append(' ');
            int iM27840package = m27840package();
            for (int i = 0; i < iM27840package; i++) {
                if (i != 0) {
                    sb.append(", ");
                }
                sb.append(((Cthis) m27835default(i)).mo27815for());
            }
        } else {
            sb.append("-container");
        }
        if (this.f23527const != null) {
            sb.append(" in ");
            sb.append(this.f23527const.mo27815for());
        }
        if (z) {
            sb.append(">");
        }
        return sb.toString();
    }

    @Override // freemarker.core.h4
    /* renamed from: this */
    public Object mo27819this(int i) {
        if (i == 0) {
            return Integer.valueOf(this.f23526class);
        }
        if (i != 1) {
            return null;
        }
        return this.f23527const;
    }
}
