package freemarker.core;

import android.support.v4.vm;
import freemarker.template.TemplateModel;
import freemarker.template.TemplateSequenceModel;

/* loaded from: classes.dex */
public class s2 extends r4 {

    /* renamed from: break, reason: not valid java name */
    private static final Class[] f24132break = {TemplateSequenceModel.class};

    public s2(d0 d0Var) {
        super(d0Var, "Expecting sequence value here");
    }

    public s2(String str, d0 d0Var) {
        super(d0Var, str);
    }

    public s2(d0 d0Var, z4 z4Var) {
        super(d0Var, z4Var);
    }

    public s2(h0 h0Var, TemplateModel templateModel, d0 d0Var) throws b1 {
        this(h0Var, templateModel, vm.f7294do, d0Var);
    }

    public s2(h0 h0Var, TemplateModel templateModel, String str, d0 d0Var) throws b1 {
        this(h0Var, templateModel, new Object[]{str}, d0Var);
    }

    public s2(h0 h0Var, TemplateModel templateModel, Object[] objArr, d0 d0Var) throws b1 {
        super(h0Var, templateModel, "sequence", f24132break, objArr, d0Var);
    }
}
