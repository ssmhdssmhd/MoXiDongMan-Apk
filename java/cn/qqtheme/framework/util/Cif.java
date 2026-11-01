package cn.qqtheme.framework.util;

import android.content.Context;
import android.os.Environment;
import android.support.v4.uv0;
import android.text.TextUtils;
import java.io.File;
import java.io.IOException;

/* renamed from: cn.qqtheme.framework.util.if, reason: invalid class name */
/* loaded from: classes.dex */
public final class Cif {
    /* renamed from: break, reason: not valid java name */
    public static String m10997break(Context context, String str) {
        File filesDir;
        if (TextUtils.isEmpty(str)) {
            filesDir = context.getFilesDir();
        } else {
            File file = new File(Cdo.a(context.getFilesDir().getAbsolutePath()) + str);
            file.mkdirs();
            filesDir = file;
        }
        String strA = filesDir != null ? Cdo.a(filesDir.getAbsolutePath()) : "";
        uv0.m8680public("internal storage root path: " + strA);
        return strA;
    }

    /* renamed from: case, reason: not valid java name */
    public static String m10998case(Context context, String str) {
        File externalFilesDir = m11001do() ? context.getExternalFilesDir(str) : null;
        String strA = externalFilesDir != null ? Cdo.a(externalFilesDir.getAbsolutePath()) : "";
        uv0.m8680public("external storage private path: " + strA);
        return strA;
    }

    /* renamed from: catch, reason: not valid java name */
    public static String m10999catch(Context context) {
        return m10998case(context, "temporary");
    }

    /* renamed from: class, reason: not valid java name */
    public static String m11000class(Context context) {
        try {
            return File.createTempFile("lyj_", ".tmp", context.getCacheDir()).getAbsolutePath();
        } catch (IOException unused) {
            return m10999catch(context) + "lyj.tmp";
        }
    }

    /* renamed from: do, reason: not valid java name */
    public static boolean m11001do() {
        if (Environment.getExternalStorageState().equals("mounted")) {
            return true;
        }
        uv0.m8687throws("external storage unmounted");
        return false;
    }

    /* renamed from: else, reason: not valid java name */
    public static String m11002else() {
        return m11004goto(null);
    }

    /* renamed from: for, reason: not valid java name */
    public static String m11003for(Context context, String str) {
        File externalCacheDir = m11001do() ? context.getExternalCacheDir() : context.getCacheDir();
        if (!TextUtils.isEmpty(str)) {
            File file = new File(externalCacheDir, str);
            file.mkdirs();
            externalCacheDir = file;
        }
        String strA = externalCacheDir != null ? Cdo.a(externalCacheDir.getAbsolutePath()) : "";
        uv0.m8680public("external or internal storage cache path: " + strA);
        return strA;
    }

    /* renamed from: goto, reason: not valid java name */
    public static String m11004goto(String str) {
        File externalStorageDirectory = m11001do() ? Environment.getExternalStorageDirectory() : null;
        if (externalStorageDirectory != null && !TextUtils.isEmpty(str)) {
            File file = new File(externalStorageDirectory, str);
            file.mkdirs();
            externalStorageDirectory = file;
        }
        String strA = externalStorageDirectory != null ? Cdo.a(externalStorageDirectory.getAbsolutePath()) : "";
        uv0.m8680public("external storage root path: " + strA);
        return strA;
    }

    /* renamed from: if, reason: not valid java name */
    public static String m11005if(Context context) {
        return m11003for(context, null);
    }

    /* renamed from: new, reason: not valid java name */
    public static String m11006new() throws RuntimeException {
        if (m11001do()) {
            return Cdo.a(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOWNLOADS).getAbsolutePath());
        }
        throw new RuntimeException("外置存储不可用！");
    }

    /* renamed from: this, reason: not valid java name */
    public static String m11007this(Context context) {
        return m10997break(context, null);
    }

    /* renamed from: try, reason: not valid java name */
    public static String m11008try(Context context) {
        return m10998case(context, null);
    }
}
