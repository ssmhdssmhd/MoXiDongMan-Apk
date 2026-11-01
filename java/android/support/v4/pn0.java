package android.support.v4;

import com.google.common.base.Cfinal;
import com.google.common.base.Cnew;
import com.google.common.base.Cwhile;
import com.google.common.base.Splitter;
import com.google.thirdparty.publicsuffix.Cdo;
import com.google.thirdparty.publicsuffix.Cif;
import java.util.List;
import org.apache.commons.lang3.Ctry;

@fm0
@ki0
@o8
/* loaded from: classes2.dex */
public final class pn0 {

    /* renamed from: break, reason: not valid java name */
    private static final int f5135break = 253;

    /* renamed from: catch, reason: not valid java name */
    private static final int f5137catch = 63;

    /* renamed from: class, reason: not valid java name */
    private static final Cnew f5138class;

    /* renamed from: const, reason: not valid java name */
    private static final Cnew f5139const;

    /* renamed from: final, reason: not valid java name */
    private static final Cnew f5141final;

    /* renamed from: goto, reason: not valid java name */
    private static final int f5142goto = -1;

    /* renamed from: super, reason: not valid java name */
    private static final Cnew f5143super;

    /* renamed from: this, reason: not valid java name */
    private static final int f5144this = 127;

    /* renamed from: do, reason: not valid java name */
    private final String f5146do;

    /* renamed from: for, reason: not valid java name */
    private final int f5147for;

    /* renamed from: if, reason: not valid java name */
    private final com.google.common.collect.v0<String> f5148if;

    /* renamed from: new, reason: not valid java name */
    private final int f5149new;

    /* renamed from: try, reason: not valid java name */
    private static final Cnew f5145try = Cnew.m15135new(".。．｡");

    /* renamed from: case, reason: not valid java name */
    private static final Splitter f5136case = Splitter.m14989goto(Ctry.f28883do);

    /* renamed from: else, reason: not valid java name */
    private static final Cfinal f5140else = Cfinal.m15070super(Ctry.f28883do);

    static {
        Cnew cnewM15135new = Cnew.m15135new("-_");
        f5138class = cnewM15135new;
        Cnew cnewM15125const = Cnew.m15125const('0', '9');
        f5139const = cnewM15125const;
        Cnew cnewMo15153protected = Cnew.m15125const('a', 'z').mo15153protected(Cnew.m15125const('A', ay0.f286for));
        f5141final = cnewMo15153protected;
        f5143super = cnewM15125const.mo15153protected(cnewMo15153protected).mo15153protected(cnewM15135new);
    }

    public pn0(String str) {
        String strM7689else = t3.m7689else(f5145try.a(str, Ctry.f28883do));
        strM7689else = strM7689else.endsWith(".") ? strM7689else.substring(0, strM7689else.length() - 1) : strM7689else;
        af1.m225return(strM7689else.length() <= f5135break, "Domain name too long: '%s':", strM7689else);
        this.f5146do = strM7689else;
        com.google.common.collect.v0<String> v0VarCopyOf = com.google.common.collect.v0.copyOf(f5136case.m14997final(strM7689else));
        this.f5148if = v0VarCopyOf;
        af1.m225return(v0VarCopyOf.size() <= 127, "Domain has too many parts: '%s'", strM7689else);
        af1.m225return(m6135throws(v0VarCopyOf), "Not a valid domain name: '%s'", strM7689else);
        this.f5147for = m6130for(Cwhile.absent());
        this.f5149new = m6130for(Cwhile.of(Cif.REGISTRY));
    }

    /* renamed from: do, reason: not valid java name */
    private pn0 m6128do(int i) {
        Cfinal cfinal = f5140else;
        com.google.common.collect.v0<String> v0Var = this.f5148if;
        return m6131new(cfinal.m15073catch(v0Var.subList(i, v0Var.size())));
    }

    /* renamed from: final, reason: not valid java name */
    public static boolean m6129final(String str) {
        try {
            m6131new(str);
            return true;
        } catch (IllegalArgumentException unused) {
            return false;
        }
    }

    /* renamed from: for, reason: not valid java name */
    private int m6130for(Cwhile<Cif> cwhile) {
        int size = this.f5148if.size();
        for (int i = 0; i < size; i++) {
            String strM15073catch = f5140else.m15073catch(this.f5148if.subList(i, size));
            if (m6132super(cwhile, Cwhile.fromNullable(Cdo.f17388do.get(strM15073catch)))) {
                return i;
            }
            if (Cdo.f17389for.containsKey(strM15073catch)) {
                return i + 1;
            }
            if (m6134throw(cwhile, strM15073catch)) {
                return i;
            }
        }
        return -1;
    }

