package android.support.v4;

import org.apache.commons.lang3.Cif;

/* loaded from: classes3.dex */
public class dc {
    /* renamed from: abstract, reason: not valid java name */
    public static String m1220abstract(Boolean bool, String str, String str2, String str3) {
        return bool == null ? str3 : bool.booleanValue() ? str : str2;
    }

    /* renamed from: break, reason: not valid java name */
    public static boolean m1221break(int i) {
        return i != 0;
    }

    /* renamed from: case, reason: not valid java name */
    public static boolean m1222case(Boolean bool) {
        return Boolean.TRUE.equals(bool);
    }

    /* renamed from: catch, reason: not valid java name */
    public static boolean m1223catch(int i, int i2, int i3) {
        if (i == i2) {
            return true;
        }
        if (i == i3) {
            return false;
        }
        throw new IllegalArgumentException("The Integer did not match either specified value");
    }

    /* renamed from: class, reason: not valid java name */
    public static boolean m1224class(Boolean bool) {
        return bool != null && bool.booleanValue();
    }

    /* renamed from: const, reason: not valid java name */
    public static boolean m1225const(Integer num, Integer num2, Integer num3) {
        if (num == null) {
            if (num2 == null) {
                return true;
            }
            if (num3 == null) {
                return false;
            }
        } else {
            if (num.equals(num2)) {
                return true;
            }
            if (num.equals(num3)) {
                return false;
            }
        }
        throw new IllegalArgumentException("The Integer did not match either specified value");
    }

    /* renamed from: continue, reason: not valid java name */
    public static String m1226continue(boolean z, String str, String str2) {
        return z ? str : str2;
    }

    /* renamed from: default, reason: not valid java name */
    public static int m1227default(boolean z, int i, int i2) {
        return z ? i : i2;
    }

    /* renamed from: do, reason: not valid java name */
    public static Boolean m1228do(Boolean... boolArr) {
        if (boolArr == null) {
            throw new IllegalArgumentException("The Array must not be null");
        }
        if (boolArr.length == 0) {
            throw new IllegalArgumentException("Array is empty");
        }
        try {
            return m1235if(Cif.H2(boolArr)) ? Boolean.TRUE : Boolean.FALSE;
        } catch (NullPointerException unused) {
            throw new IllegalArgumentException("The array must not contain any null elements");
        }
    }

    /* renamed from: else, reason: not valid java name */
    public static Boolean m1229else(Boolean bool) {
        if (bool == null) {
            return null;
        }
        return bool.booleanValue() ? Boolean.FALSE : Boolean.TRUE;
    }

    /* renamed from: extends, reason: not valid java name */
    public static Integer m1230extends(Boolean bool) {
        if (bool == null) {
            return null;
        }
        return bool.booleanValue() ? f51.f1704try : f51.f1700new;
    }

    /* renamed from: final, reason: not valid java name */
    public static boolean m1231final(String str) {
        return m1246return(str) == Boolean.TRUE;
    }

    /* renamed from: finally, reason: not valid java name */
    public static Integer m1232finally(Boolean bool, Integer num, Integer num2, Integer num3) {
        return bool == null ? num3 : bool.booleanValue() ? num : num2;
    }

    /* renamed from: for, reason: not valid java name */
    public static boolean m1233for(Boolean bool) {
        return Boolean.FALSE.equals(bool);
    }

