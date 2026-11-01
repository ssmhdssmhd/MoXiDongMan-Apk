package freemarker.core;

import android.support.v4.nl2;
import android.support.v4.yk2;
import freemarker.core.h0;
import freemarker.template.TemplateException;
import freemarker.template.TemplateModel;

/* loaded from: classes.dex */
final class w0 extends h0 {

    /* renamed from: goto, reason: not valid java name */
    private final String f24253goto;

    public w0(String str) {
        this.f24253goto = str;
    }

    @Override // freemarker.core.h4
    /* renamed from: case */
    public String mo27813case() {
        return mo27815for();
    }

    public String d() {
        return this.f24253goto;
    }

    @Override // freemarker.core.h4
    /* renamed from: else */
    public int mo27814else() {
        return 0;
    }

    @Override // freemarker.core.h4
    /* renamed from: for */
    public String mo27815for() {
        return yk2.m9888case(this.f24253goto);
    }

    @Override // freemarker.core.h4
    /* renamed from: goto */
    public f3 mo27816goto(int i) {
        throw new IndexOutOfBoundsException();
    }

    @Override // freemarker.core.h0
    /* renamed from: instanceof */
    public boolean mo27817instanceof() {
        return false;
    }

    @Override // freemarker.core.h0
    /* renamed from: native */
    public TemplateModel mo27807native(d0 d0Var) throws TemplateException {
        try {
            return d0Var.D2(this.f24253goto);
        } catch (NullPointerException e) {
            if (d0Var == null) {
                throw new nl2("Variables are not available (certainly you are in a parse-time executed directive). The name of the variable you tried to read: ", this.f24253goto);
            }
            throw e;
        }
    }

    @Override // freemarker.core.h0
    /* renamed from: static */
    public h0 mo27818static(String str, h0 h0Var, h0.Cdo cdo) {
        if (!this.f24253goto.equals(str)) {
            return new w0(this.f24253goto);
        }
        if (!cdo.f23811do) {
            cdo.f23811do = true;
            return h0Var;
        }
        h0 h0VarM28053return = h0Var.m28053return(null, null, cdo);
        h0VarM28053return.m28069if(h0Var);
        return h0VarM28053return;
    }

    @Override // freemarker.core.h4
    /* renamed from: this */
    public Object mo27819this(int i) {
        throw new IndexOutOfBoundsException();
    }
}
