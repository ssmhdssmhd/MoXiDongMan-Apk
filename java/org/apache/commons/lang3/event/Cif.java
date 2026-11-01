package org.apache.commons.lang3.event;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;
import org.apache.commons.lang3.reflect.Cnew;

/* renamed from: org.apache.commons.lang3.event.if, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cif {

    /* renamed from: org.apache.commons.lang3.event.if$do, reason: invalid class name */
    public static class Cdo implements InvocationHandler {

        /* renamed from: do, reason: not valid java name */
        private final Object f28708do;

        /* renamed from: for, reason: not valid java name */
        private final Set<String> f28709for;

        /* renamed from: if, reason: not valid java name */
        private final String f28710if;

        public Cdo(Object obj, String str, String[] strArr) {
            this.f28708do = obj;
            this.f28710if = str;
            this.f28709for = new HashSet(Arrays.asList(strArr));
        }

        /* renamed from: do, reason: not valid java name */
        private boolean m32369do(Method method) {
            return Cnew.m32496do(this.f28708do.getClass(), this.f28710if, method.getParameterTypes()) != null;
        }

        @Override // java.lang.reflect.InvocationHandler
        public Object invoke(Object obj, Method method, Object[] objArr) throws Throwable {
            if (this.f28709for.isEmpty() || this.f28709for.contains(method.getName())) {
                return m32369do(method) ? Cnew.m32493catch(this.f28708do, this.f28710if, objArr) : Cnew.m32493catch(this.f28708do, this.f28710if, new Object[0]);
            }
            return null;
        }
    }

    /* renamed from: do, reason: not valid java name */
    public static <L> void m32367do(Object obj, Class<L> cls, L l) {
        try {
            Cnew.m32493catch(obj, "add" + cls.getSimpleName(), l);
        } catch (IllegalAccessException unused) {
            throw new IllegalArgumentException("Class " + obj.getClass().getName() + " does not have an accessible add" + cls.getSimpleName() + " method which takes a parameter of type " + cls.getName() + ".");
        } catch (NoSuchMethodException unused2) {
            throw new IllegalArgumentException("Class " + obj.getClass().getName() + " does not have a public add" + cls.getSimpleName() + " method which takes a parameter of type " + cls.getName() + ".");
        } catch (InvocationTargetException e) {
            throw new RuntimeException("Unable to add listener.", e.getCause());
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static <L> void m32368if(Object obj, String str, Object obj2, Class<L> cls, String... strArr) {
        m32367do(obj2, cls, cls.cast(Proxy.newProxyInstance(obj.getClass().getClassLoader(), new Class[]{cls}, new Cdo(obj, str, strArr))));
    }
}
