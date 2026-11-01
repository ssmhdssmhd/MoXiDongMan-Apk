package com.bumptech.glide.load.engine.executor;

import android.os.Build;
import android.os.StrictMode;
import android.util.Log;
import java.io.File;
import java.io.FilenameFilter;
import java.util.regex.Pattern;

/* renamed from: com.bumptech.glide.load.engine.executor.do, reason: invalid class name */
/* loaded from: classes.dex */
final class Cdo {

    /* renamed from: do, reason: not valid java name */
    private static final String f9801do = "GlideRuntimeCompat";

    /* renamed from: for, reason: not valid java name */
    private static final String f9802for = "/sys/devices/system/cpu/";

    /* renamed from: if, reason: not valid java name */
    private static final String f9803if = "cpu[0-9]+";

    /* renamed from: com.bumptech.glide.load.engine.executor.do$do, reason: invalid class name and collision with other inner class name */
    public class C0030do implements FilenameFilter {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Pattern f9804do;

        public C0030do(Pattern pattern) {
            this.f9804do = pattern;
        }

        @Override // java.io.FilenameFilter
        public boolean accept(File file, String str) {
            return this.f9804do.matcher(str).matches();
        }
    }

    private Cdo() {
    }

    /* renamed from: do, reason: not valid java name */
    public static int m11508do() {
        int iAvailableProcessors = Runtime.getRuntime().availableProcessors();
        return Build.VERSION.SDK_INT < 17 ? Math.max(m11509if(), iAvailableProcessors) : iAvailableProcessors;
    }

    /* renamed from: if, reason: not valid java name */
    private static int m11509if() {
        File[] fileArrListFiles;
        StrictMode.ThreadPolicy threadPolicyAllowThreadDiskReads = StrictMode.allowThreadDiskReads();
        try {
            try {
                fileArrListFiles = new File(f9802for).listFiles(new C0030do(Pattern.compile(f9803if)));
            } finally {
                StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskReads);
            }
        } catch (Throwable unused) {
            Log.isLoggable(f9801do, 6);
            StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskReads);
            fileArrListFiles = null;
        }
        return Math.max(1, fileArrListFiles != null ? fileArrListFiles.length : 0);
    }
}
