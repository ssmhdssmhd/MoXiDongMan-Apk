package android.support.v4;

/* loaded from: classes3.dex */
public class el0 {
    /* renamed from: case, reason: not valid java name */
    public static boolean m1941case(String str) {
        int iIndexOf = str.indexOf(on0.f4694final);
        String strSubstring = str.substring(iIndexOf + 1);
        if (iIndexOf <= 0 || !m1947try(str.substring(0, iIndexOf))) {
            return false;
        }
        return m1947try(strSubstring) || m1942do(strSubstring, 128);
    }

    /* renamed from: do, reason: not valid java name */
    private static boolean m1942do(String str, int i) throws NumberFormatException {
        try {
            int i2 = Integer.parseInt(str);
            return i2 >= 0 && i2 <= i;
        } catch (NumberFormatException unused) {
            return false;
        }
    }

    /* renamed from: else, reason: not valid java name */
    public static boolean m1943else(String str) {
        return m1946new(str) || m1941case(str);
    }

    /* renamed from: for, reason: not valid java name */
    public static boolean m1944for(String str) throws NumberFormatException {
        int iIndexOf;
        int i;
        if (str.length() == 0) {
            return false;
        }
        String str2 = str + ".";
        int i2 = 0;
        int i3 = 0;
        while (i2 < str2.length() && (iIndexOf = str2.indexOf(46, i2)) > i2) {
            if (i3 == 4) {
                return false;
            }
            try {
                i = Integer.parseInt(str2.substring(i2, iIndexOf));
            } catch (NumberFormatException unused) {
            }
            if (i < 0 || i > 255) {
                return false;
            }
            i2 = iIndexOf + 1;
            i3++;
        }
        return i3 == 4;
    }

    /* renamed from: if, reason: not valid java name */
    public static boolean m1945if(String str) {
        return m1944for(str) || m1947try(str);
    }

    /* renamed from: new, reason: not valid java name */
    public static boolean m1946new(String str) {
        int iIndexOf = str.indexOf(on0.f4694final);
        String strSubstring = str.substring(iIndexOf + 1);
        if (iIndexOf <= 0 || !m1944for(str.substring(0, iIndexOf))) {
            return false;
        }
        return m1944for(strSubstring) || m1942do(strSubstring, 32);
    }

    /* renamed from: try, reason: not valid java name */
    public static boolean m1947try(String str) throws NumberFormatException {
        int iIndexOf;
        int i;
        if (str.length() == 0) {
            return false;
        }
        String str2 = str + ":";
        int i2 = 0;
        int i3 = 0;
        boolean z = false;
        while (i2 < str2.length() && (iIndexOf = str2.indexOf(58, i2)) >= i2) {
            if (i3 == 8) {
                return false;
            }
            if (i2 != iIndexOf) {
                String strSubstring = str2.substring(i2, iIndexOf);
                if (iIndexOf != str2.length() - 1 || strSubstring.indexOf(46) <= 0) {
                    try {
                        i = Integer.parseInt(str2.substring(i2, iIndexOf), 16);
                    } catch (NumberFormatException unused) {
                    }
                    if (i < 0 || i > 65535) {
                        return false;
                    }
                } else {
                    if (!m1944for(strSubstring)) {
                        return false;
                    }
                    i3++;
                }
            } else {
                if (iIndexOf != 1 && iIndexOf != str2.length() - 1 && z) {
                    return false;
                }
                z = true;
            }
            i2 = iIndexOf + 1;
            i3++;
        }
        return i3 == 8 || z;
    }
}
