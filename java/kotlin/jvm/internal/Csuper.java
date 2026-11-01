package kotlin.jvm.internal;

import android.support.v4.iz1;
import android.support.v4.rr0;
import android.support.v4.tb2;
import java.util.Arrays;
import org.apache.commons.lang3.Ctry;
import org.jsoup.nodes.Attributes;

/* renamed from: kotlin.jvm.internal.super, reason: invalid class name */
/* loaded from: classes3.dex */
public class Csuper {

    @iz1(version = "1.4")
    /* renamed from: kotlin.jvm.internal.super$do, reason: invalid class name */
    public static class Cdo {
        private Cdo() {
        }
    }

    private Csuper() {
    }

    private static void a(String str) {
        throw ((IllegalArgumentException) m30679finally(new IllegalArgumentException(m30694static(str))));
    }

    /* renamed from: abstract, reason: not valid java name */
    public static void m30667abstract() {
        throw ((AssertionError) m30679finally(new AssertionError()));
    }

    private static void b(String str) {
        throw ((NullPointerException) m30679finally(new NullPointerException(m30694static(str))));
    }

    /* renamed from: break, reason: not valid java name */
    public static void m30668break(Object obj, String str, String str2) {
        if (obj != null) {
            return;
        }
        throw ((IllegalStateException) m30679finally(new IllegalStateException("Field specified as non-null is null: " + str + "." + str2)));
    }

    public static void c() {
        d("This function has a reified type parameter and thus can only be inlined at compilation time, not called directly.");
    }

    @iz1(version = "1.1")
    /* renamed from: case, reason: not valid java name */
    public static boolean m30669case(Float f, Float f2) {
        if (f == null) {
            if (f2 == null) {
                return true;
            }
        } else if (f2 != null && f.floatValue() == f2.floatValue()) {
            return true;
        }
        return false;
    }

    /* renamed from: catch, reason: not valid java name */
    public static void m30670catch(String str) throws ClassNotFoundException {
        String strReplace = str.replace(Attributes.InternalPrefix, Ctry.f28883do);
        try {
            Class.forName(strReplace);
        } catch (ClassNotFoundException e) {
            throw ((ClassNotFoundException) m30679finally(new ClassNotFoundException("Class " + strReplace + " is not found. Please update the Kotlin runtime to the latest version", e)));
        }
    }

    /* renamed from: class, reason: not valid java name */
    public static void m30671class(String str, String str2) throws ClassNotFoundException {
        String strReplace = str.replace(Attributes.InternalPrefix, Ctry.f28883do);
        try {
            Class.forName(strReplace);
        } catch (ClassNotFoundException e) {
            throw ((ClassNotFoundException) m30679finally(new ClassNotFoundException("Class " + strReplace + " is not found: this code requires the Kotlin runtime of version at least " + str2, e)));
        }
    }

    /* renamed from: const, reason: not valid java name */
    public static void m30672const(Object obj) {
        if (obj == null) {
            m30702transient();
        }
    }

    /* renamed from: continue, reason: not valid java name */
    public static void m30673continue(String str) {
        throw ((AssertionError) m30679finally(new AssertionError(str)));
    }

    public static void d(String str) {
        throw new UnsupportedOperationException(str);
    }

    /* renamed from: default, reason: not valid java name */
    public static void m30674default(int i, String str) {
        c();
    }

    @iz1(version = "1.1")
    /* renamed from: do, reason: not valid java name */
    public static boolean m30675do(double d, Double d2) {
        return d2 != null && d == d2.doubleValue();
    }

    public static void e(String str) {
        throw ((tb2) m30679finally(new tb2(str)));
    }

    /* renamed from: else, reason: not valid java name */
    public static boolean m30676else(Object obj, Object obj2) {
        return obj == null ? obj2 == null : obj.equals(obj2);
    }

    /* renamed from: extends, reason: not valid java name */
    public static void m30677extends(int i, String str, String str2) {
        d(str2);
    }

    public static void f(String str) {
        e("lateinit property " + str + " has not been initialized");
    }

    /* renamed from: final, reason: not valid java name */
    public static void m30678final(Object obj, String str) {
        if (obj == null) {
            m30683implements(str);
        }
    }

    /* renamed from: finally, reason: not valid java name */
    private static <T extends Throwable> T m30679finally(T t) {
        return (T) m30689package(t, Csuper.class.getName());
    }

    @iz1(version = "1.1")
    /* renamed from: for, reason: not valid java name */
    public static boolean m30680for(Double d, double d2) {
        return d != null && d.doubleValue() == d2;
    }

    /* renamed from: goto, reason: not valid java name */
    public static void m30681goto(Object obj, String str) {
        if (obj != null) {
            return;
        }
        throw ((IllegalStateException) m30679finally(new IllegalStateException(str + " must not be null")));
    }

    @iz1(version = "1.1")
    /* renamed from: if, reason: not valid java name */
    public static boolean m30682if(float f, Float f2) {
        return f2 != null && f == f2.floatValue();
    }

