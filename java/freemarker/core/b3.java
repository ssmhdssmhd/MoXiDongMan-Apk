package freemarker.core;

import android.support.v4.nl2;
import android.support.v4.on0;
import freemarker.template.Cstatic;
import freemarker.template.TemplateException;
import freemarker.template.utility.Cif;
import freemarker.template.utility.Csuper;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* loaded from: classes.dex */
public class b3 implements TemplateClassResolver {

    /* renamed from: do, reason: not valid java name */
    private final Set f23512do;

    /* renamed from: for, reason: not valid java name */
    private final Set f23513for;

    /* renamed from: if, reason: not valid java name */
    private final List f23514if;

    public b3(Set set, List list) {
        this.f23512do = set == null ? Collections.EMPTY_SET : set;
        if (list == null) {
            this.f23513for = Collections.EMPTY_SET;
            this.f23514if = Collections.EMPTY_LIST;
            return;
        }
        this.f23513for = new HashSet();
        this.f23514if = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            String strSubstring = (String) it.next();
            strSubstring = strSubstring.startsWith(on0.f4694final) ? strSubstring.substring(1) : strSubstring;
            if (strSubstring.endsWith("*")) {
                this.f23514if.add(strSubstring.substring(0, strSubstring.length() - 1));
            } else {
                this.f23513for.add(strSubstring);
            }
        }
    }

    /* renamed from: do, reason: not valid java name */
    private boolean m27827do(String str) {
        for (int i = 0; i < this.f23514if.size(); i++) {
            if (str.startsWith((String) this.f23514if.get(i))) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: if, reason: not valid java name */
    public String m27828if(Cstatic cstatic) {
        String strH1;
        if (cstatic == null || (strH1 = cstatic.h1()) == null) {
            return null;
        }
        String strN = strH1.indexOf(37) != -1 ? Csuper.n(Csuper.n(Csuper.n(Csuper.n(Csuper.n(Csuper.n(strH1, "%2e", ".", false, false), "%2E", ".", false, false), "%2f", on0.f4694final, false, false), "%2F", on0.f4694final, false, false), "%5c", "\\", false, false), "%5C", "\\", false, false) : strH1;
        int iIndexOf = strN.indexOf("..");
        if (iIndexOf != -1) {
            int i = iIndexOf - 1;
            char cCharAt = i >= 0 ? strN.charAt(i) : (char) 65535;
            int i2 = iIndexOf + 2;
            char cCharAt2 = i2 < strN.length() ? strN.charAt(i2) : (char) 65535;
            if ((cCharAt == 65535 || cCharAt == '/' || cCharAt == '\\') && (cCharAt2 == 65535 || cCharAt2 == '/' || cCharAt2 == '\\')) {
                return null;
            }
        }
        return strH1.startsWith(on0.f4694final) ? strH1.substring(1) : strH1;
    }

    @Override // freemarker.core.TemplateClassResolver
    public Class resolve(String str, d0 d0Var, Cstatic cstatic) throws TemplateException {
        String strM27828if = m27828if(cstatic);
        if (strM27828if != null && (this.f23513for.contains(strM27828if) || m27827do(strM27828if))) {
            return TemplateClassResolver.SAFER_RESOLVER.resolve(str, d0Var, cstatic);
        }
        if (!this.f23512do.contains(str)) {
            throw new nl2(d0Var, "Instantiating ", str, " is not allowed in the template for security reasons. (If you run into this problem when using ?new in a template, you may want to check the \"", "new_builtin_class_resolver", "\" setting in the FreeMarker configuration.)");
        }
        try {
            return Cif.m29285try(str);
        } catch (ClassNotFoundException e) {
            throw new nl2(e, d0Var);
        }
    }
}
