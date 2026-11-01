package org.chromium.base;

import android.content.Context;
import android.support.v4.cx0;
import android.text.TextUtils;
import org.chromium.base.annotations.CalledByNative;

@cx0
/* loaded from: classes3.dex */
public class JNIUtils {

    /* renamed from: do, reason: not valid java name */
    private static Boolean f33007do;

    /* renamed from: for, reason: not valid java name */
    public static final /* synthetic */ boolean f33008for = false;

    /* renamed from: if, reason: not valid java name */
    private static ClassLoader f33009if;

    /* renamed from: do, reason: not valid java name */
    public static void m36822do() {
        f33007do = Boolean.TRUE;
    }

    /* renamed from: for, reason: not valid java name */
    public static void m36823for(ClassLoader classLoader) {
        f33009if = classLoader;
    }

    @CalledByNative
    public static ClassLoader getSplitClassLoader(String str) {
        Context contextM37273case = Ctry.m37273case();
        return (TextUtils.isEmpty(str) || !BundleUtils.m36744else(contextM37273case, str)) ? m36824if() : BundleUtils.m36743do(contextM37273case, str).getClassLoader();
    }

    /* renamed from: if, reason: not valid java name */
    private static ClassLoader m36824if() {
        ClassLoader classLoader = f33009if;
        return classLoader == null ? JNIUtils.class.getClassLoader() : classLoader;
    }

    @CalledByNative
    public static boolean isSelectiveJniRegistrationEnabled() {
        if (f33007do == null) {
            f33007do = Boolean.FALSE;
        }
        return f33007do.booleanValue();
    }
}
