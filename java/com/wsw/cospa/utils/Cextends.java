package com.wsw.cospa.utils;

import android.content.Context;
import android.os.Looper;
import android.support.v4.on0;
import android.text.TextUtils;
import com.bumptech.glide.Glide;
import com.bumptech.glide.load.engine.cache.DiskCache;
import java.io.File;
import java.math.BigDecimal;

/* renamed from: com.wsw.cospa.utils.extends, reason: invalid class name */
/* loaded from: classes2.dex */
public class Cextends {

    /* renamed from: do, reason: not valid java name */
    private static Cextends f22633do;

    /* renamed from: case, reason: not valid java name */
    private long m26875case(File file) throws Exception {
        long jM26875case = 0;
        try {
            File[] fileArrListFiles = file.listFiles();
            if (fileArrListFiles != null && fileArrListFiles.length > 0) {
                for (File file2 : fileArrListFiles) {
                    jM26875case += file2.isDirectory() ? m26875case(file2) : file2.length();
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return jM26875case;
    }

    /* renamed from: else, reason: not valid java name */
    private static String m26876else(double d) {
        double d2 = d / 1024.0d;
        if (d2 < 1.0d) {
            return d + "B";
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

    /* renamed from: goto, reason: not valid java name */
    public static Cextends m26877goto() {
        if (f22633do == null) {
            f22633do = new Cextends();
        }
        return f22633do;
    }

    /* renamed from: new, reason: not valid java name */
    private void m26878new(String str, boolean z) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            File file = new File(str);
            if (file.isDirectory()) {
                for (File file2 : file.listFiles()) {
                    m26878new(file2.getAbsolutePath(), true);
                }
            }
            if (z) {
                if (!file.isDirectory()) {
                    file.delete();
                } else if (file.listFiles().length == 0) {
                    file.delete();
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: do, reason: not valid java name */
    public void m26879do(Context context) {
        m26878new(context.getExternalCacheDir() + DiskCache.Factory.DEFAULT_DISK_CACHE_DIR, true);
    }

    /* renamed from: for, reason: not valid java name */
    public void m26880for(Context context) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            Glide.m11040new(context).m11057for();
        }
    }

    /* renamed from: if, reason: not valid java name */
    public void m26881if(Context context) {
        if (Looper.myLooper() != Looper.getMainLooper()) {
            Glide.m11040new(context).m11059if();
        }
    }

    /* renamed from: try, reason: not valid java name */
    public String m26882try(Context context) {
        try {
            return m26876else(m26875case(new File(context.getCacheDir() + on0.f4694final + DiskCache.Factory.DEFAULT_DISK_CACHE_DIR)));
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }
}
