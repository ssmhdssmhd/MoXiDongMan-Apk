package android.support.v4;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.net.MailTo;
import com.google.zxing.client.result.Ccase;
import java.util.Map;
import java.util.regex.Pattern;

/* loaded from: classes2.dex */
public final class t60 extends xn1 {

    /* renamed from: case, reason: not valid java name */
    private static final Pattern f6425case = Pattern.compile(",");

    @Override // android.support.v4.xn1
    /* renamed from: while, reason: not valid java name and merged with bridge method [inline-methods] */
    public s60 mo243catch(wn1 wn1Var) {
        String[] strArr;
        String[] strArr2;
        String[] strArr3;
        String str;
        String str2;
        String str3;
        String strM9548for = xn1.m9548for(wn1Var);
        if (!strM9548for.startsWith(MailTo.MAILTO_SCHEME) && !strM9548for.startsWith("MAILTO:")) {
            if (Ccase.m21783native(strM9548for)) {
                return new s60(strM9548for);
            }
            return null;
        }
        String strSubstring = strM9548for.substring(7);
        int iIndexOf = strSubstring.indexOf(63);
        if (iIndexOf >= 0) {
            strSubstring = strSubstring.substring(0, iIndexOf);
        }
        try {
            String strM9554throw = xn1.m9554throw(strSubstring);
            String[] strArrSplit = !strM9554throw.isEmpty() ? f6425case.split(strM9554throw) : null;
            Map<String, String> mapM9544const = xn1.m9544const(strM9548for);
            if (mapM9544const != null) {
                if (strArrSplit == null && (str3 = mapM9544const.get(TypedValues.Transition.S_TO)) != null) {
                    strArrSplit = f6425case.split(str3);
                }
                String str4 = mapM9544const.get("cc");
                String[] strArrSplit2 = str4 != null ? f6425case.split(str4) : null;
                String str5 = mapM9544const.get("bcc");
                String[] strArrSplit3 = str5 != null ? f6425case.split(str5) : null;
                String str6 = mapM9544const.get("subject");
                str2 = mapM9544const.get("body");
                strArr = strArrSplit;
                strArr3 = strArrSplit3;
                strArr2 = strArrSplit2;
                str = str6;
            } else {
                strArr = strArrSplit;
                strArr2 = null;
                strArr3 = null;
                str = null;
                str2 = null;
            }
            return new s60(strArr, strArr2, strArr3, str, str2);
        } catch (IllegalArgumentException unused) {
            return null;
        }
    }
}
