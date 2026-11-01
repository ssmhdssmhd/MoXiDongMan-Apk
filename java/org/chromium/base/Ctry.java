package org.chromium.base;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.SharedPreferences;
import android.content.res.AssetManager;
import android.os.Build;
import android.os.Process;
import android.preference.PreferenceManager;
import android.support.v4.b22;
import android.support.v4.e2;
import android.support.v4.ed;
import android.support.v4.lo0;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;

@lo0("base::android")
/* renamed from: org.chromium.base.try, reason: invalid class name */
/* loaded from: classes3.dex */
public class Ctry {

    /* renamed from: do, reason: not valid java name */
    private static final String f33286do = "ContextUtils";

    /* renamed from: for, reason: not valid java name */
    public static final /* synthetic */ boolean f33287for = false;

    /* renamed from: if, reason: not valid java name */
    private static Context f33288if;

    /* renamed from: org.chromium.base.try$do, reason: invalid class name */
    public static class Cdo {

        /* renamed from: do, reason: not valid java name */
        private static SharedPreferences f33289do = Ctry.m37278for();

        private Cdo() {
        }
    }

    /* renamed from: break, reason: not valid java name */
    private static void m37272break(Context context) {
        if (ed.f1398if && (context instanceof Application)) {
            context = new ContextWrapper(context);
        }
        f33288if = context;
    }

    /* renamed from: case, reason: not valid java name */
    public static Context m37273case() {
        return f33288if;
    }

    /* renamed from: catch, reason: not valid java name */
    public static boolean m37274catch() {
        return Process.isIsolated();
    }

    /* renamed from: class, reason: not valid java name */
    public static boolean m37275class() {
        if (Build.VERSION.SDK_INT >= 23) {
            return e2.m1625static();
        }
        String[] strArr = Build.SUPPORTED_64_BIT_ABIS;
        return strArr.length > 0 && strArr[0].equals(Build.CPU_ABI);
    }

    /* renamed from: else, reason: not valid java name */
    public static String m37277else() {
        return org.chromium.base.Cdo.m37072final();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: for, reason: not valid java name */
    public static SharedPreferences m37278for() {
        b22 b22VarM430new = b22.m430new();
        try {
            SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(f33288if);
            if (b22VarM430new != null) {
                b22VarM430new.close();
            }
            return defaultSharedPreferences;
        } catch (Throwable th) {
            if (b22VarM430new != null) {
                try {
                    b22VarM430new.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    /* renamed from: goto, reason: not valid java name */
    public static void m37279goto(Context context) {
        m37272break(context);
    }

    @Nullable
    /* renamed from: if, reason: not valid java name */
    public static Activity m37280if(@Nullable Context context) {
        while (context instanceof ContextWrapper) {
            if (context instanceof Activity) {
                return (Activity) context;
            }
            context = ((ContextWrapper) context).getBaseContext();
        }
        return null;
    }

    /* renamed from: new, reason: not valid java name */
    public static SharedPreferences m37281new() {
        return Cdo.f33289do;
    }

    @VisibleForTesting
    /* renamed from: this, reason: not valid java name */
    public static void m37282this(Context context) {
        m37272break(context);
        SharedPreferences unused = Cdo.f33289do = m37278for();
    }

    /* renamed from: try, reason: not valid java name */
    public static AssetManager m37283try() {
        Context contextM37273case = m37273case();
        while (contextM37273case instanceof ContextWrapper) {
            contextM37273case = ((ContextWrapper) contextM37273case).getBaseContext();
        }
        return contextM37273case.getAssets();
    }
}
