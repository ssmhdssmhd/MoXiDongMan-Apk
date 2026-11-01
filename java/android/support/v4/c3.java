package android.support.v4;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.bumptech.glide.load.Key;
import java.util.UUID;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

/* loaded from: classes.dex */
public final class c3 {

    /* renamed from: do, reason: not valid java name */
    private static final String f584do = "AppVersionSignature";

    /* renamed from: if, reason: not valid java name */
    private static final ConcurrentMap<String, Key> f585if = new ConcurrentHashMap();

    private c3() {
    }

    @Nullable
    /* renamed from: do, reason: not valid java name */
    private static PackageInfo m720do(@NonNull Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
        } catch (PackageManager.NameNotFoundException unused) {
            StringBuilder sb = new StringBuilder();
            sb.append("Cannot resolve info for");
            sb.append(context.getPackageName());
            return null;
        }
    }

    @NonNull
    /* renamed from: for, reason: not valid java name */
    public static Key m721for(@NonNull Context context) {
        String packageName = context.getPackageName();
        ConcurrentMap<String, Key> concurrentMap = f585if;
        Key key = concurrentMap.get(packageName);
        if (key != null) {
            return key;
        }
        Key keyM723new = m723new(context);
        Key keyPutIfAbsent = concurrentMap.putIfAbsent(packageName, keyM723new);
        return keyPutIfAbsent == null ? keyM723new : keyPutIfAbsent;
    }

    @NonNull
    /* renamed from: if, reason: not valid java name */
    private static String m722if(@Nullable PackageInfo packageInfo) {
        return packageInfo != null ? String.valueOf(packageInfo.versionCode) : UUID.randomUUID().toString();
    }

    @NonNull
    /* renamed from: new, reason: not valid java name */
    private static Key m723new(@NonNull Context context) {
        return new s51(m722if(m720do(context)));
    }

    @VisibleForTesting
    /* renamed from: try, reason: not valid java name */
    public static void m724try() {
        f585if.clear();
    }
}
