package freemarker.core;

import freemarker.template.TemplateException;
import freemarker.template.TemplateModel;

/* renamed from: freemarker.core.strictfp, reason: invalid class name */
/* loaded from: classes.dex */
abstract class Cstrictfp extends Creturn {
    public static String s(h0 h0Var, d0 d0Var) throws TemplateException {
        return h0Var.m28050private(d0Var);
    }

    @Override // freemarker.core.h0
    /* renamed from: native */
    public TemplateModel mo27807native(d0 d0Var) throws TemplateException {
        return r(s(this.f24114goto, d0Var), d0Var);
    }

    public abstract TemplateModel r(String str, d0 d0Var) throws TemplateException;
}
