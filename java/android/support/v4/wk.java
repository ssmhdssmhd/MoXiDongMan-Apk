package android.support.v4;

import org.apache.commons.lang3.Cclass;

/* loaded from: classes3.dex */
public class wk {

    /* renamed from: do, reason: not valid java name */
    private static final String[] f7546do = new String[128];

    /* renamed from: for, reason: not valid java name */
    public static final char f7547for = '\r';

    /* renamed from: if, reason: not valid java name */
    public static final char f7548if = '\n';

    static {
        char c = 0;
        while (true) {
            String[] strArr = f7546do;
            if (c >= strArr.length) {
                return;
            }
            strArr[c] = String.valueOf(c);
            c = (char) (c + 1);
        }
    }

    /* renamed from: break, reason: not valid java name */
    public static char m9168break(Character ch, char c) {
        return ch == null ? c : ch.charValue();
    }

    /* renamed from: case, reason: not valid java name */
    public static boolean m9169case(char c) {
        return c < ' ' || c == 127;
    }

    /* renamed from: catch, reason: not valid java name */
    public static char m9170catch(String str) {
        if (Cclass.A(str)) {
            throw new IllegalArgumentException("The String must not be empty");
        }
        return str.charAt(0);
    }

    /* renamed from: class, reason: not valid java name */
    public static char m9171class(String str, char c) {
        return Cclass.A(str) ? c : str.charAt(0);
    }

    @Deprecated
    /* renamed from: const, reason: not valid java name */
    public static Character m9172const(char c) {
        return Character.valueOf(c);
    }

    /* renamed from: do, reason: not valid java name */
    public static boolean m9173do(char c) {
        return c < 128;
    }

    /* renamed from: else, reason: not valid java name */
    public static boolean m9174else(char c) {
        return c >= '0' && c <= '9';
    }

    /* renamed from: final, reason: not valid java name */
    public static Character m9175final(String str) {
        if (Cclass.A(str)) {
            return null;
        }
        return Character.valueOf(str.charAt(0));
    }

    /* renamed from: for, reason: not valid java name */
    public static boolean m9176for(char c) {
        return c >= 'a' && c <= 'z';
    }

    /* renamed from: goto, reason: not valid java name */
    public static boolean m9177goto(char c) {
        return c >= ' ' && c < 127;
    }

    /* renamed from: if, reason: not valid java name */
    public static boolean m9178if(char c) {
        return m9181new(c) || m9176for(c);
    }

    /* renamed from: import, reason: not valid java name */
    public static int m9179import(Character ch, int i) {
        return ch == null ? i : m9187throw(ch.charValue(), i);
    }

    /* renamed from: native, reason: not valid java name */
    public static String m9180native(char c) {
        return c < 128 ? f7546do[c] : new String(new char[]{c});
    }

    /* renamed from: new, reason: not valid java name */
    public static boolean m9181new(char c) {
        return c >= 'A' && c <= 'Z';
    }

    /* renamed from: public, reason: not valid java name */
    public static String m9182public(Character ch) {
        if (ch == null) {
            return null;
        }
        return m9180native(ch.charValue());
    }

    /* renamed from: return, reason: not valid java name */
    public static String m9183return(char c) {
        if (c < 16) {
            return "\\u000" + Integer.toHexString(c);
        }
        if (c < 256) {
            return "\\u00" + Integer.toHexString(c);
        }
        if (c < 4096) {
            return "\\u0" + Integer.toHexString(c);
        }
        return "\\u" + Integer.toHexString(c);
    }

    /* renamed from: static, reason: not valid java name */
    public static String m9184static(Character ch) {
        if (ch == null) {
            return null;
        }
        return m9183return(ch.charValue());
    }

    /* renamed from: super, reason: not valid java name */
    public static int m9185super(char c) {
        if (m9174else(c)) {
            return c - '0';
        }
        throw new IllegalArgumentException("The character " + c + " is not in the range '0' - '9'");
    }

    /* renamed from: this, reason: not valid java name */
    public static char m9186this(Character ch) {
        if (ch != null) {
            return ch.charValue();
        }
        throw new IllegalArgumentException("The Character must not be null");
    }

    /* renamed from: throw, reason: not valid java name */
    public static int m9187throw(char c, int i) {
        return !m9174else(c) ? i : c - '0';
    }

    /* renamed from: try, reason: not valid java name */
    public static boolean m9188try(char c) {
        return m9178if(c) || m9174else(c);
    }

    /* renamed from: while, reason: not valid java name */
    public static int m9189while(Character ch) {
        if (ch != null) {
            return m9185super(ch.charValue());
        }
        throw new IllegalArgumentException("The character must not be null");
    }
}
