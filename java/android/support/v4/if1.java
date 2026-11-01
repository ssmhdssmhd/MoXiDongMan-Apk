package android.support.v4;

import android.text.TextUtils;

/* loaded from: classes.dex */
public class if1 {
    /* renamed from: do, reason: not valid java name */
    public static void m3413do(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            str = "shinichi.cc";
        }
        if (str2 == null || "".equals(str2)) {
            return;
        }
        int length = str2.length();
        int i = 0;
        int i2 = 2000;
        int i3 = 0;
        while (i < 100) {
            if (length <= i2) {
                str2.substring(i3, length);
                return;
            }
            StringBuilder sb = new StringBuilder();
            sb.append(str);
            sb.append(i);
            str2.substring(i3, i2);
            i++;
            i3 = i2;
            i2 += 2000;
        }
    }
}