    @iz1(version = "1.4")
    /* renamed from: implements, reason: not valid java name */
    public static void m30683implements(String str) {
        throw ((NullPointerException) m30679finally(new NullPointerException(str)));
    }

    /* renamed from: import, reason: not valid java name */
    public static void m30684import(Object obj, String str) {
        if (obj == null) {
            throw ((IllegalStateException) m30679finally(new IllegalStateException(str)));
        }
    }

    /* renamed from: instanceof, reason: not valid java name */
    public static void m30685instanceof() {
        throw ((rr0) m30679finally(new rr0()));
    }

    /* renamed from: interface, reason: not valid java name */
    public static void m30686interface() {
        throw ((IllegalStateException) m30679finally(new IllegalStateException()));
    }

    /* renamed from: native, reason: not valid java name */
    public static void m30687native(Object obj, String str, String str2) {
        if (obj != null) {
            return;
        }
        throw ((IllegalStateException) m30679finally(new IllegalStateException("Method specified as non-null returned null: " + str + "." + str2)));
    }

    @iz1(version = "1.1")
    /* renamed from: new, reason: not valid java name */
    public static boolean m30688new(Double d, Double d2) {
        if (d == null) {
            if (d2 == null) {
                return true;
            }
        } else if (d2 != null && d.doubleValue() == d2.doubleValue()) {
            return true;
        }
        return false;
    }

    /* renamed from: package, reason: not valid java name */
    public static <T extends Throwable> T m30689package(T t, String str) {
        StackTraceElement[] stackTrace = t.getStackTrace();
        int length = stackTrace.length;
        int i = -1;
        for (int i2 = 0; i2 < length; i2++) {
            if (str.equals(stackTrace[i2].getClassName())) {
                i = i2;
            }
        }
        t.setStackTrace((StackTraceElement[]) Arrays.copyOfRange(stackTrace, i + 1, length));
        return t;
    }

    /* renamed from: private, reason: not valid java name */
    public static String m30690private(String str, Object obj) {
        return str + obj;
    }

    /* renamed from: protected, reason: not valid java name */
    public static void m30691protected(String str) {
        throw ((IllegalStateException) m30679finally(new IllegalStateException(str)));
    }

    /* renamed from: public, reason: not valid java name */
    public static int m30692public(int i, int i2) {
        if (i < i2) {
            return -1;
        }
        return i == i2 ? 0 : 1;
    }

    /* renamed from: return, reason: not valid java name */
    public static int m30693return(long j, long j2) {
        if (j < j2) {
            return -1;
        }
        return j == j2 ? 0 : 1;
    }

    /* renamed from: static, reason: not valid java name */
    private static String m30694static(String str) {
        StackTraceElement stackTraceElement = Thread.currentThread().getStackTrace()[4];
        return "Parameter specified as non-null is null: method " + stackTraceElement.getClassName() + "." + stackTraceElement.getMethodName() + ", parameter " + str;
    }

    /* renamed from: strictfp, reason: not valid java name */
    public static void m30695strictfp() {
        throw ((IllegalArgumentException) m30679finally(new IllegalArgumentException()));
    }

    /* renamed from: super, reason: not valid java name */
    public static void m30696super(Object obj, String str) {
        if (obj != null) {
            return;
        }
        throw ((NullPointerException) m30679finally(new NullPointerException(str + " must not be null")));
    }

    /* renamed from: switch, reason: not valid java name */
    public static void m30697switch() {
        c();
    }

    /* renamed from: synchronized, reason: not valid java name */
    public static void m30698synchronized(String str) {
        throw ((rr0) m30679finally(new rr0(str)));
    }

    /* renamed from: this, reason: not valid java name */
    public static void m30699this(Object obj, String str) {
        if (obj == null) {
            throw ((IllegalStateException) m30679finally(new IllegalStateException(str)));
        }
    }

    /* renamed from: throw, reason: not valid java name */
    public static void m30700throw(Object obj, String str) {
        if (obj == null) {
            b(str);
        }
    }

    /* renamed from: throws, reason: not valid java name */
    public static void m30701throws(String str) {
        d(str);
    }

    @iz1(version = "1.4")
    /* renamed from: transient, reason: not valid java name */
    public static void m30702transient() {
        throw ((NullPointerException) m30679finally(new NullPointerException()));
    }

    @iz1(version = "1.1")
    /* renamed from: try, reason: not valid java name */
    public static boolean m30703try(Float f, float f2) {
        return f != null && f.floatValue() == f2;
    }

    /* renamed from: volatile, reason: not valid java name */
    public static void m30704volatile(String str) {
        throw ((IllegalArgumentException) m30679finally(new IllegalArgumentException(str)));
    }

    /* renamed from: while, reason: not valid java name */
    public static void m30705while(Object obj, String str) {
        if (obj == null) {
            a(str);
        }
    }
}
