package android.support.v4;

@ki0
/* loaded from: classes.dex */
public final class t3 {
    public static final char a = 127;

    /* renamed from: abstract, reason: not valid java name */
    public static final byte f6375abstract = 26;
    private static final char b = ' ';

    /* renamed from: break, reason: not valid java name */
    public static final byte f6376break = 9;

    /* renamed from: case, reason: not valid java name */
    public static final byte f6377case = 5;

    /* renamed from: catch, reason: not valid java name */
    public static final byte f6378catch = 10;

    /* renamed from: class, reason: not valid java name */
    public static final byte f6379class = 10;

    /* renamed from: const, reason: not valid java name */
    public static final byte f6380const = 11;

    /* renamed from: continue, reason: not valid java name */
    public static final byte f6381continue = 27;

    /* renamed from: default, reason: not valid java name */
    public static final byte f6382default = 21;

    /* renamed from: do, reason: not valid java name */
    public static final byte f6383do = 0;

    /* renamed from: else, reason: not valid java name */
    public static final byte f6384else = 6;

    /* renamed from: extends, reason: not valid java name */
    public static final byte f6385extends = 22;

    /* renamed from: final, reason: not valid java name */
    public static final byte f6386final = 12;

    /* renamed from: finally, reason: not valid java name */
    public static final byte f6387finally = 23;

    /* renamed from: for, reason: not valid java name */
    public static final byte f6388for = 2;

    /* renamed from: goto, reason: not valid java name */
    public static final byte f6389goto = 7;

    /* renamed from: if, reason: not valid java name */
    public static final byte f6390if = 1;

    /* renamed from: implements, reason: not valid java name */
    public static final byte f6391implements = 32;

    /* renamed from: import, reason: not valid java name */
    public static final byte f6392import = 16;

    /* renamed from: instanceof, reason: not valid java name */
    public static final byte f6393instanceof = Byte.MAX_VALUE;

    /* renamed from: interface, reason: not valid java name */
    public static final byte f6394interface = 30;

    /* renamed from: native, reason: not valid java name */
    public static final byte f6395native = 17;

    /* renamed from: new, reason: not valid java name */
    public static final byte f6396new = 3;

    /* renamed from: package, reason: not valid java name */
    public static final byte f6397package = 24;

    /* renamed from: private, reason: not valid java name */
    public static final byte f6398private = 25;

    /* renamed from: protected, reason: not valid java name */
    public static final byte f6399protected = 31;

    /* renamed from: public, reason: not valid java name */
    public static final byte f6400public = 17;

    /* renamed from: return, reason: not valid java name */
    public static final byte f6401return = 18;

    /* renamed from: static, reason: not valid java name */
    public static final byte f6402static = 19;

    /* renamed from: strictfp, reason: not valid java name */
    public static final byte f6403strictfp = 28;

    /* renamed from: super, reason: not valid java name */
    public static final byte f6404super = 13;

    /* renamed from: switch, reason: not valid java name */
    public static final byte f6405switch = 19;

    /* renamed from: synchronized, reason: not valid java name */
    public static final char f6406synchronized = 0;

    /* renamed from: this, reason: not valid java name */
    public static final byte f6407this = 8;

    /* renamed from: throw, reason: not valid java name */
    public static final byte f6408throw = 14;

    /* renamed from: throws, reason: not valid java name */
    public static final byte f6409throws = 20;

    /* renamed from: transient, reason: not valid java name */
    public static final byte f6410transient = 32;

    /* renamed from: try, reason: not valid java name */
    public static final byte f6411try = 4;

    /* renamed from: volatile, reason: not valid java name */
    public static final byte f6412volatile = 29;

    /* renamed from: while, reason: not valid java name */
    public static final byte f6413while = 15;

    private t3() {
    }

    /* renamed from: break, reason: not valid java name */
    public static String m7685break(String str) {
        int length = str.length();
        int i = 0;
        while (i < length) {
            if (m7690for(str.charAt(i))) {
                char[] charArray = str.toCharArray();
                while (i < length) {
                    char c = charArray[i];
                    if (m7690for(c)) {
                        charArray[i] = (char) (c ^ b);
                    }
                    i++;
                }
                return String.valueOf(charArray);
            }
            i++;
        }
        return str;
    }

    /* renamed from: case, reason: not valid java name */
    public static String m7686case(CharSequence charSequence) {
        if (charSequence instanceof String) {
            return m7689else((String) charSequence);
        }
        int length = charSequence.length();
        char[] cArr = new char[length];
        for (int i = 0; i < length; i++) {
            cArr[i] = m7695try(charSequence.charAt(i));
        }
        return String.valueOf(cArr);
    }

    /* renamed from: catch, reason: not valid java name */
    public static String m7687catch(CharSequence charSequence, int i, String str) {
        af1.m205continue(charSequence);
        int length = i - str.length();
        af1.m204const(length >= 0, "maxLength (%s) must be >= length of the truncation indicator (%s)", i, str.length());
        int length2 = charSequence.length();
        String str2 = charSequence;
        if (length2 <= i) {
            String string = charSequence.toString();
            int length3 = string.length();
            str2 = string;
            if (length3 <= i) {
                return string;
            }
        }
        StringBuilder sb = new StringBuilder(i);
        sb.append((CharSequence) str2, 0, length);
        sb.append(str);
        return sb.toString();
    }

    /* renamed from: do, reason: not valid java name */
    public static boolean m7688do(CharSequence charSequence, CharSequence charSequence2) {
        int iM7692if;
        int length = charSequence.length();
        if (charSequence == charSequence2) {
            return true;
        }
        if (length != charSequence2.length()) {
            return false;
        }
        for (int i = 0; i < length; i++) {
            char cCharAt = charSequence.charAt(i);
            char cCharAt2 = charSequence2.charAt(i);
            if (cCharAt != cCharAt2 && ((iM7692if = m7692if(cCharAt)) >= 26 || iM7692if != m7692if(cCharAt2))) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: else, reason: not valid java name */
    public static String m7689else(String str) {
        int length = str.length();
        int i = 0;
        while (i < length) {
            if (m7693new(str.charAt(i))) {
                char[] charArray = str.toCharArray();
                while (i < length) {
                    char c = charArray[i];
                    if (m7693new(c)) {
                        charArray[i] = (char) (c ^ b);
                    }
                    i++;
                }
                return String.valueOf(charArray);
            }
            i++;
        }
        return str;
    }

    /* renamed from: for, reason: not valid java name */
    public static boolean m7690for(char c) {
        return c >= 'a' && c <= 'z';
    }

    /* renamed from: goto, reason: not valid java name */
    public static char m7691goto(char c) {
        return m7690for(c) ? (char) (c ^ b) : c;
    }

    /* renamed from: if, reason: not valid java name */
    private static int m7692if(char c) {
        return (char) ((c | b) - 97);
    }

    /* renamed from: new, reason: not valid java name */
    public static boolean m7693new(char c) {
        return c >= 'A' && c <= 'Z';
    }

    /* renamed from: this, reason: not valid java name */
    public static String m7694this(CharSequence charSequence) {
        if (charSequence instanceof String) {
            return m7685break((String) charSequence);
        }
        int length = charSequence.length();
        char[] cArr = new char[length];
        for (int i = 0; i < length; i++) {
            cArr[i] = m7691goto(charSequence.charAt(i));
        }
        return String.valueOf(cArr);
    }

    /* renamed from: try, reason: not valid java name */
    public static char m7695try(char c) {
        return m7693new(c) ? (char) (c ^ b) : c;
    }
}
