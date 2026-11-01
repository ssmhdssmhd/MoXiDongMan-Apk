package freemarker.core;

import android.support.v4.mc;
import android.support.v4.ul2;
import freemarker.core.h0;
import freemarker.template.TemplateException;
import freemarker.template.TemplateModel;

/* loaded from: classes.dex */
final class k3 extends h0 {

    /* renamed from: catch, reason: not valid java name */
    public static final int f23994catch = 0;

    /* renamed from: class, reason: not valid java name */
    public static final int f23995class = 1;

    /* renamed from: const, reason: not valid java name */
    public static final int f23996const = 2;

    /* renamed from: final, reason: not valid java name */
    public static final int f23997final = 3;

    /* renamed from: break, reason: not valid java name */
    public final int f23998break;

    /* renamed from: goto, reason: not valid java name */
    public final h0 f23999goto;

    /* renamed from: this, reason: not valid java name */
    public final h0 f24000this;

    public k3(h0 h0Var, h0 h0Var2, int i) {
        this.f23999goto = h0Var;
        this.f24000this = h0Var2;
        this.f23998break = i;
    }

    @Override // freemarker.core.h4
    /* renamed from: case */
    public String mo27813case() {
        int i = this.f23998break;
        if (i == 0) {
            return "..";
        }
        if (i == 1) {
            return "..<";
        }
        if (i == 2) {
            return "..";
        }
        if (i == 3) {
            return "..*";
        }
        throw new mc(this.f23998break);
    }

    @Override // freemarker.core.h0
    /* renamed from: continue */
    public boolean mo27884continue(d0 d0Var) throws TemplateException {
        throw new h2(this, new Cimport(0, 0, false, false), d0Var);
    }

    public int d() {
        return this.f23998break;
    }

    @Override // freemarker.core.h4
    /* renamed from: else */
    public int mo27814else() {
        return 2;
    }

    @Override // freemarker.core.h4
    /* renamed from: for */
    public String mo27815for() {
        h0 h0Var = this.f24000this;
        return this.f23999goto.mo27815for() + mo27813case() + (h0Var != null ? h0Var.mo27815for() : "");
    }

    @Override // freemarker.core.h4
    /* renamed from: goto */
    public f3 mo27816goto(int i) {
        return f3.m28031do(i);
    }

    @Override // freemarker.core.h0
    /* renamed from: instanceof */
    public boolean mo27817instanceof() {
        h0 h0Var = this.f24000this;
        return this.f23810else != null || (this.f23999goto.mo27817instanceof() && (h0Var == null || h0Var.mo27817instanceof()));
    }

    @Override // freemarker.core.h0
    /* renamed from: native */
    public TemplateModel mo27807native(d0 d0Var) throws TemplateException {
        int iIntValue = this.f23999goto.m28051protected(d0Var).intValue();
        if (this.f23998break == 2) {
            return ul2.m8514super(this) >= ul2.f6937new ? new u1(iIntValue) : new m2(iIntValue);
        }
        int iIntValue2 = this.f24000this.m28051protected(d0Var).intValue();
        int i = this.f23998break;
        if (i == 3) {
            iIntValue2 += iIntValue;
        }
        return new Cimport(iIntValue, iIntValue2, i == 0, i == 3);
    }

    @Override // freemarker.core.h0
    /* renamed from: static */
    public h0 mo27818static(String str, h0 h0Var, h0.Cdo cdo) {
        return new k3(this.f23999goto.m28053return(str, h0Var, cdo), this.f24000this.m28053return(str, h0Var, cdo), this.f23998break);
    }

    @Override // freemarker.core.h4
    /* renamed from: this */
    public Object mo27819this(int i) {
        if (i == 0) {
            return this.f23999goto;
        }
        if (i == 1) {
            return this.f24000this;
        }
        throw new IndexOutOfBoundsException();
    }
}
