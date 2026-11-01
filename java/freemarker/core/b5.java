package freemarker.core;

import android.support.v4.bl2;
import android.support.v4.fl2;
import android.support.v4.il2;
import android.support.v4.k52;
import android.support.v4.nl2;
import android.support.v4.p52;
import android.support.v4.vl2;
import android.support.v4.xb2;
import android.support.v4.zk2;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.umeng.analytics.pro.ak;
import freemarker.template.Cstatic;
import freemarker.template.TemplateException;
import freemarker.template.TemplateHashModelEx;
import freemarker.template.TemplateHashModelEx2;
import freemarker.template.TemplateModel;
import freemarker.template.utility.Csuper;
import java.util.ArrayList;
import org.apache.commons.lang3.Cclass;

/* loaded from: classes.dex */
public class b5 {

    /* renamed from: case, reason: not valid java name */
    public static final String f23520case = "\n---end-message---";

    /* renamed from: do, reason: not valid java name */
    public static final String f23521do = "Can't convert the date-like value to string because it isn't known if it's a date (no time part), time or date-time value.";

    /* renamed from: if, reason: not valid java name */
    public static final String f23523if = "Can't parse the string to date-like value because it isn't known if it's desired result should be a date (no time part), a time, or a date-time value.";

    /* renamed from: try, reason: not valid java name */
    public static final String f23525try = "---begin-message---\n";

    /* renamed from: for, reason: not valid java name */
    public static final String f23522for = "Use ?date, ?time, or ?datetime to tell FreeMarker the exact type.";

    /* renamed from: new, reason: not valid java name */
    public static final Object[] f23524new = {f23522for, "If you need a particular format only once, use ?string(pattern), like ?string('dd.MM.yyyy HH:mm:ss'), to specify which fields to display. "};

    private b5() {
    }

    /* renamed from: abstract, reason: not valid java name */
    public static k52 m27849abstract(String str, int i, String str2, TemplateModel templateModel) {
        return new vl2(str, "(...) expects ", new zk2(str2), " as argument #", Integer.valueOf(i + 1), ", but received ", new zk2(new bl2(templateModel)), ".");
    }

    /* renamed from: break, reason: not valid java name */
    public static String m27850break(Cstatic cstatic, int i, int i2) {
        return m27864if("in", cstatic, i, i2);
    }

    /* renamed from: case, reason: not valid java name */
    public static String m27851case(String str, int i, int i2) {
        return m27862for("on", str, i, i2);
    }

    /* renamed from: catch, reason: not valid java name */
    public static String m27852catch(String str, int i, int i2) {
        return m27862for("in", str, i, i2);
    }

    /* renamed from: class, reason: not valid java name */
    public static String m27853class(int i, int i2) {
        StringBuilder sb = new StringBuilder();
        sb.append("line ");
        if (i < 0) {
            i -= -1000000001;
        }
        sb.append(i);
        sb.append(", column ");
        sb.append(i2);
        return sb.toString();
    }

    /* renamed from: const, reason: not valid java name */
    public static String m27854const(String str) {
        if (str == null) {
            return null;
        }
        if (str.length() == 0) {
            return "";
        }
        char lowerCase = Character.toLowerCase(str.charAt(0));
        if (lowerCase == 'a' || lowerCase == 'e' || lowerCase == 'i') {
            return "an";
        }
        if (lowerCase == 'h') {
            String lowerCase2 = str.toLowerCase();
            return (lowerCase2.startsWith("has") || lowerCase2.startsWith("hi")) ? ak.av : lowerCase2.startsWith("ht") ? "an" : "a(n)";
        }
        if (lowerCase == 'u' || lowerCase == 'o') {
            return "a(n)";
        }
        char cCharAt = str.length() > 1 ? str.charAt(1) : (char) 0;
        return (lowerCase != 'x' || cCharAt == 'a' || cCharAt == 'e' || cCharAt == 'i' || cCharAt == 'a' || cCharAt == 'o' || cCharAt == 'u') ? ak.av : "an";
    }

    /* renamed from: continue, reason: not valid java name */
    public static k52 m27855continue(String str, Object... objArr) {
        return new vl2(str, "(...) arguments have invalid value: ", objArr);
    }

    /* renamed from: default, reason: not valid java name */
    public static k52 m27856default(String str, int i, TemplateModel templateModel) {
        return m27849abstract(str, i, "number", templateModel);
    }

