package freemarker.core;

import android.support.v4.k52;
import freemarker.template.TemplateException;
import freemarker.template.TemplateModel;

/* renamed from: freemarker.core.finally, reason: invalid class name */
/* loaded from: classes.dex */
abstract class Cfinally extends Creturn {
    @Override // freemarker.core.h0
    /* renamed from: native */
    public TemplateModel mo27807native(d0 d0Var) throws TemplateException {
        TemplateModel templateModelM28055throws = this.f24114goto.m28055throws(d0Var);
        if (templateModelM28055throws instanceof TemplateMarkupOutputModel) {
            return r((TemplateMarkupOutputModel) templateModelM28055throws);
        }
        throw new n2(this.f24114goto, templateModelM28055throws, d0Var);
    }

    public abstract TemplateModel r(TemplateMarkupOutputModel templateMarkupOutputModel) throws k52;
}
