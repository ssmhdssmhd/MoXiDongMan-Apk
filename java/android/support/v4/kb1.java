package android.support.v4;

import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.TransactionTooLargeException;
import java.util.Collections;
import java.util.List;
import org.chromium.base.Ctry;

/* loaded from: classes3.dex */
public class kb1 {

    /* renamed from: do, reason: not valid java name */
    private static final String f3350do = "PackageManagerUtils";

    /* renamed from: if, reason: not valid java name */
    private static final String f3351if = "http://";

    /* renamed from: case, reason: not valid java name */
    public static List<ResolveInfo> m4341case(Intent intent, int i) {
        try {
            b22 b22VarM428for = b22.m428for();
            try {
                List<ResolveInfo> listQueryIntentActivities = Ctry.m37273case().getPackageManager().queryIntentActivities(intent, i);
                if (b22VarM428for != null) {
                    b22VarM428for.close();
                }
                return listQueryIntentActivities;
            } finally {
            }
        } catch (RuntimeException e) {
            m4344for(e, intent);
            return Collections.emptyList();
        }
    }

    /* renamed from: do, reason: not valid java name */
    public static Intent m4342do() {
        return new Intent("android.intent.action.VIEW", Uri.parse(f3351if)).addCategory("android.intent.category.BROWSABLE");
    }

    /* renamed from: else, reason: not valid java name */
    public static ResolveInfo m4343else(Intent intent, int i) {
        try {
            b22 b22VarM430new = b22.m430new();
            try {
                ResolveInfo resolveInfoResolveActivity = Ctry.m37273case().getPackageManager().resolveActivity(intent, i);
                if (b22VarM430new != null) {
                    b22VarM430new.close();
                }
                return resolveInfoResolveActivity;
            } finally {
            }
        } catch (RuntimeException e) {
            m4344for(e, intent);
            return null;
        }
    }

    /* renamed from: for, reason: not valid java name */
    private static void m4344for(RuntimeException runtimeException, Intent intent) {
        if (!(runtimeException instanceof NullPointerException) && !(runtimeException.getCause() instanceof TransactionTooLargeException)) {
            throw runtimeException;
        }
        rv0.m7156if(f3350do, "Could not resolve Activity for intent " + intent.toString(), runtimeException);
    }

    /* renamed from: goto, reason: not valid java name */
    public static ResolveInfo m4345goto() {
        return m4343else(m4342do(), 0);
    }

    /* renamed from: if, reason: not valid java name */
    public static Intent m4346if() {
        return new Intent("android.intent.action.MAIN").addCategory("android.intent.category.HOME");
    }

    /* renamed from: new, reason: not valid java name */
    public static List<ResolveInfo> m4347new() {
        return m4341case(m4346if(), 131072);
    }

    /* renamed from: try, reason: not valid java name */
    public static List<ResolveInfo> m4348try() {
        return m4341case(m4342do(), 131072);
    }
}
