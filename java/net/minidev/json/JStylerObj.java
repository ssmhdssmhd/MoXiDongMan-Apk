package net.minidev.json;

import freemarker.core.b2;
import java.io.IOException;

/* loaded from: classes3.dex */
class JStylerObj {

    /* renamed from: do, reason: not valid java name */
    public static final Cnew f28193do = new Cnew(null);

    /* renamed from: if, reason: not valid java name */
    public static final Ctry f28195if = new Ctry(0 == true ? 1 : 0);

    /* renamed from: for, reason: not valid java name */
    public static final Cfor f28194for = new Cfor(0 == true ? 1 : 0);

    /* renamed from: new, reason: not valid java name */
    public static final Cif f28196new = new Cif(0 == true ? 1 : 0);

    /* renamed from: try, reason: not valid java name */
    public static final Cdo f28197try = new Cdo(0 == true ? 1 : 0);

    public interface MustProtect {
        boolean mustBeProtect(String str);
    }

    public interface StringProtector {
        void escape(String str, Appendable appendable);
    }

    /* renamed from: net.minidev.json.JStylerObj$do, reason: invalid class name */
    public static class Cdo implements StringProtector {
        private Cdo() {
        }

        @Override // net.minidev.json.JStylerObj.StringProtector
        public void escape(String str, Appendable appendable) throws IOException {
            try {
                int length = str.length();
                for (int i = 0; i < length; i++) {
                    char cCharAt = str.charAt(i);
                    if (cCharAt == '\f') {
                        appendable.append("\\f");
                    } else if (cCharAt == '\r') {
                        appendable.append("\\r");
                    } else if (cCharAt == '\"') {
                        appendable.append("\\\"");
                    } else if (cCharAt == '/') {
                        appendable.append("\\/");
                    } else if (cCharAt != '\\') {
                        switch (cCharAt) {
                            case '\b':
                                appendable.append("\\b");
                                break;
                            case '\t':
                                appendable.append("\\t");
                                break;
                            case '\n':
                                appendable.append("\\n");
                                break;
                            default:
                                if ((cCharAt < 0 || cCharAt > 31) && ((cCharAt < 127 || cCharAt > 159) && (cCharAt < 8192 || cCharAt > 8447))) {
                                    appendable.append(cCharAt);
                                    break;
                                } else {
                                    appendable.append("\\u");
                                    appendable.append(net.lingala.zip4j.crypto.PBKDF2.Cdo.f28079do.charAt((cCharAt >> '\f') & 15));
                                    appendable.append(net.lingala.zip4j.crypto.PBKDF2.Cdo.f28079do.charAt((cCharAt >> '\b') & 15));
                                    appendable.append(net.lingala.zip4j.crypto.PBKDF2.Cdo.f28079do.charAt((cCharAt >> 4) & 15));
                                    appendable.append(net.lingala.zip4j.crypto.PBKDF2.Cdo.f28079do.charAt((cCharAt >> 0) & 15));
                                    break;
                                }
                                break;
                        }
                    } else {
                        appendable.append("\\\\");
                    }
                }
            } catch (IOException unused) {
                throw new RuntimeException("Impossible Error");
            }
        }

        public /* synthetic */ Cdo(Cdo cdo) {
            this();
        }
    }

    /* renamed from: net.minidev.json.JStylerObj$for, reason: invalid class name */
    public static class Cfor implements MustProtect {
        private Cfor() {
        }

        @Override // net.minidev.json.JStylerObj.MustProtect
        public boolean mustBeProtect(String str) {
            if (str == null) {
                return false;
            }
            int length = str.length();
            if (length == 0 || str.trim() != str) {
                return true;
            }
            char cCharAt = str.charAt(0);
            if (!JStylerObj.m31568for(cCharAt) && !JStylerObj.m31567else(cCharAt)) {
                for (int i = 1; i < length; i++) {
                    char cCharAt2 = str.charAt(i);
                    if (!JStylerObj.m31571try(cCharAt2) && !JStylerObj.m31567else(cCharAt2)) {
                    }
                }
                if (JStylerObj.m31566do(str)) {
                    return true;
                }
                char cCharAt3 = str.charAt(0);
                if ((cCharAt3 >= '0' && cCharAt3 <= '9') || cCharAt3 == '-') {
                    int i2 = 1;
                    while (i2 < length) {
                        cCharAt3 = str.charAt(i2);
                        if (cCharAt3 < '0' || cCharAt3 > '9') {
                            break;
                        }
                        i2++;
                    }
                    if (i2 == length) {
                        return true;
                    }
                    if (cCharAt3 == '.') {
                        i2++;
                    }
                    while (i2 < length) {
                        cCharAt3 = str.charAt(i2);
                        if (cCharAt3 < '0' || cCharAt3 > '9') {
                            break;
                        }
                        i2++;
                    }
                    if (i2 == length) {
                        return true;
                    }
                    if (cCharAt3 == 'E' || cCharAt3 == 'e') {
                        i2++;
                        if (i2 == length) {
                            return false;
                        }
                        char cCharAt4 = str.charAt(i2);
                        if (cCharAt4 == '+' || cCharAt4 == '-') {
                            i2++;
                            str.charAt(i2);
                        }
                    }
                    if (i2 == length) {
                        return false;
                    }
                    while (i2 < length) {
                        char cCharAt5 = str.charAt(i2);
                        if (cCharAt5 < '0' || cCharAt5 > '9') {
                            break;
                        }
                        i2++;
                    }
                    if (i2 == length) {
                        return true;
                    }
                }
                return false;
            }
            return true;
        }

