package android.support.v4;

import com.google.zxing.client.result.Celse;
import java.util.regex.Pattern;

/* loaded from: classes2.dex */
public final class xa2 extends oc1 {

    /* renamed from: new, reason: not valid java name */
    private static final Pattern f7855new = Pattern.compile(":/*([^/@]+)@[^/]+");

    /* renamed from: for, reason: not valid java name */
    private final String f7856for;

    /* renamed from: if, reason: not valid java name */
    private final String f7857if;

    public xa2(String str, String str2) {
        super(Celse.URI);
        this.f7857if = m9449this(str);
        this.f7856for = str2;
    }

    /* renamed from: else, reason: not valid java name */
    private static boolean m9448else(String str, int i) {
        int i2 = i + 1;
        int iIndexOf = str.indexOf(47, i2);
        if (iIndexOf < 0) {
            iIndexOf = str.length();
        }
        return xn1.m9555try(str, i2, iIndexOf - i2);
    }

    /* renamed from: this, reason: not valid java name */
    private static String m9449this(String str) {
        String strTrim = str.trim();
        int iIndexOf = strTrim.indexOf(58);
        return (iIndexOf < 0 || m9448else(strTrim, iIndexOf)) ? "http://".concat(strTrim) : strTrim;
    }

    /* renamed from: case, reason: not valid java name */
    public String m9450case() {
        return this.f7857if;
    }

    @Override // android.support.v4.oc1
    /* renamed from: do */
    public String mo804do() {
        StringBuilder sb = new StringBuilder(30);
        oc1.m5549for(this.f7856for, sb);
        oc1.m5549for(this.f7857if, sb);
        return sb.toString();
    }

    /* renamed from: goto, reason: not valid java name */
    public boolean m9451goto() {
        return f7855new.matcher(this.f7857if).find();
    }

    /* renamed from: try, reason: not valid java name */
    public String m9452try() {
        return this.f7856for;
    }
}
