package com.google.common.collect;

import android.support.v4.ki0;
import com.google.common.base.Cdefault;
import java.lang.reflect.Array;
import java.util.Arrays;
import java.util.Map;
import java.util.Set;

@ki0(emulated = true)
/* loaded from: classes2.dex */
final class l2 {

    /* renamed from: do, reason: not valid java name */
    private static final String f14445do = "guava.gwt.emergency_reenable_rpc";

    private l2() {
    }

    /* renamed from: break, reason: not valid java name */
    public static int m15986break(int i) {
        return i;
    }

    /* renamed from: case, reason: not valid java name */
    public static <K, V> Map<K, V> m15987case(int i) {
        return Cabstract.createWithExpectedSize(i);
    }

    /* renamed from: catch, reason: not valid java name */
    public static int m15988catch(int i) {
        return i;
    }

    /* renamed from: class, reason: not valid java name */
    public static y1 m15989class(y1 y1Var) {
        return y1Var.m16531class();
    }

    /* renamed from: do, reason: not valid java name */
    public static void m15990do() {
        if (!Boolean.parseBoolean(System.getProperty(f14445do, freemarker.core.b2.f23511if))) {
            throw new UnsupportedOperationException(Cdefault.m15043try("We are removing GWT-RPC support for Guava types. You can temporarily reenable support by setting the system property %s to true. For more about system properties, see %s. For more about Guava's GWT-RPC support, see %s.", f14445do, "https://stackoverflow.com/q/5189914/28465", "https://groups.google.com/d/msg/guava-announce/zHZTFg7YF3o/rQNnwdHeEwAJ"));
        }
    }

    /* renamed from: else, reason: not valid java name */
    public static <E> Set<E> m15991else(int i) {
        return Ccontinue.createWithExpectedSize(i);
    }

    /* renamed from: for, reason: not valid java name */
    public static <T> T[] m15992for(T[] tArr, int i) {
        return (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), i));
    }

    /* renamed from: goto, reason: not valid java name */
    public static <E> Set<E> m15993goto() {
        return Cpackage.create();
    }

    /* renamed from: if, reason: not valid java name */
    public static <T> T[] m15994if(Object[] objArr, int i, int i2, T[] tArr) {
        return (T[]) Arrays.copyOfRange(objArr, i, i2, tArr.getClass());
    }

    /* renamed from: new, reason: not valid java name */
    public static <K, V> Map<K, V> m15995new(int i) {
        return Cfinally.createWithExpectedSize(i);
    }

    /* renamed from: this, reason: not valid java name */
    public static <K, V> Map<K, V> m15996this() {
        return Cfinally.create();
    }

    /* renamed from: try, reason: not valid java name */
    public static <E> Set<E> m15997try(int i) {
        return Cpackage.createWithExpectedSize(i);
    }
}
