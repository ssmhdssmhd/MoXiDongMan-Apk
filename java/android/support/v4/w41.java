package android.support.v4;

/* loaded from: classes3.dex */
public class w41 extends IllegalArgumentException {
    public w41() {
        super("The argument can't be null");
    }

    public static void check(String str, Object obj) {
        if (obj == null) {
            throw new w41(str);
        }
    }

    public w41(String str) {
        super("The \"" + str + "\" argument can't be null");
    }

    public static void check(Object obj) {
        if (obj == null) {
            throw new w41();
        }
    }

    public w41(String str, String str2) {
        super("The \"" + str + "\" argument can't be null. " + str2);
    }
}