    /* renamed from: goto, reason: not valid java name */
    public static Boolean m1234goto(Boolean... boolArr) {
        if (boolArr == null) {
            throw new IllegalArgumentException("The Array must not be null");
        }
        if (boolArr.length == 0) {
            throw new IllegalArgumentException("Array is empty");
        }
        try {
            return m1252this(Cif.H2(boolArr)) ? Boolean.TRUE : Boolean.FALSE;
        } catch (NullPointerException unused) {
            throw new IllegalArgumentException("The array must not contain any null elements");
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static boolean m1235if(boolean... zArr) {
        if (zArr == null) {
            throw new IllegalArgumentException("The Array must not be null");
        }
        if (zArr.length == 0) {
            throw new IllegalArgumentException("Array is empty");
        }
        for (boolean z : zArr) {
            if (!z) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: implements, reason: not valid java name */
    public static String m1236implements(boolean z) {
        return m1226continue(z, "yes", "no");
    }

    /* renamed from: import, reason: not valid java name */
    public static Boolean m1237import(int i, int i2, int i3, int i4) {
        if (i == i2) {
            return Boolean.TRUE;
        }
        if (i == i3) {
            return Boolean.FALSE;
        }
        if (i == i4) {
            return null;
        }
        throw new IllegalArgumentException("The Integer did not match any specified value");
    }

    /* renamed from: instanceof, reason: not valid java name */
    public static Boolean m1238instanceof(Boolean... boolArr) {
        if (boolArr == null) {
            throw new IllegalArgumentException("The Array must not be null");
        }
        if (boolArr.length == 0) {
            throw new IllegalArgumentException("Array is empty");
        }
        try {
            return m1251synchronized(Cif.H2(boolArr)) ? Boolean.TRUE : Boolean.FALSE;
        } catch (NullPointerException unused) {
            throw new IllegalArgumentException("The array must not contain any null elements");
        }
    }

    /* renamed from: interface, reason: not valid java name */
    public static String m1239interface(Boolean bool) {
        return m1220abstract(bool, freemarker.core.b2.f23511if, freemarker.core.b2.f23510do, null);
    }

    /* renamed from: native, reason: not valid java name */
    public static Boolean m1240native(Integer num) {
        if (num == null) {
            return null;
        }
        return num.intValue() == 0 ? Boolean.FALSE : Boolean.TRUE;
    }

    /* renamed from: new, reason: not valid java name */
    public static boolean m1241new(Boolean bool) {
        return !m1233for(bool);
    }

    /* renamed from: package, reason: not valid java name */
    public static Integer m1242package(boolean z) {
        return z ? f51.f1704try : f51.f1700new;
    }

    /* renamed from: private, reason: not valid java name */
    public static Integer m1243private(boolean z, Integer num, Integer num2) {
        return z ? num : num2;
    }

    /* renamed from: protected, reason: not valid java name */
    public static String m1244protected(boolean z) {
        return m1226continue(z, freemarker.core.b2.f23511if, freemarker.core.b2.f23510do);
    }

    /* renamed from: public, reason: not valid java name */
    public static Boolean m1245public(Integer num, Integer num2, Integer num3, Integer num4) {
        if (num == null) {
            if (num2 == null) {
                return Boolean.TRUE;
            }
            if (num3 == null) {
                return Boolean.FALSE;
            }
            if (num4 == null) {
                return null;
            }
        } else {
            if (num.equals(num2)) {
                return Boolean.TRUE;
            }
            if (num.equals(num3)) {
                return Boolean.FALSE;
            }
            if (num.equals(num4)) {
                return null;
            }
        }
        throw new IllegalArgumentException("The Integer did not match any specified value");
    }

    /* renamed from: return, reason: not valid java name */
    public static Boolean m1246return(String str) {
        if (str == freemarker.core.b2.f23511if) {
            return Boolean.TRUE;
        }
        if (str == null) {
            return null;
        }
        int length = str.length();
        if (length == 1) {
            char cCharAt = str.charAt(0);
            if (cCharAt == 'y' || cCharAt == 'Y' || cCharAt == 't' || cCharAt == 'T') {
                return Boolean.TRUE;
            }
            if (cCharAt == 'n' || cCharAt == 'N' || cCharAt == 'f' || cCharAt == 'F') {
                return Boolean.FALSE;
            }
            return null;
        }
        if (length == 2) {
            char cCharAt2 = str.charAt(0);
            char cCharAt3 = str.charAt(1);
            if ((cCharAt2 == 'o' || cCharAt2 == 'O') && (cCharAt3 == 'n' || cCharAt3 == 'N')) {
                return Boolean.TRUE;
            }
            if (cCharAt2 != 'n' && cCharAt2 != 'N') {
                return null;
            }
            if (cCharAt3 == 'o' || cCharAt3 == 'O') {
                return Boolean.FALSE;
            }
            return null;
        }
        if (length == 3) {
            char cCharAt4 = str.charAt(0);
            char cCharAt5 = str.charAt(1);
            char cCharAt6 = str.charAt(2);
            if ((cCharAt4 == 'y' || cCharAt4 == 'Y') && ((cCharAt5 == 'e' || cCharAt5 == 'E') && (cCharAt6 == 's' || cCharAt6 == 'S'))) {
                return Boolean.TRUE;
            }
            if (cCharAt4 != 'o' && cCharAt4 != 'O') {
                return null;
            }
            if (cCharAt5 != 'f' && cCharAt5 != 'F') {
                return null;
            }
            if (cCharAt6 == 'f' || cCharAt6 == 'F') {
                return Boolean.FALSE;
            }
            return null;
        }
        if (length == 4) {
            char cCharAt7 = str.charAt(0);
            char cCharAt8 = str.charAt(1);
            char cCharAt9 = str.charAt(2);
            char cCharAt10 = str.charAt(3);
            if (cCharAt7 != 't' && cCharAt7 != 'T') {
                return null;
            }
            if (cCharAt8 != 'r' && cCharAt8 != 'R') {
                return null;
            }
            if (cCharAt9 != 'u' && cCharAt9 != 'U') {
                return null;
            }
            if (cCharAt10 == 'e' || cCharAt10 == 'E') {
                return Boolean.TRUE;
            }
            return null;
        }
        if (length != 5) {
            return null;
        }
        char cCharAt11 = str.charAt(0);
        char cCharAt12 = str.charAt(1);
        char cCharAt13 = str.charAt(2);
        char cCharAt14 = str.charAt(3);
        char cCharAt15 = str.charAt(4);
        if (cCharAt11 != 'f' && cCharAt11 != 'F') {
            return null;
        }
        if (cCharAt12 != 'a' && cCharAt12 != 'A') {
            return null;
        }
        if (cCharAt13 != 'l' && cCharAt13 != 'L') {
            return null;
        }
        if (cCharAt14 != 's' && cCharAt14 != 'S') {
            return null;
        }
        if (cCharAt15 == 'e' || cCharAt15 == 'E') {
            return Boolean.FALSE;
        }
        return null;
    }

    /* renamed from: static, reason: not valid java name */
    public static Boolean m1247static(String str, String str2, String str3, String str4) {
        if (str == null) {
            if (str2 == null) {
                return Boolean.TRUE;
            }
            if (str3 == null) {
                return Boolean.FALSE;
            }
            if (str4 == null) {
                return null;
            }
        } else {
            if (str.equals(str2)) {
                return Boolean.TRUE;
            }
            if (str.equals(str3)) {
                return Boolean.FALSE;
            }
            if (str.equals(str4)) {
                return null;
            }
        }
        throw new IllegalArgumentException("The String did not match any specified value");
    }

    /* renamed from: strictfp, reason: not valid java name */
    public static String m1248strictfp(Boolean bool) {
        return m1220abstract(bool, "on", "off", null);
    }

    /* renamed from: super, reason: not valid java name */
    public static boolean m1249super(String str, String str2, String str3) {
        if (str == str2) {
            return true;
        }
        if (str == str3) {
            return false;
        }
        if (str != null) {
            if (str.equals(str2)) {
                return true;
            }
            if (str.equals(str3)) {
                return false;
            }
        }
        throw new IllegalArgumentException("The String did not match either specified value");
    }

    /* renamed from: switch, reason: not valid java name */
    public static int m1250switch(Boolean bool, int i, int i2, int i3) {
        return bool == null ? i3 : bool.booleanValue() ? i : i2;
    }

    /* renamed from: synchronized, reason: not valid java name */
    public static boolean m1251synchronized(boolean... zArr) {
        if (zArr == null) {
            throw new IllegalArgumentException("The Array must not be null");
        }
        if (zArr.length == 0) {
            throw new IllegalArgumentException("Array is empty");
        }
        boolean z = false;
        for (boolean z2 : zArr) {
            z ^= z2;
        }
        return z;
    }

    /* renamed from: this, reason: not valid java name */
    public static boolean m1252this(boolean... zArr) {
        if (zArr == null) {
            throw new IllegalArgumentException("The Array must not be null");
        }
        if (zArr.length == 0) {
            throw new IllegalArgumentException("Array is empty");
        }
        for (boolean z : zArr) {
            if (z) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: throw, reason: not valid java name */
    public static boolean m1253throw(Boolean bool, boolean z) {
        return bool == null ? z : bool.booleanValue();
    }

    /* renamed from: throws, reason: not valid java name */
    public static int m1254throws(boolean z) {
        return z ? 1 : 0;
    }

    /* renamed from: transient, reason: not valid java name */
    public static String m1255transient(Boolean bool) {
        return m1220abstract(bool, "yes", "no", null);
    }

    /* renamed from: try, reason: not valid java name */
    public static boolean m1256try(Boolean bool) {
        return !m1222case(bool);
    }

    /* renamed from: volatile, reason: not valid java name */
    public static String m1257volatile(boolean z) {
        return m1226continue(z, "on", "off");
    }

    /* renamed from: while, reason: not valid java name */
    public static Boolean m1258while(int i) {
        return i == 0 ? Boolean.FALSE : Boolean.TRUE;
    }
}
