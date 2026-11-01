package freemarker.core;

import freemarker.template.TemplateModel;

/* loaded from: classes.dex */
public class v2 extends r4 {
    public static final Class[] STRING_COERCABLE_TYPES_AND_TOM = new Class[u2.STRING_COERCABLE_TYPES.length + 1];
    public static final String STRING_COERCABLE_TYPES_OR_TOM_DESC = "string or something automatically convertible to string (number, date or boolean), or \"template output\" ";

    /* renamed from: break, reason: not valid java name */
    private static final String f24251break = "Expecting string or something automatically convertible to string (number, date or boolean), or \"template output\"  value here";

    static {
        int i = 0;
        while (true) {
            Class[] clsArr = u2.STRING_COERCABLE_TYPES;
            if (i >= clsArr.length) {
                STRING_COERCABLE_TYPES_AND_TOM[i] = TemplateMarkupOutputModel.class;
                return;
            } else {
                STRING_COERCABLE_TYPES_AND_TOM[i] = clsArr[i];
                i++;
            }
        }
    }

    public v2(d0 d0Var) {
        super(d0Var, f24251break);
    }

    public v2(String str, d0 d0Var) {
        super(d0Var, str);
    }

    public v2(d0 d0Var, z4 z4Var) {
        super(d0Var, z4Var);
    }

    public v2(h0 h0Var, TemplateModel templateModel, d0 d0Var) throws b1 {
        super(h0Var, templateModel, STRING_COERCABLE_TYPES_OR_TOM_DESC, STRING_COERCABLE_TYPES_AND_TOM, d0Var);
    }

    public v2(h0 h0Var, TemplateModel templateModel, String str, d0 d0Var) throws b1 {
        super(h0Var, templateModel, STRING_COERCABLE_TYPES_OR_TOM_DESC, STRING_COERCABLE_TYPES_AND_TOM, str, d0Var);
    }

    public v2(h0 h0Var, TemplateModel templateModel, String[] strArr, d0 d0Var) throws b1 {
        super(h0Var, templateModel, STRING_COERCABLE_TYPES_OR_TOM_DESC, STRING_COERCABLE_TYPES_AND_TOM, strArr, d0Var);
    }
}
