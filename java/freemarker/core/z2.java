package freemarker.core;

import android.support.v4.az1;
import freemarker.core.h0;
import freemarker.template.TemplateException;
import freemarker.template.TemplateModel;
import freemarker.template.TemplateNumberModel;

/* loaded from: classes.dex */
final class z2 extends h0 implements TemplateNumberModel {

    /* renamed from: goto, reason: not valid java name */
    private final Number f24322goto;

    public z2(Number number) {
        this.f24322goto = number;
    }

    @Override // freemarker.core.h4
    /* renamed from: case */
    public String mo27813case() {
        return mo27815for();
    }

    public String d() {
        return "the number: '" + this.f24322goto + "'";
    }

    @Override // freemarker.core.h0
    /* renamed from: default */
    public String mo28045default(d0 d0Var) throws TemplateException {
        return d0Var.p1(this, this, false);
    }

    @Override // freemarker.core.h4
    /* renamed from: else */
    public int mo27814else() {
        return 0;
    }

    @Override // freemarker.core.h4
    /* renamed from: for */
    public String mo27815for() {
        return this.f24322goto.toString();
    }

    @Override // freemarker.template.TemplateNumberModel
    public Number getAsNumber() {
        return this.f24322goto;
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
        return new az1(this.f24322goto);
    }

    @Override // freemarker.core.h0
    /* renamed from: static */
    public h0 mo27818static(String str, h0 h0Var, h0.Cdo cdo) {
        return new z2(this.f24322goto);
    }

    @Override // freemarker.core.h4
    /* renamed from: this */
    public Object mo27819this(int i) {
        throw new IndexOutOfBoundsException();
    }
}
