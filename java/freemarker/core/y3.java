package freemarker.core;

import android.support.v4.ca2;
import freemarker.template.TemplateException;
import java.io.IOException;

/* loaded from: classes.dex */
final class y3 extends b4 {

    /* renamed from: class, reason: not valid java name */
    private l f24309class;

    /* renamed from: const, reason: not valid java name */
    private final h0 f24310const;

    /* renamed from: final, reason: not valid java name */
    private int f24311final;

    public y3(h0 h0Var, c2 c2Var) {
        this.f24310const = h0Var;
        int iM27840package = c2Var != null ? c2Var.m27840package() : 0;
        o(iM27840package + 4);
        for (int i = 0; i < iM27840package; i++) {
            m27844return(c2Var.m27835default(i));
        }
        this.f24311final = iM27840package;
    }

    @Override // freemarker.core.h4
    /* renamed from: case */
    public String mo27813case() {
        return "#switch";
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
            return f3.f23779throw;
        }
        throw new IndexOutOfBoundsException();
    }

    @Override // freemarker.core.b4
    public b4 k(boolean z) throws h3 {
        b4 b4VarK = super.k(z);
        int iM27840package = m27840package();
        int i = 0;
        while (i < iM27840package && !(m27835default(i) instanceof l)) {
            i++;
        }
        this.f24311final = i;
        return b4VarK;
    }

    @Override // freemarker.core.b4
    /* renamed from: native */
    public b4[] mo27820native(d0 d0Var) throws TemplateException, IOException {
        b4 b4Var;
        boolean zM28023this;
        int iM27840package = m27840package();
        try {
            boolean z = false;
            for (int i = this.f24311final; i < iM27840package; i++) {
                l lVar = (l) m27835default(i);
                if (z) {
                    zM28023this = true;
                } else {
                    h0 h0Var = lVar.f24005class;
                    zM28023this = h0Var != null ? f0.m28023this(this.f24310const, 1, "case==", h0Var, h0Var, d0Var) : false;
                }
                if (zM28023this) {
                    d0Var.y3(lVar);
                    z = true;
                }
            }
            if (z || (b4Var = this.f24309class) == null) {
                return null;
            }
            d0Var.y3(b4Var);
            return null;
        } catch (Cpublic unused) {
            return null;
        }
    }

    public void r(l lVar) {
        if (lVar.f24005class == null) {
            this.f24309class = lVar;
        }
        m27844return(lVar);
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
        sb.append(this.f24310const.mo27815for());
        if (z) {
            sb.append(ca2.f702try);
            int iM27840package = m27840package();
            for (int i = 0; i < iM27840package; i++) {
                sb.append(m27835default(i).mo27815for());
            }
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
            return this.f24310const;
        }
        throw new IndexOutOfBoundsException();
    }
}
