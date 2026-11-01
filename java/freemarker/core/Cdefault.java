package freemarker.core;

import freemarker.template.TemplateException;
import freemarker.template.TemplateModel;

/* renamed from: freemarker.core.default, reason: invalid class name */
/* loaded from: classes.dex */
abstract class Cdefault extends Cstatic {
    @Override // freemarker.core.h0
    /* renamed from: native */
    public TemplateModel mo27807native(d0 d0Var) throws TemplateException {
        TemplateModel templateModelM28055throws = this.f24114goto.m28055throws(d0Var);
        Object objM28025try = f0.m28025try(templateModelM28055throws, this.f24114goto, null, d0Var);
        if (objM28025try instanceof String) {
            return r((String) objM28025try, d0Var);
        }
        TemplateMarkupOutputModel templateMarkupOutputModel = (TemplateMarkupOutputModel) objM28025try;
        if (templateMarkupOutputModel.getOutputFormat().mo28135const(this.f24115this)) {
            return templateMarkupOutputModel;
        }
        throw new u2(this.f24114goto, templateModelM28055throws, d0Var);
    }

    public abstract TemplateModel r(String str, d0 d0Var) throws TemplateException;
}
