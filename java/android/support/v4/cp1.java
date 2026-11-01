package android.support.v4;

/* loaded from: classes3.dex */
public class cp1 {

    /* renamed from: do, reason: not valid java name */
    public static final String f844do = "4.7";

    /* renamed from: do, reason: not valid java name */
    public static void m990do(String str, String str2) {
        boolean z = (str == null || f844do.equals(str) || m992if(f844do).equals(m992if(str))) ? false : true;
        boolean z2 = (f844do.equals(str2) || m992if(f844do).equals(m992if(str2))) ? false : true;
        if (z) {
            System.err.printf("ANTLR Tool version %s used for code generation does not match the current runtime version %s", str, f844do);
        }
        if (z2) {
            System.err.printf("ANTLR Runtime version %s used for parser compilation does not match the current runtime version %s", str2, f844do);
        }
    }

    /* renamed from: for, reason: not valid java name */
    public static String m991for() {
        return f844do;
    }

    /* renamed from: if, reason: not valid java name */
    public static String m992if(String str) {
        int iIndexOf = str.indexOf(46);
        int iIndexOf2 = iIndexOf >= 0 ? str.indexOf(46, iIndexOf + 1) : -1;
        int iIndexOf3 = str.indexOf(45);
        int length = str.length();
        if (iIndexOf2 >= 0) {
            length = Math.min(length, iIndexOf2);
        }
        if (iIndexOf3 >= 0) {
            length = Math.min(length, iIndexOf3);
        }
        return str.substring(0, length);
    }
}
