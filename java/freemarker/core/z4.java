package freemarker.core;

import android.support.v4.ca2;
import freemarker.template.Cstatic;
import freemarker.template.utility.Csuper;
import java.lang.reflect.Constructor;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import org.apache.commons.lang3.Cclass;

/* loaded from: classes.dex */
public class z4 {

    /* renamed from: goto, reason: not valid java name */
    private static final freemarker.log.Cif f24323goto = freemarker.log.Cif.m29193break("freemarker.runtime");

    /* renamed from: case, reason: not valid java name */
    private Object[] f24324case;

    /* renamed from: do, reason: not valid java name */
    private final String f24325do;

    /* renamed from: else, reason: not valid java name */
    private Cstatic f24326else;

    /* renamed from: for, reason: not valid java name */
    private h0 f24327for;

    /* renamed from: if, reason: not valid java name */
    private final Object[] f24328if;

    /* renamed from: new, reason: not valid java name */
    private boolean f24329new;

    /* renamed from: try, reason: not valid java name */
    private Object f24330try;

    /* renamed from: freemarker.core.z4$if, reason: invalid class name */
    public static class Cif {

        /* renamed from: do, reason: not valid java name */
        public h4 f24331do;

        /* renamed from: if, reason: not valid java name */
        public f3 f24332if;

        private Cif() {
        }
    }

    public z4(String str) {
        this.f24325do = str;
        this.f24328if = null;
    }

    /* renamed from: case, reason: not valid java name */
    private String[] m28389case(String str) {
        return Csuper.t(Csuper.m(Csuper.m(str, "\r\n", "\n"), Cclass.f28656new, "\n"), '\n');
    }

    /* renamed from: const, reason: not valid java name */
    public static String m28390const(Object obj) {
        return m28392final(obj, false);
    }

    /* renamed from: do, reason: not valid java name */
    private void m28391do(StringBuilder sb, Object[] objArr) {
        Cstatic template = this.f24326else;
        if (template == null) {
            h0 h0Var = this.f24327for;
            template = h0Var != null ? h0Var.getTemplate() : null;
        }
        for (Object obj : objArr) {
            if (obj instanceof Object[]) {
                m28391do(sb, (Object[]) obj);
            } else {
                String strM28396super = m28396super(obj);
                if (strM28396super == null) {
                    strM28396super = "null";
                }
                if (template == null) {
                    sb.append(strM28396super);
                } else if (strM28396super.length() <= 4 || strM28396super.charAt(0) != '<' || ((strM28396super.charAt(1) != '#' && strM28396super.charAt(1) != '@' && (strM28396super.charAt(1) != '/' || (strM28396super.charAt(2) != '#' && strM28396super.charAt(2) != '@'))) || strM28396super.charAt(strM28396super.length() - 1) != '>')) {
                    sb.append(strM28396super);
                } else if (template.Z0() == 2) {
                    sb.append('[');
                    sb.append(strM28396super.substring(1, strM28396super.length() - 1));
                    sb.append(']');
                } else {
                    sb.append(strM28396super);
                }
            }
        }
    }

    /* renamed from: final, reason: not valid java name */
    private static String m28392final(Object obj, boolean z) {
        if (obj == null) {
            return null;
        }
        return obj instanceof Class ? freemarker.template.utility.Cif.m29270break((Class) obj) : ((obj instanceof Method) || (obj instanceof Constructor)) ? freemarker.ext.beans.j.m28656final((Member) obj) : z ? Csuper.A(obj) : obj.toString();
    }

