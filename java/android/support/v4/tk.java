package android.support.v4;

import org.apache.commons.lang3.Cclass;
import org.apache.commons.lang3.Cnew;

/* loaded from: classes3.dex */
public class tk {
    /* renamed from: case, reason: not valid java name */
    private static String m7975case(String str, String[] strArr, boolean z) {
        Cnew cnew = Cnew.getInstance(strArr);
        StringBuilder sb = new StringBuilder(str.length());
        char[] charArray = str.toCharArray();
        int length = charArray.length;
        for (int i = 0; i < length; i++) {
            if (cnew.contains(charArray[i]) == z) {
                sb.append(charArray[i]);
            }
        }
        return sb.toString();
    }

    /* renamed from: do, reason: not valid java name */
    public static boolean m7976do(String str, String... strArr) {
        if (!Cclass.A(str) && !m7978for(strArr)) {
            Cnew cnew = Cnew.getInstance(strArr);
            for (char c : str.toCharArray()) {
                if (cnew.contains(c)) {
                    return true;
                }
            }
        }
        return false;
    }

    /* renamed from: else, reason: not valid java name */
    public static String m7977else(String str, String... strArr) {
        if (Cclass.A(str) || m7978for(strArr)) {
            return str;
        }
        Cnew cnew = Cnew.getInstance(strArr);
        StringBuilder sb = new StringBuilder(str.length());
        char[] charArray = str.toCharArray();
        int length = charArray.length;
        char c = ' ';
        for (int i = 0; i < length; i++) {
            char c2 = charArray[i];
            if (c2 != c || i == 0 || !cnew.contains(c2)) {
                sb.append(c2);
                c = c2;
            }
        }
        return sb.toString();
    }

    /* renamed from: for, reason: not valid java name */
    private static boolean m7978for(String[] strArr) {
        if (strArr == null) {
            return true;
        }
        for (String str : strArr) {
            if (Cclass.E(str)) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: if, reason: not valid java name */
    public static int m7979if(String str, String... strArr) {
        if (Cclass.A(str) || m7978for(strArr)) {
            return 0;
        }
        Cnew cnew = Cnew.getInstance(strArr);
        int i = 0;
        for (char c : str.toCharArray()) {
            if (cnew.contains(c)) {
                i++;
            }
        }
        return i;
    }

    /* renamed from: new, reason: not valid java name */
    public static String m7980new(String str, String... strArr) {
        return (Cclass.A(str) || m7978for(strArr)) ? str : m7975case(str, strArr, false);
    }

    /* renamed from: try, reason: not valid java name */
    public static String m7981try(String str, String... strArr) {
        if (str == null) {
            return null;
        }
        return (str.isEmpty() || m7978for(strArr)) ? "" : m7975case(str, strArr, true);
    }
}
