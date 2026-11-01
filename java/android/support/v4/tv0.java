package android.support.v4;

/* loaded from: classes2.dex */
public class tv0 {
    /* renamed from: case, reason: not valid java name */
    public static void m8132case(String str, String str2) {
    }

    /* renamed from: do, reason: not valid java name */
    public static void m8133do(String str, String str2) {
    }

    /* renamed from: else, reason: not valid java name */
    public static void m8134else(String str, String str2) {
    }

    /* renamed from: for, reason: not valid java name */
    public static void m8135for(String str, String str2, Throwable th) {
    }

    /* renamed from: goto, reason: not valid java name */
    public static void m8136goto(String str, String str2, Throwable th) {
    }

    /* renamed from: if, reason: not valid java name */
    public static void m8137if(String str, String str2) {
    }

    /* renamed from: new, reason: not valid java name */
    public static void m8138new(String str, String str2) {
    }

    /* renamed from: try, reason: not valid java name */
    public static void m8139try(String str, int i) {
        if (str.length() <= i) {
            StringBuilder sb = new StringBuilder();
            sb.append(str);
            sb.append("");
            return;
        }
        String strSubstring = str.substring(0, i);
        StringBuilder sb2 = new StringBuilder();
        sb2.append(strSubstring);
        sb2.append("");
        if (str.length() - i > i) {
            m8139try(str.substring(i, str.length()), i);
            return;
        }
        String strSubstring2 = str.substring(i, str.length());
        StringBuilder sb3 = new StringBuilder();
        sb3.append(strSubstring2);
        sb3.append("");
    }
}
