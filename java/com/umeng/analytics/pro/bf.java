package com.umeng.analytics.pro;

import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes2.dex */
public class bf implements Serializable {
    private static Map<Class<? extends at>, Map<? extends ba, bf>> d = new HashMap();
    public final String a;
    public final byte b;
    public final bg c;

    public bf(String str, byte b, bg bgVar) {
        this.a = str;
        this.b = b;
        this.c = bgVar;
    }

    public static void a(Class<? extends at> cls, Map<? extends ba, bf> map) {
        d.put(cls, map);
    }

    public static Map<? extends ba, bf> a(Class<? extends at> cls) throws IllegalAccessException, InstantiationException {
        if (!d.containsKey(cls)) {
            try {
                cls.newInstance();
            } catch (IllegalAccessException e) {
                throw new RuntimeException("IllegalAccessException for TBase class: " + cls.getName() + ", message: " + e.getMessage());
            } catch (InstantiationException e2) {
                throw new RuntimeException("InstantiationException for TBase class: " + cls.getName() + ", message: " + e2.getMessage());
            }
        }
        return d.get(cls);
    }
}
