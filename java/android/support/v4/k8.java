package android.support.v4;

import java.util.HashMap;
import java.util.LinkedHashSet;

/* loaded from: classes3.dex */
public class k8 {

    /* renamed from: do, reason: not valid java name */
    public static HashMap<Class<?>, LinkedHashSet<Class<?>>> f3324do = new HashMap<>();

    /* renamed from: if, reason: not valid java name */
    public static HashMap<Class<?>, HashMap<String, String>> f3325if = new HashMap<>();

    static {
        m4283do(Object.class, sx.class);
        m4283do(Object.class, sr.class);
    }

    /* renamed from: do, reason: not valid java name */
    public static void m4283do(Class<?> cls, Class<?> cls2) {
        synchronized (f3324do) {
            LinkedHashSet<Class<?>> linkedHashSet = f3324do.get(cls);
            if (linkedHashSet == null) {
                linkedHashSet = new LinkedHashSet<>();
                f3324do.put(cls, linkedHashSet);
            }
            linkedHashSet.add(cls2);
        }
    }
}