    /* renamed from: do, reason: not valid java name */
    public static StringBuilder m27857do(StringBuilder sb, h0 h0Var) {
        boolean z = ((h0Var instanceof z2) || (h0Var instanceof x3) || (h0Var instanceof Cwhile) || (h0Var instanceof t1) || (h0Var instanceof r0) || (h0Var instanceof w0) || (h0Var instanceof a0) || (h0Var instanceof b0) || (h0Var instanceof a2) || (h0Var instanceof Creturn) || (h0Var instanceof g0) || (h0Var instanceof g3)) ? false : true;
        if (z) {
            sb.append('(');
        }
        sb.append(h0Var.mo27815for());
        if (z) {
            sb.append(')');
        }
        return sb;
    }

    /* renamed from: else, reason: not valid java name */
    public static String m27858else(x1 x1Var, int i, int i2) {
        Cstatic template = x1Var.getTemplate();
        return m27867new("at", template != null ? template.q1() : null, x1Var.x(), x1Var.z(), i, i2);
    }

    /* renamed from: extends, reason: not valid java name */
    public static k52 m27859extends(String str, int i, TemplateModel templateModel) {
        return m27849abstract(str, i, "sequence", templateModel);
    }

    /* renamed from: final, reason: not valid java name */
    public static k52 m27860final(String str, int i, int i2) {
        return m27874super(str, i, i2, i2);
    }

    /* renamed from: finally, reason: not valid java name */
    public static k52 m27861finally(String str, int i, TemplateModel templateModel) {
        return m27849abstract(str, i, "sequence or collection", templateModel);
    }

    /* renamed from: for, reason: not valid java name */
    private static String m27862for(String str, String str2, int i, int i2) {
        return m27867new(str, str2, null, false, i, i2);
    }

    /* renamed from: goto, reason: not valid java name */
    public static String m27863goto(Cstatic cstatic, int i, int i2) {
        return m27864if("at", cstatic, i, i2);
    }

    /* renamed from: if, reason: not valid java name */
    private static String m27864if(String str, Cstatic cstatic, int i, int i2) {
        return m27862for(str, cstatic != null ? cstatic.q1() : null, i, i2);
    }

    /* renamed from: import, reason: not valid java name */
    public static vl2 m27865import(h0 h0Var, xb2 xb2Var) {
        return new vl2(xb2Var, (d0) null, new z4(f23521do).m28401if(h0Var).m28398catch(f23524new));
    }

    /* renamed from: native, reason: not valid java name */
    public static TemplateException m27866native(String str, d0 d0Var) {
        return new nl2(d0Var, "Instantiating ", str, " is not allowed in the template for security reasons.");
    }

