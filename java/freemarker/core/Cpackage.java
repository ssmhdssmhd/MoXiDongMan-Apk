package freemarker.core;

import android.support.v4.k52;
import freemarker.template.TemplateException;
import freemarker.template.TemplateModel;
import freemarker.template.TemplateNodeModel;

/* renamed from: freemarker.core.package, reason: invalid class name */
/* loaded from: classes.dex */
abstract class Cpackage extends Creturn {
    @Override // freemarker.core.h0
    /* renamed from: native */
    public TemplateModel mo27807native(d0 d0Var) throws TemplateException {
        TemplateModel templateModelM28055throws = this.f24114goto.m28055throws(d0Var);
        if (templateModelM28055throws instanceof TemplateNodeModel) {
            return r((TemplateNodeModel) templateModelM28055throws, d0Var);
        }
        throw new q2(this.f24114goto, templateModelM28055throws, d0Var);
    }

    public abstract TemplateModel r(TemplateNodeModel templateNodeModel, d0 d0Var) throws k52;
}
