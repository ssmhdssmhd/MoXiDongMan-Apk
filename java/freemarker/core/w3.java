package freemarker.core;

import android.support.v4.ca2;
import android.support.v4.q12;
import freemarker.template.TemplateException;

/* loaded from: classes.dex */
final class w3 extends b4 {

    /* renamed from: class, reason: not valid java name */
    private h0 f24260class;

    public w3(h0 h0Var) {
        this.f24260class = h0Var;
    }

    @Override // freemarker.core.h4
    /* renamed from: case */
    public String mo27813case() {
        return "#stop";
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
            return f3.f23765instanceof;
        }
        throw new IndexOutOfBoundsException();
    }

    @Override // freemarker.core.b4
    /* renamed from: native */
    public b4[] mo27820native(d0 d0Var) throws TemplateException {
        if (this.f24260class == null) {
            throw new q12(d0Var);
        }
        throw new q12(d0Var, this.f24260class.mo28045default(d0Var));
    }

    @Override // freemarker.core.b4
    /* renamed from: switch */
    public String mo27846switch(boolean z) {
        StringBuilder sb = new StringBuilder();
        if (z) {
            sb.append(ca2.f687new);
        }
        sb.append(mo27813case());
        if (this.f24260class != null) {
            sb.append(' ');
            sb.append(this.f24260class.mo27815for());
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
            return this.f24260class;
        }
        throw new IndexOutOfBoundsException();
    }
}
