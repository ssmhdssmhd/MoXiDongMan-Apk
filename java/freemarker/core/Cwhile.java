package freemarker.core;

import freemarker.core.h0;
import freemarker.template.TemplateBooleanModel;
import freemarker.template.TemplateModel;

/* renamed from: freemarker.core.while, reason: invalid class name */
/* loaded from: classes.dex */
final class Cwhile extends h0 {

    /* renamed from: goto, reason: not valid java name */
    private final boolean f24261goto;

    public Cwhile(boolean z) {
        this.f24261goto = z;
    }

    public static TemplateBooleanModel d(boolean z) {
        return z ? TemplateBooleanModel.TRUE : TemplateBooleanModel.FALSE;
    }

    @Override // freemarker.core.h4
    /* renamed from: case */
    public String mo27813case() {
        return mo27815for();
    }

    @Override // freemarker.core.h0
    /* renamed from: continue */
    public boolean mo27884continue(d0 d0Var) {
        return this.f24261goto;
    }

    @Override // freemarker.core.h4
    /* renamed from: else */
    public int mo27814else() {
        return 0;
    }

    @Override // freemarker.core.h4
    /* renamed from: for */
    public String mo27815for() {
        return this.f24261goto ? b2.f23511if : b2.f23510do;
    }

    @Override // freemarker.core.h4
    /* renamed from: goto */
    public f3 mo27816goto(int i) {
        throw new IndexOutOfBoundsException();
    }

    @Override // freemarker.core.h0
    /* renamed from: instanceof */
    public boolean mo27817instanceof() {
        return true;
    }

    @Override // freemarker.core.h0
    /* renamed from: native */
    public TemplateModel mo27807native(d0 d0Var) {
        return this.f24261goto ? TemplateBooleanModel.TRUE : TemplateBooleanModel.FALSE;
    }

    @Override // freemarker.core.h0
    /* renamed from: static */
    public h0 mo27818static(String str, h0 h0Var, h0.Cdo cdo) {
        return new Cwhile(this.f24261goto);
    }

    @Override // freemarker.core.h4
    /* renamed from: this */
    public Object mo27819this(int i) {
        throw new IndexOutOfBoundsException();
    }

    @Override // freemarker.core.h4
    public String toString() {
        return this.f24261goto ? b2.f23511if : b2.f23510do;
    }
}
