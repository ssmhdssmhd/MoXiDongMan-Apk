package android.support.v4;

/* loaded from: classes3.dex */
public class ad1 {

    /* renamed from: do, reason: not valid java name */
    private String f105do;

    /* renamed from: if, reason: not valid java name */
    private String f106if;

    public ad1(String str, String str2) {
        this.f105do = str;
        this.f106if = str2;
    }

    /* renamed from: do, reason: not valid java name */
    private int m177do(String str) {
        if (str == null) {
            return 1;
        }
        return str.hashCode();
    }

    /* renamed from: new, reason: not valid java name */
    private boolean m178new(String str, String str2) {
        if (str == str2) {
            return true;
        }
        if (str == null || str2 == null) {
            return false;
        }
        return str.equals(str2);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof ad1)) {
            return false;
        }
        ad1 ad1Var = (ad1) obj;
        return ad1Var == this || (m178new(this.f105do, ad1Var.f105do) && m178new(this.f106if, ad1Var.f106if));
    }

    /* renamed from: for, reason: not valid java name */
    public String m179for() {
        return this.f106if;
    }

    public int hashCode() {
        return m177do(this.f105do) + (m177do(this.f106if) * 31);
    }

    /* renamed from: if, reason: not valid java name */
    public String m180if() {
        return this.f105do;
    }
}
