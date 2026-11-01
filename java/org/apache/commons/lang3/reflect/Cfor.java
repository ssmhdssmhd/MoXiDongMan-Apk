package org.apache.commons.lang3.reflect;

import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Member;
import java.lang.reflect.Modifier;
import org.apache.commons.lang3.Ctry;

/* renamed from: org.apache.commons.lang3.reflect.for, reason: invalid class name */
/* loaded from: classes3.dex */
abstract class Cfor {

    /* renamed from: do, reason: not valid java name */
    private static final int f28736do = 7;

    /* renamed from: if, reason: not valid java name */
    private static final Class<?>[] f28737if = {Byte.TYPE, Short.TYPE, Character.TYPE, Integer.TYPE, Long.TYPE, Float.TYPE, Double.TYPE};

    /* renamed from: case, reason: not valid java name */
    public static boolean m32452case(int i) {
        return (i & 7) == 0;
    }

    /* renamed from: do, reason: not valid java name */
    public static int m32453do(Class<?>[] clsArr, Class<?>[] clsArr2, Class<?>[] clsArr3) {
        float fM32457new = m32457new(clsArr3, clsArr);
        float fM32457new2 = m32457new(clsArr3, clsArr2);
        if (fM32457new < fM32457new2) {
            return -1;
        }
        return fM32457new2 < fM32457new ? 1 : 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: else, reason: not valid java name */
    public static boolean m32454else(AccessibleObject accessibleObject) throws SecurityException {
        if (accessibleObject != 0 && !accessibleObject.isAccessible()) {
            Member member = (Member) accessibleObject;
            if (!accessibleObject.isAccessible() && Modifier.isPublic(member.getModifiers()) && m32452case(member.getDeclaringClass().getModifiers())) {
                try {
                    accessibleObject.setAccessible(true);
                    return true;
                } catch (SecurityException unused) {
                }
            }
        }
        return false;
    }

    /* renamed from: for, reason: not valid java name */
    private static float m32455for(Class<?> cls, Class<?> cls2) {
        float f;
        if (cls.isPrimitive()) {
            f = 0.0f;
        } else {
            cls = Ctry.m32733synchronized(cls);
            f = 0.1f;
        }
        int i = 0;
        while (cls != cls2) {
            Class<?>[] clsArr = f28737if;
            if (i >= clsArr.length) {
                break;
            }
            if (cls == clsArr[i]) {
                f += 0.1f;
                if (i < clsArr.length - 1) {
                    cls = clsArr[i + 1];
                }
            }
            i++;
        }
        return f;
    }

    /* renamed from: if, reason: not valid java name */
    private static float m32456if(Class<?> cls, Class<?> cls2) {
        if (cls2.isPrimitive()) {
            return m32455for(cls, cls2);
        }
        float f = 0.0f;
        while (true) {
            if (cls != null && !cls2.equals(cls)) {
                if (cls2.isInterface() && Ctry.m32724package(cls, cls2)) {
                    f += 0.25f;
                    break;
                }
                f += 1.0f;
                cls = cls.getSuperclass();
            } else {
                break;
            }
        }
        return cls == null ? f + 1.5f : f;
    }

    /* renamed from: new, reason: not valid java name */
    private static float m32457new(Class<?>[] clsArr, Class<?>[] clsArr2) {
        float fM32456if = 0.0f;
        for (int i = 0; i < clsArr.length; i++) {
            fM32456if += m32456if(clsArr[i], clsArr2[i]);
        }
        return fM32456if;
    }

    /* renamed from: try, reason: not valid java name */
    public static boolean m32458try(Member member) {
        return (member == null || !Modifier.isPublic(member.getModifiers()) || member.isSynthetic()) ? false : true;
    }
}
