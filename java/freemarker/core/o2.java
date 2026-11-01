package freemarker.core;

import freemarker.template.TemplateMethodModel;
import freemarker.template.TemplateModel;

/* loaded from: classes.dex */
public class o2 extends r4 {

    /* renamed from: break, reason: not valid java name */
    private static final Class[] f24023break = {TemplateMethodModel.class};

    /* renamed from: catch, reason: not valid java name */
    private static final Class[] f24024catch = {TemplateMethodModel.class, x1.class};

    public o2(d0 d0Var) {
        super(d0Var, "Expecting method value here");
    }

    public o2(String str, d0 d0Var) {
        super(d0Var, str);
    }

    public o2(d0 d0Var, z4 z4Var) {
        super(d0Var, z4Var);
    }

    public o2(h0 h0Var, TemplateModel templateModel, d0 d0Var) throws b1 {
        super(h0Var, templateModel, "method", f24023break, d0Var);
    }

    public o2(h0 h0Var, TemplateModel templateModel, String str, d0 d0Var) throws b1 {
        super(h0Var, templateModel, "method", f24023break, str, d0Var);
    }

    public o2(h0 h0Var, TemplateModel templateModel, String[] strArr, d0 d0Var) throws b1 {
        this(h0Var, templateModel, false, false, strArr, d0Var);
    }

    public o2(h0 h0Var, TemplateModel templateModel, boolean z, boolean z2, String[] strArr, d0 d0Var) throws b1 {
        StringBuilder sb = new StringBuilder();
        sb.append("method");
        sb.append(z ? " or function" : "");
        sb.append(z2 ? " or lambda expression" : "");
        super(h0Var, templateModel, sb.toString(), z ? f24024catch : f24023break, strArr, d0Var);
    }
}
