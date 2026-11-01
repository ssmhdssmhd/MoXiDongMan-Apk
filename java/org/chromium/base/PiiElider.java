package org.chromium.base;

import android.text.TextUtils;
import android.util.Patterns;
import androidx.core.app.NotificationCompat;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.chromium.base.annotations.UsedByReflection;

/* loaded from: classes3.dex */
public class PiiElider {

    /* renamed from: break, reason: not valid java name */
    private static final Pattern f33058break;

    /* renamed from: case, reason: not valid java name */
    private static final String f33059case = "a-zA-Z -\ud7ff豈-﷏ﷰ-\uffef";

    /* renamed from: catch, reason: not valid java name */
    private static final Pattern f33060catch;

    /* renamed from: class, reason: not valid java name */
    private static final String f33061class = "1.2.3.4";

    /* renamed from: const, reason: not valid java name */
    private static final String f33062const = "01:23:45:67:89:AB";

    /* renamed from: do, reason: not valid java name */
    private static final String f33063do = "XXX@EMAIL.ELIDED";

    /* renamed from: else, reason: not valid java name */
    private static final String f33064else = "[a-zA-Z -\ud7ff豈-﷏ﷰ-\uffef]{2,63}";

    /* renamed from: final, reason: not valid java name */
    private static final String f33065final = "[ELIDED:CONSOLE(0)] ELIDED CONSOLE MESSAGE";

    /* renamed from: for, reason: not valid java name */
    private static final String f33066for = "a-zA-Z0-9 -\ud7ff豈-﷏ﷰ-\uffef";

    /* renamed from: goto, reason: not valid java name */
    private static final String f33067goto = "([a-zA-Z0-9 -\ud7ff豈-﷏ﷰ-\uffef]([a-zA-Z0-9 -\ud7ff豈-﷏ﷰ-\uffef\\-]{0,61}[a-zA-Z0-9 -\ud7ff豈-﷏ﷰ-\uffef]){0,1}\\.)+[a-zA-Z -\ud7ff豈-﷏ﷰ-\uffef]{2,63}";

    /* renamed from: if, reason: not valid java name */
    private static final String f33068if = "HTTP://WEBADDRESS.ELIDED";

    /* renamed from: import, reason: not valid java name */
    private static final String[] f33069import;

    /* renamed from: new, reason: not valid java name */
    private static final Pattern f33070new;

    /* renamed from: super, reason: not valid java name */
    private static final Pattern f33071super;

    /* renamed from: this, reason: not valid java name */
    private static final Pattern f33072this;

    /* renamed from: throw, reason: not valid java name */
    private static final Pattern f33073throw;

    /* renamed from: try, reason: not valid java name */
    private static final String f33074try = "[a-zA-Z0-9 -\ud7ff豈-﷏ﷰ-\uffef]([a-zA-Z0-9 -\ud7ff豈-﷏ﷰ-\uffef\\-]{0,61}[a-zA-Z0-9 -\ud7ff豈-﷏ﷰ-\uffef]){0,1}";

    /* renamed from: while, reason: not valid java name */
    private static final String[] f33075while;

