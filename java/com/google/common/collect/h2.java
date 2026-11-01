package com.google.common.collect;

import android.support.v4.af1;
import android.support.v4.b51;
import android.support.v4.ki0;
import android.support.v4.lf;
import android.support.v4.li0;
import java.lang.reflect.Array;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;

@ki0(emulated = true)
/* loaded from: classes2.dex */
public final class h2 {
    private h2() {
    }

    /* renamed from: break, reason: not valid java name */
    public static <T> T[] m15833break(T[] tArr, int i) {
        return (T[]) l2.m15992for(tArr, i);
    }

    @li0
    /* renamed from: case, reason: not valid java name */
    public static <T> T[] m15834case(T[] tArr, T[] tArr2, Class<T> cls) {
        T[] tArr3 = (T[]) m15845this(cls, tArr.length + tArr2.length);
        System.arraycopy(tArr, 0, tArr3, 0, tArr.length);
        System.arraycopy(tArr2, 0, tArr3, tArr.length, tArr2.length);
        return tArr3;
    }

    /* renamed from: catch, reason: not valid java name */
    public static void m15835catch(Object[] objArr, int i, int i2) {
        Object obj = objArr[i];
        objArr[i] = objArr[i2];
        objArr[i2] = obj;
    }

    /* renamed from: class, reason: not valid java name */
    public static Object[] m15836class(Collection<?> collection) {
        return m15842goto(collection, new Object[collection.size()]);
    }

    /* renamed from: const, reason: not valid java name */
    public static <T> T[] m15837const(Collection<?> collection, T[] tArr) {
        int size = collection.size();
        if (tArr.length < size) {
            tArr = (T[]) m15833break(tArr, size);
        }
        m15842goto(collection, tArr);
        if (tArr.length > size) {
            tArr[size] = null;
        }
        return tArr;
    }

    @lf
    /* renamed from: do, reason: not valid java name */
    public static Object m15838do(Object obj, int i) {
        if (obj != null) {
            return obj;
        }
        throw new NullPointerException("at index " + i);
    }

    /* renamed from: else, reason: not valid java name */
    public static Object[] m15839else(Object[] objArr, int i, int i2) {
        af1.s(i, i + i2, objArr.length);
        if (i2 == 0) {
            return new Object[0];
        }
        Object[] objArr2 = new Object[i2];
        System.arraycopy(objArr, i, objArr2, 0, i2);
        return objArr2;
    }

    /* renamed from: final, reason: not valid java name */
    public static <T> T[] m15840final(Object[] objArr, int i, int i2, T[] tArr) {
        af1.s(i, i + i2, objArr.length);
        if (tArr.length < i2) {
            tArr = (T[]) m15833break(tArr, i2);
        } else if (tArr.length > i2) {
            tArr[i2] = null;
        }
        System.arraycopy(objArr, i, tArr, 0, i2);
        return tArr;
    }

    @lf
    /* renamed from: for, reason: not valid java name */
    public static Object[] m15841for(Object[] objArr, int i) {
        for (int i2 = 0; i2 < i; i2++) {
            m15838do(objArr[i2], i2);
        }
        return objArr;
    }

    @lf
    /* renamed from: goto, reason: not valid java name */
    private static Object[] m15842goto(Iterable<?> iterable, Object[] objArr) {
        Iterator<?> it = iterable.iterator();
        int i = 0;
        while (it.hasNext()) {
            objArr[i] = it.next();
            i++;
        }
        return objArr;
    }

    @lf
    /* renamed from: if, reason: not valid java name */
    public static Object[] m15843if(Object... objArr) {
        return m15841for(objArr, objArr.length);
    }

    /* renamed from: new, reason: not valid java name */
    public static <T> T[] m15844new(@b51 T t, T[] tArr) {
        T[] tArr2 = (T[]) m15833break(tArr, tArr.length + 1);
        tArr2[0] = t;
        System.arraycopy(tArr, 0, tArr2, 1, tArr.length);
        return tArr2;
    }

    @li0
    /* renamed from: this, reason: not valid java name */
    public static <T> T[] m15845this(Class<T> cls, int i) {
        return (T[]) ((Object[]) Array.newInstance((Class<?>) cls, i));
    }

    /* renamed from: try, reason: not valid java name */
    public static <T> T[] m15846try(T[] tArr, @b51 T t) {
        T[] tArr2 = (T[]) Arrays.copyOf(tArr, tArr.length + 1);
        tArr2[tArr.length] = t;
        return tArr2;
    }
}
