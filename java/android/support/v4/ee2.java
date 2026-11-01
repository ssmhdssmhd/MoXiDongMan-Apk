package android.support.v4;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.regex.Pattern;
import org.apache.commons.lang3.Cclass;
import org.apache.commons.lang3.Cif;

/* loaded from: classes3.dex */
public class ee2 {

    /* renamed from: break, reason: not valid java name */
    private static final String f1406break = "The validated character sequence is empty";

    /* renamed from: case, reason: not valid java name */
    private static final String f1407case = "The validated array contains null element at index: %d";

    /* renamed from: catch, reason: not valid java name */
    private static final String f1408catch = "The validated collection is empty";

    /* renamed from: class, reason: not valid java name */
    private static final String f1409class = "The validated map is empty";

    /* renamed from: const, reason: not valid java name */
    private static final String f1410const = "The validated array index is invalid: %d";

    /* renamed from: do, reason: not valid java name */
    private static final String f1411do = "The value %s is not in the specified exclusive range of %s to %s";

    /* renamed from: else, reason: not valid java name */
    private static final String f1412else = "The validated collection contains null element at index: %d";

    /* renamed from: final, reason: not valid java name */
    private static final String f1413final = "The validated character sequence index is invalid: %d";

    /* renamed from: for, reason: not valid java name */
    private static final String f1414for = "The string %s does not match the pattern %s";

    /* renamed from: goto, reason: not valid java name */
    private static final String f1415goto = "The validated character sequence is blank";

    /* renamed from: if, reason: not valid java name */
    private static final String f1416if = "The value %s is not in the specified inclusive range of %s to %s";

    /* renamed from: import, reason: not valid java name */
    private static final String f1417import = "Expected type: %s, actual: %s";

    /* renamed from: new, reason: not valid java name */
    private static final String f1418new = "The validated object is null";

    /* renamed from: super, reason: not valid java name */
    private static final String f1419super = "The validated collection index is invalid: %d";

    /* renamed from: this, reason: not valid java name */
    private static final String f1420this = "The validated array is empty";

    /* renamed from: throw, reason: not valid java name */
    private static final String f1421throw = "The validated state is false";

    /* renamed from: try, reason: not valid java name */
    private static final String f1422try = "The validated expression is false";

    /* renamed from: while, reason: not valid java name */
    private static final String f1423while = "Cannot assign a %s to a %s";

    public static <T extends CharSequence> T a(T t, int i, String str, Object... objArr) {
        m1830implements(t);
        if (i < 0 || i >= t.length()) {
            throw new IndexOutOfBoundsException(String.format(str, objArr));
        }
        return t;
    }

    /* renamed from: abstract, reason: not valid java name */
    public static <T extends CharSequence> T m1814abstract(T t, String str, Object... objArr) {
        if (t == null) {
            throw new NullPointerException(String.format(str, objArr));
        }
        if (t.length() != 0) {
            return t;
        }
        throw new IllegalArgumentException(String.format(str, objArr));
    }

    public static <T extends Collection<?>> T b(T t, int i) {
        return (T) c(t, i, f1419super, Integer.valueOf(i));
    }

    /* renamed from: break, reason: not valid java name */
    public static void m1815break(long j, long j2, long j3, String str) {
        if (j3 < j || j3 > j2) {
            throw new IllegalArgumentException(String.format(str, new Object[0]));
        }
    }

    public static <T extends Collection<?>> T c(T t, int i, String str, Object... objArr) {
        m1830implements(t);
        if (i < 0 || i >= t.size()) {
            throw new IndexOutOfBoundsException(String.format(str, objArr));
        }
        return t;
    }

    /* renamed from: case, reason: not valid java name */
    public static <T> void m1816case(T t, T t2, Comparable<T> comparable, String str, Object... objArr) {
        if (comparable.compareTo(t) <= 0 || comparable.compareTo(t2) >= 0) {
            throw new IllegalArgumentException(String.format(str, objArr));
        }
    }

    /* renamed from: catch, reason: not valid java name */
    public static <T> void m1817catch(T t, T t2, Comparable<T> comparable) {
        if (comparable.compareTo(t) < 0 || comparable.compareTo(t2) > 0) {
            throw new IllegalArgumentException(String.format(f1416if, comparable, t, t2));
        }
    }

    /* renamed from: class, reason: not valid java name */
    public static <T> void m1818class(T t, T t2, Comparable<T> comparable, String str, Object... objArr) {
        if (comparable.compareTo(t) < 0 || comparable.compareTo(t2) > 0) {
            throw new IllegalArgumentException(String.format(str, objArr));
        }
    }

    /* renamed from: const, reason: not valid java name */
    public static void m1819const(Class<?> cls, Class<?> cls2) {
        if (cls.isAssignableFrom(cls2)) {
            return;
        }
        Object[] objArr = new Object[2];
        objArr[0] = cls2 == null ? "null" : cls2.getName();
        objArr[1] = cls.getName();
        throw new IllegalArgumentException(String.format(f1423while, objArr));
    }