    /* renamed from: new, reason: not valid java name */
    public static pn0 m6131new(String str) {
        return new pn0((String) af1.m205continue(str));
    }

    /* renamed from: super, reason: not valid java name */
    private static boolean m6132super(Cwhile<Cif> cwhile, Cwhile<Cif> cwhile2) {
        return cwhile.isPresent() ? cwhile.equals(cwhile2) : cwhile2.isPresent();
    }

    /* renamed from: switch, reason: not valid java name */
    private static boolean m6133switch(String str, boolean z) {
        if (str.length() >= 1 && str.length() <= 63) {
            if (!f5143super.mo15152private(Cnew.m15122case().c(str))) {
                return false;
            }
            Cnew cnew = f5138class;
            if (!cnew.mo15151package(str.charAt(0)) && !cnew.mo15151package(str.charAt(str.length() - 1))) {
                return (z && f5139const.mo15151package(str.charAt(0))) ? false : true;
            }
        }
        return false;
    }

    /* renamed from: throw, reason: not valid java name */
    private static boolean m6134throw(Cwhile<Cif> cwhile, String str) {
        List<String> listM15002super = f5136case.m14995case(2).m15002super(str);
        return listM15002super.size() == 2 && m6132super(cwhile, Cwhile.fromNullable(Cdo.f17390if.get(listM15002super.get(1))));
    }

    /* renamed from: throws, reason: not valid java name */
    private static boolean m6135throws(List<String> list) {
        int size = list.size() - 1;
        if (!m6133switch(list.get(size), true)) {
            return false;
        }
        for (int i = 0; i < size; i++) {
            if (!m6133switch(list.get(i), false)) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: break, reason: not valid java name */
    public boolean m6136break() {
        return this.f5149new == 1;
    }

    /* renamed from: case, reason: not valid java name */
    public boolean m6137case() {
        return this.f5147for != -1;
    }

    /* renamed from: catch, reason: not valid java name */
    public boolean m6138catch() {
        return this.f5147for == 1;
    }

    /* renamed from: class, reason: not valid java name */
    public boolean m6139class() {
        return this.f5147for > 0;
    }

    /* renamed from: const, reason: not valid java name */
    public boolean m6140const() {
        return this.f5149new > 0;
    }

    /* renamed from: else, reason: not valid java name */
    public boolean m6141else() {
        return this.f5149new != -1;
    }

    public boolean equals(@b51 Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof pn0) {
            return this.f5146do.equals(((pn0) obj).f5146do);
        }
        return false;
    }

    /* renamed from: goto, reason: not valid java name */
    public boolean m6142goto() {
        return this.f5147for == 0;
    }

    public int hashCode() {
        return this.f5146do.hashCode();
    }

    /* renamed from: if, reason: not valid java name */
    public pn0 m6143if(String str) {
        return m6131new(((String) af1.m205continue(str)) + "." + this.f5146do);
    }

    /* renamed from: import, reason: not valid java name */
    public com.google.common.collect.v0<String> m6144import() {
        return this.f5148if;
    }

    /* renamed from: native, reason: not valid java name */
    public pn0 m6145native() {
        if (m6137case()) {
            return m6128do(this.f5147for);
        }
        return null;
    }

    /* renamed from: public, reason: not valid java name */
    public pn0 m6146public() {
        if (m6141else()) {
            return m6128do(this.f5149new);
        }
        return null;
    }

    /* renamed from: return, reason: not valid java name */
    public pn0 m6147return() {
        if (m6136break()) {
            return this;
        }
        af1.K(m6140const(), "Not under a registry suffix: %s", this.f5146do);
        return m6128do(this.f5149new - 1);
    }

    /* renamed from: static, reason: not valid java name */
    public pn0 m6148static() {
        if (m6138catch()) {
            return this;
        }
        af1.K(m6139class(), "Not under a public suffix: %s", this.f5146do);
        return m6128do(this.f5147for - 1);
    }

    /* renamed from: this, reason: not valid java name */
    public boolean m6149this() {
        return this.f5149new == 0;
    }

    public String toString() {
        return this.f5146do;
    }

    /* renamed from: try, reason: not valid java name */
    public boolean m6150try() {
        return this.f5148if.size() > 1;
    }

    /* renamed from: while, reason: not valid java name */
    public pn0 m6151while() {
        af1.K(m6150try(), "Domain '%s' has no parent", this.f5146do);
        return m6128do(1);
    }
}
