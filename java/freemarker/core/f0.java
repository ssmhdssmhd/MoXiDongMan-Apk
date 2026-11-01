package freemarker.core;

import android.support.v4.bl2;
import android.support.v4.cl2;
import android.support.v4.fl2;
import android.support.v4.jl2;
import android.support.v4.k52;
import android.support.v4.mc;
import android.support.v4.nl2;
import android.support.v4.p52;
import android.support.v4.ul2;
import android.support.v4.vl2;
import android.support.v4.zk2;
import freemarker.ext.beans.Cnew;
import freemarker.ext.beans._BeansAPI;
import freemarker.template.TemplateBooleanModel;
import freemarker.template.TemplateCollectionModel;
import freemarker.template.TemplateDateModel;
import freemarker.template.TemplateException;
import freemarker.template.TemplateModel;
import freemarker.template.TemplateNumberModel;
import freemarker.template.TemplateScalarModel;
import freemarker.template.TemplateSequenceModel;
import java.lang.reflect.InvocationTargetException;
import java.util.Date;
import java.util.List;
import java.util.Objects;
import org.apache.commons.lang3.Cclass;

/* loaded from: classes.dex */
class f0 {

    /* renamed from: case, reason: not valid java name */
    public static final int f23733case = 6;

    /* renamed from: do, reason: not valid java name */
    public static final int f23734do = 1;

    /* renamed from: else, reason: not valid java name */
    private static final String f23735else = "value of the comparison is a date-like value where it's not known if it's a date (no time part), time, or date-time, and thus can't be used in a comparison.";

    /* renamed from: for, reason: not valid java name */
    public static final int f23736for = 3;

    /* renamed from: if, reason: not valid java name */
    public static final int f23737if = 2;

    /* renamed from: new, reason: not valid java name */
    public static final int f23738new = 4;

    /* renamed from: try, reason: not valid java name */
    public static final int f23739try = 5;

    private f0() {
    }

    /* renamed from: break, reason: not valid java name */
    public static boolean m28006break(TemplateModel templateModel, int i, TemplateModel templateModel2, d0 d0Var) throws TemplateException {
        return m28008catch(templateModel, null, i, null, templateModel2, null, null, false, false, false, false, d0Var);
    }

