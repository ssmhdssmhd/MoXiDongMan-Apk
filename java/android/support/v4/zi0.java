package android.support.v4;

/* loaded from: classes3.dex */
public class zi0 {

    /* renamed from: case, reason: not valid java name */
    public static final short f8565case = 5;

    /* renamed from: do, reason: not valid java name */
    public static final short f8566do = 0;

    /* renamed from: else, reason: not valid java name */
    public static final short f8567else = 6;

    /* renamed from: for, reason: not valid java name */
    public static final short f8568for = 2;

    /* renamed from: if, reason: not valid java name */
    public static final short f8569if = 1;

    /* renamed from: new, reason: not valid java name */
    public static final short f8570new = 3;

    /* renamed from: try, reason: not valid java name */
    public static final short f8571try = 4;

    /* renamed from: do, reason: not valid java name */
    public static String m10215do(short s) {
        switch (s) {
            case 0:
                return "none";
            case 1:
                return "md5";
            case 2:
                return "sha1";
            case 3:
                return "sha224";
            case 4:
                return "sha256";
            case 5:
                return "sha384";
            case 6:
                return "sha512";
            default:
                return "UNKNOWN";
        }
    }

    /* renamed from: for, reason: not valid java name */
    public static boolean m10216for(short s) {
        return 224 <= s && s <= 255;
    }

    /* renamed from: if, reason: not valid java name */
    public static String m10217if(short s) {
        return m10215do(s) + "(" + ((int) s) + ")";
    }

    /* renamed from: new, reason: not valid java name */
    public static boolean m10218new(short s) {
        switch (s) {
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
                return true;
            default:
                return false;
        }
    }
}