    /* renamed from: continue, reason: not valid java name */
    public static <T extends Collection<?>> T m1820continue(T t) {
        return (T) m1842strictfp(t, f1408catch, new Object[0]);
    }

    public static <T> T[] d(T[] tArr, int i) {
        return (T[]) e(tArr, i, f1410const, Integer.valueOf(i));
    }

    /* renamed from: default, reason: not valid java name */
    public static <T> T[] m1821default(T[] tArr) {
        return (T[]) m1824extends(tArr, f1407case, new Object[0]);
    }

    /* renamed from: do, reason: not valid java name */
    public static void m1822do(double d, double d2, double d3) {
        if (d3 <= d || d3 >= d2) {
            throw new IllegalArgumentException(String.format(f1411do, Double.valueOf(d3), Double.valueOf(d), Double.valueOf(d2)));
        }
    }

    public static <T> T[] e(T[] tArr, int i, String str, Object... objArr) {
        m1830implements(tArr);
        if (i < 0 || i >= tArr.length) {
            throw new IndexOutOfBoundsException(String.format(str, objArr));
        }
        return tArr;
    }

    /* renamed from: else, reason: not valid java name */
    public static void m1823else(double d, double d2, double d3) {
        if (d3 < d || d3 > d2) {
            throw new IllegalArgumentException(String.format(f1416if, Double.valueOf(d3), Double.valueOf(d), Double.valueOf(d2)));
        }
    }

    /* renamed from: extends, reason: not valid java name */
    public static <T> T[] m1824extends(T[] tArr, String str, Object... objArr) {
        m1830implements(tArr);
        for (int i = 0; i < tArr.length; i++) {
            if (tArr[i] == null) {
                throw new IllegalArgumentException(String.format(str, Cif.m32434super(objArr, Integer.valueOf(i))));
            }
        }
        return tArr;
    }

    public static void f(boolean z) {
        if (!z) {
            throw new IllegalStateException(f1421throw);
        }
    }

    /* renamed from: final, reason: not valid java name */
    public static void m1825final(Class<?> cls, Class<?> cls2, String str, Object... objArr) {
        if (!cls.isAssignableFrom(cls2)) {
            throw new IllegalArgumentException(String.format(str, objArr));
        }
    }

    /* renamed from: finally, reason: not valid java name */
    public static <T extends CharSequence> T m1826finally(T t) {
        return (T) m1836package(t, f1415goto, new Object[0]);
    }

    /* renamed from: for, reason: not valid java name */
    public static void m1827for(long j, long j2, long j3) {
        if (j3 <= j || j3 >= j2) {
            throw new IllegalArgumentException(String.format(f1411do, Long.valueOf(j3), Long.valueOf(j), Long.valueOf(j2)));
        }
    }

    public static void g(boolean z, String str, Object... objArr) {
        if (!z) {
            throw new IllegalStateException(String.format(str, objArr));
        }
    }

