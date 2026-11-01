package freemarker.core;

import android.support.v4.fl2;
import freemarker.ext.servlet.FreemarkerServlet;
import freemarker.template.TemplateException;

/* loaded from: classes.dex */
public class b1 extends TemplateException {
    public static final b1 FAST_INSTANCE;

    /* renamed from: break, reason: not valid java name */
    private static final Object[] f23504break;

    /* renamed from: catch, reason: not valid java name */
    private static final Object[] f23505catch;

    /* renamed from: class, reason: not valid java name */
    private static final String f23506class = "Variable references must not start with \"$\", unless the \"$\" is really part of the variable name.";

    /* renamed from: const, reason: not valid java name */
    private static final String f23507const = "It's the step after the last dot that caused this error, not those before it.";

    /* renamed from: final, reason: not valid java name */
    private static final String f23508final = "It's the final [] step that caused this error, not those before it.";

    /* renamed from: super, reason: not valid java name */
    private static final String f23509super = "The \"JspTaglibs\" variable isn't a core FreeMarker feature; it's only available when templates are invoked through freemarker.ext.servlet.FreemarkerServlet (or other custom FreeMarker-JSP integration solution).";

    static {
        d0 d0VarW1 = d0.w1();
        try {
            d0.l3(null);
            FAST_INSTANCE = new b1("Invalid reference. Details are unavilable, as this should have been handled by an FTL construct. If it wasn't, that's problably a bug in FreeMarker.", null);
            d0.l3(d0VarW1);
            f23504break = new Object[]{"If the failing expression is known to legally refer to something that's sometimes null or missing, either specify a default value like myOptionalVar!myDefault, or use ", "<#if myOptionalVar??>", "when-present", "<#else>", "when-missing", "</#if>", ". (These only cover the last step of the expression; to cover the whole expression, use parenthesis: (myOptionalVar.foo)!myDefault, (myOptionalVar.foo)??"};
            f23505catch = new Object[]{"If the target variable is known to be legally null or missing sometimes, instead of something like ", "<#assign x += 1>", ", you could write ", "<#if x??>", "<#assign x += 1>", "</#if>", " or ", "<#assign x = (x!0) + 1>"};
        } catch (Throwable th) {
            d0.l3(d0VarW1);
            throw th;
        }
    }

    public b1(d0 d0Var) {
        super("Invalid reference: The expression has evaluated to null or refers to something that doesn't exist.", d0Var);
    }

    public static b1 getInstance(h0 h0Var, d0 d0Var) {
        if (d0Var != null && d0Var.H1()) {
            return FAST_INSTANCE;
        }
        if (h0Var == null) {
            return new b1(d0Var);
        }
        z4 z4VarM28401if = new z4("The following has evaluated to null or missing:").m28401if(h0Var);
        if (m27824goto(h0Var)) {
            z4VarM28401if.m28398catch(f23506class, f23504break);
        } else if (h0Var instanceof a0) {
            String strD = ((a0) h0Var).d();
            String str = null;
            if ("size".equals(strD)) {
                str = "To query the size of a collection or map use ?size, like myList?size";
            } else if ("length".equals(strD)) {
                str = "To query the length of a string use ?length, like myString?size";
            }
            z4VarM28401if.m28398catch(str == null ? new Object[]{f23507const, f23504break} : new Object[]{f23507const, str, f23504break});
        } else if (h0Var instanceof b0) {
            z4VarM28401if.m28398catch(f23508final, f23504break);
        } else if ((h0Var instanceof w0) && ((w0) h0Var).d().equals(FreemarkerServlet.z)) {
            z4VarM28401if.m28398catch(f23509super, f23504break);
        } else {
            z4VarM28401if.m28397break(f23504break);
        }
        return new b1(z4VarM28401if, d0Var, h0Var);
    }

    /* renamed from: goto, reason: not valid java name */
    private static boolean m27824goto(h0 h0Var) {
        return ((h0Var instanceof w0) && ((w0) h0Var).d().startsWith("$")) || ((h0Var instanceof a0) && ((a0) h0Var).d().startsWith("$"));
    }

    public b1(String str, d0 d0Var) {
        super(str, d0Var);
    }

    public b1(z4 z4Var, d0 d0Var, h0 h0Var) {
        super(null, d0Var, h0Var, z4Var);
    }

    public static b1 getInstance(int i, String str, String str2, d0 d0Var) {
        if (d0Var != null && d0Var.H1()) {
            return FAST_INSTANCE;
        }
        z4 z4Var = new z4("The target variable of the assignment, ", new fl2(str), ", was null or missing in the " + Cthis.t(i) + ", and the \"", str2, "\" operator must get its value from there before assigning to it.");
        if (str.startsWith("$")) {
            z4Var.m28398catch(f23506class, f23505catch);
        } else {
            z4Var.m28397break(f23505catch);
        }
        return new b1(z4Var, d0Var, null);
    }
}
