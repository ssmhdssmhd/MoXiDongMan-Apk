package android.support.v4;

import org.apache.commons.lang3.Cclass;

/* loaded from: classes3.dex */
public class hg2 {
    /* renamed from: break, reason: not valid java name */
    public static String m3023break(String str, char... cArr) {
        int length = cArr == null ? -1 : cArr.length;
        if (Cclass.A(str) || length == 0) {
            return str;
        }
        char[] charArray = str.toCharArray();
        boolean z = true;
        for (int i = 0; i < charArray.length; i++) {
            char c = charArray[i];
            if (m3028else(c, cArr)) {
                z = true;
            } else if (z) {
                charArray[i] = Character.toLowerCase(c);
                z = false;
            }
        }
        return new String(charArray);
    }

    /* renamed from: case, reason: not valid java name */
    public static String m3024case(String str, char... cArr) {
        if (Cclass.A(str)) {
            return str;
        }
        if (cArr != null && cArr.length == 0) {
            return "";
        }
        int length = str.length();
        char[] cArr2 = new char[(length / 2) + 1];
        int i = 0;
        boolean z = true;
        for (int i2 = 0; i2 < length; i2++) {
            char cCharAt = str.charAt(i2);
            if (m3028else(cCharAt, cArr)) {
                z = true;
            } else if (z) {
                cArr2[i] = cCharAt;
                i++;
                z = false;
            }
        }
        return new String(cArr2, 0, i);
    }

    /* renamed from: catch, reason: not valid java name */
    public static String m3025catch(String str, int i) {
        return m3026class(str, i, null, false);
    }

    /* renamed from: class, reason: not valid java name */
    public static String m3026class(String str, int i, String str2, boolean z) {
        if (str == null) {
            return null;
        }
        if (str2 == null) {
            str2 = v32.f7063instanceof;
        }
        if (i < 1) {
            i = 1;
        }
        int length = str.length();
        int i2 = 0;
        StringBuilder sb = new StringBuilder(length + 32);
        while (length - i2 > i) {
            if (str.charAt(i2) == ' ') {
                i2++;
            } else {
                int i3 = i + i2;
                int iLastIndexOf = str.lastIndexOf(32, i3);
                if (iLastIndexOf >= i2) {
                    sb.append(str.substring(i2, iLastIndexOf));
                    sb.append(str2);
                    i2 = iLastIndexOf + 1;
                } else {
                    if (z) {
                        sb.append(str.substring(i2, i3));
                        sb.append(str2);
                    } else {
                        int iIndexOf = str.indexOf(32, i3);
                        if (iIndexOf >= 0) {
                            sb.append(str.substring(i2, iIndexOf));
                            sb.append(str2);
                            i3 = iIndexOf + 1;
                        } else {
                            sb.append(str.substring(i2));
                            i2 = length;
                        }
                    }
                    i2 = i3;
                }
            }
        }
        sb.append(str.substring(i2));
        return sb.toString();
    }

    /* renamed from: do, reason: not valid java name */
    public static String m3027do(String str) {
        return m3031if(str, null);
    }

    /* renamed from: else, reason: not valid java name */
    private static boolean m3028else(char c, char[] cArr) {
        if (cArr == null) {
            return Character.isWhitespace(c);
        }
        for (char c2 : cArr) {
            if (c == c2) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: for, reason: not valid java name */
    public static String m3029for(String str) {
        return m3032new(str, null);
    }

    /* renamed from: goto, reason: not valid java name */
    public static String m3030goto(String str) {
        if (Cclass.A(str)) {
            return str;
        }
        char[] charArray = str.toCharArray();
        boolean zIsWhitespace = true;
        int i = 0;
        while (i < charArray.length) {
            char c = charArray[i];
            if (Character.isUpperCase(c) || Character.isTitleCase(c)) {
                charArray[i] = Character.toLowerCase(c);
            } else {
                if (!Character.isLowerCase(c)) {
                    zIsWhitespace = Character.isWhitespace(c);
                } else if (zIsWhitespace) {
                    charArray[i] = Character.toTitleCase(c);
                } else {
                    charArray[i] = Character.toUpperCase(c);
                }
                i++;
            }
            zIsWhitespace = false;
            i++;
        }
        return new String(charArray);
    }

    /* renamed from: if, reason: not valid java name */
    public static String m3031if(String str, char... cArr) {
        int length = cArr == null ? -1 : cArr.length;
        if (Cclass.A(str) || length == 0) {
            return str;
        }
        char[] charArray = str.toCharArray();
        boolean z = true;
        for (int i = 0; i < charArray.length; i++) {
            char c = charArray[i];
            if (m3028else(c, cArr)) {
                z = true;
            } else if (z) {
                charArray[i] = Character.toTitleCase(c);
                z = false;
            }
        }
        return new String(charArray);
    }

    /* renamed from: new, reason: not valid java name */
    public static String m3032new(String str, char... cArr) {
        return (Cclass.A(str) || (cArr == null ? -1 : cArr.length) == 0) ? str : m3031if(str.toLowerCase(), cArr);
    }

    /* renamed from: this, reason: not valid java name */
    public static String m3033this(String str) {
        return m3023break(str, null);
    }

    /* renamed from: try, reason: not valid java name */
    public static String m3034try(String str) {
        return m3024case(str, null);
    }
}
