package com.xw.repo;

import android.content.res.Resources;
import android.os.Build;
import android.os.Environment;
import android.text.TextUtils;
import android.util.TypedValue;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.Properties;

/* renamed from: com.xw.repo.if, reason: invalid class name */
/* loaded from: classes2.dex */
class Cif {

    /* renamed from: do, reason: not valid java name */
    private static final String f22860do = "ro.miui.ui.version.name";

    /* renamed from: for, reason: not valid java name */
    private static Boolean f22861for;

    /* renamed from: if, reason: not valid java name */
    private static Properties f22862if = new Properties();

    /* renamed from: do, reason: not valid java name */
    public static int m27289do(int i) {
        return (int) TypedValue.applyDimension(1, i, Resources.getSystem().getDisplayMetrics());
    }

    /* renamed from: for, reason: not valid java name */
    public static int m27290for(int i) {
        return (int) TypedValue.applyDimension(2, i, Resources.getSystem().getDisplayMetrics());
    }

    /* renamed from: if, reason: not valid java name */
    public static boolean m27291if() throws Throwable {
        FileInputStream fileInputStream;
        Boolean bool = f22861for;
        if (bool != null) {
            return bool.booleanValue();
        }
        FileInputStream fileInputStream2 = null;
        try {
            try {
            } catch (Throwable th) {
                th = th;
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
        if (Build.VERSION.SDK_INT >= 26) {
            try {
                boolean z = true;
                if (TextUtils.isEmpty((String) Class.forName("android.os.SystemProperties").getDeclaredMethod("get", String.class).invoke(null, f22860do))) {
                    z = false;
                }
                f22861for = Boolean.valueOf(z);
            } catch (Exception unused) {
                f22861for = Boolean.FALSE;
            }
            return f22861for.booleanValue();
        }
        try {
            fileInputStream = new FileInputStream(new File(Environment.getRootDirectory(), "build.prop"));
        } catch (IOException e2) {
            e = e2;
        }
        try {
            f22862if.load(fileInputStream);
            fileInputStream.close();
        } catch (IOException e3) {
            e = e3;
            fileInputStream2 = fileInputStream;
            e.printStackTrace();
            if (fileInputStream2 != null) {
                fileInputStream2.close();
            }
            f22861for = Boolean.valueOf(f22862if.containsKey(f22860do));
            return f22861for.booleanValue();
        } catch (Throwable th2) {
            th = th2;
            fileInputStream2 = fileInputStream;
            if (fileInputStream2 != null) {
                try {
                    fileInputStream2.close();
                } catch (IOException e4) {
                    e4.printStackTrace();
                }
            }
            throw th;
        }
        f22861for = Boolean.valueOf(f22862if.containsKey(f22860do));
        return f22861for.booleanValue();
    }
}
