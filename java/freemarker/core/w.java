package freemarker.core;

import android.support.v4.q12;
import freemarker.debug.impl.Cif;
import freemarker.template.TemplateException;
import java.io.IOException;

@Deprecated
/* loaded from: classes.dex */
public class w extends b4 {
    public w(b4 b4Var) {
        m27844return(b4Var);
        m28069if(b4Var);
    }

    @Override // freemarker.core.h4
    /* renamed from: case */
    public String mo27813case() {
        return "#debug_break";
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
        if (Cif.m28442goto(d0Var, getTemplate().q1(), m27835default(0).getBeginLine())) {
            throw new q12(d0Var, "Stopped by debugger");
        }
        return m27835default(0).mo27820native(d0Var);
    }

    @Override // freemarker.core.b4
    /* renamed from: switch */
    public String mo27846switch(boolean z) {
        if (!z) {
            return "debug break";
        }
        StringBuilder sb = new StringBuilder();
        sb.append("<#-- ");
        sb.append("debug break");
        if (m27840package() == 0) {
            sb.append(" /-->");
        } else {
            sb.append(" -->");
            sb.append(m27835default(0).mo27815for());
            sb.append("<#--/ debug break -->");
        }
        return sb.toString();
    }

    @Override // freemarker.core.h4
    /* renamed from: this */
    public Object mo27819this(int i) {
        throw new IndexOutOfBoundsException();
    }
}
