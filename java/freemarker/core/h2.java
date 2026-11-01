package freemarker.core;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import freemarker.template.TemplateBooleanModel;
import freemarker.template.TemplateModel;

/* loaded from: classes.dex */
public class h2 extends r4 {

    /* renamed from: break, reason: not valid java name */
    private static final Class[] f23818break = {TemplateBooleanModel.class};

    public h2(d0 d0Var) {
        super(d0Var, "Expecting boolean value here");
    }

    public h2(String str, d0 d0Var) {
        super(d0Var, str);
    }

    public h2(d0 d0Var, z4 z4Var) {
        super(d0Var, z4Var);
    }

    public h2(h0 h0Var, TemplateModel templateModel, d0 d0Var) throws b1 {
        super(h0Var, templateModel, TypedValues.Custom.S_BOOLEAN, f23818break, d0Var);
    }

    public h2(h0 h0Var, TemplateModel templateModel, String str, d0 d0Var) throws b1 {
        super(h0Var, templateModel, TypedValues.Custom.S_BOOLEAN, f23818break, str, d0Var);
    }

    public h2(h0 h0Var, TemplateModel templateModel, String[] strArr, d0 d0Var) throws b1 {
        super(h0Var, templateModel, TypedValues.Custom.S_BOOLEAN, f23818break, strArr, d0Var);
    }
}
