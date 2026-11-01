package android.support.v4;

/* loaded from: classes.dex */
public abstract class al2 {

    /* renamed from: for, reason: not valid java name */
    private static final String f206for = new String();

    /* renamed from: do, reason: not valid java name */
    private Object f207do;

    /* renamed from: if, reason: not valid java name */
    private volatile String f208if = f206for;

    public al2(Object obj) {
        this.f207do = obj;
    }

    /* renamed from: do, reason: not valid java name */
    public abstract String mo273do(Object obj);

    public String toString() {
        String strMo273do = this.f208if;
        String str = f206for;
        if (strMo273do == str) {
            synchronized (this) {
                strMo273do = this.f208if;
                if (strMo273do == str) {
                    strMo273do = mo273do(this.f207do);
                    this.f208if = strMo273do;
                    this.f207do = null;
                }
            }
        }
        return strMo273do;
    }
}
