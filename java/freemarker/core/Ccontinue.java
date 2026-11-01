package freemarker.core;

import android.support.v4.k52;
import freemarker.template.TemplateException;
import freemarker.template.TemplateModel;
import freemarker.template.TemplateSequenceModel;

/* renamed from: freemarker.core.continue, reason: invalid class name */
/* loaded from: classes.dex */
abstract class Ccontinue extends Creturn {
    @Override // freemarker.core.h0
    /* renamed from: native */
    public TemplateModel mo27807native(d0 d0Var) throws TemplateException {
        TemplateModel templateModelM28055throws = this.f24114goto.m28055throws(d0Var);
        if (templateModelM28055throws instanceof TemplateSequenceModel) {
            return r((TemplateSequenceModel) templateModelM28055throws);
        }
        throw new s2(this.f24114goto, templateModelM28055throws, d0Var);
    }

    public abstract TemplateModel r(TemplateSequenceModel templateSequenceModel) throws k52;
}
