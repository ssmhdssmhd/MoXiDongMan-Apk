package freemarker.core;

import freemarker.template.TemplateDateModel;
import freemarker.template.TemplateModel;

/* loaded from: classes.dex */
public class i2 extends r4 {

    /* renamed from: break, reason: not valid java name */
    private static final Class[] f23850break = {TemplateDateModel.class};

    public i2(d0 d0Var) {
        super(d0Var, "Expecting date/time value here");
    }

    public i2(String str, d0 d0Var) {
        super(d0Var, str);
    }

    public i2(h0 h0Var, TemplateModel templateModel, d0 d0Var) throws b1 {
        super(h0Var, templateModel, "date/time", f23850break, d0Var);
    }

    public i2(h0 h0Var, TemplateModel templateModel, String str, d0 d0Var) throws b1 {
        super(h0Var, templateModel, "date/time", f23850break, str, d0Var);
    }

    public i2(h0 h0Var, TemplateModel templateModel, String[] strArr, d0 d0Var) throws b1 {
        super(h0Var, templateModel, "date/time", f23850break, strArr, d0Var);
    }
}
