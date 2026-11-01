package android.support.v4;

import android.content.Context;
import android.provider.Settings;
import androidx.annotation.Nullable;
import java.io.File;
import org.chromium.base.BuildInfo;
import org.chromium.base.CommandLine;
import org.chromium.base.Ctry;
import org.chromium.base.supplier.Supplier;

/* loaded from: classes3.dex */
public final class zo {

    /* renamed from: do, reason: not valid java name */
    private static final String f8622do = "/data/local";

    /* renamed from: for, reason: not valid java name */
    public static final /* synthetic */ boolean f8623for = false;

    /* renamed from: if, reason: not valid java name */
    private static final String f8624if = "/data/local/tmp";

    private zo() {
    }

    /* renamed from: do, reason: not valid java name */
    private static String m10254do(Context context) {
        if (Settings.Global.getInt(context.getContentResolver(), "adb_enabled", 0) == 1) {
            return Settings.Global.getString(context.getContentResolver(), "debug_app");
        }
        return null;
    }

    /* renamed from: for, reason: not valid java name */
    public static void m10255for(String str, @Nullable Supplier<Boolean> supplier) {
        File file = new File(f8624if, str);
        if (!file.exists() || !m10257new(supplier)) {
            file = new File(f8622do, str);
        }
        CommandLine.m36767final(file.getPath());
    }

    /* renamed from: if, reason: not valid java name */
    public static void m10256if(String str) {
        m10255for(str, null);
    }

    /* renamed from: new, reason: not valid java name */
    private static boolean m10257new(@Nullable Supplier<Boolean> supplier) {
        if (supplier != null && supplier.get().booleanValue()) {
            return true;
        }
        Context contextM37273case = Ctry.m37273case();
        return contextM37273case.getPackageName().equals(m10254do(contextM37273case)) || BuildInfo.m36739try();
    }
}
