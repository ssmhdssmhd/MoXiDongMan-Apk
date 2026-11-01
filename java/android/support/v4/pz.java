package android.support.v4;

import android.os.Build;
import android.text.TextUtils;

/* loaded from: classes2.dex */
public class pz {

    /* renamed from: do, reason: not valid java name */
    private static pz f5219do;

    /* renamed from: do, reason: not valid java name */
    public static pz m6258do() {
        if (f5219do == null) {
            synchronized (pz.class) {
                if (f5219do == null) {
                    f5219do = new pz();
                }
            }
        }
        return f5219do;
    }

    /* renamed from: if, reason: not valid java name */
    private String m6259if(String str) {
        return u32.m8226for().m8229do(str);
    }

    /* renamed from: case, reason: not valid java name */
    public final boolean m6260case() {
        return !TextUtils.isEmpty(m6259if("ro.vivo.os.name"));
    }

    /* renamed from: for, reason: not valid java name */
    public final boolean m6261for() {
        String str = Build.MANUFACTURER;
        return !TextUtils.isEmpty(str) && str.contains("HUAWEI");
    }

    /* renamed from: new, reason: not valid java name */
    public final boolean m6262new() {
        return !TextUtils.isEmpty(m6259if("ro.miui.ui.version.name"));
    }

    /* renamed from: try, reason: not valid java name */
    public final boolean m6263try() {
        return !TextUtils.isEmpty(m6259if("ro.product.brand"));
    }
}
