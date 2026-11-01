package android.support.v4;

import freemarker.template.utility.Csuper;

/* loaded from: classes.dex */
public class ol2 extends Exception {
    public ol2(String str, Throwable th) {
        super(str, th);
    }

    public ol2(String str) {
        super(str);
    }

    public ol2(String str, String str2, int i) {
        String str3;
        StringBuilder sb = new StringBuilder();
        sb.append("Expression syntax error: Expected a(n) ");
        sb.append(str);
        sb.append(", but ");
        if (i < str2.length()) {
            str3 = "found character " + Csuper.m29330synchronized("" + str2.charAt(i)) + " at position " + (i + 1) + ".";
        } else {
            str3 = "the end of the parsed string was reached.";
        }
        sb.append(str3);
        super(sb.toString());
    }
}