    /* renamed from: goto, reason: not valid java name */
    public static void m1828goto(double d, double d2, double d3, String str) {
        if (d3 < d || d3 > d2) {
            throw new IllegalArgumentException(String.format(str, new Object[0]));
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static void m1829if(double d, double d2, double d3, String str) {
        if (d3 <= d || d3 >= d2) {
            throw new IllegalArgumentException(String.format(str, new Object[0]));
        }
    }

    /* renamed from: implements, reason: not valid java name */
    public static <T> T m1830implements(T t) {
        return (T) m1832instanceof(t, f1418new, new Object[0]);
    }

    /* renamed from: import, reason: not valid java name */
    public static void m1831import(boolean z, String str, double d) {
        if (!z) {
            throw new IllegalArgumentException(String.format(str, Double.valueOf(d)));
        }
    }

    /* renamed from: instanceof, reason: not valid java name */
    public static <T> T m1832instanceof(T t, String str, Object... objArr) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(String.format(str, objArr));
    }

    /* renamed from: interface, reason: not valid java name */
    public static <T extends Map<?, ?>> T m1833interface(T t, String str, Object... objArr) {
        if (t == null) {
            throw new NullPointerException(String.format(str, objArr));
        }
        if (t.isEmpty()) {
            throw new IllegalArgumentException(String.format(str, objArr));
        }
        return t;
    }

    /* renamed from: native, reason: not valid java name */
    public static void m1834native(boolean z, String str, long j) {
        if (!z) {
            throw new IllegalArgumentException(String.format(str, Long.valueOf(j)));
        }
    }

    /* renamed from: new, reason: not valid java name */
    public static void m1835new(long j, long j2, long j3, String str) {
        if (j3 <= j || j3 >= j2) {
            throw new IllegalArgumentException(String.format(str, new Object[0]));
        }
    }

    /* renamed from: package, reason: not valid java name */
    public static <T extends CharSequence> T m1836package(T t, String str, Object... objArr) {
        if (t == null) {
            throw new NullPointerException(String.format(str, objArr));
        }
        if (Cclass.z(t)) {
            throw new IllegalArgumentException(String.format(str, objArr));
        }
        return t;
    }

    /* renamed from: private, reason: not valid java name */
    public static <T extends CharSequence> T m1837private(T t) {
        return (T) m1814abstract(t, f1406break, new Object[0]);
    }

    /* renamed from: protected, reason: not valid java name */
    public static <T> T[] m1838protected(T[] tArr) {
        return (T[]) m1849transient(tArr, f1420this, new Object[0]);
    }

    /* renamed from: public, reason: not valid java name */
    public static void m1839public(boolean z, String str, Object... objArr) {
        if (!z) {
            throw new IllegalArgumentException(String.format(str, objArr));
        }
    }

    /* renamed from: return, reason: not valid java name */
    public static void m1840return(CharSequence charSequence, String str) {
        if (!Pattern.matches(str, charSequence)) {
            throw new IllegalArgumentException(String.format(f1414for, charSequence, str));
        }
    }

    /* renamed from: static, reason: not valid java name */
    public static void m1841static(CharSequence charSequence, String str, String str2, Object... objArr) {
        if (!Pattern.matches(str, charSequence)) {
            throw new IllegalArgumentException(String.format(str2, objArr));
        }
    }

    /* renamed from: strictfp, reason: not valid java name */
    public static <T extends Collection<?>> T m1842strictfp(T t, String str, Object... objArr) {
        if (t == null) {
            throw new NullPointerException(String.format(str, objArr));
        }
        if (t.isEmpty()) {
            throw new IllegalArgumentException(String.format(str, objArr));
        }
        return t;
    }

    /* renamed from: super, reason: not valid java name */
    public static void m1843super(Class<?> cls, Object obj) {
        if (cls.isInstance(obj)) {
            return;
        }
        Object[] objArr = new Object[2];
        objArr[0] = cls.getName();
        objArr[1] = obj == null ? "null" : obj.getClass().getName();
        throw new IllegalArgumentException(String.format(f1417import, objArr));
    }

    /* renamed from: switch, reason: not valid java name */
    public static <T extends Iterable<?>> T m1844switch(T t) {
        return (T) m1848throws(t, f1412else, new Object[0]);
    }

    /* renamed from: synchronized, reason: not valid java name */
    public static <T extends CharSequence> T m1845synchronized(T t, int i) {
        return (T) a(t, i, f1413final, Integer.valueOf(i));
    }

    /* renamed from: this, reason: not valid java name */
    public static void m1846this(long j, long j2, long j3) {
        if (j3 < j || j3 > j2) {
            throw new IllegalArgumentException(String.format(f1416if, Long.valueOf(j3), Long.valueOf(j), Long.valueOf(j2)));
        }
    }

    /* renamed from: throw, reason: not valid java name */
    public static void m1847throw(Class<?> cls, Object obj, String str, Object... objArr) {
        if (!cls.isInstance(obj)) {
            throw new IllegalArgumentException(String.format(str, objArr));
        }
    }

    /* renamed from: throws, reason: not valid java name */
    public static <T extends Iterable<?>> T m1848throws(T t, String str, Object... objArr) {
        m1830implements(t);
        Iterator it = t.iterator();
        int i = 0;
        while (it.hasNext()) {
            if (it.next() == null) {
                throw new IllegalArgumentException(String.format(str, Cif.m32415extends(objArr, Integer.valueOf(i))));
            }
            i++;
        }
        return t;
    }

    /* renamed from: transient, reason: not valid java name */
    public static <T> T[] m1849transient(T[] tArr, String str, Object... objArr) {
        if (tArr == null) {
            throw new NullPointerException(String.format(str, objArr));
        }
        if (tArr.length != 0) {
            return tArr;
        }
        throw new IllegalArgumentException(String.format(str, objArr));
    }

    /* renamed from: try, reason: not valid java name */
    public static <T> void m1850try(T t, T t2, Comparable<T> comparable) {
        if (comparable.compareTo(t) <= 0 || comparable.compareTo(t2) >= 0) {
            throw new IllegalArgumentException(String.format(f1411do, comparable, t, t2));
        }
    }

    /* renamed from: volatile, reason: not valid java name */
    public static <T extends Map<?, ?>> T m1851volatile(T t) {
        return (T) m1833interface(t, f1409class, new Object[0]);
    }

    /* renamed from: while, reason: not valid java name */
    public static void m1852while(boolean z) {
        if (!z) {
            throw new IllegalArgumentException(f1422try);
        }
    }
}
