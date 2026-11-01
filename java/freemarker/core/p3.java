package freemarker.core;

import android.support.v4.ca2;
import freemarker.template.TemplateException;

/* loaded from: classes.dex */
public final class p3 extends b4 {

    /* renamed from: class, reason: not valid java name */
    private h0 f24063class;

    /* renamed from: freemarker.core.p3$do, reason: invalid class name */
    public static class Cdo extends m0 {
        public static final Cdo INSTANCE = new Cdo();

        private Cdo() {
        }
    }

    public p3(h0 h0Var) {
        this.f24063class = h0Var;
    }

    @Override // freemarker.core.h4
    /* renamed from: case */
    public String mo27813case() {
        return "#return";
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
    /* renamed from: native */
    public b4[] mo27820native(d0 d0Var) throws TemplateException {
        h0 h0Var = this.f24063class;
        if (h0Var != null) {
            d0Var.q3(h0Var.m28055throws(d0Var));
        }
        if (i() == null && (m27847synchronized() instanceof x1)) {
            return null;
        }
        throw Cdo.INSTANCE;
    }

    @Override // freemarker.core.b4
    /* renamed from: switch */
    public String mo27846switch(boolean z) {
        StringBuilder sb = new StringBuilder();
        if (z) {
            sb.append(ca2.f687new);
        }
        sb.append(mo27813case());
        if (this.f24063class != null) {
            sb.append(' ');
            sb.append(this.f24063class.mo27815for());
        }
        if (z) {
            sb.append("/>");
        }
        return sb.toString();
    }

    @Override // freemarker.core.h4
    /* renamed from: this */
    public Object mo27819this(int i) {
        if (i == 0) {
            return this.f24063class;
        }
        throw new IndexOutOfBoundsException();
    }
}