    /* renamed from: for, reason: not valid java name */
    private boolean m28393for(h0 h0Var, int i) {
        if (h0Var == null || i > 20) {
            return false;
        }
        if ((h0Var instanceof x3) && ((x3) h0Var).e()) {
            return true;
        }
        int iMo27814else = h0Var.mo27814else();
        for (int i2 = 0; i2 < iMo27814else; i2++) {
            Object objMo27819this = h0Var.mo27819this(i2);
            if ((objMo27819this instanceof h0) && m28393for((h0) objMo27819this, i + 1)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: goto, reason: not valid java name */
    private z4 m28394goto(Object obj) {
        if (obj == null) {
            return this;
        }
        if (this.f24330try == null) {
            this.f24330try = obj;
        } else {
            Object[] objArr = this.f24324case;
            if (objArr == null) {
                this.f24324case = new Object[]{obj};
            } else {
                int length = objArr.length;
                Object[] objArr2 = new Object[length + 1];
                for (int i = 0; i < length; i++) {
                    objArr2[i] = this.f24324case[i];
                }
                objArr2[length] = obj;
                this.f24324case = objArr2;
            }
        }
        return this;
    }

    /* renamed from: new, reason: not valid java name */
    private Cif m28395new(h4 h4Var, h0 h0Var, int i) {
        Cif cifM28395new;
        if (i > 50) {
            return null;
        }
        int iMo27814else = h4Var.mo27814else();
        for (int i2 = 0; i2 < iMo27814else; i2++) {
            Object objMo27819this = h4Var.mo27819this(i2);
            if (objMo27819this == h0Var) {
                Cif cif = new Cif();
                cif.f24331do = h4Var;
                cif.f24332if = h4Var.mo27816goto(i2);
                return cif;
            }
            if ((objMo27819this instanceof h4) && (cifM28395new = m28395new((h4) objMo27819this, h0Var, i + 1)) != null) {
                return cifM28395new;
            }
        }
        return null;
    }

    /* renamed from: super, reason: not valid java name */
    public static String m28396super(Object obj) {
        return m28392final(obj, true);
    }

    /* renamed from: break, reason: not valid java name */
    public z4 m28397break(Object... objArr) {
        m28394goto(objArr);
        return this;
    }

    /* renamed from: catch, reason: not valid java name */
    public z4 m28398catch(Object... objArr) {
        if (objArr != null && objArr.length != 0) {
            Object[] objArr2 = this.f24324case;
            if (objArr2 == null) {
                this.f24324case = objArr;
            } else {
                int length = objArr2.length;
                int length2 = objArr.length;
                Object[] objArr3 = new Object[length + length2];
                for (int i = 0; i < length; i++) {
                    objArr3[i] = this.f24324case[i];
                }
                for (int i2 = 0; i2 < length2; i2++) {
                    objArr3[length + i2] = objArr[i2];
                }
                this.f24324case = objArr3;
            }
        }
        return this;
    }

    /* renamed from: class, reason: not valid java name */
    public String m28399class(b4 b4Var, boolean z) {
        h0 h0Var;
        if (this.f24327for == null && this.f24324case == null && this.f24330try == null && this.f24328if == null) {
            return this.f24325do;
        }
        StringBuilder sb = new StringBuilder(200);
        if (b4Var != null && (h0Var = this.f24327for) != null && this.f24329new) {
            try {
                Cif cifM28395new = m28395new(b4Var, h0Var, 0);
                if (cifM28395new != null) {
                    sb.append("For ");
                    String strMo27813case = cifM28395new.f24331do.mo27813case();
                    char c = ca2.f674do;
                    if (strMo27813case.indexOf(34) != -1) {
                        c = '`';
                    }
                    sb.append(c);
                    sb.append(strMo27813case);
                    sb.append(c);
                    sb.append(Cclass.f28652do);
                    sb.append(cifM28395new.f24332if);
                    sb.append(": ");
                }
            } catch (Throwable th) {
                f24323goto.mo29181else("Error when searching blamer for better error message.", th);
            }
        }
        String str = this.f24325do;
        if (str != null) {
            sb.append(str);
        } else {
            m28391do(sb, this.f24328if);
        }
        String str2 = null;
        int i = 1;
        if (this.f24327for != null) {
            for (int length = sb.length() - 1; length >= 0 && Character.isWhitespace(sb.charAt(length)); length--) {
                sb.deleteCharAt(length);
            }
            char cCharAt = sb.length() > 0 ? sb.charAt(sb.length() - 1) : (char) 0;
            if (cCharAt != 0) {
                sb.append('\n');
            }
            if (cCharAt != ':') {
                sb.append("The blamed expression:\n");
            }
            String[] strArrM28389case = m28389case(this.f24327for.toString());
            int i2 = 0;
            while (i2 < strArrM28389case.length) {
                sb.append(i2 == 0 ? "==> " : "\n    ");
                sb.append(strArrM28389case[i2]);
                i2++;
            }
            sb.append("  [");
            sb.append(this.f24327for.m28065catch());
            sb.append(']');
            if (m28393for(this.f24327for, 0)) {
                str2 = "It has been noticed that you are using ${...} as the sole content of a quoted string. That does nothing but forcably converts the value inside ${...} to string (as it inserts it into the enclosing string). If that's not what you meant, just remove the quotation marks, ${ and }; you don't need them. If you indeed wanted to convert to string, use myExpression?string instead.";
            }
        }
        if (z) {
            Object[] objArr = this.f24324case;
            int length2 = objArr != null ? objArr.length : 0;
            Object obj = this.f24330try;
            int i3 = length2 + (obj != null ? 1 : 0) + (str2 != null ? 1 : 0);
            if (objArr == null || i3 != objArr.length) {
                Object[] objArr2 = new Object[i3];
                if (obj != null) {
                    objArr2[0] = obj;
                } else {
                    i = 0;
                }
                if (objArr != null) {
                    int i4 = 0;
                    while (true) {
                        Object[] objArr3 = this.f24324case;
                        if (i4 >= objArr3.length) {
                            break;
                        }
                        objArr2[i] = objArr3[i4];
                        i4++;
                        i++;
                    }
                }
                if (str2 != null) {
                    objArr2[i] = str2;
                }
                objArr = objArr2;
            }
            if (objArr != null && objArr.length > 0) {
                sb.append("\n\n");
                for (int i5 = 0; i5 < objArr.length; i5++) {
                    if (i5 != 0) {
                        sb.append('\n');
                    }
                    sb.append(y4.f24312do);
                    sb.append('\n');
                    sb.append("Tip: ");
                    Object obj2 = objArr[i5];
                    if (obj2 instanceof Object[]) {
                        m28391do(sb, (Object[]) obj2);
                    } else {
                        sb.append(objArr[i5]);
                    }
                }
                sb.append('\n');
                sb.append(y4.f24312do);
            }
        }
        return sb.toString();
    }

    /* renamed from: else, reason: not valid java name */
    public z4 m28400else(Cstatic cstatic) {
        this.f24326else = cstatic;
        return this;
    }

    /* renamed from: if, reason: not valid java name */
    public z4 m28401if(h0 h0Var) {
        this.f24327for = h0Var;
        return this;
    }

    /* renamed from: this, reason: not valid java name */
    public z4 m28402this(String str) {
        m28394goto(str);
        return this;
    }

    public String toString() {
        return m28399class(null, true);
    }

    /* renamed from: try, reason: not valid java name */
    public z4 m28403try(boolean z) {
        this.f24329new = z;
        return this;
    }

    public z4(Object... objArr) {
        this.f24328if = objArr;
        this.f24325do = null;
    }
}
