package android.support.v4;

import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.apache.commons.lang3.Cclass;

/* loaded from: classes2.dex */
public final class ya2 extends xn1 {

    /* renamed from: case, reason: not valid java name */
    private static final Pattern f8173case = Pattern.compile("[a-zA-Z][a-zA-Z0-9+-.]+:");

    /* renamed from: else, reason: not valid java name */
    private static final Pattern f8174else = Pattern.compile("([a-zA-Z0-9\\-]+\\.){1,6}[a-zA-Z]{2,}(:\\d{1,5})?(/|\\?|$)");

    /* renamed from: while, reason: not valid java name */
    public static boolean m9800while(String str) {
        if (str.contains(Cclass.f28652do)) {
            return false;
        }
        Matcher matcher = f8173case.matcher(str);
        if (matcher.find() && matcher.start() == 0) {
            return true;
        }
        Matcher matcher2 = f8174else.matcher(str);
        return matcher2.find() && matcher2.start() == 0;
    }

    @Override // android.support.v4.xn1
    /* renamed from: import, reason: not valid java name and merged with bridge method [inline-methods] */
    public xa2 mo243catch(wn1 wn1Var) {
        String strM9548for = xn1.m9548for(wn1Var);
        if (strM9548for.startsWith("URL:") || strM9548for.startsWith("URI:")) {
            return new xa2(strM9548for.substring(4).trim(), null);
        }
        String strTrim = strM9548for.trim();
        if (m9800while(strTrim)) {
            return new xa2(strTrim, null);
        }
        return null;
    }
}
