package org.apache.commons.lang3;

import android.support.v4.ee2;
import android.support.v4.t72;
import java.lang.annotation.Annotation;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Arrays;
import java.util.Iterator;
import org.apache.commons.lang3.builder.Ccase;

/* renamed from: org.apache.commons.lang3.do, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cdo {

    /* renamed from: do, reason: not valid java name */
    private static final Ccase f28700do = new C0388do();

    /* renamed from: org.apache.commons.lang3.do$do, reason: invalid class name and collision with other inner class name */
    public static class C0388do extends Ccase {
        private static final long serialVersionUID = 1;

        public C0388do() {
            setDefaultFullDetail(true);
            setArrayContentDetail(true);
            setUseClassName(true);
            setUseShortClassName(true);
            setUseIdentityHashCode(false);
            setContentStart("(");
            setContentEnd(")");
            setFieldSeparator(", ");
            setArrayStart("[");
            setArrayEnd("]");
        }

        @Override // org.apache.commons.lang3.builder.Ccase
        public void appendDetail(StringBuffer stringBuffer, String str, Object obj) throws SecurityException {
            if (obj instanceof Annotation) {
                obj = Cdo.m32353this((Annotation) obj);
            }
            super.appendDetail(stringBuffer, str, obj);
        }

        @Override // org.apache.commons.lang3.builder.Ccase
        public String getShortClassName(Class<?> cls) {
            Class<?> next;
            Iterator<Class<?>> it = Ctry.m32715for(cls).iterator();
            while (true) {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
                if (Annotation.class.isAssignableFrom(next)) {
                    break;
                }
            }
            return new StringBuilder(next == null ? "" : next.getName()).insert(0, '@').toString();
        }
    }

    /* renamed from: case, reason: not valid java name */
    private static int m32346case(String str, Object obj) {
        return (str.hashCode() * 127) ^ (obj.getClass().isArray() ? m32349for(obj.getClass().getComponentType(), obj) : obj instanceof Annotation ? m32354try((Annotation) obj) : obj.hashCode());
    }

    /* renamed from: do, reason: not valid java name */
    private static boolean m32347do(Annotation[] annotationArr, Annotation[] annotationArr2) {
        if (annotationArr.length != annotationArr2.length) {
            return false;
        }
        for (int i = 0; i < annotationArr.length; i++) {
            if (!m32352new(annotationArr[i], annotationArr2[i])) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: else, reason: not valid java name */
    public static boolean m32348else(Class<?> cls) {
        if (cls == null) {
            return false;
        }
        if (cls.isArray()) {
            cls = cls.getComponentType();
        }
        return cls.isPrimitive() || cls.isEnum() || cls.isAnnotation() || String.class.equals(cls) || Class.class.equals(cls);
    }

    /* renamed from: for, reason: not valid java name */
    private static int m32349for(Class<?> cls, Object obj) {
        return cls.equals(Byte.TYPE) ? Arrays.hashCode((byte[]) obj) : cls.equals(Short.TYPE) ? Arrays.hashCode((short[]) obj) : cls.equals(Integer.TYPE) ? Arrays.hashCode((int[]) obj) : cls.equals(Character.TYPE) ? Arrays.hashCode((char[]) obj) : cls.equals(Long.TYPE) ? Arrays.hashCode((long[]) obj) : cls.equals(Float.TYPE) ? Arrays.hashCode((float[]) obj) : cls.equals(Double.TYPE) ? Arrays.hashCode((double[]) obj) : cls.equals(Boolean.TYPE) ? Arrays.hashCode((boolean[]) obj) : Arrays.hashCode((Object[]) obj);
    }

    /* renamed from: goto, reason: not valid java name */
    private static boolean m32350goto(Class<?> cls, Object obj, Object obj2) {
        if (obj == obj2) {
            return true;
        }
        if (obj == null || obj2 == null) {
            return false;
        }
        return cls.isArray() ? m32351if(cls.getComponentType(), obj, obj2) : cls.isAnnotation() ? m32352new((Annotation) obj, (Annotation) obj2) : obj.equals(obj2);
    }

    /* renamed from: if, reason: not valid java name */
    private static boolean m32351if(Class<?> cls, Object obj, Object obj2) {
        return cls.isAnnotation() ? m32347do((Annotation[]) obj, (Annotation[]) obj2) : cls.equals(Byte.TYPE) ? Arrays.equals((byte[]) obj, (byte[]) obj2) : cls.equals(Short.TYPE) ? Arrays.equals((short[]) obj, (short[]) obj2) : cls.equals(Integer.TYPE) ? Arrays.equals((int[]) obj, (int[]) obj2) : cls.equals(Character.TYPE) ? Arrays.equals((char[]) obj, (char[]) obj2) : cls.equals(Long.TYPE) ? Arrays.equals((long[]) obj, (long[]) obj2) : cls.equals(Float.TYPE) ? Arrays.equals((float[]) obj, (float[]) obj2) : cls.equals(Double.TYPE) ? Arrays.equals((double[]) obj, (double[]) obj2) : cls.equals(Boolean.TYPE) ? Arrays.equals((boolean[]) obj, (boolean[]) obj2) : Arrays.equals((Object[]) obj, (Object[]) obj2);
    }

    /* renamed from: new, reason: not valid java name */
    public static boolean m32352new(Annotation annotation, Annotation annotation2) throws SecurityException {
        if (annotation == annotation2) {
            return true;
        }
        if (annotation != null && annotation2 != null) {
            Class<? extends Annotation> clsAnnotationType = annotation.annotationType();
            Class<? extends Annotation> clsAnnotationType2 = annotation2.annotationType();
            ee2.m1832instanceof(clsAnnotationType, "Annotation %s with null annotationType()", annotation);
            ee2.m1832instanceof(clsAnnotationType2, "Annotation %s with null annotationType()", annotation2);
            if (!clsAnnotationType.equals(clsAnnotationType2)) {
                return false;
            }
            try {
                for (Method method : clsAnnotationType.getDeclaredMethods()) {
                    if (method.getParameterTypes().length == 0 && m32348else(method.getReturnType()) && !m32350goto(method.getReturnType(), method.invoke(annotation, new Object[0]), method.invoke(annotation2, new Object[0]))) {
                        return false;
                    }
                }
                return true;
            } catch (IllegalAccessException | InvocationTargetException unused) {
            }
        }
        return false;
    }

    /* renamed from: this, reason: not valid java name */
    public static String m32353this(Annotation annotation) throws SecurityException {
        t72 t72Var = new t72(annotation, f28700do);
        for (Method method : annotation.annotationType().getDeclaredMethods()) {
            if (method.getParameterTypes().length <= 0) {
                try {
                    t72Var.m7752final(method.getName(), method.invoke(annotation, new Object[0]));
                } catch (RuntimeException e) {
                    throw e;
                } catch (Exception e2) {
                    throw new RuntimeException(e2);
                }
            }
        }
        return t72Var.build();
    }

    /* renamed from: try, reason: not valid java name */
    public static int m32354try(Annotation annotation) throws IllegalAccessException, SecurityException, IllegalArgumentException, InvocationTargetException {
        int iM32346case = 0;
        for (Method method : annotation.annotationType().getDeclaredMethods()) {
            try {
                Object objInvoke = method.invoke(annotation, new Object[0]);
                if (objInvoke == null) {
                    throw new IllegalStateException(String.format("Annotation method %s returned null", method));
                }
                iM32346case += m32346case(method.getName(), objInvoke);
            } catch (RuntimeException e) {
                throw e;
            } catch (Exception e2) {
                throw new RuntimeException(e2);
            }
        }
        return iM32346case;
    }
}
