package freemarker.ext.jsp;

import android.support.v4.k52;
import android.support.v4.kb2;
import freemarker.core.d0;
import freemarker.template.TemplateModel;
import javax.servlet.jsp.PageContext;

/* renamed from: freemarker.ext.jsp.class, reason: invalid class name */
/* loaded from: classes3.dex */
class Cclass {

    /* renamed from: do, reason: not valid java name */
    private static final Class f24812do = m28916if();

    /* renamed from: do, reason: not valid java name */
    public static Celse m28915do() throws k52 {
        d0 d0VarW1 = d0.w1();
        TemplateModel templateModelJ1 = d0VarW1.J1("javax.servlet.jsp.jspPageContext");
        if (templateModelJ1 instanceof Celse) {
            return (Celse) templateModelJ1;
        }
        try {
            Celse celse = (Celse) f24812do.newInstance();
            d0VarW1.p3("javax.servlet.jsp.jspPageContext", celse);
            return celse;
        } catch (IllegalAccessException e) {
            throw new IllegalAccessError(e.getMessage());
        } catch (InstantiationException e2) {
            throw new kb2(e2);
        }
    }

    /* renamed from: if, reason: not valid java name */
    private static Class m28916if() throws NoSuchMethodException, SecurityException {
        try {
            try {
                try {
                    PageContext.class.getMethod("getELContext", null);
                    return Class.forName("freemarker.ext.jsp.while");
                } catch (NoSuchMethodException unused) {
                    throw new IllegalStateException("Since FreeMarker 2.3.24, JSP support requires at least JSP 2.0.");
                }
            } catch (NoSuchMethodException unused2) {
                PageContext.class.getMethod("getExpressionEvaluator", null);
                return Class.forName("freemarker.ext.jsp.throw");
            }
        } catch (ClassNotFoundException e) {
            throw new NoClassDefFoundError(e.getMessage());
        }
    }
}
