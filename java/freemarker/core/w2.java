package freemarker.core;

import freemarker.template.TemplateDirectiveModel;
import freemarker.template.TemplateModel;
import freemarker.template.TemplateTransformModel;

/* loaded from: classes.dex */
class w2 extends r4 {

    /* renamed from: break, reason: not valid java name */
    private static final Class[] f24259break = {TemplateDirectiveModel.class, TemplateTransformModel.class, x1.class};

    public w2(d0 d0Var) {
        super(d0Var, "Expecting user-defined directive, transform or macro value here");
    }

    public w2(String str, d0 d0Var) {
        super(d0Var, str);
    }

    public w2(d0 d0Var, z4 z4Var) {
        super(d0Var, z4Var);
    }

    public w2(h0 h0Var, TemplateModel templateModel, d0 d0Var) throws b1 {
        super(h0Var, templateModel, "user-defined directive, transform or macro", f24259break, d0Var);
    }

    public w2(h0 h0Var, TemplateModel templateModel, String str, d0 d0Var) throws b1 {
        super(h0Var, templateModel, "user-defined directive, transform or macro", f24259break, str, d0Var);
    }

    public w2(h0 h0Var, TemplateModel templateModel, String[] strArr, d0 d0Var) throws b1 {
        super(h0Var, templateModel, "user-defined directive, transform or macro", f24259break, strArr, d0Var);
    }
}
