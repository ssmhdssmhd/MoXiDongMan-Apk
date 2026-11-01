package android.support.v4;

/* loaded from: classes3.dex */
public class l51 {

    /* renamed from: do, reason: not valid java name */
    private String f3544do;

    /* renamed from: if, reason: not valid java name */
    private int f3545if = 0;

    public l51(String str) {
        this.f3544do = str;
    }

    /* renamed from: do, reason: not valid java name */
    public boolean m4597do() {
        return this.f3545if != -1;
    }

    /* renamed from: if, reason: not valid java name */
    public String m4598if() {
        int i = this.f3545if;
        if (i == -1) {
            return null;
        }
        int iIndexOf = this.f3544do.indexOf(46, i);
        if (iIndexOf == -1) {
            String strSubstring = this.f3544do.substring(this.f3545if);
            this.f3545if = -1;
            return strSubstring;
        }
        String strSubstring2 = this.f3544do.substring(this.f3545if, iIndexOf);
        this.f3545if = iIndexOf + 1;
        return strSubstring2;
    }
}
