package android.support.v4;

import android.os.Debug;
import android.os.Environment;
import java.io.File;
import java.io.PrintWriter;
import java.io.StringWriter;
import org.apache.commons.lang3.Cclass;

/* loaded from: classes.dex */
public final class uv0 {

    /* renamed from: do, reason: not valid java name */
    private static final int f6996do = 3;

    /* renamed from: for, reason: not valid java name */
    private static final int f6997for = 2;

    /* renamed from: if, reason: not valid java name */
    private static final int f6998if = 131071;

    /* renamed from: new, reason: not valid java name */
    private static boolean f6999new = false;

    /* renamed from: try, reason: not valid java name */
    private static String f7000try = "liyujiang";

    /* renamed from: break, reason: not valid java name */
    public static void m8664break(Throwable th) {
        m8675goto(m8677import(th));
    }

    /* renamed from: case, reason: not valid java name */
    public static void m8665case(Object obj, String str) {
        m8685this(obj.getClass().getSimpleName(), str);
    }

    /* renamed from: catch, reason: not valid java name */
    public static String m8666catch() {
        return f7000try;
    }

    /* renamed from: class, reason: not valid java name */
    private static String m8667class() {
        try {
            StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
            int iM8676if = m8676if(stackTrace);
            StringBuilder sb = new StringBuilder();
            String str = "    ";
            for (int length = iM8676if + 2 > stackTrace.length ? (stackTrace.length - iM8676if) - 1 : 2; length > 0; length--) {
                int i = length + iM8676if;
                if (i < stackTrace.length) {
                    sb.append("\n");
                    sb.append(str);
                    sb.append(m8670do(stackTrace[i].getClassName()));
                    sb.append(".");
                    sb.append(stackTrace[i].getMethodName());
                    sb.append(Cclass.f28652do);
                    sb.append("(");
                    sb.append(stackTrace[i].getFileName());
                    sb.append(":");
                    sb.append(stackTrace[i].getLineNumber());
                    sb.append(")");
                    str = str + "    ";
                }
            }
            return sb.toString();
        } catch (Exception unused) {
            return "";
        }
    }

    /* renamed from: const, reason: not valid java name */
    public static boolean m8668const() {
        return f6999new;
    }

    /* renamed from: default, reason: not valid java name */
    public static void m8669default(String str, String str2) {
        if (f6999new) {
            StringBuilder sb = new StringBuilder();
            sb.append(f7000try);
            sb.append((str == null || str.trim().length() == 0) ? "" : "-");
            sb.append(str);
            StringBuilder sb2 = new StringBuilder();
            sb2.append(str2);
            sb2.append(m8667class());
        }
    }

    /* renamed from: do, reason: not valid java name */
    private static String m8670do(String str) {
        return str.substring(str.lastIndexOf(".") + 1);
    }

    /* renamed from: else, reason: not valid java name */
    public static void m8671else(Object obj, Throwable th) {
        m8685this(obj.getClass().getSimpleName(), m8677import(th));
    }

    /* renamed from: extends, reason: not valid java name */
    public static void m8672extends(Throwable th) {
        m8687throws(m8677import(th));
    }

    /* renamed from: final, reason: not valid java name */
    public static void m8673final(String str) {
        f7000try = str;
    }

    /* renamed from: for, reason: not valid java name */
    public static void m8674for(Object obj, String str) {
        m8688try(obj.getClass().getSimpleName(), str);
    }

    /* renamed from: goto, reason: not valid java name */
    public static void m8675goto(String str) {
        m8685this("", str);
    }

    /* renamed from: if, reason: not valid java name */
    private static int m8676if(StackTraceElement[] stackTraceElementArr) {
        for (int i = 3; i < stackTraceElementArr.length; i++) {
            if (!stackTraceElementArr[i].getClassName().equals(uv0.class.getName())) {
                return i - 1;
            }
        }
        return -1;
    }

    /* renamed from: import, reason: not valid java name */
    public static String m8677import(Throwable th) {
        StringWriter stringWriter = new StringWriter();
        PrintWriter printWriter = new PrintWriter(stringWriter);
        th.printStackTrace(printWriter);
        String string = stringWriter.toString();
        if (string.length() > f6998if) {
            string = string.substring(0, 131047) + " [stack trace too large]";
        }
        printWriter.close();
        return string;
    }

    /* renamed from: native, reason: not valid java name */
    public static void m8678native(Object obj, String str) {
        m8681return(obj.getClass().getSimpleName(), str);
    }

    /* renamed from: new, reason: not valid java name */
    public static void m8679new(String str) {
        m8688try("", str);
    }

    /* renamed from: public, reason: not valid java name */
    public static void m8680public(String str) {
        m8681return("", str);
    }

    /* renamed from: return, reason: not valid java name */
    public static void m8681return(String str, String str2) {
        if (f6999new) {
            StringBuilder sb = new StringBuilder();
            sb.append(f7000try);
            sb.append((str == null || str.trim().length() == 0) ? "" : "-");
            sb.append(str);
            StringBuilder sb2 = new StringBuilder();
            sb2.append(str2);
            sb2.append(m8667class());
        }
    }

    /* renamed from: static, reason: not valid java name */
    public static void m8682static(Object obj, String str) {
        m8669default(obj.getClass().getSimpleName(), str);
    }

    /* renamed from: super, reason: not valid java name */
    public static void m8683super(boolean z) {
        f6999new = z;
    }

    /* renamed from: switch, reason: not valid java name */
    public static void m8684switch(Object obj, Throwable th) {
        m8669default(obj.getClass().getSimpleName(), m8677import(th));
    }

    /* renamed from: this, reason: not valid java name */
    public static void m8685this(String str, String str2) {
        if (f6999new) {
            StringBuilder sb = new StringBuilder();
            sb.append(f7000try);
            sb.append((str == null || str.trim().length() == 0) ? "" : "-");
            sb.append(str);
            StringBuilder sb2 = new StringBuilder();
            sb2.append(str2);
            sb2.append(m8667class());
        }
    }

    /* renamed from: throw, reason: not valid java name */
    public static void m8686throw() {
        if (f6999new) {
            Debug.startMethodTracing(Environment.getExternalStorageDirectory().getAbsolutePath() + File.separator + f7000try + ".trace");
        }
    }

    /* renamed from: throws, reason: not valid java name */
    public static void m8687throws(String str) {
        m8669default("", str);
    }

    /* renamed from: try, reason: not valid java name */
    public static void m8688try(String str, String str2) {
        if (f6999new) {
            StringBuilder sb = new StringBuilder();
            sb.append(f7000try);
            sb.append((str == null || str.trim().length() == 0) ? "" : "-");
            sb.append(str);
            StringBuilder sb2 = new StringBuilder();
            sb2.append(str2);
            sb2.append(m8667class());
        }
    }

    /* renamed from: while, reason: not valid java name */
    public static void m8689while() {
        if (f6999new) {
            Debug.stopMethodTracing();
        }
    }
}
