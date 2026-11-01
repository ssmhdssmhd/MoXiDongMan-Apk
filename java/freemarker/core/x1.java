package freemarker.core;

import android.support.v4.ca2;
import android.support.v4.fl2;
import android.support.v4.hy1;
import android.support.v4.k52;
import android.support.v4.nl2;
import android.support.v4.yk2;
import freemarker.core.d0;
import freemarker.core.d0.Cthis;
import freemarker.template.TemplateException;
import freemarker.template.TemplateModel;
import freemarker.template.TemplateModelIterator;
import freemarker.template.TemplateScalarModel;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import org.apache.commons.lang3.Cclass;

@Deprecated
/* loaded from: classes.dex */
public final class x1 extends b4 implements TemplateModel {

    /* renamed from: import, reason: not valid java name */
    public static final int f24266import = 0;

    /* renamed from: native, reason: not valid java name */
    public static final int f24267native = 1;

    /* renamed from: while, reason: not valid java name */
    public static final x1 f24268while = new x1(".pass", Collections.EMPTY_LIST, Collections.EMPTY_MAP, null, false, c4.f23539for);

    /* renamed from: class, reason: not valid java name */
    private final String f24269class;

    /* renamed from: const, reason: not valid java name */
    private final String[] f24270const;

    /* renamed from: final, reason: not valid java name */
    private final Map f24271final;

    /* renamed from: super, reason: not valid java name */
    private final String f24272super;

    /* renamed from: throw, reason: not valid java name */
    private final boolean f24273throw;

    /* renamed from: freemarker.core.x1$do, reason: invalid class name */
    public class Cdo implements LocalContext {

        /* renamed from: case, reason: not valid java name */
        public final Cdo f24274case;

        /* renamed from: do, reason: not valid java name */
        public final d0.Cthis f24275do;

        /* renamed from: for, reason: not valid java name */
        public final d0.Cthis f24277for;

        /* renamed from: if, reason: not valid java name */
        public final h4 f24278if;

        /* renamed from: new, reason: not valid java name */
        public final List f24279new;

        /* renamed from: try, reason: not valid java name */
        public final v1 f24280try;

        public Cdo(d0 d0Var, h4 h4Var, List list) {
            d0Var.getClass();
            this.f24275do = d0Var.new Cthis();
            this.f24278if = h4Var;
            this.f24277for = d0Var.y1();
            this.f24279new = list;
            this.f24280try = d0Var.R1();
            this.f24274case = d0Var.x1();
        }

        /* renamed from: do, reason: not valid java name */
        public d0.Cthis m28344do() {
            return this.f24275do;
        }

        /* renamed from: for, reason: not valid java name */
        public void m28345for(d0 d0Var) throws TemplateException {
            b1 b1Var;
            h0 h0Var;
            boolean z;
            TemplateModel templateModelM28055throws;
            do {
                b1Var = null;
                h0Var = null;
                boolean z2 = false;
                z = false;
                for (int i = 0; i < x1.this.f24270const.length; i++) {
                    String str = x1.this.f24270const[i];
                    if (this.f24275do.get(str) == null) {
                        h0 h0Var2 = (h0) x1.this.f24271final.get(str);
                        if (h0Var2 != null) {
                            try {
                                templateModelM28055throws = h0Var2.m28055throws(d0Var);
                            } catch (b1 e) {
                                if (!z) {
                                    b1Var = e;
                                }
                            }
                            if (templateModelM28055throws != null) {
                                this.f24275do.put(str, templateModelM28055throws);
                                z2 = true;
                            } else if (!z) {
                                h0Var = h0Var2;
                                z = true;
                            }
                        } else if (!d0Var.y()) {
                            boolean zContainsKey = this.f24275do.containsKey(str);
                            Object[] objArr = new Object[10];
                            objArr[0] = "When calling ";
                            objArr[1] = x1.this.z() ? "function" : "macro";
                            objArr[2] = Cclass.f28652do;
                            objArr[3] = new fl2(x1.this.f24269class);
                            objArr[4] = ", required parameter ";
                            objArr[5] = new fl2(str);
                            objArr[6] = " (parameter #";
                            objArr[7] = Integer.valueOf(i + 1);
                            objArr[8] = ") was ";
                            objArr[9] = zContainsKey ? "specified, but had null/missing value." : "not specified.";
                            throw new nl2(d0Var, new z4(objArr).m28397break(zContainsKey ? new Object[]{"If the parameter value expression on the caller side is known to be legally null/missing, you may want to specify a default value for it with the \"!\" operator, like paramValue!defaultValue."} : new Object[]{"If the omission was deliberate, you may consider making the parameter optional in the macro by specifying a default value for it, like ", "<#macro macroName paramName=defaultExpr>", ")"}));
                        }
                    }
                }
                if (!z2) {
                    break;
                }
            } while (z);
            if (z) {
                if (b1Var != null) {
                    throw b1Var;
                }
                if (!d0Var.y()) {
                    throw b1.getInstance(h0Var, d0Var);
                }
            }
        }

