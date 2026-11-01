package freemarker.core;

import android.support.v4.k52;
import freemarker.template.TemplateException;
import freemarker.template.TemplateModel;
import freemarker.template.TemplateNodeModelEx;

/* renamed from: freemarker.core.private, reason: invalid class name */
/* loaded from: classes.dex */
public abstract class Cprivate extends Creturn {
    @Override // freemarker.core.Creturn, freemarker.core.h4
    /* renamed from: for */
    public /* bridge */ /* synthetic */ String mo27815for() {
        return super.mo27815for();
    }

    @Override // freemarker.core.h0
    /* renamed from: native */
    public TemplateModel mo27807native(d0 d0Var) throws TemplateException {
        TemplateModel templateModelM28055throws = this.f24114goto.m28055throws(d0Var);
        if (templateModelM28055throws instanceof TemplateNodeModelEx) {
            return r((TemplateNodeModelEx) templateModelM28055throws, d0Var);
        }
        throw new k2(this.f24114goto, templateModelM28055throws, d0Var);
    }

    public abstract TemplateModel r(TemplateNodeModelEx templateNodeModelEx, d0 d0Var) throws k52;
}