        public /* synthetic */ Cfor(Cfor cfor) {
            this();
        }
    }

    /* renamed from: net.minidev.json.JStylerObj$if, reason: invalid class name */
    public static class Cif implements StringProtector {
        private Cif() {
        }

        @Override // net.minidev.json.JStylerObj.StringProtector
        public void escape(String str, Appendable appendable) throws IOException {
            try {
                int length = str.length();
                for (int i = 0; i < length; i++) {
                    char cCharAt = str.charAt(i);
                    if (cCharAt == '\f') {
                        appendable.append("\\f");
                    } else if (cCharAt == '\r') {
                        appendable.append("\\r");
                    } else if (cCharAt == '\"') {
                        appendable.append("\\\"");
                    } else if (cCharAt != '\\') {
                        switch (cCharAt) {
                            case '\b':
                                appendable.append("\\b");
                                break;
                            case '\t':
                                appendable.append("\\t");
                                break;
                            case '\n':
                                appendable.append("\\n");
                                break;
                            default:
                                if ((cCharAt < 0 || cCharAt > 31) && ((cCharAt < 127 || cCharAt > 159) && (cCharAt < 8192 || cCharAt > 8447))) {
                                    appendable.append(cCharAt);
                                    break;
                                } else {
                                    appendable.append("\\u");
                                    appendable.append(net.lingala.zip4j.crypto.PBKDF2.Cdo.f28079do.charAt((cCharAt >> '\f') & 15));
                                    appendable.append(net.lingala.zip4j.crypto.PBKDF2.Cdo.f28079do.charAt((cCharAt >> '\b') & 15));
                                    appendable.append(net.lingala.zip4j.crypto.PBKDF2.Cdo.f28079do.charAt((cCharAt >> 4) & 15));
                                    appendable.append(net.lingala.zip4j.crypto.PBKDF2.Cdo.f28079do.charAt((cCharAt >> 0) & 15));
                                    break;
                                }
                        }
                    } else {
                        appendable.append("\\\\");
                    }
                }
            } catch (IOException unused) {
                throw new RuntimeException("Impossible Exeption");
            }
        }

        public /* synthetic */ Cif(Cif cif) {
            this();
        }
    }

    /* renamed from: net.minidev.json.JStylerObj$new, reason: invalid class name */
    public static class Cnew implements MustProtect {
        private Cnew() {
        }

        @Override // net.minidev.json.JStylerObj.MustProtect
        public boolean mustBeProtect(String str) {
            if (str == null) {
                return false;
            }
            int length = str.length();
            if (length == 0 || str.trim() != str) {
                return true;
            }
            char cCharAt = str.charAt(0);
            if ((cCharAt >= '0' && cCharAt <= '9') || cCharAt == '-') {
                return true;
            }
            for (int i = 0; i < length; i++) {
                char cCharAt2 = str.charAt(i);
                if (JStylerObj.m31569if(cCharAt2) || JStylerObj.m31568for(cCharAt2) || JStylerObj.m31570new(cCharAt2) || JStylerObj.m31567else(cCharAt2)) {
                    return true;
                }
            }
            return JStylerObj.m31566do(str);
        }

        public /* synthetic */ Cnew(Cnew cnew) {
            this();
        }
    }

    /* renamed from: net.minidev.json.JStylerObj$try, reason: invalid class name */
    public static class Ctry implements MustProtect {
        private Ctry() {
        }

        @Override // net.minidev.json.JStylerObj.MustProtect
        public boolean mustBeProtect(String str) {
            return true;
        }

        public /* synthetic */ Ctry(Ctry ctry) {
            this();
        }
    }

    /* renamed from: case, reason: not valid java name */
    public static boolean m31565case(char c) {
        return c == '{' || c == '[' || c == ',' || c == ':';
    }

    /* renamed from: do, reason: not valid java name */
    public static boolean m31566do(String str) {
        if (str.length() < 3) {
            return false;
        }
        char cCharAt = str.charAt(0);
        if (cCharAt == 'n') {
            return str.equals("null");
        }
        if (cCharAt == 't') {
            return str.equals(b2.f23511if);
        }
        if (cCharAt == 'f') {
            return str.equals(b2.f23510do);
        }
        if (cCharAt == 'N') {
            return str.equals("NaN");
        }
        return false;
    }

    /* renamed from: else, reason: not valid java name */
    public static boolean m31567else(char c) {
        if (c >= 0 && c <= 31) {
            return true;
        }
        if (c < 127 || c > 159) {
            return c >= 8192 && c <= 8447;
        }
        return true;
    }

    /* renamed from: for, reason: not valid java name */
    public static boolean m31568for(char c) {
        return c == '{' || c == '[' || c == ',' || c == '}' || c == ']' || c == ':' || c == '\'' || c == '\"';
    }

    /* renamed from: if, reason: not valid java name */
    public static boolean m31569if(char c) {
        return c == '\r' || c == '\n' || c == '\t' || c == ' ';
    }

    /* renamed from: new, reason: not valid java name */
    public static boolean m31570new(char c) {
        return c == '\b' || c == '\f' || c == '\n';
    }

    /* renamed from: try, reason: not valid java name */
    public static boolean m31571try(char c) {
        return c == '}' || c == ']' || c == ',' || c == ':';
    }
}
