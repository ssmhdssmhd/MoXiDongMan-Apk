package android.support.v4;

import java.io.UnsupportedEncodingException;
import java.util.Locale;
import java.util.TimeZone;

/* loaded from: classes3.dex */
public class d62 extends ov0 {

    /* renamed from: this, reason: not valid java name */
    public static final String f944this = "text";

    public d62(String str, String str2) throws NullPointerException {
        super(str, str2);
    }

    public d62(String str, String str2, String str3) throws UnsupportedEncodingException, NullPointerException {
        super(str, str2, str3);
    }

    public d62(String str, String str2, String str3, Object[] objArr) throws UnsupportedEncodingException, NullPointerException {
        super(str, str2, str3, objArr);
    }

    public d62(String str, String str2, Object[] objArr) throws NullPointerException {
        super(str, str2, objArr);
    }

    /* renamed from: final, reason: not valid java name */
    public String m1147final(Locale locale) throws b01 {
        return m5796try("text", locale, TimeZone.getDefault());
    }

    /* renamed from: super, reason: not valid java name */
    public String m1148super(Locale locale, TimeZone timeZone) throws b01 {
        return m5796try("text", locale, timeZone);
    }
}
