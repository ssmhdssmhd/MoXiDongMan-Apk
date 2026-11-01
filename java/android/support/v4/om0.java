package android.support.v4;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes2.dex */
public class om0 {

    /* renamed from: do, reason: not valid java name */
    private static final String f4679do = "^(\\d{1,3})\\.(\\d{1,3})\\.(\\d{1,3})\\.(\\d{1,3})$";

    /* renamed from: if, reason: not valid java name */
    private static final Pattern f4680if = Pattern.compile(f4679do);

    private om0() {
    }

    /* renamed from: do, reason: not valid java name */
    public static boolean m5715do(String str) {
        if (str == null) {
            return false;
        }
        Matcher matcher = f4680if.matcher(str);
        if (!matcher.find()) {
            return false;
        }
        for (int i = 1; i <= 4; i++) {
            String strGroup = matcher.group(i);
            if (strGroup != null && strGroup.length() != 0) {
                try {
                    if (Integer.parseInt(strGroup) > 255) {
                        return false;
                    }
                    if (strGroup.length() > 1 && strGroup.startsWith("0")) {
                        return false;
                    }
                } catch (NumberFormatException unused) {
                }
            }
            return false;
        }
        return true;
    }

    /* renamed from: if, reason: not valid java name */
    public static boolean m5716if(int i) {
        return i >= 0 && i <= 65535;
    }
}
