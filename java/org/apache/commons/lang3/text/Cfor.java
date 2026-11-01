package org.apache.commons.lang3.text;

import java.util.Map;

/* renamed from: org.apache.commons.lang3.text.for, reason: invalid class name */
/* loaded from: classes3.dex */
public abstract class Cfor<V> {

    /* renamed from: do, reason: not valid java name */
    private static final Cfor<String> f28749do = new Cdo(null);

    /* renamed from: if, reason: not valid java name */
    private static final Cfor<String> f28750if;

    /* renamed from: org.apache.commons.lang3.text.for$do, reason: invalid class name */
    public static class Cdo<V> extends Cfor<V> {

        /* renamed from: for, reason: not valid java name */
        private final Map<String, V> f28751for;

        public Cdo(Map<String, V> map) {
            this.f28751for = map;
        }

        @Override // org.apache.commons.lang3.text.Cfor
        /* renamed from: do */
        public String mo32550do(String str) {
            V v;
            Map<String, V> map = this.f28751for;
            if (map == null || (v = map.get(str)) == null) {
                return null;
            }
            return v.toString();
        }
    }

    static {
        Cfor<String> cdo;
        try {
            cdo = new Cdo<>(System.getProperties());
        } catch (SecurityException unused) {
            cdo = f28749do;
        }
        f28750if = cdo;
    }

    /* renamed from: for, reason: not valid java name */
    public static Cfor<?> m32547for() {
        return f28749do;
    }

    /* renamed from: if, reason: not valid java name */
    public static <V> Cfor<V> m32548if(Map<String, V> map) {
        return new Cdo(map);
    }

    /* renamed from: new, reason: not valid java name */
    public static Cfor<String> m32549new() {
        return f28750if;
    }

    /* renamed from: do, reason: not valid java name */
    public abstract String mo32550do(String str);
}
