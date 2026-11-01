package freemarker.ext.dom;

import freemarker.core.d0;

/* renamed from: freemarker.ext.dom.case, reason: invalid class name */
/* loaded from: classes.dex */
final class Ccase {
    private Ccase() {
    }

    /* renamed from: do, reason: not valid java name */
    public static boolean m28765do(String str) {
        return m28767if(str, 0);
    }

    /* renamed from: for, reason: not valid java name */
    public static boolean m28766for(String str, String str2, String str3, d0 d0Var) {
        String strE1 = d0Var.E1();
        if (strE1 != null && strE1.equals(str3)) {
            if (str.equals(str2)) {
                return true;
            }
            StringBuilder sb = new StringBuilder();
            sb.append("D:");
            sb.append(str2);
            return str.equals(sb.toString());
        }
        if (!"".equals(str3)) {
            String strD2 = d0Var.d2(str3);
            if (strD2 == null) {
                return false;
            }
            return str.equals(strD2 + ":" + str2);
        }
        if (strE1 != null) {
            return str.equals("N:" + str2);
        }
        if (str.equals(str2)) {
            return true;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("N:");
        sb2.append(str2);
        return str.equals(sb2.toString());
    }

    /* renamed from: if, reason: not valid java name */
    public static boolean m28767if(String str, int i) {
        int i2;
        int length = str.length();
        for (int i3 = i; i3 < length; i3++) {
            char cCharAt = str.charAt(i3);
            if (i3 == i && (cCharAt == '-' || cCharAt == '.' || Character.isDigit(cCharAt))) {
                return false;
            }
            if (!Character.isLetterOrDigit(cCharAt) && cCharAt != '_' && cCharAt != '-' && cCharAt != '.' && (cCharAt != ':' || ((i2 = i3 + 1) < length && str.charAt(i2) == ':'))) {
                return false;
            }
        }
        return true;
    }
}
