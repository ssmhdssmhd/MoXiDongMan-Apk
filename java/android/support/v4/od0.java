package android.support.v4;

import android.text.TextUtils;
import org.apache.commons.lang3.Cclass;

/* loaded from: classes2.dex */
public class od0 {
    /* renamed from: do, reason: not valid java name */
    public static String m5564do(String str) {
        return TextUtils.isEmpty(str) ? "" : str.replaceAll("\\s+", Cclass.f28652do).trim();
    }

    /* renamed from: for, reason: not valid java name */
    public static String m5565for(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        return "\u3000\u3000" + str.replaceAll("(\\n{1,2})\\s*", "$1\u3000\u3000").trim();
    }

    /* renamed from: if, reason: not valid java name */
    public static String m5566if(String str) {
        return TextUtils.isEmpty(str) ? "" : m5564do(str.replaceAll("\\s*作\\s*者[\\s:：]*", Cclass.f28652do));
    }
}
