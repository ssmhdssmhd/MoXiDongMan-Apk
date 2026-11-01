package org.apache.commons.lang3.reflect;

import android.support.v4.ee2;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Modifier;
import org.apache.commons.lang3.Cif;
import org.apache.commons.lang3.Ctry;

/* renamed from: org.apache.commons.lang3.reflect.do, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cdo {
    /* renamed from: case, reason: not valid java name */
    public static <T> T m32444case(Class<T> cls, Object... objArr) throws IllegalAccessException, NoSuchMethodException, InstantiationException, InvocationTargetException {
        Object[] objArrQ0 = Cif.Q0(objArr);
        return (T) m32446else(cls, objArrQ0, Ctry.m32720instanceof(objArrQ0));
    }

    /* renamed from: do, reason: not valid java name */
    public static <T> Constructor<T> m32445do(Class<T> cls, Class<?>... clsArr) {
        ee2.m1832instanceof(cls, "class cannot be null", new Object[0]);
        try {
            return m32449if(cls.getConstructor(clsArr));
        } catch (NoSuchMethodException unused) {
            return null;
        }
    }

    /* renamed from: else, reason: not valid java name */
    public static <T> T m32446else(Class<T> cls, Object[] objArr, Class<?>[] clsArr) throws IllegalAccessException, NoSuchMethodException, InstantiationException, InvocationTargetException {
        Object[] objArrQ0 = Cif.Q0(objArr);
        Constructor constructorM32445do = m32445do(cls, Cif.L0(clsArr));
        if (constructorM32445do != null) {
            return (T) constructorM32445do.newInstance(objArrQ0);
        }
        throw new NoSuchMethodException("No such accessible constructor on object: " + cls.getName());
    }

    /* renamed from: for, reason: not valid java name */
    public static <T> Constructor<T> m32447for(Class<T> cls, Class<?>... clsArr) throws NoSuchMethodException, SecurityException {
        Constructor<T> constructorM32449if;
        ee2.m1832instanceof(cls, "class cannot be null", new Object[0]);
        try {
            Constructor<T> constructor = cls.getConstructor(clsArr);
            Cfor.m32454else(constructor);
            return constructor;
        } catch (NoSuchMethodException unused) {
            Constructor<T> constructor2 = null;
            for (Constructor<?> constructor3 : cls.getConstructors()) {
                if (Ctry.m32708continue(clsArr, constructor3.getParameterTypes(), true) && (constructorM32449if = m32449if(constructor3)) != null) {
                    Cfor.m32454else(constructorM32449if);
                    if (constructor2 == null || Cfor.m32453do(constructorM32449if.getParameterTypes(), constructor2.getParameterTypes(), clsArr) < 0) {
                        constructor2 = constructorM32449if;
                    }
                }
            }
            return constructor2;
        }
    }

    /* renamed from: goto, reason: not valid java name */
    private static boolean m32448goto(Class<?> cls) {
        while (cls != null) {
            if (!Modifier.isPublic(cls.getModifiers())) {
                return false;
            }
            cls = cls.getEnclosingClass();
        }
        return true;
    }

    /* renamed from: if, reason: not valid java name */
    public static <T> Constructor<T> m32449if(Constructor<T> constructor) {
        ee2.m1832instanceof(constructor, "constructor cannot be null", new Object[0]);
        if (Cfor.m32458try(constructor) && m32448goto(constructor.getDeclaringClass())) {
            return constructor;
        }
        return null;
    }

    /* renamed from: new, reason: not valid java name */
    public static <T> T m32450new(Class<T> cls, Object... objArr) throws IllegalAccessException, NoSuchMethodException, InstantiationException, InvocationTargetException {
        Object[] objArrQ0 = Cif.Q0(objArr);
        return (T) m32451try(cls, objArrQ0, Ctry.m32720instanceof(objArrQ0));
    }

    /* renamed from: try, reason: not valid java name */
    public static <T> T m32451try(Class<T> cls, Object[] objArr, Class<?>[] clsArr) throws IllegalAccessException, NoSuchMethodException, InstantiationException, SecurityException, InvocationTargetException {
        Object[] objArrQ0 = Cif.Q0(objArr);
        Constructor constructorM32447for = m32447for(cls, Cif.L0(clsArr));
        if (constructorM32447for != null) {
            return (T) constructorM32447for.newInstance(objArrQ0);
        }
        throw new NoSuchMethodException("No such accessible constructor on object: " + cls.getName());
    }
}
