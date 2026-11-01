package freemarker.core;

import android.support.v4.fl2;
import freemarker.template.TemplateModel;
import freemarker.template.TemplateNumberModel;

/* loaded from: classes.dex */
public class r2 extends r4 {

    /* renamed from: break, reason: not valid java name */
    private static final Class[] f24109break = {TemplateNumberModel.class};

    public r2(d0 d0Var) {
        super(d0Var, "Expecting numerical value here");
    }

    public static r2 newMalformedNumberException(h0 h0Var, String str, d0 d0Var) {
        return new r2(new z4("Can't convert this string to number: ", new fl2(str)).m28401if(h0Var), d0Var);
    }

    public r2(String str, d0 d0Var) {
        super(d0Var, str);
    }

    public r2(z4 z4Var, d0 d0Var) {
        super(d0Var, z4Var);
    }

    public r2(h0 h0Var, TemplateModel templateModel, d0 d0Var) throws b1 {
        super(h0Var, templateModel, "number", f24109break, d0Var);
    }

    public r2(h0 h0Var, TemplateModel templateModel, String str, d0 d0Var) throws b1 {
        super(h0Var, templateModel, "number", f24109break, str, d0Var);
    }

    public r2(h0 h0Var, TemplateModel templateModel, String[] strArr, d0 d0Var) throws b1 {
        super(h0Var, templateModel, "number", f24109break, strArr, d0Var);
    }

    public r2(String str, TemplateModel templateModel, String[] strArr, d0 d0Var) throws b1 {
        super(str, templateModel, "number", f24109break, strArr, d0Var);
    }
}