        @Override // freemarker.core.LocalContext
        public TemplateModel getLocalVariable(String str) throws k52 {
            return this.f24275do.get(str);
        }

        @Override // freemarker.core.LocalContext
        public Collection getLocalVariableNames() throws k52 {
            HashSet hashSet = new HashSet();
            TemplateModelIterator it = this.f24275do.keys().iterator();
            while (it.hasNext()) {
                hashSet.add(((TemplateScalarModel) it.next()).getAsString());
            }
            return hashSet;
        }

        /* renamed from: if, reason: not valid java name */
        public x1 m28346if() {
            return x1.this;
        }

        /* renamed from: new, reason: not valid java name */
        public void m28347new(String str, TemplateModel templateModel) {
            this.f24275do.put(str, templateModel);
        }
    }

    public x1(String str, List list, Map map, String str2, boolean z, c4 c4Var) {
        this.f24269class = str;
        this.f24270const = (String[]) list.toArray(new String[list.size()]);
        this.f24271final = map;
        this.f24273throw = z;
        this.f24272super = str2;
        p(c4Var);
    }

    @Override // freemarker.core.h4
    /* renamed from: case */
    public String mo27813case() {
        return this.f24273throw ? "#function" : "#macro";
    }

    @Override // freemarker.core.h4
    /* renamed from: else */
    public int mo27814else() {
        return (this.f24270const.length * 2) + 1 + 1 + 1;
    }

    @Override // freemarker.core.b4
    public boolean f() {
        return true;
    }

    @Override // freemarker.core.h4
    /* renamed from: goto */
    public f3 mo27816goto(int i) {
        if (i == 0) {
            return f3.f23761goto;
        }
        int length = (this.f24270const.length * 2) + 1;
        if (i < length) {
            return i % 2 != 0 ? f3.f23757extends : f3.f23759finally;
        }
        if (i == length) {
            return f3.f23769package;
        }
        if (i == length + 1) {
            return f3.f23784while;
        }
        throw new IndexOutOfBoundsException();
    }

    @Override // freemarker.core.b4
    /* renamed from: native */
    public b4[] mo27820native(d0 d0Var) {
        d0Var.G3(this);
        return null;
    }

    @Override // freemarker.core.b4
    /* renamed from: switch */
    public String mo27846switch(boolean z) {
        StringBuilder sb = new StringBuilder();
        if (z) {
            sb.append(ca2.f687new);
        }
        sb.append(mo27813case());
        sb.append(' ');
        sb.append(yk2.m9890else(this.f24269class));
        if (this.f24273throw) {
            sb.append('(');
        }
        int length = this.f24270const.length;
        for (int i = 0; i < length; i++) {
            if (!this.f24273throw) {
                sb.append(' ');
            } else if (i != 0) {
                sb.append(", ");
            }
            String str = this.f24270const[i];
            sb.append(yk2.m9888case(str));
            Map map = this.f24271final;
            if (map != null && map.get(str) != null) {
                sb.append(hy1.f2563new);
                h0 h0Var = (h0) this.f24271final.get(str);
                if (this.f24273throw) {
                    sb.append(h0Var.mo27815for());
                } else {
                    b5.m27857do(sb, h0Var);
                }
            }
        }
        if (this.f24272super != null) {
            if (!this.f24273throw) {
                sb.append(' ');
            } else if (length != 0) {
                sb.append(", ");
            }
            sb.append(this.f24272super);
            sb.append("...");
        }
        if (this.f24273throw) {
            sb.append(')');
        }
        if (z) {
            sb.append(ca2.f702try);
            sb.append(m27841private());
            sb.append("</");
            sb.append(mo27813case());
            sb.append(ca2.f702try);
        }
        return sb.toString();
    }

    @Override // freemarker.core.h4
    /* renamed from: this */
    public Object mo27819this(int i) {
        if (i == 0) {
            return this.f24269class;
        }
        String[] strArr = this.f24270const;
        int length = (strArr.length * 2) + 1;
        if (i < length) {
            String str = strArr[(i - 1) / 2];
            return i % 2 != 0 ? str : this.f24271final.get(str);
        }
        if (i == length) {
            return this.f24272super;
        }
        if (i == length + 1) {
            return Integer.valueOf(this.f24273throw ? 1 : 0);
        }
        throw new IndexOutOfBoundsException();
    }

    public String[] u() {
        return (String[]) this.f24270const.clone();
    }

    public String[] v() {
        return this.f24270const;
    }

    public String w() {
        return this.f24272super;
    }

    public String x() {
        return this.f24269class;
    }

    public boolean y(String str) {
        return this.f24271final.containsKey(str);
    }

    public boolean z() {
        return this.f24273throw;
    }
}
