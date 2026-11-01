package android.support.v4;

/* loaded from: classes2.dex */
public class tm1 {

    /* renamed from: case, reason: not valid java name */
    public static final String f6613case = "^(^[1-9]\\d{7}((0\\d)|(1[0-2]))(([0|1|2]\\d)|3[0-1])\\d{3}$)|(^[1-9]\\d{5}[1-9]\\d{3}((0\\d)|(1[0-2]))(([0|1|2]\\d)|3[0-1])((\\d{4})|\\d{3}[Xx])$)$";

    /* renamed from: do, reason: not valid java name */
    public static final String f6614do = "^((?:(?:25[0-5]|2[0-4]\\d|((1\\d{2})|([1-9]?\\d)))\\.){3}(?:25[0-5]|2[0-4]\\d|((1\\d{2})|([1-9]?\\d))))$";

    /* renamed from: else, reason: not valid java name */
    public static final String f6615else = "^\\d{6}$";

    /* renamed from: for, reason: not valid java name */
    public static final String f6616for = "^(www\\.)?\\w+@\\w+(\\.\\w+)+$";

    /* renamed from: goto, reason: not valid java name */
    public static final String f6617goto = "^(([hH][tT]{2}[pP][sS]?)|([fF][tT][pP]))\\:\\/\\/[wW]{3}\\.[\\w-]+\\.\\w{2,4}(\\/.*)?$";

    /* renamed from: if, reason: not valid java name */
    public static final String f6618if = "^1([358][0-9]|4[579]|66|7[0135678]|9[89])[0-9]{8}$";

    /* renamed from: new, reason: not valid java name */
    public static final String f6619new = "^[一-齚]+$";

    /* renamed from: try, reason: not valid java name */
    public static final String f6620try = "^\\d+$";

    /* renamed from: case, reason: not valid java name */
    public static boolean m7998case(String str) {
        return str.matches(f6620try);
    }

    /* renamed from: do, reason: not valid java name */
    public static boolean m7999do(String str) {
        return str.matches(f6619new);
    }

    /* renamed from: else, reason: not valid java name */
    public static boolean m8000else(String str) {
        return str.matches(f6617goto);
    }

    /* renamed from: for, reason: not valid java name */
    public static boolean m8001for(String str) {
        return str.matches(f6613case);
    }

    /* renamed from: goto, reason: not valid java name */
    public static boolean m8002goto(String str) {
        return str.matches(f6615else);
    }

    /* renamed from: if, reason: not valid java name */
    public static boolean m8003if(String str) {
        return str.matches(f6616for);
    }

    /* renamed from: new, reason: not valid java name */
    public static boolean m8004new(String str) {
        return str.matches(f6614do);
    }

    /* renamed from: try, reason: not valid java name */
    public static boolean m8005try(String str) {
        return str.matches(f6618if);
    }
}
