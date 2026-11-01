package org.apache.commons.lang3.reflect;

import android.support.v4.ee2;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.apache.commons.lang3.Cclass;
import org.apache.commons.lang3.Ctry;

/* renamed from: org.apache.commons.lang3.reflect.if, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cif {
    /* renamed from: abstract, reason: not valid java name */
    public static void m32459abstract(Class<?> cls, String str, Object obj, boolean z) throws IllegalAccessException, NoSuchFieldException, SecurityException, IllegalArgumentException {
        Field fieldM32461case = m32461case(cls, str, z);
        ee2.m1839public(fieldM32461case != null, "Cannot locate field %s on %s", str, cls);
        m32483strictfp(fieldM32461case, obj, false);
    }

    /* renamed from: break, reason: not valid java name */
    public static Object m32460break(Class<?> cls, String str, boolean z) throws IllegalAccessException, NoSuchFieldException {
        Field fieldM32477new = m32477new(cls, str, z);
        ee2.m1839public(fieldM32477new != null, "Cannot locate declared field %s.%s", cls.getName(), str);
        return m32475import(fieldM32477new, false);
    }

    /* renamed from: case, reason: not valid java name */
    public static Field m32461case(Class<?> cls, String str, boolean z) throws NoSuchFieldException {
        Field declaredField;
        ee2.m1839public(cls != null, "The class must not be null", new Object[0]);
        ee2.m1839public(Cclass.D(str), "The field name must not be blank/empty", new Object[0]);
        for (Class<?> superclass = cls; superclass != null; superclass = superclass.getSuperclass()) {
            try {
                declaredField = superclass.getDeclaredField(str);
            } catch (NoSuchFieldException unused) {
            }
            if (!Modifier.isPublic(declaredField.getModifiers())) {
                if (z) {
                    declaredField.setAccessible(true);
                } else {
                    continue;
                }
            }
            return declaredField;
        }
        Field field = null;
        Iterator<Class<?>> it = Ctry.m32715for(cls).iterator();
        while (it.hasNext()) {
            try {
                Field field2 = it.next().getField(str);
                ee2.m1839public(field == null, "Reference to field %s is ambiguous relative to %s; a matching field exists on two or more implemented interfaces.", str, cls);
                field = field2;
            } catch (NoSuchFieldException unused2) {
            }
        }
        return field;
    }

    /* renamed from: catch, reason: not valid java name */
    public static Object m32462catch(Object obj, String str) throws IllegalAccessException {
        return m32463class(obj, str, false);
    }

    /* renamed from: class, reason: not valid java name */
    public static Object m32463class(Object obj, String str, boolean z) throws IllegalAccessException, NoSuchFieldException {
        ee2.m1839public(obj != null, "target object must not be null", new Object[0]);
        Class<?> cls = obj.getClass();
        Field fieldM32461case = m32461case(cls, str, z);
        ee2.m1839public(fieldM32461case != null, "Cannot locate field %s on %s", str, cls);
        return m32470final(fieldM32461case, obj, false);
    }

    /* renamed from: const, reason: not valid java name */
    public static Object m32464const(Field field, Object obj) throws IllegalAccessException {
        return m32470final(field, obj, false);
    }

    /* renamed from: continue, reason: not valid java name */
    public static void m32465continue(Field field, Object obj) throws IllegalAccessException, SecurityException, IllegalArgumentException {
        m32483strictfp(field, obj, false);
    }

    /* renamed from: default, reason: not valid java name */
    public static void m32466default(Object obj, String str, Object obj2) throws IllegalAccessException, NoSuchFieldException, SecurityException, IllegalArgumentException {
        m32469extends(obj, str, obj2, false);
    }

    /* renamed from: do, reason: not valid java name */
    public static Field[] m32467do(Class<?> cls) {
        List<Field> listM32474if = m32474if(cls);
        return (Field[]) listM32474if.toArray(new Field[listM32474if.size()]);
    }

    /* renamed from: else, reason: not valid java name */
    public static Object m32468else(Object obj, String str) throws IllegalAccessException {
        return m32473goto(obj, str, false);
    }

    /* renamed from: extends, reason: not valid java name */
    public static void m32469extends(Object obj, String str, Object obj2, boolean z) throws IllegalAccessException, NoSuchFieldException, SecurityException, IllegalArgumentException {
        ee2.m1839public(obj != null, "target object must not be null", new Object[0]);
        Class<?> cls = obj.getClass();
        Field fieldM32461case = m32461case(cls, str, z);
        ee2.m1839public(fieldM32461case != null, "Cannot locate declared field %s.%s", cls.getName(), str);
        m32478package(fieldM32461case, obj, obj2, false);
    }

    /* renamed from: final, reason: not valid java name */
    public static Object m32470final(Field field, Object obj, boolean z) throws IllegalAccessException, SecurityException {
        ee2.m1839public(field != null, "The field must not be null", new Object[0]);
        if (!z || field.isAccessible()) {
            Cfor.m32454else(field);
        } else {
            field.setAccessible(true);
        }
        return field.get(obj);
    }

    /* renamed from: finally, reason: not valid java name */
    public static void m32471finally(Field field, Object obj, Object obj2) throws IllegalAccessException, SecurityException, IllegalArgumentException {
        m32478package(field, obj, obj2, false);
    }

    /* renamed from: for, reason: not valid java name */
    public static Field m32472for(Class<?> cls, String str) {
        return m32477new(cls, str, false);
    }

    /* renamed from: goto, reason: not valid java name */
    public static Object m32473goto(Object obj, String str, boolean z) throws IllegalAccessException, NoSuchFieldException {
        ee2.m1839public(obj != null, "target object must not be null", new Object[0]);
        Class<?> cls = obj.getClass();
        Field fieldM32477new = m32477new(cls, str, z);
        ee2.m1839public(fieldM32477new != null, "Cannot locate declared field %s.%s", cls, str);
        return m32470final(fieldM32477new, obj, false);
    }

    /* renamed from: if, reason: not valid java name */
    public static List<Field> m32474if(Class<?> cls) {
        ee2.m1839public(cls != null, "The class must not be null", new Object[0]);
        ArrayList arrayList = new ArrayList();
        while (cls != null) {
            for (Field field : cls.getDeclaredFields()) {
                arrayList.add(field);
            }
            cls = cls.getSuperclass();
        }
        return arrayList;
    }

    /* renamed from: import, reason: not valid java name */
    public static Object m32475import(Field field, boolean z) throws IllegalAccessException {
        ee2.m1839public(field != null, "The field must not be null", new Object[0]);
        ee2.m1839public(Modifier.isStatic(field.getModifiers()), "The field '%s' is not static", field.getName());
        return m32470final(field, null, z);
    }

    /* renamed from: native, reason: not valid java name */
    public static void m32476native(Field field) throws NoSuchFieldException {
        m32480public(field, true);
    }

    /* renamed from: new, reason: not valid java name */
    public static Field m32477new(Class<?> cls, String str, boolean z) throws NoSuchFieldException {
        ee2.m1839public(cls != null, "The class must not be null", new Object[0]);
        ee2.m1839public(Cclass.D(str), "The field name must not be blank/empty", new Object[0]);
        try {
            Field declaredField = cls.getDeclaredField(str);
            if (!Cfor.m32458try(declaredField)) {
                if (!z) {
                    return null;
                }
                declaredField.setAccessible(true);
            }
            return declaredField;
        } catch (NoSuchFieldException unused) {
            return null;
        }
    }

    /* renamed from: package, reason: not valid java name */
    public static void m32478package(Field field, Object obj, Object obj2, boolean z) throws IllegalAccessException, SecurityException, IllegalArgumentException {
        ee2.m1839public(field != null, "The field must not be null", new Object[0]);
        if (!z || field.isAccessible()) {
            Cfor.m32454else(field);
        } else {
            field.setAccessible(true);
        }
        field.set(obj, obj2);
    }

    /* renamed from: private, reason: not valid java name */
    public static void m32479private(Class<?> cls, String str, Object obj) throws IllegalAccessException, NoSuchFieldException, SecurityException, IllegalArgumentException {
        m32459abstract(cls, str, obj, false);
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: public, reason: not valid java name */
    public static void m32480public(Field field, boolean z) throws NoSuchFieldException {
        ee2.m1839public(field != null, "The field must not be null", new Object[0]);
        try {
            if (Modifier.isFinal(field.getModifiers())) {
                Field declaredField = Field.class.getDeclaredField("modifiers");
                boolean z2 = z && !declaredField.isAccessible();
                if (z2) {
                    declaredField.setAccessible(true);
                }
                try {
                    declaredField.setInt(field, field.getModifiers() & (-17));
                    if (z2) {
                        declaredField.setAccessible(false);
                    }
                } catch (Throwable th) {
                    if (z2) {
                        declaredField.setAccessible(false);
                    }
                    throw th;
                }
            }
        } catch (IllegalAccessException | NoSuchFieldException unused) {
        }
    }

    /* renamed from: return, reason: not valid java name */
    public static void m32481return(Object obj, String str, Object obj2) throws IllegalAccessException, NoSuchFieldException, SecurityException, IllegalArgumentException {
        m32482static(obj, str, obj2, false);
    }

    /* renamed from: static, reason: not valid java name */
    public static void m32482static(Object obj, String str, Object obj2, boolean z) throws IllegalAccessException, NoSuchFieldException, SecurityException, IllegalArgumentException {
        ee2.m1839public(obj != null, "target object must not be null", new Object[0]);
        Class<?> cls = obj.getClass();
        Field fieldM32477new = m32477new(cls, str, z);
        ee2.m1839public(fieldM32477new != null, "Cannot locate declared field %s.%s", cls.getName(), str);
        m32478package(fieldM32477new, obj, obj2, false);
    }

    /* renamed from: strictfp, reason: not valid java name */
    public static void m32483strictfp(Field field, Object obj, boolean z) throws IllegalAccessException, SecurityException, IllegalArgumentException {
        ee2.m1839public(field != null, "The field must not be null", new Object[0]);
        ee2.m1839public(Modifier.isStatic(field.getModifiers()), "The field %s.%s is not static", field.getDeclaringClass().getName(), field.getName());
        m32478package(field, null, obj, z);
    }

    /* renamed from: super, reason: not valid java name */
    public static Object m32484super(Class<?> cls, String str) throws IllegalAccessException {
        return m32487throw(cls, str, false);
    }

    /* renamed from: switch, reason: not valid java name */
    public static void m32485switch(Class<?> cls, String str, Object obj) throws IllegalAccessException, NoSuchFieldException, SecurityException, IllegalArgumentException {
        m32488throws(cls, str, obj, false);
    }

    /* renamed from: this, reason: not valid java name */
    public static Object m32486this(Class<?> cls, String str) throws IllegalAccessException {
        return m32460break(cls, str, false);
    }

    /* renamed from: throw, reason: not valid java name */
    public static Object m32487throw(Class<?> cls, String str, boolean z) throws IllegalAccessException, NoSuchFieldException {
        Field fieldM32461case = m32461case(cls, str, z);
        ee2.m1839public(fieldM32461case != null, "Cannot locate field '%s' on %s", str, cls);
        return m32475import(fieldM32461case, false);
    }

    /* renamed from: throws, reason: not valid java name */
    public static void m32488throws(Class<?> cls, String str, Object obj, boolean z) throws IllegalAccessException, NoSuchFieldException, SecurityException, IllegalArgumentException {
        Field fieldM32477new = m32477new(cls, str, z);
        ee2.m1839public(fieldM32477new != null, "Cannot locate declared field %s.%s", cls.getName(), str);
        m32478package(fieldM32477new, null, obj, false);
    }

    /* renamed from: try, reason: not valid java name */
    public static Field m32489try(Class<?> cls, String str) throws NoSuchFieldException, SecurityException {
        Field fieldM32461case = m32461case(cls, str, false);
        Cfor.m32454else(fieldM32461case);
        return fieldM32461case;
    }

    /* renamed from: while, reason: not valid java name */
    public static Object m32490while(Field field) throws IllegalAccessException {
        return m32475import(field, false);
    }
}
