package freemarker.core;

import freemarker.template.TemplateDateModel;
import freemarker.template.TemplateException;
import freemarker.template.TemplateModel;
import java.util.Date;

/* renamed from: freemarker.core.switch, reason: invalid class name */
/* loaded from: classes.dex */
abstract class Cswitch extends Creturn {
    public static TemplateException s(d0 d0Var, TemplateModel templateModel, h0 h0Var) throws b1 {
        return templateModel == null ? b1.getInstance(h0Var, d0Var) : new i2(h0Var, templateModel, "date", d0Var);
    }

    @Override // freemarker.core.h0
    /* renamed from: native */
    public TemplateModel mo27807native(d0 d0Var) throws TemplateException {
        TemplateModel templateModelM28055throws = this.f24114goto.m28055throws(d0Var);
        if (!(templateModelM28055throws instanceof TemplateDateModel)) {
            throw s(d0Var, templateModelM28055throws, this.f24114goto);
        }
        TemplateDateModel templateDateModel = (TemplateDateModel) templateModelM28055throws;
        return r(f0.m28026while(templateDateModel, this.f24114goto), templateDateModel.getDateType(), d0Var);
    }

    public abstract TemplateModel r(Date date, int i, d0 d0Var) throws TemplateException;
}
