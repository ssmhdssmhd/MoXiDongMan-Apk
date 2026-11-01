package freemarker.core;

import freemarker.core.h0;
import freemarker.template.TemplateException;
import org.antlr.v4.runtime.tree.xpath.Cdo;

/* loaded from: classes.dex */
final class x2 extends Cthrow {

    /* renamed from: goto, reason: not valid java name */
    private final h0 f24281goto;

    public x2(h0 h0Var) {
        this.f24281goto = h0Var;
    }

    @Override // freemarker.core.h4
    /* renamed from: case */
    public String mo27813case() {
        return Cdo.f28590try;
    }

    @Override // freemarker.core.h0
    /* renamed from: continue */
    public boolean mo27884continue(d0 d0Var) throws TemplateException {
        return !this.f24281goto.mo27884continue(d0Var);
    }

    @Override // freemarker.core.h4
    /* renamed from: else */
    public int mo27814else() {
        return 1;
    }

    @Override // freemarker.core.h4
    /* renamed from: for */
    public String mo27815for() {
        return Cdo.f28590try + this.f24281goto.mo27815for();
    }

    @Override // freemarker.core.h4
    /* renamed from: goto */
    public f3 mo27816goto(int i) {
        if (i == 0) {
            return f3.f23768new;
        }
        throw new IndexOutOfBoundsException();
    }

    @Override // freemarker.core.h0
    /* renamed from: instanceof */
    public boolean mo27817instanceof() {
        return this.f24281goto.mo27817instanceof();
    }

    @Override // freemarker.core.h0
    /* renamed from: static */
    public h0 mo27818static(String str, h0 h0Var, h0.Cdo cdo) {
        return new x2(this.f24281goto.m28053return(str, h0Var, cdo));
    }

    @Override // freemarker.core.h4
    /* renamed from: this */
    public Object mo27819this(int i) {
        if (i == 0) {
            return this.f24281goto;
        }
        throw new IndexOutOfBoundsException();
    }
}
