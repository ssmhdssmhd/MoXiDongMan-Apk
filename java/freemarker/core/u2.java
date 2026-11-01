package freemarker.core;

import freemarker.template.TemplateBooleanModel;
import freemarker.template.TemplateDateModel;
import freemarker.template.TemplateModel;
import freemarker.template.TemplateNumberModel;
import freemarker.template.TemplateScalarModel;

/* loaded from: classes.dex */
public class u2 extends r4 {
    public static final Class[] STRING_COERCABLE_TYPES = {TemplateScalarModel.class, TemplateNumberModel.class, TemplateDateModel.class, TemplateBooleanModel.class};
    public static final String STRING_COERCABLE_TYPES_DESC = "string or something automatically convertible to string (number, date or boolean)";

    /* renamed from: break, reason: not valid java name */
    private static final String f24240break = "Expecting string or something automatically convertible to string (number, date or boolean) value here";

    public u2(d0 d0Var) {
        super(d0Var, f24240break);
    }

    public u2(String str, d0 d0Var) {
        super(d0Var, str);
    }

    public u2(d0 d0Var, z4 z4Var) {
        super(d0Var, z4Var);
    }

    public u2(h0 h0Var, TemplateModel templateModel, d0 d0Var) throws b1 {
        super(h0Var, templateModel, STRING_COERCABLE_TYPES_DESC, STRING_COERCABLE_TYPES, d0Var);
    }

    public u2(h0 h0Var, TemplateModel templateModel, String str, d0 d0Var) throws b1 {
        super(h0Var, templateModel, STRING_COERCABLE_TYPES_DESC, STRING_COERCABLE_TYPES, str, d0Var);
    }

    public u2(h0 h0Var, TemplateModel templateModel, String[] strArr, d0 d0Var) throws b1 {
        super(h0Var, templateModel, STRING_COERCABLE_TYPES_DESC, STRING_COERCABLE_TYPES, strArr, d0Var);
    }
}
