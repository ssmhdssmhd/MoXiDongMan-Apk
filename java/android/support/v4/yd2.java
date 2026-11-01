package android.support.v4;

import java.util.regex.Pattern;
import net.minidev.json.parser.Cdo;

/* loaded from: classes2.dex */
public final class yd2 extends xn1 {

    /* renamed from: case, reason: not valid java name */
    private static final Pattern f8191case = Pattern.compile("[IOQ]");

    /* renamed from: else, reason: not valid java name */
    private static final Pattern f8192else = Pattern.compile("[A-Z0-9]{17}");

    /* renamed from: import, reason: not valid java name */
    private static boolean m9815import(CharSequence charSequence) {
        int i = 0;
        int iM9819switch = 0;
        while (i < charSequence.length()) {
            int i2 = i + 1;
            iM9819switch += m9819switch(i2) * m9818static(charSequence.charAt(i));
            i = i2;
        }
        return charSequence.charAt(8) == m9820while(iM9819switch % 11);
    }

    /* renamed from: native, reason: not valid java name */
    private static String m9816native(CharSequence charSequence) {
        char cCharAt = charSequence.charAt(0);
        char cCharAt2 = charSequence.charAt(1);
        if (cCharAt == '9') {
            if (cCharAt2 >= 'A' && cCharAt2 <= 'E') {
                return "BR";
            }
            if (cCharAt2 < '3' || cCharAt2 > '9') {
                return null;
            }
            return "BR";
        }
        if (cCharAt == 'S') {
            if (cCharAt2 >= 'A' && cCharAt2 <= 'M') {
                return "UK";
            }
            if (cCharAt2 < 'N' || cCharAt2 > 'T') {
                return null;
            }
            return "DE";
        }
        if (cCharAt == 'Z') {
            if (cCharAt2 < 'A' || cCharAt2 > 'R') {
                return null;
            }
            return "IT";
        }
        switch (cCharAt) {
            case '1':
            case '4':
            case '5':
                return "US";
            case '2':
                return "CA";
            case '3':
                if (cCharAt2 < 'A' || cCharAt2 > 'W') {
                    return null;
                }
                return "MX";
            default:
                switch (cCharAt) {
                    case 'J':
                        if (cCharAt2 < 'A' || cCharAt2 > 'T') {
                            return null;
                        }
                        return "JP";
                    case 'K':
                        if (cCharAt2 < 'L' || cCharAt2 > 'R') {
                            return null;
                        }
                        return "KO";
                    case 'L':
                        return "CN";
                    case 'M':
                        if (cCharAt2 < 'A' || cCharAt2 > 'E') {
                            return null;
                        }
                        return "IN";
                    default:
                        switch (cCharAt) {
                            case 'V':
                                if (cCharAt2 >= 'F' && cCharAt2 <= 'R') {
                                    return "FR";
                                }
                                if (cCharAt2 < 'S' || cCharAt2 > 'W') {
                                    return null;
                                }
                                return "ES";
                            case 'W':
                                return "DE";
                            case 'X':
                                if (cCharAt2 == '0') {
                                    return "RU";
                                }
                                if (cCharAt2 < '3' || cCharAt2 > '9') {
                                    return null;
                                }
                                return "RU";
                            default:
                                return null;
                        }
                }
        }
    }

    /* renamed from: public, reason: not valid java name */
    private static int m9817public(char c) {
        if (c >= 'E' && c <= 'H') {
            return (c - 'E') + Cdo.f28226native;
        }
        if (c >= 'J' && c <= 'N') {
            return (c - 'J') + 1988;
        }
        if (c == 'P') {
            return 1993;
        }
        if (c >= 'R' && c <= 'T') {
            return (c - ay0.f285else) + 1994;
        }
        if (c >= 'V' && c <= 'Y') {
            return (c - 'V') + 1997;
        }
        if (c >= '1' && c <= '9') {
            return (c - '1') + 2001;
        }
        if (c < 'A' || c > 'D') {
            throw new IllegalArgumentException();
        }
        return (c - 'A') + 2010;
    }

    /* renamed from: static, reason: not valid java name */
    private static int m9818static(char c) {
        if (c >= 'A' && c <= 'I') {
            return (c - 'A') + 1;
        }
        if (c >= 'J' && c <= 'R') {
            return (c - 'J') + 1;
        }
        if (c >= 'S' && c <= 'Z') {
            return (c - 'S') + 2;
        }
        if (c < '0' || c > '9') {
            throw new IllegalArgumentException();
        }
        return c - '0';
    }

    /* renamed from: switch, reason: not valid java name */
    private static int m9819switch(int i) {
        if (i > 0 && i <= 7) {
            return 9 - i;
        }
        if (i == 8) {
            return 10;
        }
        if (i == 9) {
            return 0;
        }
        if (i < 10 || i > 17) {
            throw new IllegalArgumentException();
        }
        return 19 - i;
    }

    /* renamed from: while, reason: not valid java name */
    private static char m9820while(int i) {
        if (i < 10) {
            return (char) (i + 48);
        }
        if (i == 10) {
            return 'X';
        }
        throw new IllegalArgumentException();
    }

    @Override // android.support.v4.xn1
    /* renamed from: return, reason: not valid java name and merged with bridge method [inline-methods] */
    public xd2 mo243catch(wn1 wn1Var) {
        if (wn1Var.m9248if() != com.google.zxing.Cdo.CODE_39) {
            return null;
        }
        String strTrim = f8191case.matcher(wn1Var.m9245else()).replaceAll("").trim();
        if (!f8192else.matcher(strTrim).matches()) {
            return null;
        }
        try {
            if (!m9815import(strTrim)) {
                return null;
            }
            String strSubstring = strTrim.substring(0, 3);
            return new xd2(strTrim, strSubstring, strTrim.substring(3, 9), strTrim.substring(9, 17), m9816native(strSubstring), strTrim.substring(3, 8), m9817public(strTrim.charAt(9)), strTrim.charAt(10), strTrim.substring(11));
        } catch (IllegalArgumentException unused) {
            return null;
        }
    }
}
