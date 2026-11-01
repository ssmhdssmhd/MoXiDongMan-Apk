package com.wsw.cospa.utils;

import android.content.Context;
import android.os.Environment;
import android.os.Looper;
import android.support.v4.on0;
import com.bumptech.glide.Glide;
import com.bumptech.glide.load.engine.cache.DiskCache;
import com.wsw.cospa.utils.Cnative;
import java.io.File;
import java.math.BigDecimal;

/* renamed from: com.wsw.cospa.utils.native, reason: invalid class name */
/* loaded from: classes2.dex */
public class Cnative {
    /* renamed from: break, reason: not valid java name */
    public static synchronized void m26961break(final Context context) {
        try {
            if (Looper.myLooper() == Looper.getMainLooper()) {
                Glide.m11040new(context).m11057for();
                new Thread(new Runnable() { // from class: android.support.v4.qw
                    @Override // java.lang.Runnable
                    public final void run() {
                        Cnative.m26975throw(context);
                    }
                }).start();
            } else {
                Glide.m11040new(context).m11059if();
                Glide.m11040new(context).m11057for();
                if (Environment.getExternalStorageState().equals("mounted")) {
                    m26963catch(context.getExternalCacheDir());
                }
                m26963catch(context.getFilesDir());
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: case, reason: not valid java name */
    public static void m26962case(Context context) {
        if (Environment.getExternalStorageState().equals("mounted")) {
            m26964class(context.getExternalCacheDir());
        }
    }

    /* renamed from: catch, reason: not valid java name */
    public static boolean m26963catch(File file) {
        if (file != null && file.isDirectory()) {
            for (String str : file.list()) {
                if (!m26963catch(new File(file, str))) {
                    return false;
                }
            }
        }
        return file.delete();
    }

    /* renamed from: class, reason: not valid java name */
    private static void m26964class(File file) {
        if (file != null && file.exists() && file.isDirectory()) {
            for (File file2 : file.listFiles()) {
                file2.delete();
            }
        }
    }

    /* renamed from: const, reason: not valid java name */
    public static long m26965const(File file) throws Exception {
        long jM26965const = 0;
        try {
            File[] fileArrListFiles = file.listFiles();
            if (fileArrListFiles != null && fileArrListFiles.length > 0) {
                for (int i = 0; i < fileArrListFiles.length; i++) {
                    jM26965const += fileArrListFiles[i].isDirectory() ? m26965const(fileArrListFiles[i]) : fileArrListFiles[i].length();
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return jM26965const;
    }

    /* renamed from: else, reason: not valid java name */
    public static void m26967else(Context context) {
        m26964class(context.getFilesDir());
    }

    /* renamed from: final, reason: not valid java name */
    public static String m26968final(double d) {
        double d2 = d / 1024.0d;
        if (d2 < 1.0d) {
            return d + "Byte";
        }
        double d3 = d2 / 1024.0d;
        if (d3 < 1.0d) {
            return new BigDecimal(Double.toString(d2)).setScale(2, 4).toPlainString() + "KB";
        }
        double d4 = d3 / 1024.0d;
        if (d4 < 1.0d) {
            return new BigDecimal(Double.toString(d3)).setScale(2, 4).toPlainString() + "MB";
        }
        double d5 = d4 / 1024.0d;
        if (d5 < 1.0d) {
            return new BigDecimal(Double.toString(d4)).setScale(2, 4).toPlainString() + "GB";
        }
        return new BigDecimal(d5).setScale(2, 4).toPlainString() + "TB";
    }

    /* renamed from: for, reason: not valid java name */
    public static void m26969for(String str) {
        m26964class(new File(str));
    }

    /* renamed from: goto, reason: not valid java name */
    public static void m26970goto(Context context) {
        m26964class(context.getCacheDir());
    }

    /* renamed from: if, reason: not valid java name */
    public static void m26971if(Context context, String... strArr) {
        m26970goto(context);
        m26962case(context);
        m26976try(context);
        m26974this(context);
        m26967else(context);
        for (String str : strArr) {
            m26969for(str);
        }
    }

    /* renamed from: new, reason: not valid java name */
    public static void m26972new(Context context, String str) {
        context.deleteDatabase(str);
    }

    /* renamed from: super, reason: not valid java name */
    public static String m26973super(Context context) {
        try {
            long jM26965const = m26965const(new File(context.getCacheDir() + on0.f4694final + DiskCache.Factory.DEFAULT_DISK_CACHE_DIR)) + m26965const(new File(context.getFilesDir() + on0.f4694final + DiskCache.Factory.DEFAULT_DISK_CACHE_DIR));
            if (Environment.getExternalStorageState().equals("mounted")) {
                jM26965const += m26965const(context.getExternalCacheDir());
            }
            return m26968final(jM26965const + m26965const(context.getFilesDir()));
        } catch (Exception e) {
            e.printStackTrace();
            return "0Byte";
        }
    }

    /* renamed from: this, reason: not valid java name */
    public static void m26974this(Context context) {
        m26964class(new File("/data/data/" + context.getPackageName() + "/shared_prefs"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: throw, reason: not valid java name */
    public static /* synthetic */ void m26975throw(Context context) {
        Glide.m11040new(context).m11059if();
        if (Environment.getExternalStorageState().equals("mounted")) {
            m26963catch(context.getExternalCacheDir());
        }
        m26963catch(context.getFilesDir());
    }

    /* renamed from: try, reason: not valid java name */
    public static void m26976try(Context context) {
        m26964class(new File("/data/data/" + context.getPackageName() + "/databases"));
    }
}
