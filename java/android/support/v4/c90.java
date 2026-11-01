package android.support.v4;

import com.google.zxing.client.result.Celse;
import java.util.Map;

/* loaded from: classes2.dex */
public final class c90 extends oc1 {

    /* renamed from: import, reason: not valid java name */
    public static final String f640import = "LB";

    /* renamed from: while, reason: not valid java name */
    public static final String f641while = "KG";

    /* renamed from: break, reason: not valid java name */
    private final String f642break;

    /* renamed from: case, reason: not valid java name */
    private final String f643case;

    /* renamed from: catch, reason: not valid java name */
    private final String f644catch;

    /* renamed from: class, reason: not valid java name */
    private final String f645class;

    /* renamed from: const, reason: not valid java name */
    private final String f646const;

    /* renamed from: else, reason: not valid java name */
    private final String f647else;

    /* renamed from: final, reason: not valid java name */
    private final String f648final;

    /* renamed from: for, reason: not valid java name */
    private final String f649for;

    /* renamed from: goto, reason: not valid java name */
    private final String f650goto;

    /* renamed from: if, reason: not valid java name */
    private final String f651if;

    /* renamed from: new, reason: not valid java name */
    private final String f652new;

    /* renamed from: super, reason: not valid java name */
    private final String f653super;

    /* renamed from: this, reason: not valid java name */
    private final String f654this;

    /* renamed from: throw, reason: not valid java name */
    private final Map<String, String> f655throw;

    /* renamed from: try, reason: not valid java name */
    private final String f656try;

    public c90(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, String str13, String str14, Map<String, String> map) {
        super(Celse.PRODUCT);
        this.f651if = str;
        this.f649for = str2;
        this.f652new = str3;
        this.f656try = str4;
        this.f643case = str5;
        this.f647else = str6;
        this.f650goto = str7;
        this.f654this = str8;
        this.f642break = str9;
        this.f644catch = str10;
        this.f645class = str11;
        this.f646const = str12;
        this.f648final = str13;
        this.f653super = str14;
        this.f655throw = map;
    }

    /* renamed from: return, reason: not valid java name */
    private static int m797return(Object obj) {
        if (obj == null) {
            return 0;
        }
        return obj.hashCode();
    }

    /* renamed from: try, reason: not valid java name */
    private static boolean m798try(Object obj, Object obj2) {
        return obj == null ? obj2 == null : obj.equals(obj2);
    }

    /* renamed from: break, reason: not valid java name */
    public String m799break() {
        return this.f646const;
    }

    /* renamed from: case, reason: not valid java name */
    public String m800case() {
        return this.f650goto;
    }

    /* renamed from: catch, reason: not valid java name */
    public String m801catch() {
        return this.f653super;
    }

    /* renamed from: class, reason: not valid java name */
    public String m802class() {
        return this.f648final;
    }

    /* renamed from: const, reason: not valid java name */
    public String m803const() {
        return this.f649for;
    }

    @Override // android.support.v4.oc1
    /* renamed from: do, reason: not valid java name */
    public String mo804do() {
        return String.valueOf(this.f651if);
    }

    /* renamed from: else, reason: not valid java name */
    public String m805else() {
        return this.f654this;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof c90)) {
            return false;
        }
        c90 c90Var = (c90) obj;
        return m798try(this.f649for, c90Var.f649for) && m798try(this.f652new, c90Var.f652new) && m798try(this.f656try, c90Var.f656try) && m798try(this.f643case, c90Var.f643case) && m798try(this.f650goto, c90Var.f650goto) && m798try(this.f654this, c90Var.f654this) && m798try(this.f642break, c90Var.f642break) && m798try(this.f644catch, c90Var.f644catch) && m798try(this.f645class, c90Var.f645class) && m798try(this.f646const, c90Var.f646const) && m798try(this.f648final, c90Var.f648final) && m798try(this.f653super, c90Var.f653super) && m798try(this.f655throw, c90Var.f655throw);
    }

    /* renamed from: final, reason: not valid java name */
    public String m806final() {
        return this.f643case;
    }

    /* renamed from: goto, reason: not valid java name */
    public String m807goto() {
        return this.f656try;
    }

    public int hashCode() {
        return ((((((((((((m797return(this.f649for) ^ 0) ^ m797return(this.f652new)) ^ m797return(this.f656try)) ^ m797return(this.f643case)) ^ m797return(this.f650goto)) ^ m797return(this.f654this)) ^ m797return(this.f642break)) ^ m797return(this.f644catch)) ^ m797return(this.f645class)) ^ m797return(this.f646const)) ^ m797return(this.f648final)) ^ m797return(this.f653super)) ^ m797return(this.f655throw);
    }

    /* renamed from: import, reason: not valid java name */
    public String m808import() {
        return this.f642break;
    }

    /* renamed from: native, reason: not valid java name */
    public String m809native() {
        return this.f645class;
    }

    /* renamed from: public, reason: not valid java name */
    public String m810public() {
        return this.f644catch;
    }

    /* renamed from: super, reason: not valid java name */
    public String m811super() {
        return this.f651if;
    }

    /* renamed from: this, reason: not valid java name */
    public String m812this() {
        return this.f647else;
    }

    /* renamed from: throw, reason: not valid java name */
    public String m813throw() {
        return this.f652new;
    }

    /* renamed from: while, reason: not valid java name */
    public Map<String, String> m814while() {
        return this.f655throw;
    }
}
