package android.support.v4;

import freemarker.template.utility.Csuper;

/* loaded from: classes.dex */
public final class yk2 {
    private yk2() {
    }

    /* renamed from: case, reason: not valid java name */
    public static String m9888case(String str) {
        return m9889do(str);
    }

    /* renamed from: do, reason: not valid java name */
    private static String m9889do(String str) {
        return Csuper.m(Csuper.m(Csuper.m(str, "-", "\\-"), ".", "\\."), ":", "\\:");
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x001f  */
    /* renamed from: else, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static String m9890else(String str) {
        char c = 0;
        for (int i = 0; i < str.length(); i++) {
            char cCharAt = str.charAt(i);
            if (i == 0) {
                if (Csuper.m29327strictfp(cCharAt)) {
                    continue;
                } else if (cCharAt != '@') {
                    if ((c != 0 && c != '\\') || (cCharAt != '-' && cCharAt != '.' && cCharAt != ':')) {
                        c = ca2.f674do;
                        break;
                    }
                    c = '\\';
                } else {
                    continue;
                }
            } else {
                if (Csuper.m29305continue(cCharAt)) {
                    continue;
                }
            }
        }
        if (c == 0) {
            return str;
        }
        if (c == '\"') {
            return Csuper.m29311finally(str);
        }
        if (c == '\\') {
            return m9889do(str);
        }
        throw new mc();
    }

    /* renamed from: for, reason: not valid java name */
    public static int m9891for(String str) {
        int length = str.length();
        for (int i = 0; i < length; i++) {
            char cCharAt = str.charAt(i);
            if (cCharAt == '_') {
                return 11;
            }
            if (m9893new(cCharAt)) {
                return 12;
            }
        }
        return 10;
    }

    /* renamed from: if, reason: not valid java name */
    public static String m9892if(String str) {
        int i = 0;
        while (i < str.length() && Character.isLowerCase(str.charAt(i))) {
            i++;
        }
        if (i == str.length()) {
            return str;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(str.substring(0, i));
        while (i < str.length()) {
            char cCharAt = str.charAt(i);
            if (m9893new(cCharAt)) {
                sb.append('_');
                sb.append(Character.toLowerCase(cCharAt));
            } else {
                sb.append(cCharAt);
            }
            i++;
        }
        return sb.toString();
    }

    /* renamed from: new, reason: not valid java name */
    public static boolean m9893new(char c) {
        return c >= 'A' && c <= 'Z';
    }

    /* renamed from: try, reason: not valid java name */
    public static String m9894try(String str) {
        return m9889do(str);
    }
}
