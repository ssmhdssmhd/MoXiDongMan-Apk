package android.support.v4;

import android.net.Uri;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.Locale;
import java.util.regex.Pattern;
import org.apache.commons.lang3.Cclass;

/* loaded from: classes2.dex */
public class fd2 {

    /* renamed from: do, reason: not valid java name */
    private static final Pattern f1773do = Pattern.compile("^.+://");

    /* renamed from: do, reason: not valid java name */
    public static String m2252do(String str, String str2) {
        try {
            int iM2253for = m2253for(str2);
            String strSubstring = iM2253for == -1 ? "" : str2.substring(0, iM2253for + 1);
            str2 = str2.substring(iM2253for + 1);
            int iM2253for2 = m2253for(str);
            if (iM2253for2 != -1) {
                str = str.substring(iM2253for2 + 1);
            }
            return strSubstring + m2256try(str, str2);
        } catch (Exception unused) {
            return str2;
        }
    }

    /* renamed from: for, reason: not valid java name */
    private static int m2253for(String str) {
        return str.indexOf("}");
    }

    /* renamed from: if, reason: not valid java name */
    public static String m2254if(String str) {
        Uri uri = Uri.parse(str);
        String scheme = uri.getScheme();
        scheme.hashCode();
        if (scheme.equals("http")) {
            return "http://" + uri.getHost();
        }
        if (!scheme.equals("https")) {
            return str;
        }
        return "https://" + uri.getHost();
    }

    /* renamed from: new, reason: not valid java name */
    public static boolean m2255new(@Nullable String str) {
        Uri uri;
        String host;
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        String lowerCase = str.trim().toLowerCase(Locale.getDefault());
        if (lowerCase.contains(Cclass.f28652do)) {
            return false;
        }
        if (f1773do.matcher(lowerCase).find()) {
            uri = Uri.parse(lowerCase);
        } else {
            uri = Uri.parse("http://" + lowerCase);
        }
        host = TextUtils.isEmpty(uri.getHost()) ? "" : uri.getHost();
        String scheme = uri.getScheme();
        scheme.hashCode();
        switch (scheme) {
            case "http":
            case "https":
                if (!host.contains(".")) {
                    break;
                } else if (host.startsWith(".") || host.endsWith(".")) {
                }
                break;
        }
        return false;
    }

    /* renamed from: try, reason: not valid java name */
    public static String m2256try(String str, String str2) {
        try {
            return new URL(new URL(str), str2).toString();
        } catch (MalformedURLException unused) {
            return str2;
        }
    }
}
