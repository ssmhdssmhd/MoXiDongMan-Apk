package net.minidev.asm;

import java.lang.reflect.Method;

/* renamed from: net.minidev.asm.for, reason: invalid class name */
/* loaded from: classes3.dex */
class Cfor extends ClassLoader {

    /* renamed from: do, reason: not valid java name */
    private static final String f28181do = Cdo.class.getName();

    /* renamed from: if, reason: not valid java name */
    private static final Class<?>[] f28182if;

    static {
        Class<?> cls = Integer.TYPE;
        f28182if = new Class[]{String.class, byte[].class, cls, cls};
    }

    public Cfor(ClassLoader classLoader) {
        super(classLoader);
    }

    /* renamed from: for, reason: not valid java name */
    public static <T> Class<T> m31554for(Class<? extends T> cls, String str, byte[] bArr) {
        return (Class<T>) new Cfor(cls.getClassLoader()).m31556do(str, bArr);
    }

    /* renamed from: if, reason: not valid java name */
    public static <T> T m31555if(Class<? extends T> cls, String str, byte[] bArr) throws IllegalAccessException, InstantiationException {
        return (T) m31554for(cls, str, bArr).newInstance();
    }

    /* renamed from: do, reason: not valid java name */
    public Class<?> m31556do(String str, byte[] bArr) throws NoSuchMethodException, SecurityException, ClassFormatError {
        try {
            Method declaredMethod = ClassLoader.class.getDeclaredMethod("defineClass", f28182if);
            declaredMethod.setAccessible(true);
            return (Class) declaredMethod.invoke(getParent(), str, bArr, 0, Integer.valueOf(bArr.length));
        } catch (Exception unused) {
            return defineClass(str, bArr, 0, bArr.length);
        }
    }

    @Override // java.lang.ClassLoader
    public synchronized Class<?> loadClass(String str, boolean z) throws ClassNotFoundException {
        if (str.equals(f28181do)) {
            return Cdo.class;
        }
        return super.loadClass(str, z);
    }
}
