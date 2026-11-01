package android.support.v4;

import android.util.Log;
import java.util.Locale;
import org.chromium.base.annotations.RemovableInRelease;

/* loaded from: classes3.dex */
public class rv0 {

    /* renamed from: case, reason: not valid java name */
    public static final int f5944case = 5;

    /* renamed from: do, reason: not valid java name */
    public static final int f5945do = 7;

    /* renamed from: else, reason: not valid java name */
    private static final String f5946else = "cr_";

    /* renamed from: for, reason: not valid java name */
    public static final int f5947for = 6;

    /* renamed from: goto, reason: not valid java name */
    private static final String f5948goto = "cr.";

    /* renamed from: if, reason: not valid java name */
    public static final int f5949if = 3;

    /* renamed from: new, reason: not valid java name */
    public static final int f5950new = 4;

    /* renamed from: try, reason: not valid java name */
    public static final int f5951try = 2;

    private rv0() {
    }

    /* renamed from: break, reason: not valid java name */
    public static boolean m7146break(String str, int i) {
        if (m7158this() || i > 4) {
            return Log.isLoggable(str, i);
        }
        return false;
    }

    /* renamed from: case, reason: not valid java name */
    public static String m7147case(Throwable th) {
        return Log.getStackTraceString(th);
    }

    /* renamed from: catch, reason: not valid java name */
    public static String m7148catch(String str) {
        if (str.startsWith(f5946else)) {
            return str;
        }
        return f5946else + str.substring(str.startsWith(f5948goto) ? 3 : 0, str.length());
    }

    @RemovableInRelease
    /* renamed from: class, reason: not valid java name */
    public static void m7149class(String str, String str2, Object... objArr) {
        Throwable thM7152else = m7152else(objArr);
        m7157new(str2, thM7152else, objArr);
        if (thM7152else != null) {
            m7148catch(str);
        } else {
            m7148catch(str);
        }
    }

    /* renamed from: const, reason: not valid java name */
    public static void m7150const(String str, String str2, Object... objArr) {
        Throwable thM7152else = m7152else(objArr);
        m7154for(str2, thM7152else, objArr);
        if (thM7152else != null) {
            m7148catch(str);
        } else {
            m7148catch(str);
        }
    }

    @RemovableInRelease
    /* renamed from: do, reason: not valid java name */
    public static void m7151do(String str, String str2, Object... objArr) {
        Throwable thM7152else = m7152else(objArr);
        m7157new(str2, thM7152else, objArr);
        if (thM7152else != null) {
            m7148catch(str);
        } else {
            m7148catch(str);
        }
    }

    /* renamed from: else, reason: not valid java name */
    private static Throwable m7152else(Object[] objArr) {
        if (objArr == null || objArr.length == 0) {
            return null;
        }
        Object obj = objArr[objArr.length - 1];
        if (obj instanceof Throwable) {
            return (Throwable) obj;
        }
        return null;
    }

    /* renamed from: final, reason: not valid java name */
    public static void m7153final(String str, String str2, Object... objArr) {
        Throwable thM7152else = m7152else(objArr);
        String strM7154for = m7154for(str2, thM7152else, objArr);
        if (thM7152else != null) {
            Log.wtf(m7148catch(str), strM7154for, thM7152else);
        } else {
            Log.wtf(m7148catch(str), strM7154for);
        }
    }

    /* renamed from: for, reason: not valid java name */
    private static String m7154for(String str, Throwable th, Object... objArr) {
        return objArr != null ? ((th != null || objArr.length <= 0) && objArr.length <= 1) ? str : String.format(Locale.US, str, objArr) : str;
    }

    /* renamed from: goto, reason: not valid java name */
    public static void m7155goto(String str, String str2, Object... objArr) {
        Throwable thM7152else = m7152else(objArr);
        m7154for(str2, thM7152else, objArr);
        if (thM7152else != null) {
            m7148catch(str);
        } else {
            m7148catch(str);
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static void m7156if(String str, String str2, Object... objArr) {
        Throwable thM7152else = m7152else(objArr);
        m7154for(str2, thM7152else, objArr);
        if (thM7152else != null) {
            m7148catch(str);
        } else {
            m7148catch(str);
        }
    }

    /* renamed from: new, reason: not valid java name */
    private static String m7157new(String str, Throwable th, Object... objArr) {
        return "[" + m7159try() + "] " + m7154for(str, th, objArr);
    }

    @RemovableInRelease
    /* renamed from: this, reason: not valid java name */
    private static boolean m7158this() {
        return true;
    }

    @RemovableInRelease
    /* renamed from: try, reason: not valid java name */
    private static String m7159try() {
        StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
        String name = rv0.class.getName();
        int i = 0;
        while (true) {
            if (i >= stackTrace.length) {
                break;
            }
            if (stackTrace[i].getClassName().equals(name)) {
                i += 3;
                break;
            }
            i++;
        }
        return stackTrace[i].getFileName() + ":" + stackTrace[i].getLineNumber();
    }
}
