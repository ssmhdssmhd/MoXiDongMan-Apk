package com.google.common.reflect;

import android.support.v4.b51;
import android.support.v4.o8;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.Arrays;

@o8
/* renamed from: com.google.common.reflect.do, reason: invalid class name */
/* loaded from: classes2.dex */
public abstract class Cdo implements InvocationHandler {

    /* renamed from: do, reason: not valid java name */
    private static final Object[] f15572do = new Object[0];

    /* renamed from: if, reason: not valid java name */
    private static boolean m17858if(Object obj, Class<?> cls) {
        return cls.isInstance(obj) || (Proxy.isProxyClass(obj.getClass()) && Arrays.equals(obj.getClass().getInterfaces(), cls.getInterfaces()));
    }

    /* renamed from: do, reason: not valid java name */
    public abstract Object m17859do(Object obj, Method method, Object[] objArr) throws Throwable;

    public boolean equals(Object obj) {
        return super.equals(obj);
    }

    public int hashCode() {
        return super.hashCode();
    }

    @Override // java.lang.reflect.InvocationHandler
    public final Object invoke(Object obj, Method method, @b51 Object[] objArr) throws Throwable {
        if (objArr == null) {
            objArr = f15572do;
        }
        if (objArr.length == 0 && method.getName().equals("hashCode")) {
            return Integer.valueOf(hashCode());
        }
        if (objArr.length != 1 || !method.getName().equals("equals") || method.getParameterTypes()[0] != Object.class) {
            return (objArr.length == 0 && method.getName().equals("toString")) ? toString() : m17859do(obj, method, objArr);
        }
        Object obj2 = objArr[0];
        if (obj2 == null) {
            return Boolean.FALSE;
        }
        if (obj == obj2) {
            return Boolean.TRUE;
        }
        return Boolean.valueOf(m17858if(obj2, obj.getClass()) && equals(Proxy.getInvocationHandler(obj2)));
    }

    public String toString() {
        return super.toString();
    }
}
