package android.support.v4;

import java.lang.reflect.Field;
import java.lang.reflect.Method;
import net.minidev.asm.FieldFilter;

/* loaded from: classes3.dex */
public class wo0 {

    /* renamed from: do, reason: not valid java name */
    public static final Cdo f7582do = new Cdo();

    /* renamed from: do, reason: not valid java name */
    public static Object m9252do(Object obj, Class<?> cls) {
        if (obj == null) {
            return null;
        }
        if (cls.isAssignableFrom(obj.getClass())) {
            return obj;
        }
        if (cls.isPrimitive()) {
            if (cls == Integer.TYPE) {
                return obj instanceof Number ? Integer.valueOf(((Number) obj).intValue()) : Integer.valueOf(obj.toString());
            }
            if (cls == Short.TYPE) {
                return obj instanceof Number ? Short.valueOf(((Number) obj).shortValue()) : Short.valueOf(obj.toString());
            }
            if (cls == Long.TYPE) {
                return obj instanceof Number ? Long.valueOf(((Number) obj).longValue()) : Long.valueOf(obj.toString());
            }
            if (cls == Byte.TYPE) {
                return obj instanceof Number ? Byte.valueOf(((Number) obj).byteValue()) : Byte.valueOf(obj.toString());
            }
            if (cls == Float.TYPE) {
                return obj instanceof Number ? Float.valueOf(((Number) obj).floatValue()) : Float.valueOf(obj.toString());
            }
            if (cls == Double.TYPE) {
                return obj instanceof Number ? Double.valueOf(((Number) obj).doubleValue()) : Double.valueOf(obj.toString());
            }
            if (cls == Character.TYPE) {
                String string = cls.toString();
                if (string.length() > 0) {
                    return Character.valueOf(string.charAt(0));
                }
            } else if (cls == Boolean.TYPE) {
                return (Boolean) obj;
            }
            throw new RuntimeException("Primitive: Can not convert " + obj.getClass().getName() + " to " + cls.getName());
        }
        if (cls.isEnum()) {
            return Enum.valueOf(cls, obj.toString());
        }
        if (cls == Integer.class) {
            return obj instanceof Number ? Integer.valueOf(((Number) obj).intValue()) : Integer.valueOf(obj.toString());
        }
        if (cls == Long.class) {
            return obj instanceof Number ? Long.valueOf(((Number) obj).longValue()) : Long.valueOf(obj.toString());
        }
        if (cls == Short.class) {
            return obj instanceof Number ? Short.valueOf(((Number) obj).shortValue()) : Short.valueOf(obj.toString());
        }
        if (cls == Byte.class) {
            return obj instanceof Number ? Byte.valueOf(((Number) obj).byteValue()) : Byte.valueOf(obj.toString());
        }
        if (cls == Float.class) {
            return obj instanceof Number ? Float.valueOf(((Number) obj).floatValue()) : Float.valueOf(obj.toString());
        }
        if (cls == Double.class) {
            return obj instanceof Number ? Double.valueOf(((Number) obj).doubleValue()) : Double.valueOf(obj.toString());
        }
        if (cls == Character.class) {
            String string2 = cls.toString();
            if (string2.length() > 0) {
                return Character.valueOf(string2.charAt(0));
            }
        }
        throw new RuntimeException("Object: Can not Convert " + obj.getClass().getName() + " to " + cls.getName());
    }

    /* renamed from: for, reason: not valid java name */
    public static String m9253for(String str) {
        int length = str.length();
        char[] cArr = new char[length + 3];
        cArr[0] = 'g';
        cArr[1] = 'e';
        cArr[2] = 't';
        char cCharAt = str.charAt(0);
        if (cCharAt >= 'a' && cCharAt <= 'z') {
            cCharAt = (char) (cCharAt - ' ');
        }
        cArr[3] = cCharAt;
        for (int i = 1; i < length; i++) {
            cArr[i + 3] = str.charAt(i);
        }
        return new String(cArr);
    }

