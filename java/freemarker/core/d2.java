package freemarker.core;

import freemarker.core.d0;
import freemarker.core.l4;
import freemarker.template.TemplateDirectiveBody;
import freemarker.template.TemplateException;
import freemarker.template.utility.Csuper;
import org.apache.commons.lang3.Cclass;

/* loaded from: classes.dex */
class d2 extends TemplateException {
    private d2(d0 d0Var) {
        this(null, null, d0Var);
    }

    public static void check(TemplateDirectiveBody templateDirectiveBody) throws d2 {
        if (templateDirectiveBody == null) {
            return;
        }
        if (templateDirectiveBody instanceof d0.Cbreak) {
            b4[] b4VarArrM27940do = ((d0.Cbreak) templateDirectiveBody).m27940do();
            if (b4VarArrM27940do == null || b4VarArrM27940do.length == 0) {
                return;
            }
            if ((b4VarArrM27940do[0] instanceof l4.Cfor) && (b4VarArrM27940do.length == 1 || b4VarArrM27940do[1] == null)) {
                return;
            }
        }
        throw new d2(d0.w1());
    }

    private d2(Exception exc, d0 d0Var) {
        this(null, exc, d0Var);
    }

    private d2(String str, d0 d0Var) {
        this(str, null, d0Var);
    }

    private d2(String str, Exception exc, d0 d0Var) {
        String str2;
        StringBuilder sb = new StringBuilder();
        sb.append("Nested content (body) not supported.");
        if (str != null) {
            str2 = Cclass.f28652do + Csuper.m29330synchronized(str);
        } else {
            str2 = "";
        }
        sb.append(str2);
        super(sb.toString(), exc, d0Var);
    }
}
