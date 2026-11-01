package org.apache.commons.lang3.reflect;

import android.support.v4.ee2;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;
import org.apache.commons.lang3.Cif;
import org.apache.commons.lang3.Ctry;

/* renamed from: org.apache.commons.lang3.reflect.new, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cnew {
    /* renamed from: break, reason: not valid java name */
    public static Object m32491break(Class<?> cls, String str, Object[] objArr, Class<?>[] clsArr) throws IllegalAccessException, NoSuchMethodException, InvocationTargetException {
        Object[] objArrQ0 = Cif.Q0(objArr);
        Method methodM32496do = m32496do(cls, str, Cif.L0(clsArr));
        if (methodM32496do != null) {
            return methodM32496do.invoke(null, objArrQ0);
        }
        throw new NoSuchMethodException("No such accessible method: " + str + "() on class: " + cls.getName());
    }

    /* renamed from: case, reason: not valid java name */
    public static Set<Method> m32492case(Method method, Ctry.Cfor cfor) throws NoSuchMethodException, SecurityException {
        ee2.m1830implements(method);
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        linkedHashSet.add(method);
        Class<?>[] parameterTypes = method.getParameterTypes();
        Class<?> declaringClass = method.getDeclaringClass();
        Iterator<Class<?>> it = Ctry.m32714finally(declaringClass, cfor).iterator();
        it.next();
        while (it.hasNext()) {
            Method methodM32504try = m32504try(it.next(), method.getName(), parameterTypes);
            if (methodM32504try != null) {
                if (!Arrays.equals(methodM32504try.getParameterTypes(), parameterTypes)) {
                    Map<TypeVariable<?>, Type> mapM32515extends = Ctry.m32515extends(declaringClass, methodM32504try.getDeclaringClass());
                    int i = 0;
                    while (true) {
                        if (i >= parameterTypes.length) {
                            linkedHashSet.add(methodM32504try);
                            break;
                        }
                        if (!Ctry.m32506break(Ctry.l(mapM32515extends, method.getGenericParameterTypes()[i]), Ctry.l(mapM32515extends, methodM32504try.getGenericParameterTypes()[i]))) {
                            break;
                        }
                        i++;
                    }
                } else {
                    linkedHashSet.add(methodM32504try);
                }
            }
        }
        return linkedHashSet;
    }

    /* renamed from: catch, reason: not valid java name */
    public static Object m32493catch(Object obj, String str, Object... objArr) throws IllegalAccessException, NoSuchMethodException, InvocationTargetException {
        Object[] objArrQ0 = Cif.Q0(objArr);
        return m32494class(obj, str, objArrQ0, Ctry.m32720instanceof(objArrQ0));
    }

    /* renamed from: class, reason: not valid java name */
    public static Object m32494class(Object obj, String str, Object[] objArr, Class<?>[] clsArr) throws IllegalAccessException, NoSuchMethodException, SecurityException, InvocationTargetException {
        Class<?>[] clsArrL0 = Cif.L0(clsArr);
        Object[] objArrQ0 = Cif.Q0(objArr);
        Method methodM32504try = m32504try(obj.getClass(), str, clsArrL0);
        if (methodM32504try != null) {
            return methodM32504try.invoke(obj, objArrQ0);
        }
        throw new NoSuchMethodException("No such accessible method: " + str + "() on object: " + obj.getClass().getName());
    }

    /* renamed from: const, reason: not valid java name */
    public static Object m32495const(Class<?> cls, String str, Object... objArr) throws IllegalAccessException, NoSuchMethodException, InvocationTargetException {
        Object[] objArrQ0 = Cif.Q0(objArr);
        return m32498final(cls, str, objArrQ0, Ctry.m32720instanceof(objArrQ0));
    }

    /* renamed from: do, reason: not valid java name */
    public static Method m32496do(Class<?> cls, String str, Class<?>... clsArr) {
        try {
            return m32501if(cls.getMethod(str, clsArr));
        } catch (NoSuchMethodException unused) {
            return null;
        }
    }

    /* renamed from: else, reason: not valid java name */
    public static Object m32497else(Object obj, String str, Object... objArr) throws IllegalAccessException, NoSuchMethodException, InvocationTargetException {
        Object[] objArrQ0 = Cif.Q0(objArr);
        return m32500goto(obj, str, objArrQ0, Ctry.m32720instanceof(objArrQ0));
    }

    /* renamed from: final, reason: not valid java name */
    public static Object m32498final(Class<?> cls, String str, Object[] objArr, Class<?>[] clsArr) throws IllegalAccessException, NoSuchMethodException, SecurityException, InvocationTargetException {
        Object[] objArrQ0 = Cif.Q0(objArr);
        Method methodM32504try = m32504try(cls, str, Cif.L0(clsArr));
        if (methodM32504try != null) {
            return methodM32504try.invoke(null, objArrQ0);
        }
        throw new NoSuchMethodException("No such accessible method: " + str + "() on class: " + cls.getName());
    }

    /* renamed from: for, reason: not valid java name */
    private static Method m32499for(Class<?> cls, String str, Class<?>... clsArr) {
        while (cls != null) {
            Class<?>[] interfaces = cls.getInterfaces();
            for (int i = 0; i < interfaces.length; i++) {
                if (Modifier.isPublic(interfaces[i].getModifiers())) {
                    try {
                        return interfaces[i].getDeclaredMethod(str, clsArr);
                    } catch (NoSuchMethodException unused) {
                        Method methodM32499for = m32499for(interfaces[i], str, clsArr);
                        if (methodM32499for != null) {
                            return methodM32499for;
                        }
                    }
                }
            }
            cls = cls.getSuperclass();
        }
        return null;
    }

    /* renamed from: goto, reason: not valid java name */
    public static Object m32500goto(Object obj, String str, Object[] objArr, Class<?>[] clsArr) throws IllegalAccessException, NoSuchMethodException, InvocationTargetException {
        Object[] objArrQ0 = Cif.Q0(objArr);
        Method methodM32496do = m32496do(obj.getClass(), str, Cif.L0(clsArr));
        if (methodM32496do != null) {
            return methodM32496do.invoke(obj, objArrQ0);
        }
        throw new NoSuchMethodException("No such accessible method: " + str + "() on object: " + obj.getClass().getName());
    }

    /* renamed from: if, reason: not valid java name */
    public static Method m32501if(Method method) {
        if (!Cfor.m32458try(method)) {
            return null;
        }
        Class<?> declaringClass = method.getDeclaringClass();
        if (Modifier.isPublic(declaringClass.getModifiers())) {
            return method;
        }
        String name = method.getName();
        Class<?>[] parameterTypes = method.getParameterTypes();
        Method methodM32499for = m32499for(declaringClass, name, parameterTypes);
        return methodM32499for == null ? m32502new(declaringClass, name, parameterTypes) : methodM32499for;
    }

    /* renamed from: new, reason: not valid java name */
    private static Method m32502new(Class<?> cls, String str, Class<?>... clsArr) {
        for (Class<? super Object> superclass = cls.getSuperclass(); superclass != null; superclass = superclass.getSuperclass()) {
            if (Modifier.isPublic(superclass.getModifiers())) {
                try {
                    return superclass.getMethod(str, clsArr);
                } catch (NoSuchMethodException unused) {
                    return null;
                }
            }
        }
        return null;
    }

    /* renamed from: this, reason: not valid java name */
    public static Object m32503this(Class<?> cls, String str, Object... objArr) throws IllegalAccessException, NoSuchMethodException, InvocationTargetException {
        Object[] objArrQ0 = Cif.Q0(objArr);
        return m32491break(cls, str, objArrQ0, Ctry.m32720instanceof(objArrQ0));
    }

    /* renamed from: try, reason: not valid java name */
    public static Method m32504try(Class<?> cls, String str, Class<?>... clsArr) throws NoSuchMethodException, SecurityException {
        Method methodM32501if;
        try {
            Method method = cls.getMethod(str, clsArr);
            Cfor.m32454else(method);
            return method;
        } catch (NoSuchMethodException unused) {
            Method method2 = null;
            for (Method method3 : cls.getMethods()) {
                if (method3.getName().equals(str) && Ctry.m32708continue(clsArr, method3.getParameterTypes(), true) && (methodM32501if = m32501if(method3)) != null && (method2 == null || Cfor.m32453do(methodM32501if.getParameterTypes(), method2.getParameterTypes(), clsArr) < 0)) {
                    method2 = methodM32501if;
                }
            }
            if (method2 != null) {
                Cfor.m32454else(method2);
            }
            return method2;
        }
    }
}
