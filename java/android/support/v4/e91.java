package android.support.v4;

import freemarker.template.utility.Cif;
import freemarker.template.utility.Csuper;

/* loaded from: classes.dex */
public abstract class e91 {
    /* renamed from: do */
    public abstract String mo887do();

    /* renamed from: for */
    public abstract boolean mo888for();

    /* renamed from: if */
    public abstract String mo889if();

    /* renamed from: new, reason: not valid java name */
    public String m1692new() {
        return "";
    }

    public final String toString() {
        String strM1692new = m1692new();
        StringBuilder sb = new StringBuilder();
        sb.append(mo889if());
        sb.append("(mimeType=");
        sb.append(Csuper.m29330synchronized(mo887do()));
        sb.append(", class=");
        sb.append(Cif.m29274const(this, true));
        sb.append(strM1692new.length() != 0 ? ", " : "");
        sb.append(strM1692new);
        sb.append(")");
        return sb.toString();
    }
}