    static {
        Pattern patternCompile = Pattern.compile("((25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9])\\.(25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9]|0)\\.(25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9]|0)\\.(25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[0-9]))");
        f33070new = patternCompile;
        Pattern patternCompile2 = Pattern.compile("(([a-zA-Z0-9 -\ud7ff豈-﷏ﷰ-\uffef]([a-zA-Z0-9 -\ud7ff豈-﷏ﷰ-\uffef\\-]{0,61}[a-zA-Z0-9 -\ud7ff豈-﷏ﷰ-\uffef]){0,1}\\.)+[a-zA-Z -\ud7ff豈-﷏ﷰ-\uffef]{2,63}|" + patternCompile + ")");
        f33072this = patternCompile2;
        f33058break = Pattern.compile("\\sat\\sorg\\.chromium\\.[^ ]+.");
        f33060catch = Pattern.compile("(?:\\b|^)((?:(http|https|Http|Https|rtsp|Rtsp):\\/\\/(?:(?:[a-zA-Z0-9\\$\\-\\_\\.\\+\\!\\*\\'\\(\\)\\,\\;\\?\\&\\=]|(?:\\%[a-fA-F0-9]{2})){1,64}(?:\\:(?:[a-zA-Z0-9\\$\\-\\_\\.\\+\\!\\*\\'\\(\\)\\,\\;\\?\\&\\=]|(?:\\%[a-fA-F0-9]{2})){1,25})?\\@)?)?(?:" + patternCompile2 + ")(?:\\:\\d{1,5})?)(\\/(?:(?:[" + f33066for + "\\;\\/\\?\\:\\@\\&\\=\\#\\~\\-\\.\\+\\!\\*\\'\\(\\)\\,\\_])|(?:\\%[a-fA-F0-9]{2}))*)?(?:\\b|$)");
        f33071super = Pattern.compile("([0-9a-fA-F]{2}[-:]+){5}[0-9a-fA-F]{2}");
        f33073throw = Pattern.compile("\\[\\w*:CONSOLE.*\\].*");
        f33075while = new String[]{"org.chromium.", "com.google."};
        f33069import = new String[]{"android.accessibilityservice", "android.accounts", "android.animation", "android.annotation", "android.app", "android.appwidget", "android.bluetooth", "android.content", "android.database", "android.databinding", "android.drm", "android.gesture", "android.graphics", "android.hardware", "android.inputmethodservice", "android.location", "android.media", "android.mtp", "android.net", "android.nfc", "android.opengl", "android.os", "android.preference", "android.print", "android.printservice", "android.provider", "android.renderscript", "android.sax", "android.security", "android.service", "android.speech", "android.support", "android.system", "android.telecom", "android.telephony", "android.test", NotificationCompat.EXTRA_TEXT, "android.transition", "android.util", "android.view", "android.webkit", "android.widget", "com.android.", "dalvik.", "java.", "javax.", "org.apache.", "org.json.", "org.w3c.dom.", "org.xml.", "org.xmlpull."};
    }

    /* renamed from: case, reason: not valid java name */
    private static boolean m36890case(String str) {
        try {
            Class.forName(str, false, Ctry.m37273case().getClassLoader());
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    /* renamed from: do, reason: not valid java name */
    public static String m36891do(String str) {
        return f33073throw.matcher(str).replaceAll(f33065final);
    }

    /* renamed from: else, reason: not valid java name */
    private static boolean m36892else(String str) {
        for (String str2 : f33075while) {
            if (str.startsWith(str2)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: for, reason: not valid java name */
    public static String m36893for(String str) {
        return Patterns.IP_ADDRESS.matcher(str).replaceAll(f33061class);
    }

    /* renamed from: goto, reason: not valid java name */
    private static boolean m36894goto(String str) {
        if (m36890case(str)) {
            return true;
        }
        int iLastIndexOf = str.lastIndexOf(".");
        if (iLastIndexOf == -1) {
            return false;
        }
        return m36890case(str.substring(0, iLastIndexOf));
    }

    /* renamed from: if, reason: not valid java name */
    public static String m36895if(String str) {
        return Patterns.EMAIL_ADDRESS.matcher(str).replaceAll(f33063do);
    }

    /* renamed from: new, reason: not valid java name */
    public static String m36896new(String str) {
        return f33071super.matcher(str).replaceAll(f33062const);
    }

    @UsedByReflection("jni_android.cc")
    public static String sanitizeStacktrace(String str) {
        String[] strArrSplit = str.split("\\n");
        strArrSplit[0] = m36898try(strArrSplit[0]);
        for (int i = 1; i < strArrSplit.length; i++) {
            if (strArrSplit[i].startsWith("Caused by:")) {
                strArrSplit[i] = m36898try(strArrSplit[i]);
            }
        }
        return TextUtils.join("\n", strArrSplit);
    }

    /* renamed from: this, reason: not valid java name */
    private static boolean m36897this(String str) {
        for (String str2 : f33069import) {
            if (str.startsWith(str2)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: try, reason: not valid java name */
    public static String m36898try(String str) {
        if (f33058break.matcher(str).find()) {
            return str;
        }
        StringBuilder sb = new StringBuilder(str);
        Matcher matcher = f33060catch.matcher(sb);
        int i = 0;
        while (matcher.find(i)) {
            int iStart = matcher.start();
            int iEnd = matcher.end();
            String strSubstring = sb.substring(iStart, iEnd);
            if (m36892else(strSubstring) || m36897this(strSubstring) || m36894goto(strSubstring)) {
                i = iEnd;
            } else {
                sb.replace(iStart, iEnd, f33068if);
                i = iStart + 24;
                matcher = f33060catch.matcher(sb);
            }
        }
        return sb.toString();
    }
}
