package freemarker.core;

import android.support.v4.k52;
import freemarker.template.TemplateException;
import freemarker.template.TemplateHashModelEx;
import freemarker.template.TemplateModel;

/* renamed from: freemarker.core.throws, reason: invalid class name */
/* loaded from: classes.dex */
abstract class Cthrows extends Creturn {
    @Override // freemarker.core.h0
    /* renamed from: native */
    public TemplateModel mo27807native(d0 d0Var) throws TemplateException {
        TemplateModel templateModelM28055throws = this.f24114goto.m28055throws(d0Var);
        if (templateModelM28055throws instanceof TemplateHashModelEx) {
            return r((TemplateHashModelEx) templateModelM28055throws, d0Var);
        }
        throw new j2(this.f24114goto, templateModelM28055throws, d0Var);
    }

    public abstract TemplateModel r(TemplateHashModelEx templateHashModelEx, d0 d0Var) throws k52, b1;

    public b1 s(String str, TemplateModel templateModel, d0 d0Var) {
        return d0Var.H1() ? b1.FAST_INSTANCE : new b1(new z4("The exteneded hash (of class ", templateModel.getClass().getName(), ") has returned null for its \"", str, "\" property. This is maybe a bug. The extended hash was returned by this expression:").m28401if(this.f24114goto), d0Var, this);
    }
}
