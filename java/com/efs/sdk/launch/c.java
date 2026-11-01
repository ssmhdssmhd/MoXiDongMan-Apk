package com.efs.sdk.launch;

import android.app.ActivityManager;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Process;
import android.text.TextUtils;
import androidx.appcompat.widget.ActivityChooserModel;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public final class c {
    private static String a = "";

    public static String a(Context context) throws IllegalAccessException, NoSuchMethodException, ClassNotFoundException, SecurityException, IllegalArgumentException, InvocationTargetException {
        Class<?> cls;
        Method method;
        if (context == null) {
            return null;
        }
        try {
            cls = Class.forName("com.umeng.commonsdk.UMConfigure");
        } catch (ClassNotFoundException unused) {
            cls = null;
        }
        if (cls == null) {
            return null;
        }
        try {
            method = cls.getMethod("getUMIDString", Context.class);
        } catch (NoSuchMethodException unused2) {
            method = null;
        }
        if (method == null) {
            return null;
        }
        try {
            Object objInvoke = method.invoke(null, context);
            if (objInvoke != null) {
                return objInvoke.toString();
            }
            return null;
        } catch (IllegalAccessException | InvocationTargetException unused3) {
            return null;
        }
    }

    public static void a(Context context, String str) {
        SharedPreferences sharedPreferences;
        SharedPreferences.Editor editorEdit;
        if (context == null || str == null || TextUtils.isEmpty(str) || (sharedPreferences = context.getApplicationContext().getSharedPreferences("efs_launch", 0)) == null || (editorEdit = sharedPreferences.edit()) == null) {
            return;
        }
        editorEdit.putString("first_launch_cache", str);
        editorEdit.commit();
    }

    public static String b(Context context) {
        SharedPreferences sharedPreferences;
        if (context == null || (sharedPreferences = context.getApplicationContext().getSharedPreferences("efs_launch", 0)) == null) {
            return null;
        }
        return sharedPreferences.getString("first_launch_cache", null);
    }

    public static void c(Context context) {
        SharedPreferences sharedPreferences;
        SharedPreferences.Editor editorEdit;
        if (context == null || (sharedPreferences = context.getApplicationContext().getSharedPreferences("efs_launch", 0)) == null || (editorEdit = sharedPreferences.edit()) == null) {
            return;
        }
        editorEdit.putString("first_launch_cache", null);
        editorEdit.commit();
    }

    public static boolean d(Context context) {
        SharedPreferences sharedPreferences;
        SharedPreferences.Editor editorEdit;
        SharedPreferences sharedPreferences2;
        if ((context == null || (sharedPreferences2 = context.getApplicationContext().getSharedPreferences("efs_launch", 0)) == null) ? false : sharedPreferences2.getBoolean("is_install", false)) {
            return false;
        }
        if (context != null && (sharedPreferences = context.getApplicationContext().getSharedPreferences("efs_launch", 0)) != null && (editorEdit = sharedPreferences.edit()) != null) {
            editorEdit.putBoolean("is_install", true);
            editorEdit.commit();
        }
        return true;
    }

    public static boolean e(Context context) {
        try {
            String strF = f(context);
            String packageName = context.getApplicationContext().getPackageName();
            if (TextUtils.isEmpty(strF) || TextUtils.isEmpty(packageName)) {
                return false;
            }
            return strF.equals(packageName);
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0036, code lost:
    
        com.efs.sdk.launch.c.a = r1.processName;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static String f(Context context) {
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses;
        if (TextUtils.isEmpty(a)) {
            try {
                int iMyPid = Process.myPid();
                ActivityManager activityManager = (ActivityManager) context.getSystemService(ActivityChooserModel.ATTRIBUTE_ACTIVITY);
                if (activityManager != null && (runningAppProcesses = activityManager.getRunningAppProcesses()) != null && runningAppProcesses.size() > 0) {
                    Iterator<ActivityManager.RunningAppProcessInfo> it = runningAppProcesses.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            break;
                        }
                        ActivityManager.RunningAppProcessInfo next = it.next();
                        if (next.pid == iMyPid) {
                            break;
                        }
                    }
                }
            } catch (Throwable unused) {
            }
        }
        return a;
    }
}