    /* renamed from: case, reason: not valid java name */
    public static Object m28007case(TemplateModel templateModel, h0 h0Var, boolean z, String str, d0 d0Var) throws TemplateException {
        if (templateModel instanceof TemplateNumberModel) {
            TemplateNumberModel templateNumberModel = (TemplateNumberModel) templateModel;
            f4 f4VarW2 = d0Var.w2(h0Var, false);
            try {
                return m28011do(f4VarW2.m28034if(templateNumberModel));
            } catch (p52 e) {
                throw b5.m27880while(f4VarW2, h0Var, e, false);
            }
        }
        if (!(templateModel instanceof TemplateDateModel)) {
            return templateModel instanceof TemplateMarkupOutputModel ? templateModel : m28015goto(templateModel, h0Var, str, true, z, d0Var);
        }
        TemplateDateModel templateDateModel = (TemplateDateModel) templateModel;
        z3 z3VarJ2 = d0Var.j2(templateDateModel, h0Var, false);
        try {
            return m28011do(z3VarJ2.m28388if(templateDateModel));
        } catch (p52 e2) {
            throw b5.m27877throw(z3VarJ2, h0Var, e2, false);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: catch, reason: not valid java name */
    public static boolean m28008catch(TemplateModel templateModel, h0 h0Var, int i, String str, TemplateModel templateModel2, h0 h0Var2, h0 h0Var3, boolean z, boolean z2, boolean z3, boolean z4, d0 d0Var) throws TemplateException {
        TemplateModel templateModel3;
        TemplateModel templateModel4;
        int iCompare;
        String str2;
        h0 h0Var4 = h0Var;
        if (templateModel != null) {
            templateModel3 = templateModel;
        } else {
            if (d0Var == null || !d0Var.y()) {
                if (z3) {
                    return false;
                }
                if (h0Var4 != null) {
                    throw b1.getInstance(h0Var4, d0Var);
                }
                throw new nl2(h0Var3, d0Var, "The left operand of the comparison was undefined or null.");
            }
            templateModel3 = TemplateScalarModel.EMPTY_STRING;
        }
        if (templateModel2 != null) {
            templateModel4 = templateModel2;
        } else {
            if (d0Var == null || !d0Var.y()) {
                if (z4) {
                    return false;
                }
                if (h0Var2 != null) {
                    throw b1.getInstance(h0Var2, d0Var);
                }
                throw new nl2(h0Var3, d0Var, "The right operand of the comparison was undefined or null.");
            }
            templateModel4 = TemplateScalarModel.EMPTY_STRING;
        }
        if ((templateModel3 instanceof TemplateNumberModel) && (templateModel4 instanceof TemplateNumberModel)) {
            try {
                iCompare = (d0Var != null ? d0Var.getArithmeticEngine() : h0Var4 != null ? h0Var.getTemplate().getArithmeticEngine() : Celse.f23685new).mo27996new(m28017import((TemplateNumberModel) templateModel3, h0Var4), m28017import((TemplateNumberModel) templateModel4, h0Var2));
            } catch (RuntimeException e) {
                throw new nl2(h0Var3, e, d0Var, "Unexpected error while comparing two numbers: ", e);
            }
        } else if ((templateModel3 instanceof TemplateDateModel) && (templateModel4 instanceof TemplateDateModel)) {
            TemplateDateModel templateDateModel = (TemplateDateModel) templateModel3;
            TemplateDateModel templateDateModel2 = (TemplateDateModel) templateModel4;
            int dateType = templateDateModel.getDateType();
            int dateType2 = templateDateModel2.getDateType();
            if (dateType == 0 || dateType2 == 0) {
                if (dateType == 0) {
                    str2 = "left";
                } else {
                    str2 = "right";
                    h0Var4 = h0Var2;
                }
                if (h0Var4 == null) {
                    h0Var4 = h0Var3;
                }
                throw new nl2(h0Var4, d0Var, "The ", str2, Cclass.f28652do, f23735else);
            }
            if (dateType != dateType2) {
                List list = TemplateDateModel.TYPE_NAMES;
                throw new nl2(h0Var3, d0Var, "Can't compare dates of different types. Left date type is ", list.get(dateType), ", right date type is ", list.get(dateType2), ".");
            }
            iCompare = m28026while(templateDateModel, h0Var4).compareTo(m28026while(templateDateModel2, h0Var2));
        } else if ((templateModel3 instanceof TemplateScalarModel) && (templateModel4 instanceof TemplateScalarModel)) {
            if (i != 1 && i != 2) {
                throw new nl2(h0Var3, d0Var, "Can't use operator \"", m28014for(i, str), "\" on string values.");
            }
            iCompare = d0Var.t1().compare(m28018native((TemplateScalarModel) templateModel3, h0Var4, d0Var), m28018native((TemplateScalarModel) templateModel4, h0Var2, d0Var));
        } else if ((templateModel3 instanceof TemplateBooleanModel) && (templateModel4 instanceof TemplateBooleanModel)) {
            if (i != 1 && i != 2) {
                throw new nl2(h0Var3, d0Var, "Can't use operator \"", m28014for(i, str), "\" on boolean values.");
            }
            iCompare = (((TemplateBooleanModel) templateModel3).getAsBoolean() ? 1 : 0) - (((TemplateBooleanModel) templateModel4).getAsBoolean() ? 1 : 0);
        } else {
            if (!d0Var.y()) {
                if (z2) {
                    if (i == 1) {
                        return false;
                    }
                    if (i == 2) {
                        return true;
                    }
                }
                Object[] objArr = new Object[12];
                objArr[0] = "Can't compare values of these types. ";
                objArr[1] = "Allowed comparisons are between two numbers, two strings, two dates, or two booleans.\n";
                objArr[2] = "Left hand operand ";
                String str3 = "";
                objArr[3] = (!z || h0Var4 == null) ? "" : new Object[]{"(", new cl2(h0Var4), ") value "};
                objArr[4] = "is ";
                objArr[5] = new zk2(new bl2(templateModel3));
                objArr[6] = ".\n";
                objArr[7] = "Right hand operand ";
                if (z && h0Var2 != null) {
                    str3 = new Object[]{"(", new cl2(h0Var2), ") value "};
                }
                objArr[8] = str3;
                objArr[9] = "is ";
                objArr[10] = new zk2(new bl2(templateModel4));
                objArr[11] = ".";
                throw new nl2(h0Var3, d0Var, objArr);
            }
            iCompare = d0Var.t1().compare(h0Var4.mo28045default(d0Var), h0Var2.mo28045default(d0Var));
        }
        switch (i) {
            case 1:
                return iCompare == 0;
            case 2:
                return iCompare != 0;
            case 3:
                return iCompare < 0;
            case 4:
                return iCompare > 0;
            case 5:
                return iCompare <= 0;
            case 6:
                return iCompare >= 0;
            default:
                throw new mc("Unsupported comparator operator code: " + i);
        }
    }

    /* renamed from: class, reason: not valid java name */
    public static boolean m28009class(TemplateModel templateModel, int i, TemplateModel templateModel2, d0 d0Var) throws TemplateException {
        return m28008catch(templateModel, null, i, null, templateModel2, null, null, false, true, false, false, d0Var);
    }

    /* renamed from: const, reason: not valid java name */
    public static TemplateMarkupOutputModel m28010const(h4 h4Var, TemplateMarkupOutputModel templateMarkupOutputModel, TemplateMarkupOutputModel templateMarkupOutputModel2) throws TemplateException {
        y1 outputFormat = templateMarkupOutputModel.getOutputFormat();
        y1 outputFormat2 = templateMarkupOutputModel2.getOutputFormat();
        if (outputFormat2 == outputFormat) {
            return outputFormat.mo28208try(templateMarkupOutputModel, templateMarkupOutputModel2);
        }
        String strMo28196break = outputFormat2.mo28196break(templateMarkupOutputModel2);
        if (strMo28196break != null) {
            return outputFormat.mo28208try(templateMarkupOutputModel, outputFormat.mo28200goto(strMo28196break));
        }
        String strMo28196break2 = outputFormat.mo28196break(templateMarkupOutputModel);
        if (strMo28196break2 != null) {
            return outputFormat2.mo28208try(outputFormat2.mo28200goto(strMo28196break2), templateMarkupOutputModel2);
        }
        Object[] objArr = {"Concatenation left hand operand is in ", new jl2(outputFormat), " format, while the right hand operand is in ", new jl2(outputFormat2), ". Conversion to common format wasn't possible."};
        if (h4Var instanceof h0) {
            throw new nl2((h0) h4Var, objArr);
        }
        throw new nl2(objArr);
    }

    /* renamed from: do, reason: not valid java name */
    public static Object m28011do(Object obj) {
        Objects.requireNonNull(obj, "TemplateValueFormatter result can't be null");
        return obj;
    }

    /* renamed from: else, reason: not valid java name */
    public static String m28012else(TemplateModel templateModel, h0 h0Var, String str, d0 d0Var) throws TemplateException {
        if (templateModel instanceof TemplateNumberModel) {
            TemplateNumberModel templateNumberModel = (TemplateNumberModel) templateModel;
            f4 f4VarW2 = d0Var.w2(h0Var, false);
            try {
                return m28013final(f4VarW2.m28034if(templateNumberModel), h0Var, d0Var);
            } catch (p52 e) {
                throw b5.m27880while(f4VarW2, h0Var, e, false);
            }
        }
        if (!(templateModel instanceof TemplateDateModel)) {
            return m28015goto(templateModel, h0Var, str, false, false, d0Var);
        }
        TemplateDateModel templateDateModel = (TemplateDateModel) templateModel;
        z3 z3VarJ2 = d0Var.j2(templateDateModel, h0Var, false);
        try {
            return m28013final(z3VarJ2.m28388if(templateDateModel), h0Var, d0Var);
        } catch (p52 e2) {
            throw b5.m27877throw(z3VarJ2, h0Var, e2, false);
        }
    }

    /* renamed from: final, reason: not valid java name */
    private static String m28013final(Object obj, h0 h0Var, d0 d0Var) throws u2 {
        if (obj instanceof String) {
            return (String) obj;
        }
        m28011do(obj);
        throw new u2((d0) null, new z4("Value was formatted to convert it to string, but the result was markup of ouput format ", new fl2(((TemplateMarkupOutputModel) obj).getOutputFormat()), ".").m28402this("Use value?string to force formatting to plain text.").m28401if(h0Var));
    }

    /* renamed from: for, reason: not valid java name */
    private static String m28014for(int i, String str) {
        if (str != null) {
            return str;
        }
        switch (i) {
            case 1:
                return "equals";
            case 2:
                return "not-equals";
            case 3:
                return "less-than";
            case 4:
                return "greater-than";
            case 5:
                return "less-than-equals";
            case 6:
                return "greater-than-equals";
            default:
                return "???";
        }
    }

    /* renamed from: goto, reason: not valid java name */
    private static String m28015goto(TemplateModel templateModel, h0 h0Var, String str, boolean z, boolean z2, d0 d0Var) throws TemplateException {
        if (templateModel instanceof TemplateScalarModel) {
            return m28018native((TemplateScalarModel) templateModel, h0Var, d0Var);
        }
        if (templateModel == null) {
            if (d0Var.y()) {
                return "";
            }
            if (h0Var != null) {
                throw b1.getInstance(h0Var, d0Var);
            }
            throw new b1("Null/missing value (no more informatoin avilable)", d0Var);
        }
        if (templateModel instanceof TemplateBooleanModel) {
            boolean asBoolean = ((TemplateBooleanModel) templateModel).getAsBoolean();
            int iM28269super = d0Var.m28269super();
            if (iM28269super == 0) {
                return d0Var.m28252else(asBoolean, false);
            }
            if (iM28269super == 1) {
                return asBoolean ? b2.f23511if : "";
            }
            if (iM28269super == 2) {
                return templateModel instanceof Cnew ? _BeansAPI.m28485if((Cnew) templateModel) : asBoolean ? b2.f23511if : "";
            }
            throw new mc("Unsupported classic_compatible variation: " + iM28269super);
        }
        if (d0Var.y() && (templateModel instanceof Cnew)) {
            return _BeansAPI.m28485if((Cnew) templateModel);
        }
        if (z2) {
            return null;
        }
        if (str == null || !((templateModel instanceof TemplateSequenceModel) || (templateModel instanceof TemplateCollectionModel))) {
            if (z) {
                throw new v2(h0Var, templateModel, d0Var);
            }
            throw new u2(h0Var, templateModel, d0Var);
        }
        if (z) {
            throw new v2(h0Var, templateModel, str, d0Var);
        }
        throw new u2(h0Var, templateModel, str, d0Var);
    }

    /* renamed from: if, reason: not valid java name */
    public static String m28016if(String str) {
        Objects.requireNonNull(str, "TemplateValueFormatter result can't be null");
        return str;
    }

    /* renamed from: import, reason: not valid java name */
    public static Number m28017import(TemplateNumberModel templateNumberModel, h0 h0Var) throws k52 {
        Number asNumber = templateNumberModel.getAsNumber();
        if (asNumber != null) {
            return asNumber;
        }
        throw m28020public(Number.class, templateNumberModel, h0Var);
    }

    /* renamed from: native, reason: not valid java name */
    public static String m28018native(TemplateScalarModel templateScalarModel, h0 h0Var, d0 d0Var) throws k52 {
        String asString = templateScalarModel.getAsString();
        if (asString != null) {
            return asString;
        }
        if (d0Var == null) {
            d0Var = d0.w1();
        }
        if (d0Var == null || !d0Var.y()) {
            throw m28020public(String.class, templateScalarModel, h0Var);
        }
        return "";
    }

    /* renamed from: new, reason: not valid java name */
    public static String m28019new(TemplateModel templateModel, h0 h0Var, String str, d0 d0Var) throws TemplateException {
        return templateModel instanceof TemplateNumberModel ? m28016if(d0Var.p1((TemplateNumberModel) templateModel, h0Var, false)) : templateModel instanceof TemplateDateModel ? m28016if(d0Var.n1((TemplateDateModel) templateModel, h0Var, false)) : m28015goto(templateModel, h0Var, str, false, false, d0Var);
    }

    /* renamed from: public, reason: not valid java name */
    public static k52 m28020public(Class cls, TemplateModel templateModel, h0 h0Var) {
        return new vl2(h0Var, vl2.modelHasStoredNullDescription(cls, templateModel));
    }

    /* renamed from: return, reason: not valid java name */
    public static boolean m28021return(Throwable th, d0 d0Var) {
        if (m0.class.isInstance(th)) {
            return false;
        }
        if (d0Var.l()) {
            return true;
        }
        if (d0Var.u1().getIncompatibleImprovements().intValue() < ul2.f6927break) {
            return false;
        }
        Class<?> cls = th.getClass();
        return cls == NullPointerException.class || cls == ClassCastException.class || cls == IndexOutOfBoundsException.class || cls == InvocationTargetException.class;
    }

    /* renamed from: super, reason: not valid java name */
    public static Celse m28022super(d0 d0Var, h4 h4Var) {
        return d0Var != null ? d0Var.getArithmeticEngine() : h4Var.getTemplate().j1().getArithmeticEngine();
    }

    /* renamed from: this, reason: not valid java name */
    public static boolean m28023this(h0 h0Var, int i, String str, h0 h0Var2, h0 h0Var3, d0 d0Var) throws TemplateException {
        return m28008catch(h0Var.m28055throws(d0Var), h0Var, i, str, h0Var2.m28055throws(d0Var), h0Var2, h0Var3, false, false, false, false, d0Var);
    }

    /* renamed from: throw, reason: not valid java name */
    public static int m28024throw(int i) {
        switch (i) {
            case 1:
                return 1;
            case 2:
                return 2;
            case 3:
                return 4;
            case 4:
                return 3;
            case 5:
                return 6;
            case 6:
                return 5;
            default:
                throw new mc("Unsupported comparator operator code: " + i);
        }
    }

    /* renamed from: try, reason: not valid java name */
    public static Object m28025try(TemplateModel templateModel, h0 h0Var, String str, d0 d0Var) throws TemplateException {
        return m28007case(templateModel, h0Var, false, str, d0Var);
    }

    /* renamed from: while, reason: not valid java name */
    public static Date m28026while(TemplateDateModel templateDateModel, h0 h0Var) throws k52 {
        Date asDate = templateDateModel.getAsDate();
        if (asDate != null) {
            return asDate;
        }
        throw m28020public(Date.class, templateDateModel, h0Var);
    }
}
