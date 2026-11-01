package com.google.common.base;

import android.support.v4.af1;
import android.support.v4.b51;
import android.support.v4.ki0;
import android.support.v4.li0;
import java.io.Serializable;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.WeakHashMap;

@ki0(emulated = true)
/* renamed from: com.google.common.base.goto, reason: invalid class name */
/* loaded from: classes.dex */
public final class Cgoto {

    /* renamed from: do, reason: not valid java name */
    @li0
    private static final Map<Class<? extends Enum<?>>, Map<String, WeakReference<? extends Enum<?>>>> f13671do = new WeakHashMap();

    /* renamed from: com.google.common.base.goto$do, reason: invalid class name */
    public static final class Cdo<T extends Enum<T>> extends Celse<String, T> implements Serializable {
        private static final long serialVersionUID = 0;
        private final Class<T> enumClass;

        public Cdo(Class<T> cls) {
            this.enumClass = (Class) af1.m205continue(cls);
        }

        @Override // com.google.common.base.Celse, com.google.common.base.Function
        public boolean equals(@b51 Object obj) {
            if (obj instanceof Cdo) {
                return this.enumClass.equals(((Cdo) obj).enumClass);
            }
            return false;
        }

        public int hashCode() {
            return this.enumClass.hashCode();
        }

        public String toString() {
            return "Enums.stringConverter(" + this.enumClass.getName() + ".class)";
        }

        @Override // com.google.common.base.Celse
        public String doBackward(T t) {
            return t.name();
        }

        @Override // com.google.common.base.Celse
        public T doForward(String str) {
            return (T) Enum.valueOf(this.enumClass, str);
        }
    }

    private Cgoto() {
    }

    @li0
    /* renamed from: do, reason: not valid java name */
    public static <T extends Enum<T>> Map<String, WeakReference<? extends Enum<?>>> m15102do(Class<T> cls) {
        Map<String, WeakReference<? extends Enum<?>>> mapM15105new;
        Map<Class<? extends Enum<?>>, Map<String, WeakReference<? extends Enum<?>>>> map = f13671do;
        synchronized (map) {
            mapM15105new = map.get(cls);
            if (mapM15105new == null) {
                mapM15105new = m15105new(cls);
            }
        }
        return mapM15105new;
    }

    /* renamed from: for, reason: not valid java name */
    public static <T extends Enum<T>> Cwhile<T> m15103for(Class<T> cls, String str) {
        af1.m205continue(cls);
        af1.m205continue(str);
        return Cnative.m15120try(cls, str);
    }

    @li0
    /* renamed from: if, reason: not valid java name */
    public static Field m15104if(Enum<?> r1) {
        try {
            return r1.getDeclaringClass().getDeclaredField(r1.name());
        } catch (NoSuchFieldException e) {
            throw new AssertionError(e);
        }
    }

    @li0
    /* renamed from: new, reason: not valid java name */
    private static <T extends Enum<T>> Map<String, WeakReference<? extends Enum<?>>> m15105new(Class<T> cls) {
        HashMap map = new HashMap();
        Iterator it = EnumSet.allOf(cls).iterator();
        while (it.hasNext()) {
            Enum r2 = (Enum) it.next();
            map.put(r2.name(), new WeakReference(r2));
        }
        f13671do.put(cls, map);
        return map;
    }

    /* renamed from: try, reason: not valid java name */
    public static <T extends Enum<T>> Celse<String, T> m15106try(Class<T> cls) {
        return new Cdo(cls);
    }
}
