package org.apache.commons.lang3;

import android.support.v4.ee2;
import android.support.v4.pm;
import java.io.IOException;
import java.io.Serializable;
import java.lang.reflect.Array;
import java.lang.reflect.InvocationTargetException;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
import java.util.TreeSet;
import org.apache.commons.lang3.mutable.Cnew;
import org.apache.commons.lang3.text.Cif;

/* renamed from: org.apache.commons.lang3.goto, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cgoto {

    /* renamed from: do, reason: not valid java name */
    public static final Cdo f28715do = new Cdo();

    /* renamed from: org.apache.commons.lang3.goto$do, reason: invalid class name */
    public static class Cdo implements Serializable {
        private static final long serialVersionUID = 7092611880189329093L;

        private Object readResolve() {
            return Cgoto.f28715do;
        }
    }

    /* renamed from: abstract, reason: not valid java name */
    public static <T> T m32372abstract(T... tArr) {
        if (!Cif.V(tArr)) {
            return null;
        }
        HashMap map = new HashMap(tArr.length);
        int i = 0;
        for (T t : tArr) {
            Cnew cnew = (Cnew) map.get(t);
            if (cnew == null) {
                map.put(t, new Cnew(1));
            } else {
                cnew.increment();
            }
        }
        while (true) {
            T t2 = null;
            for (Map.Entry entry : map.entrySet()) {
                int iIntValue = ((Cnew) entry.getValue()).intValue();
                if (iIntValue == i) {
                    break;
                }
                if (iIntValue > i) {
                    t2 = (T) entry.getKey();
                    i = iIntValue;
                }
            }
            return t2;
        }
    }

    /* renamed from: break, reason: not valid java name */
    public static byte m32373break(int i) throws IllegalArgumentException {
        if (i >= -128 && i <= 127) {
            return (byte) i;
        }
        throw new IllegalArgumentException("Supplied value must be a valid byte literal between -128 and 127: [" + i + "]");
    }

    /* renamed from: case, reason: not valid java name */
    public static long m32374case(long j) {
        return j;
    }

    /* renamed from: catch, reason: not valid java name */
    public static short m32375catch(int i) throws IllegalArgumentException {
        if (i >= -32768 && i <= 32767) {
            return (short) i;
        }
        throw new IllegalArgumentException("Supplied value must be a valid byte literal between -32768 and 32767: [" + i + "]");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: class, reason: not valid java name */
    public static <T> T m32376class(T t) throws ArrayIndexOutOfBoundsException, IllegalArgumentException {
        if (!(t instanceof Cloneable)) {
            return null;
        }
        if (!t.getClass().isArray()) {
            try {
                return (T) t.getClass().getMethod("clone", new Class[0]).invoke(t, new Object[0]);
            } catch (IllegalAccessException e) {
                throw new pm("Cannot clone Cloneable type " + t.getClass().getName(), e);
            } catch (NoSuchMethodException e2) {
                throw new pm("Cloneable type " + t.getClass().getName() + " has no clone method", e2);
            } catch (InvocationTargetException e3) {
                throw new pm("Exception cloning Cloneable type " + t.getClass().getName(), e3.getCause());
            }
        }
        Class<?> componentType = t.getClass().getComponentType();
        if (!componentType.isPrimitive()) {
            return (T) ((Object[]) t).clone();
        }
        int length = Array.getLength(t);
        T t2 = (T) Array.newInstance(componentType, length);
        while (true) {
            int i = length - 1;
            if (length <= 0) {
                return t2;
            }
            Array.set(t2, i, Array.get(t, i));
            length = i;
        }
    }

    /* renamed from: const, reason: not valid java name */
    public static <T> T m32377const(T t) {
        T t2 = (T) m32376class(t);
        return t2 == null ? t : t2;
    }

    /* renamed from: continue, reason: not valid java name */
    public static boolean m32378continue(Object obj, Object obj2) {
        return !m32404while(obj, obj2);
    }

    /* renamed from: default, reason: not valid java name */
    public static void m32379default(Cif cif, Object obj) {
        Objects.requireNonNull(obj, "Cannot get the toString of a null identity");
        cif.append(obj.getClass().getName()).append('@').append(Integer.toHexString(System.identityHashCode(obj)));
    }

    /* renamed from: do, reason: not valid java name */
    public static byte m32380do(byte b) {
        return b;
    }

    /* renamed from: else, reason: not valid java name */
    public static <T> T m32381else(T t) {
        return t;
    }

    /* renamed from: extends, reason: not valid java name */
    public static <T extends Comparable<? super T>> T m32382extends(T... tArr) {
        T t = null;
        if (tArr != null) {
            for (T t2 : tArr) {
                if (m32397super(t2, t, false) > 0) {
                    t = t2;
                }
            }
        }
        return t;
    }

    /* renamed from: final, reason: not valid java name */
    public static <T extends Comparable<? super T>> int m32383final(T t, T t2) {
        return m32397super(t, t2, false);
    }

    /* renamed from: finally, reason: not valid java name */
    public static <T extends Comparable<? super T>> T m32384finally(T... tArr) {
        ee2.m1838protected(tArr);
        ee2.m1821default(tArr);
        TreeSet treeSet = new TreeSet();
        Collections.addAll(treeSet, tArr);
        return (T) treeSet.toArray()[(treeSet.size() - 1) / 2];
    }

    /* renamed from: for, reason: not valid java name */
    public static double m32385for(double d) {
        return d;
    }

    /* renamed from: goto, reason: not valid java name */
    public static short m32386goto(short s) {
        return s;
    }

    /* renamed from: if, reason: not valid java name */
    public static char m32387if(char c) {
        return c;
    }

    /* renamed from: import, reason: not valid java name */
    public static <T> T m32388import(T... tArr) {
        if (tArr == null) {
            return null;
        }
        for (T t : tArr) {
            if (t != null) {
                return t;
            }
        }
        return null;
    }

    @Deprecated
    /* renamed from: native, reason: not valid java name */
    public static int m32389native(Object obj) {
        if (obj == null) {
            return 0;
        }
        return obj.hashCode();
    }

    /* renamed from: new, reason: not valid java name */
    public static float m32390new(float f) {
        return f;
    }

    /* renamed from: package, reason: not valid java name */
    public static <T> T m32391package(Comparator<T> comparator, T... tArr) {
        ee2.m1849transient(tArr, "null/empty items", new Object[0]);
        ee2.m1821default(tArr);
        ee2.m1832instanceof(comparator, "null comparator", new Object[0]);
        TreeSet treeSet = new TreeSet(comparator);
        Collections.addAll(treeSet, tArr);
        return (T) treeSet.toArray()[(treeSet.size() - 1) / 2];
    }

    /* renamed from: private, reason: not valid java name */
    public static <T extends Comparable<? super T>> T m32392private(T... tArr) {
        T t = null;
        if (tArr != null) {
            for (T t2 : tArr) {
                if (m32397super(t2, t, true) < 0) {
                    t = t2;
                }
            }
        }
        return t;
    }

    @Deprecated
    /* renamed from: public, reason: not valid java name */
    public static int m32393public(Object... objArr) {
        int iM32389native = 1;
        if (objArr != null) {
            for (Object obj : objArr) {
                iM32389native = (iM32389native * 31) + m32389native(obj);
            }
        }
        return iM32389native;
    }

    /* renamed from: return, reason: not valid java name */
    public static String m32394return(Object obj) {
        if (obj == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        m32401throws(sb, obj);
        return sb.toString();
    }

    /* renamed from: static, reason: not valid java name */
    public static void m32395static(Appendable appendable, Object obj) throws IOException {
        Objects.requireNonNull(obj, "Cannot get the toString of a null identity");
        appendable.append(obj.getClass().getName()).append('@').append(Integer.toHexString(System.identityHashCode(obj)));
    }

    @Deprecated
    /* renamed from: strictfp, reason: not valid java name */
    public static String m32396strictfp(Object obj) {
        return obj == null ? "" : obj.toString();
    }

    /* renamed from: super, reason: not valid java name */
    public static <T extends Comparable<? super T>> int m32397super(T t, T t2, boolean z) {
        if (t == t2) {
            return 0;
        }
        return t == null ? z ? 1 : -1 : t2 == null ? z ? -1 : 1 : t.compareTo(t2);
    }

    /* renamed from: switch, reason: not valid java name */
    public static void m32398switch(StringBuffer stringBuffer, Object obj) {
        Objects.requireNonNull(obj, "Cannot get the toString of a null identity");
        stringBuffer.append(obj.getClass().getName());
        stringBuffer.append('@');
        stringBuffer.append(Integer.toHexString(System.identityHashCode(obj)));
    }

    /* renamed from: this, reason: not valid java name */
    public static boolean m32399this(boolean z) {
        return z;
    }

    /* renamed from: throw, reason: not valid java name */
    public static <T> T m32400throw(T t, T t2) {
        return t != null ? t : t2;
    }

    /* renamed from: throws, reason: not valid java name */
    public static void m32401throws(StringBuilder sb, Object obj) {
        Objects.requireNonNull(obj, "Cannot get the toString of a null identity");
        sb.append(obj.getClass().getName());
        sb.append('@');
        sb.append(Integer.toHexString(System.identityHashCode(obj)));
    }

    /* renamed from: try, reason: not valid java name */
    public static int m32402try(int i) {
        return i;
    }

    @Deprecated
    /* renamed from: volatile, reason: not valid java name */
    public static String m32403volatile(Object obj, String str) {
        return obj == null ? str : obj.toString();
    }

    @Deprecated
    /* renamed from: while, reason: not valid java name */
    public static boolean m32404while(Object obj, Object obj2) {
        if (obj == obj2) {
            return true;
        }
        if (obj == null || obj2 == null) {
            return false;
        }
        return obj.equals(obj2);
    }

    public String toString() {
        return super.toString();
    }
}
