package android.support.v4;

import java.io.UnsupportedEncodingException;
import java.util.Locale;
import java.util.TimeZone;

/* loaded from: classes3.dex */
public class g80 extends sz0 {

    /* renamed from: catch, reason: not valid java name */
    public static final String f2078catch = "summary";

    /* renamed from: class, reason: not valid java name */
    public static final String f2079class = "details";

    public g80(String str, String str2) throws NullPointerException {
        super(str, str2);
    }

    public g80(String str, String str2, String str3) throws UnsupportedEncodingException, NullPointerException {
        super(str, str2, str3);
    }

    public g80(String str, String str2, String str3, Object[] objArr) throws UnsupportedEncodingException, NullPointerException {
        super(str, str2, str3, objArr);
    }

    public g80(String str, String str2, Object[] objArr) throws NullPointerException {
        super(str, str2, objArr);
    }

    /* renamed from: import, reason: not valid java name */
    public String m2611import(Locale locale) throws b01 {
        return m5796try(f2079class, locale, TimeZone.getDefault());
    }

    /* renamed from: native, reason: not valid java name */
    public String m2612native(Locale locale, TimeZone timeZone) throws b01 {
        return m5796try(f2079class, locale, timeZone);
    }

    /* renamed from: public, reason: not valid java name */
    public String m2613public(Locale locale) throws b01 {
        return m5796try(f2078catch, locale, TimeZone.getDefault());
    }

    /* renamed from: return, reason: not valid java name */
    public String m2614return(Locale locale, TimeZone timeZone) throws b01 {
        return m5796try(f2078catch, locale, timeZone);
    }
}
