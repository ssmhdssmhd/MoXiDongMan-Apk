package android.support.v4;

import java.nio.charset.Charset;
import java.nio.charset.IllegalCharsetNameException;

/* loaded from: classes3.dex */
public class mk {

    /* renamed from: case, reason: not valid java name */
    public static final String f3928case = "UTF-8";

    /* renamed from: do, reason: not valid java name */
    public static final String f3929do = "ISO-8859-1";

    /* renamed from: for, reason: not valid java name */
    public static final String f3930for = "UTF-16";

    /* renamed from: if, reason: not valid java name */
    public static final String f3931if = "US-ASCII";

    /* renamed from: new, reason: not valid java name */
    public static final String f3932new = "UTF-16BE";

    /* renamed from: try, reason: not valid java name */
    public static final String f3933try = "UTF-16LE";

    /* renamed from: do, reason: not valid java name */
    public static boolean m4940do(String str) {
        if (str == null) {
            return false;
        }
        try {
            return Charset.isSupported(str);
        } catch (IllegalCharsetNameException unused) {
            return false;
        }
    }
}
