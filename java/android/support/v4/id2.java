package android.support.v4;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Build;
import java.util.Locale;
import org.jsoup.nodes.Attributes;

/* loaded from: classes3.dex */
public final class id2 {

    /* renamed from: do, reason: not valid java name */
    private static final Object f2675do = new Object();

    /* renamed from: for, reason: not valid java name */
    private static int f2676for;

    /* renamed from: if, reason: not valid java name */
    private static final int f2677if = 0;

    private id2() {
    }

    /* renamed from: do, reason: not valid java name */
    private static void m3384do(StringBuilder sb) {
        sb.append(" Cronet/");
        sb.append(im0.m3510if());
    }

    /* renamed from: for, reason: not valid java name */
    public static String m3385for(Context context) {
        StringBuilder sb = new StringBuilder();
        sb.append(context.getPackageName());
        m3384do(sb);
        return sb.toString();
    }

    /* renamed from: if, reason: not valid java name */
    public static String m3386if(Context context) {
        StringBuilder sb = new StringBuilder();
        sb.append(context.getPackageName());
        sb.append(Attributes.InternalPrefix);
        sb.append(m3387new(context));
        sb.append(" (Linux; U; Android ");
        sb.append(Build.VERSION.RELEASE);
        sb.append("; ");
        sb.append(Locale.getDefault().toString());
        String str = Build.MODEL;
        if (str.length() > 0) {
            sb.append("; ");
            sb.append(str);
        }
        String str2 = Build.ID;
        if (str2.length() > 0) {
            sb.append("; Build/");
            sb.append(str2);
        }
        sb.append(";");
        m3384do(sb);
        sb.append(')');
        return sb.toString();
    }

    /* renamed from: new, reason: not valid java name */
    private static int m3387new(Context context) {
        int i;
        synchronized (f2675do) {
            if (f2676for == 0) {
                try {
                    f2676for = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode;
                } catch (PackageManager.NameNotFoundException unused) {
                    throw new IllegalStateException("Cannot determine package version");
                }
            }
            i = f2676for;
        }
        return i;
    }
}
