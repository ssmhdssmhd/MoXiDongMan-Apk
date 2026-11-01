package android.support.v4;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.EnumSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import org.apache.commons.lang3.Cif;

/* loaded from: classes3.dex */
public class a80 {

    /* renamed from: do, reason: not valid java name */
    private static final String f51do = "null elements not permitted";

    /* renamed from: for, reason: not valid java name */
    private static final String f52for = "%s does not seem to be an Enum type";

    /* renamed from: if, reason: not valid java name */
    private static final String f53if = "Cannot store %s %s values in %s bits";

    /* renamed from: new, reason: not valid java name */
    private static final String f54new = "EnumClass must be defined.";

    /* renamed from: break, reason: not valid java name */
    public static <E extends Enum<E>> boolean m57break(Class<E> cls, String str) {
        if (str == null) {
            return false;
        }
        try {
            Enum.valueOf(cls, str);
            return true;
        } catch (IllegalArgumentException unused) {
            return false;
        }
    }

    /* renamed from: case, reason: not valid java name */
    public static <E extends Enum<E>> long[] m58case(Class<E> cls, E... eArr) {
        m61do(cls);
        ee2.m1821default(eArr);
        EnumSet enumSetNoneOf = EnumSet.noneOf(cls);
        Collections.addAll(enumSetNoneOf, eArr);
        long[] jArr = new long[((cls.getEnumConstants().length - 1) / 64) + 1];
        Iterator it = enumSetNoneOf.iterator();
        while (it.hasNext()) {
            int iOrdinal = ((Enum) it.next()).ordinal() / 64;
            jArr[iOrdinal] = jArr[iOrdinal] | (1 << (r1.ordinal() % 64));
        }
        Cif.S1(jArr);
        return jArr;
    }

    /* renamed from: catch, reason: not valid java name */
    public static <E extends Enum<E>> EnumSet<E> m59catch(Class<E> cls, long j) {
        m65if(cls).getEnumConstants();
        return m60class(cls, j);
    }

    /* renamed from: class, reason: not valid java name */
    public static <E extends Enum<E>> EnumSet<E> m60class(Class<E> cls, long... jArr) {
        EnumSet<E> enumSetNoneOf = EnumSet.noneOf(m61do(cls));
        long[] jArrM32424interface = Cif.m32424interface((long[]) ee2.m1830implements(jArr));
        Cif.S1(jArrM32424interface);
        for (E e : cls.getEnumConstants()) {
            int iOrdinal = e.ordinal() / 64;
            if (iOrdinal < jArrM32424interface.length && (jArrM32424interface[iOrdinal] & (1 << (e.ordinal() % 64))) != 0) {
                enumSetNoneOf.add(e);
            }
        }
        return enumSetNoneOf;
    }

    /* renamed from: do, reason: not valid java name */
    private static <E extends Enum<E>> Class<E> m61do(Class<E> cls) {
        ee2.m1832instanceof(cls, f54new, new Object[0]);
        ee2.m1839public(cls.isEnum(), f52for, cls);
        return cls;
    }

    /* renamed from: else, reason: not valid java name */
    public static <E extends Enum<E>> E m62else(Class<E> cls, String str) {
        if (str == null) {
            return null;
        }
        try {
            return (E) Enum.valueOf(cls, str);
        } catch (IllegalArgumentException unused) {
            return null;
        }
    }

    /* renamed from: for, reason: not valid java name */
    public static <E extends Enum<E>> long m63for(Class<E> cls, Iterable<? extends E> iterable) {
        m65if(cls);
        ee2.m1830implements(iterable);
        Iterator<? extends E> it = iterable.iterator();
        long jOrdinal = 0;
        while (it.hasNext()) {
            ee2.m1839public(it.next() != null, f51do, new Object[0]);
            jOrdinal |= 1 << r7.ordinal();
        }
        return jOrdinal;
    }

    /* renamed from: goto, reason: not valid java name */
    public static <E extends Enum<E>> List<E> m64goto(Class<E> cls) {
        return new ArrayList(Arrays.asList(cls.getEnumConstants()));
    }

    /* renamed from: if, reason: not valid java name */
    private static <E extends Enum<E>> Class<E> m65if(Class<E> cls) {
        Enum[] enumArr = (Enum[]) m61do(cls).getEnumConstants();
        ee2.m1839public(enumArr.length <= 64, f53if, Integer.valueOf(enumArr.length), cls.getSimpleName(), 64);
        return cls;
    }

    /* renamed from: new, reason: not valid java name */
    public static <E extends Enum<E>> long m66new(Class<E> cls, E... eArr) {
        ee2.m1821default(eArr);
        return m63for(cls, Arrays.asList(eArr));
    }

    /* renamed from: this, reason: not valid java name */
    public static <E extends Enum<E>> Map<String, E> m67this(Class<E> cls) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (E e : cls.getEnumConstants()) {
            linkedHashMap.put(e.name(), e);
        }
        return linkedHashMap;
    }

    /* renamed from: try, reason: not valid java name */
    public static <E extends Enum<E>> long[] m68try(Class<E> cls, Iterable<? extends E> iterable) {
        m61do(cls);
        ee2.m1830implements(iterable);
        EnumSet enumSetNoneOf = EnumSet.noneOf(cls);
        Iterator<? extends E> it = iterable.iterator();
        while (true) {
            boolean z = true;
            if (!it.hasNext()) {
                break;
            }
            E next = it.next();
            if (next == null) {
                z = false;
            }
            ee2.m1839public(z, f51do, new Object[0]);
            enumSetNoneOf.add(next);
        }
        long[] jArr = new long[((cls.getEnumConstants().length - 1) / 64) + 1];
        Iterator it2 = enumSetNoneOf.iterator();
        while (it2.hasNext()) {
            int iOrdinal = ((Enum) it2.next()).ordinal() / 64;
            jArr[iOrdinal] = jArr[iOrdinal] | (1 << (r0.ordinal() % 64));
        }
        Cif.S1(jArr);
        return jArr;
    }
}
