package freemarker.core;

import freemarker.template.TemplateHashModel;
import freemarker.template.TemplateModel;

/* loaded from: classes.dex */
public class l2 extends r4 {

    /* renamed from: break, reason: not valid java name */
    private static final Class[] f24007break = {TemplateHashModel.class};

    public l2(d0 d0Var) {
        super(d0Var, "Expecting hash value here");
    }

    public l2(String str, d0 d0Var) {
        super(d0Var, str);
    }

    public l2(d0 d0Var, z4 z4Var) {
        super(d0Var, z4Var);
    }

    public l2(h0 h0Var, TemplateModel templateModel, d0 d0Var) throws b1 {
        super(h0Var, templateModel, "hash", f24007break, d0Var);
    }

    public l2(h0 h0Var, TemplateModel templateModel, String str, d0 d0Var) throws b1 {
        super(h0Var, templateModel, "hash", f24007break, str, d0Var);
    }

    public l2(h0 h0Var, TemplateModel templateModel, String[] strArr, d0 d0Var) throws b1 {
        super(h0Var, templateModel, "hash", f24007break, strArr, d0Var);
    }
}