    /* renamed from: new, reason: not valid java name */
    private static String m27867new(String str, String str2, String str3, boolean z, int i, int i2) {
        String str4;
        String string;
        if (i < 0) {
            str3 = null;
            str4 = "?eval-ed string";
        } else if (str2 != null) {
            str4 = "template " + Csuper.b(str2);
        } else {
            str4 = "nameless template";
        }
        StringBuilder sb = new StringBuilder();
        sb.append("in ");
        sb.append(str4);
        if (str3 != null) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(" in ");
            sb2.append(z ? "function " : "macro ");
            sb2.append(Csuper.m29330synchronized(str3));
            string = sb2.toString();
        } else {
            string = "";
        }
        sb.append(string);
        sb.append(Cclass.f28652do);
        sb.append(str);
        sb.append(Cclass.f28652do);
        sb.append(m27853class(i, i2));
        return sb.toString();
    }

    /* renamed from: package, reason: not valid java name */
    public static k52 m27868package(String str, int i, TemplateModel templateModel) {
        return m27849abstract(str, i, TypedValues.Custom.S_STRING, templateModel);
    }

    /* renamed from: private, reason: not valid java name */
    public static k52 m27869private(String str, int i, TemplateModel templateModel) {
        return m27849abstract(str, i, "string or markup output", templateModel);
    }

    /* renamed from: public, reason: not valid java name */
    public static k52 m27870public(TemplateModel templateModel, TemplateHashModelEx templateHashModelEx) {
        return new vl2(new z4("When listing key-value pairs of traditional hash implementations, all keys must be strings, but one of them was ", new zk2(new bl2(templateModel)), ".").m28397break("The listed value's TemplateModel class was ", new il2(templateHashModelEx.getClass()), ", which doesn't implement ", new il2(TemplateHashModelEx2.class), ", which leads to this restriction."));
    }

    /* renamed from: return, reason: not valid java name */
    public static TemplateException m27871return(h0 h0Var) {
        return new nl2(h0Var, "The result is a listable value with lazy transformation(s) applied on it, but it's not an FTL sequence (it's not a List-like value, but an Iterator-like value). The place doesn't support such values due to technical limitations. So either pass it to a construct that supports such values (like ", "<#list transformedListable as x>", "), or, if you know that you don't have too many elements, use transformedListable?sequence to allow it to be treated as an FTL sequence.");
    }

    /* renamed from: static, reason: not valid java name */
    public static k52 m27872static(String str, int i, Object... objArr) {
        return new vl2(str, "(...) argument #", Integer.valueOf(i + 1), " had invalid value: ", objArr);
    }

    /* renamed from: strictfp, reason: not valid java name */
    public static String m27873strictfp(String str, int i) {
        boolean z;
        if (i < 5) {
            i = 5;
        }
        int iIndexOf = str.indexOf(10);
        boolean z2 = true;
        if (iIndexOf != -1) {
            str = str.substring(0, iIndexOf);
            z = true;
        } else {
            z = false;
        }
        int iIndexOf2 = str.indexOf(13);
        if (iIndexOf2 != -1) {
            str = str.substring(0, iIndexOf2);
            z = true;
        }
        if (str.length() > i) {
            str = str.substring(0, i - 3);
        } else {
            z2 = z;
        }
        if (!z2) {
            return str;
        }
        if (!str.endsWith(".")) {
            return str + "...";
        }
        if (!str.endsWith("..")) {
            return str + "..";
        }
        if (str.endsWith("...")) {
            return str;
        }
        return str + ".";
    }

    /* renamed from: super, reason: not valid java name */
    public static k52 m27874super(String str, int i, int i2, int i3) {
        ArrayList arrayList = new ArrayList(20);
        arrayList.add(str);
        arrayList.add("(");
        if (i3 != 0) {
            arrayList.add("...");
        }
        arrayList.add(") expects ");
        if (i2 == i3) {
            if (i3 == 0) {
                arrayList.add("no");
            } else {
                arrayList.add(Integer.valueOf(i3));
            }
        } else if (i3 - i2 == 1) {
            arrayList.add(Integer.valueOf(i2));
            arrayList.add(" or ");
            arrayList.add(Integer.valueOf(i3));
        } else {
            arrayList.add(Integer.valueOf(i2));
            if (i3 != Integer.MAX_VALUE) {
                arrayList.add(" to ");
                arrayList.add(Integer.valueOf(i3));
            } else {
                arrayList.add(" or more (unlimited)");
            }
        }
        arrayList.add(" argument");
        if (i3 > 1) {
            arrayList.add(ak.aB);
        }
        arrayList.add(" but has received ");
        if (i == 0) {
            arrayList.add("none");
        } else {
            arrayList.add(Integer.valueOf(i));
        }
        arrayList.add(".");
        return new vl2(arrayList.toArray());
    }

    /* renamed from: switch, reason: not valid java name */
    public static k52 m27875switch(String str, int i, TemplateModel templateModel) {
        return m27849abstract(str, i, TypedValues.Custom.S_BOOLEAN, templateModel);
    }

    /* renamed from: this, reason: not valid java name */
    public static String m27876this(String str, int i, int i2) {
        return m27862for("at", str, i, i2);
    }

    /* renamed from: throw, reason: not valid java name */
    public static TemplateException m27877throw(z3 z3Var, h0 h0Var, p52 p52Var, boolean z) {
        z4 z4VarM28401if = new z4("Failed to format date/time/datetime with format ", new fl2(z3Var.mo5485do()), ": ", p52Var.getMessage()).m28401if(h0Var);
        return z ? new vl2(p52Var, (d0) null, z4VarM28401if) : new nl2(p52Var, (d0) null, z4VarM28401if);
    }

    /* renamed from: throws, reason: not valid java name */
    public static k52 m27878throws(String str, int i, TemplateModel templateModel) {
        return m27849abstract(str, i, "extended hash", templateModel);
    }

    /* renamed from: try, reason: not valid java name */
    public static String m27879try(Cstatic cstatic, int i, int i2) {
        return m27864if("on", cstatic, i, i2);
    }

    /* renamed from: while, reason: not valid java name */
    public static TemplateException m27880while(f4 f4Var, h0 h0Var, p52 p52Var, boolean z) {
        z4 z4VarM28401if = new z4("Failed to format number with format ", new fl2(f4Var.mo5485do()), ": ", p52Var.getMessage()).m28401if(h0Var);
        return z ? new vl2(p52Var, (d0) null, z4VarM28401if) : new nl2(p52Var, (d0) null, z4VarM28401if);
    }
}