    /* renamed from: if, reason: not valid java name */
    public static Object m9254if(Object obj, Class<?> cls) {
        if (obj == null) {
            return null;
        }
        if (cls.isAssignableFrom(obj.getClass())) {
            return obj;
        }
        if (!cls.isPrimitive()) {
            if (cls.isEnum()) {
                return Enum.valueOf(cls, obj.toString());
            }
            if (cls == Integer.class) {
                return obj instanceof Number ? Integer.valueOf(((Number) obj).intValue()) : Integer.valueOf(obj.toString());
            }
            if (cls == Long.class) {
                return obj instanceof Number ? Long.valueOf(((Number) obj).longValue()) : Long.valueOf(obj.toString());
            }
            if (cls == Short.class) {
                return obj instanceof Number ? Short.valueOf(((Number) obj).shortValue()) : Short.valueOf(obj.toString());
            }
            if (cls == Byte.class) {
                return obj instanceof Number ? Byte.valueOf(((Number) obj).byteValue()) : Byte.valueOf(obj.toString());
            }
            if (cls == Float.class) {
                return obj instanceof Number ? Float.valueOf(((Number) obj).floatValue()) : Float.valueOf(obj.toString());
            }
            if (cls == Double.class) {
                return obj instanceof Number ? Double.valueOf(((Number) obj).doubleValue()) : Double.valueOf(obj.toString());
            }
            if (cls == Character.class) {
                String string = cls.toString();
                if (string.length() > 0) {
                    return Character.valueOf(string.charAt(0));
                }
            }
            throw new RuntimeException("Object: Can not Convert " + obj.getClass().getName() + " to " + cls.getName());
        }
        if (obj instanceof Number) {
            return obj;
        }
        if (cls == Integer.TYPE) {
            return Integer.valueOf(obj.toString());
        }
        if (cls == Short.TYPE) {
            return Short.valueOf(obj.toString());
        }
        if (cls == Long.TYPE) {
            return Long.valueOf(obj.toString());
        }
        if (cls == Byte.TYPE) {
            return Byte.valueOf(obj.toString());
        }
        if (cls == Float.TYPE) {
            return Float.valueOf(obj.toString());
        }
        if (cls == Double.TYPE) {
            return Double.valueOf(obj.toString());
        }
        if (cls == Character.TYPE) {
            String string2 = cls.toString();
            if (string2.length() > 0) {
                return Character.valueOf(string2.charAt(0));
            }
        } else if (cls == Boolean.TYPE) {
            return (Boolean) obj;
        }
        throw new RuntimeException("Primitive: Can not convert " + obj.getClass().getName() + " to " + cls.getName());
    }

    /* renamed from: new, reason: not valid java name */
    public static String m9255new(String str) {
        int length = str.length();
        char[] cArr = new char[length + 2];
        cArr[0] = 'i';
        cArr[1] = 's';
        char cCharAt = str.charAt(0);
        if (cCharAt >= 'a' && cCharAt <= 'z') {
            cCharAt = (char) (cCharAt - ' ');
        }
        cArr[2] = cCharAt;
        for (int i = 1; i < length; i++) {
            cArr[i + 2] = str.charAt(i);
        }
        return new String(cArr);
    }

    /* renamed from: try, reason: not valid java name */
    public static String m9256try(String str) {
        int length = str.length();
        char[] cArr = new char[length + 3];
        cArr[0] = 's';
        cArr[1] = 'e';
        cArr[2] = 't';
        char cCharAt = str.charAt(0);
        if (cCharAt >= 'a' && cCharAt <= 'z') {
            cCharAt = (char) (cCharAt - ' ');
        }
        cArr[3] = cCharAt;
        for (int i = 1; i < length; i++) {
            cArr[i + 3] = str.charAt(i);
        }
        return new String(cArr);
    }

    /* renamed from: android.support.v4.wo0$do, reason: invalid class name */
    public static class Cdo implements FieldFilter {
        @Override // net.minidev.asm.FieldFilter
        public boolean canRead(Field field) {
            return true;
        }

        @Override // net.minidev.asm.FieldFilter
        public boolean canUse(Field field) {
            mp0 mp0Var = (mp0) field.getAnnotation(mp0.class);
            return mp0Var == null || !mp0Var.value();
        }

        @Override // net.minidev.asm.FieldFilter
        public boolean canWrite(Field field) {
            return true;
        }

        @Override // net.minidev.asm.FieldFilter
        public boolean canUse(Field field, Method method) {
            mp0 mp0Var = (mp0) method.getAnnotation(mp0.class);
            return mp0Var == null || !mp0Var.value();
        }
    }
}
