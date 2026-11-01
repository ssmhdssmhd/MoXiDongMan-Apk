package freemarker.core;

import android.support.v4.fl2;
import android.support.v4.nl2;
import freemarker.core.d1;
import freemarker.template.TemplateException;
import freemarker.template.TemplateModel;

/* renamed from: freemarker.core.extends, reason: invalid class name */
/* loaded from: classes.dex */
abstract class Cextends extends v3 {

    /* renamed from: final, reason: not valid java name */
    private String f23697final;

    @Override // freemarker.core.h0
    /* renamed from: native */
    public TemplateModel mo27807native(d0 d0Var) throws TemplateException {
        d1.Cdo cdoM1 = d0Var.m1(this.f23697final);
        if (cdoM1 != null) {
            return s(cdoM1, d0Var);
        }
        throw new nl2(this, d0Var, "There's no iteration in context that uses loop variable ", new fl2(this.f23697final), ".");
    }

    public void r(String str) {
        this.f23697final = str;
    }

    public abstract TemplateModel s(d1.Cdo cdo, d0 d0Var) throws TemplateException;
}
