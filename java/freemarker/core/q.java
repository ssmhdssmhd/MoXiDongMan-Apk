package freemarker.core;

import android.support.v4.mc;
import freemarker.core.a;
import freemarker.core.h0;
import freemarker.template.TemplateException;

/* loaded from: classes.dex */
final class q extends Cthrow {

    /* renamed from: break, reason: not valid java name */
    private final int f24072break;

    /* renamed from: catch, reason: not valid java name */
    private final String f24073catch;

    /* renamed from: goto, reason: not valid java name */
    private final h0 f24074goto;

    /* renamed from: this, reason: not valid java name */
    private final h0 f24075this;

    public q(h0 h0Var, h0 h0Var2, String str) {
        this.f24074goto = h0Var;
        this.f24075this = h0Var2;
        String strIntern = str.intern();
        this.f24073catch = strIntern;
        if (strIntern == "==" || strIntern == "=") {
            this.f24072break = 1;
        } else if (strIntern == "!=") {
            this.f24072break = 2;
        } else if (strIntern == "gt" || strIntern == "\\gt" || strIntern == ">" || strIntern == "&gt;") {
            this.f24072break = 4;
        } else if (strIntern == "gte" || strIntern == "\\gte" || strIntern == ">=" || strIntern == "&gt;=") {
            this.f24072break = 6;
        } else if (strIntern == "lt" || strIntern == "\\lt" || strIntern == "<" || strIntern == "&lt;") {
            this.f24072break = 3;
        } else {
            if (strIntern != "lte" && strIntern != "\\lte" && strIntern != "<=" && strIntern != "&lt;=") {
                throw new mc("Unknown comparison operator " + strIntern);
            }
            this.f24072break = 5;
        }
        h0 h0VarM27825do = b2.m27825do(h0Var);
        h0 h0VarM27825do2 = b2.m27825do(h0Var2);
        if (h0VarM27825do instanceof a.Cdefault) {
            if (h0VarM27825do2 instanceof z2) {
                ((a.Cdefault) h0VarM27825do).r(this.f24072break, (z2) h0VarM27825do2);
            }
        } else if ((h0VarM27825do2 instanceof a.Cdefault) && (h0VarM27825do instanceof z2)) {
            ((a.Cdefault) h0VarM27825do2).r(f0.m28024throw(this.f24072break), (z2) h0VarM27825do);
        }
    }

    @Override // freemarker.core.h4
    /* renamed from: case */
    public String mo27813case() {
        return this.f24073catch;
    }

    @Override // freemarker.core.h0
    /* renamed from: continue */
    public boolean mo27884continue(d0 d0Var) throws TemplateException {
        return f0.m28023this(this.f24074goto, this.f24072break, this.f24073catch, this.f24075this, this, d0Var);
    }

    @Override // freemarker.core.h4
    /* renamed from: else */
    public int mo27814else() {
        return 2;
    }

    @Override // freemarker.core.h4
    /* renamed from: for */
    public String mo27815for() {
        return this.f24074goto.mo27815for() + ' ' + this.f24073catch + ' ' + this.f24075this.mo27815for();
    }

    @Override // freemarker.core.h4
    /* renamed from: goto */
    public f3 mo27816goto(int i) {
        return f3.m28031do(i);
    }

    @Override // freemarker.core.h0
    /* renamed from: instanceof */
    public boolean mo27817instanceof() {
        return this.f23810else != null || (this.f24074goto.mo27817instanceof() && this.f24075this.mo27817instanceof());
    }

    @Override // freemarker.core.h0
    /* renamed from: static */
    public h0 mo27818static(String str, h0 h0Var, h0.Cdo cdo) {
        return new q(this.f24074goto.m28053return(str, h0Var, cdo), this.f24075this.m28053return(str, h0Var, cdo), this.f24073catch);
    }

    @Override // freemarker.core.h4
    /* renamed from: this */
    public Object mo27819this(int i) {
        return i == 0 ? this.f24074goto : this.f24075this;
    }
}
