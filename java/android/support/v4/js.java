package android.support.v4;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Environment;
import android.os.Handler;
import android.os.Looper;
import android.widget.Toast;
import com.umeng.umcrash.UMCrash;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.lang.Thread;
import java.lang.reflect.Field;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class js implements Thread.UncaughtExceptionHandler {

    /* renamed from: case, reason: not valid java name */
    @SuppressLint({"StaticFieldLeak"})
    private static js f3206case;

    /* renamed from: do, reason: not valid java name */
    private Thread.UncaughtExceptionHandler f3207do;

    /* renamed from: if, reason: not valid java name */
    private Context f3209if;

    /* renamed from: for, reason: not valid java name */
    private Map<String, String> f3208for = new HashMap();

    /* renamed from: new, reason: not valid java name */
    @SuppressLint({"SimpleDateFormat"})
    private SimpleDateFormat f3210new = new SimpleDateFormat("yyyy-MM-dd-HH-mm-ss");

    /* renamed from: try, reason: not valid java name */
    private String f3211try = getClass().getSimpleName();

    private js() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: break, reason: not valid java name */
    public /* synthetic */ void m4085break(Throwable th) {
        Toast.makeText(this.f3209if, th.getMessage(), 1).show();
    }

    /* renamed from: case, reason: not valid java name */
    public static synchronized js m4086case() {
        if (f3206case == null) {
            f3206case = new js();
        }
        return f3206case;
    }

    /* renamed from: catch, reason: not valid java name */
    private void m4087catch(Throwable th) throws IOException {
        StringBuilder sb = new StringBuilder();
        for (Map.Entry<String, String> entry : this.f3208for.entrySet()) {
            String key = entry.getKey();
            String value = entry.getValue();
            sb.append(key);
            sb.append("=");
            sb.append(value);
            sb.append("\n");
        }
        StringWriter stringWriter = new StringWriter();
        PrintWriter printWriter = new PrintWriter(stringWriter);
        th.printStackTrace(printWriter);
        for (Throwable cause = th.getCause(); cause != null; cause = cause.getCause()) {
            cause.printStackTrace(printWriter);
        }
        printWriter.close();
        sb.append(stringWriter.toString());
        try {
            long jCurrentTimeMillis = System.currentTimeMillis();
            String str = "crash-" + this.f3210new.format(new Date()) + "-" + jCurrentTimeMillis + ".log";
            String strM4093try = m4093try();
            File file = new File(strM4093try);
            if (!file.exists()) {
                file.mkdirs();
            }
            FileOutputStream fileOutputStream = new FileOutputStream(strM4093try + str);
            fileOutputStream.write(sb.toString().getBytes());
            StringBuilder sb2 = new StringBuilder();
            sb2.append("saveCrashInfo2File: ");
            sb2.append(sb.toString());
            fileOutputStream.close();
        } catch (Exception unused) {
        }
    }

    /* renamed from: else, reason: not valid java name */
    private boolean m4089else(final Throwable th) throws PackageManager.NameNotFoundException, IOException {
        if (th == null) {
            return false;
        }
        m4091new(this.f3209if);
        m4090if();
        try {
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: android.support.v4.is
                @Override // java.lang.Runnable
                public final void run() {
                    this.f2853do.m4085break(th);
                }
            });
        } catch (Exception unused) {
        }
        m4087catch(th);
        return false;
    }

    /* renamed from: if, reason: not valid java name */
    private void m4090if() {
    }

    /* renamed from: new, reason: not valid java name */
    private void m4091new(Context context) throws PackageManager.NameNotFoundException {
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 1);
            if (packageInfo != null) {
                String str = packageInfo.versionName;
                if (str == null) {
                    str = "null";
                }
                String str2 = packageInfo.versionCode + "";
                this.f3208for.put("versionName", str);
                this.f3208for.put("versionCode", str2);
            }
        } catch (PackageManager.NameNotFoundException unused) {
        }
        for (Field field : Build.class.getDeclaredFields()) {
            try {
                field.setAccessible(true);
                this.f3208for.put(field.getName(), field.get(null).toString());
            } catch (Exception unused2) {
            }
        }
    }

    /* renamed from: this, reason: not valid java name */
    public static boolean m4092this() {
        return "mounted".equals(Environment.getExternalStorageState());
    }

    /* renamed from: try, reason: not valid java name */
    public static String m4093try() {
        if (m4092this()) {
            try {
                return wq.f7624return;
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return wq.f7624return;
    }

    /* renamed from: for, reason: not valid java name */
    public void m4094for() {
        File file = new File(m4093try());
        if (file.exists()) {
            return;
        }
        file.mkdirs();
    }

    /* renamed from: goto, reason: not valid java name */
    public void m4095goto(Context context) {
        this.f3209if = context;
        this.f3207do = Thread.getDefaultUncaughtExceptionHandler();
        Thread.setDefaultUncaughtExceptionHandler(this);
        m4094for();
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public void uncaughtException(Thread thread, Throwable th) throws InterruptedException {
        Thread.UncaughtExceptionHandler uncaughtExceptionHandler;
        if (m4089else(th) || (uncaughtExceptionHandler = this.f3207do) == null) {
            try {
                Thread.sleep(3000L);
            } catch (InterruptedException unused) {
            }
        } else {
            uncaughtExceptionHandler.uncaughtException(thread, th);
            UMCrash.generateCustomLog(th, "UmengException");
        }
    }
}
