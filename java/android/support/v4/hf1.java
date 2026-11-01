package android.support.v4;

import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;

@li0
/* loaded from: classes2.dex */
public final class hf1 {

    /* renamed from: do, reason: not valid java name */
    private static final Map<Class<?>, Class<?>> f2395do;

    /* renamed from: if, reason: not valid java name */
    private static final Map<Class<?>, Class<?>> f2396if;

    static {
        LinkedHashMap linkedHashMap = new LinkedHashMap(16);
        LinkedHashMap linkedHashMap2 = new LinkedHashMap(16);
        m3011do(linkedHashMap, linkedHashMap2, Boolean.TYPE, Boolean.class);
        m3011do(linkedHashMap, linkedHashMap2, Byte.TYPE, Byte.class);
        m3011do(linkedHashMap, linkedHashMap2, Character.TYPE, Character.class);
        m3011do(linkedHashMap, linkedHashMap2, Double.TYPE, Double.class);
        m3011do(linkedHashMap, linkedHashMap2, Float.TYPE, Float.class);
        m3011do(linkedHashMap, linkedHashMap2, Integer.TYPE, Integer.class);
        m3011do(linkedHashMap, linkedHashMap2, Long.TYPE, Long.class);
        m3011do(linkedHashMap, linkedHashMap2, Short.TYPE, Short.class);
        m3011do(linkedHashMap, linkedHashMap2, Void.TYPE, Void.class);
        f2395do = Collections.unmodifiableMap(linkedHashMap);
        f2396if = Collections.unmodifiableMap(linkedHashMap2);
    }

    private hf1() {
    }

    /* renamed from: case, reason: not valid java name */
    public static <T> Class<T> m3010case(Class<T> cls) {
        af1.m205continue(cls);
        Class<T> cls2 = (Class) f2395do.get(cls);
        return cls2 == null ? cls : cls2;
    }

    /* renamed from: do, reason: not valid java name */
    private static void m3011do(Map<Class<?>, Class<?>> map, Map<Class<?>, Class<?>> map2, Class<?> cls, Class<?> cls2) {
        map.put(cls, cls2);
        map2.put(cls2, cls);
    }

    /* renamed from: for, reason: not valid java name */
    public static Set<Class<?>> m3012for() {
        return f2396if.keySet();
    }

    /* renamed from: if, reason: not valid java name */
    public static Set<Class<?>> m3013if() {
        return f2395do.keySet();
    }

    /* renamed from: new, reason: not valid java name */
    public static boolean m3014new(Class<?> cls) {
        return f2396if.containsKey(af1.m205continue(cls));
    }

    /* renamed from: try, reason: not valid java name */
    public static <T> Class<T> m3015try(Class<T> cls) {
        af1.m205continue(cls);
        Class<T> cls2 = (Class) f2396if.get(cls);
        return cls2 == null ? cls : cls2;
    }
}
