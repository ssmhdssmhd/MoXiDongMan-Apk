package freemarker.core;

import com.umeng.analytics.pro.ak;
import freemarker.core.h0;
import java.util.List;

/* renamed from: freemarker.core.interface, reason: invalid class name */
/* loaded from: classes.dex */
abstract class Cinterface extends v3 {
    @Override // freemarker.core.Creturn, freemarker.core.h4
    /* renamed from: case */
    public String mo27813case() {
        return super.mo27813case() + "(...)";
    }

    @Override // freemarker.core.Creturn, freemarker.core.h4
    /* renamed from: else */
    public int mo27814else() {
        return super.mo27814else() + w();
    }

    @Override // freemarker.core.Creturn, freemarker.core.h4
    /* renamed from: for */
    public String mo27815for() {
        StringBuilder sb = new StringBuilder();
        sb.append(super.mo27815for());
        sb.append("(");
        List<h0> listV = v();
        int size = listV.size();
        for (int i = 0; i < size; i++) {
            if (i != 0) {
                sb.append(", ");
            }
            sb.append(listV.get(i).mo27815for());
        }
        sb.append(")");
        return sb.toString();
    }

    @Override // freemarker.core.Creturn, freemarker.core.h4
    /* renamed from: goto */
    public f3 mo27816goto(int i) {
        int iMo27814else = super.mo27814else();
        if (i < iMo27814else) {
            return super.mo27816goto(i);
        }
        if (i - iMo27814else < w()) {
            return f3.f23748abstract;
        }
        throw new IndexOutOfBoundsException();
    }

    public abstract void r(List<h0> list, m4 m4Var, m4 m4Var2) throws h3;

    public final void s(w1 w1Var, int i) throws h3 {
        int size = w1Var.d().m28343new().size();
        if (size != i) {
            StringBuilder sb = new StringBuilder();
            sb.append("?");
            sb.append(this.f24115this);
            sb.append("(...) parameter lambda expression must declare exactly ");
            sb.append(i);
            sb.append(" parameter");
            sb.append(i > 1 ? ak.aB : "");
            sb.append(", but it declared ");
            sb.append(size);
            sb.append(".");
            throw new h3(sb.toString(), w1Var);
        }
    }

    @Override // freemarker.core.Creturn, freemarker.core.h0
    /* renamed from: static */
    public h0 mo27818static(String str, h0 h0Var, h0.Cdo cdo) {
        h0 h0VarMo27818static = super.mo27818static(str, h0Var, cdo);
        t(h0VarMo27818static, str, h0Var, cdo);
        return h0VarMo27818static;
    }

    public abstract void t(h0 h0Var, String str, h0 h0Var2, h0.Cdo cdo);

    @Override // freemarker.core.Creturn, freemarker.core.h4
    /* renamed from: this */
    public Object mo27819this(int i) {
        int iMo27814else = super.mo27814else();
        return i < iMo27814else ? super.mo27819this(i) : u(i - iMo27814else);
    }

    public abstract h0 u(int i);

    public abstract List<h0> v();

    public abstract int w();

    public boolean x() {
        return false;
    }

    public final h3 y(String str, m4 m4Var, m4 m4Var2) {
        return new h3("?" + this.f24115this + "(...) " + str + " parameters", getTemplate(), m4Var.beginLine, m4Var.beginColumn, m4Var2.endLine, m4Var2.endColumn);
    }
}
