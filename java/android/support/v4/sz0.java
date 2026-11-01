package android.support.v4;

import java.io.UnsupportedEncodingException;
import java.util.Locale;
import java.util.TimeZone;

/* loaded from: classes3.dex */
public class sz0 extends d62 {

    /* renamed from: break, reason: not valid java name */
    public static final String f6342break = "title";

    public sz0(String str, String str2) throws NullPointerException {
        super(str, str2);
    }

    public sz0(String str, String str2, String str3) throws UnsupportedEncodingException, NullPointerException {
        super(str, str2, str3);
    }

    public sz0(String str, String str2, String str3, Object[] objArr) throws UnsupportedEncodingException, NullPointerException {
        super(str, str2, str3, objArr);
    }

    public sz0(String str, String str2, Object[] objArr) throws NullPointerException {
        super(str, str2, objArr);
    }

    /* renamed from: throw, reason: not valid java name */
    public String m7665throw(Locale locale) throws b01 {
        return m5796try(f6342break, locale, TimeZone.getDefault());
    }

    /* renamed from: while, reason: not valid java name */
    public String m7666while(Locale locale, TimeZone timeZone) throws b01 {
        return m5796try(f6342break, locale, timeZone);
    }
}
