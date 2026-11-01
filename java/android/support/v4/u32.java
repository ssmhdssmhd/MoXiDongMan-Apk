package android.support.v4;

import java.lang.reflect.Method;

/* loaded from: classes2.dex */
public class u32 {

    /* renamed from: do, reason: not valid java name */
    private static final String f6744do = "u32";

    /* renamed from: for, reason: not valid java name */
    private static u32 f6745for;

    /* renamed from: if, reason: not valid java name */
    private static Method f6746if;

    private u32() {
        f6746if = m8228new(m8227if("android.os.SystemProperties"));
    }

    /* renamed from: for, reason: not valid java name */
    public static u32 m8226for() {
        if (f6745for == null) {
            synchronized (u32.class) {
                if (f6745for == null) {
                    f6745for = new u32();
                }
            }
        }
        return f6745for;
    }

    /* renamed from: if, reason: not valid java name */
    private Class m8227if(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e) {
            e.getMessage();
            try {
                return ClassLoader.getSystemClassLoader().loadClass(str);
            } catch (ClassNotFoundException e2) {
                e2.getMessage();
                return null;
            }
        }
    }

    /* renamed from: new, reason: not valid java name */
    private Method m8228new(Class cls) {
        if (cls == null) {
            return null;
        }
        try {
            return cls.getMethod("get", String.class);
        } catch (Exception e) {
            e.getMessage();
            return null;
        }
    }

    /* renamed from: do, reason: not valid java name */
    public final String m8229do(String str) {
        if (str == null) {
            return "";
        }
        try {
            Method method = f6746if;
            String str2 = (String) (method != null ? method.invoke(null, str) : null);
            if (str2 != null) {
                return str2.trim();
            }
        } catch (Exception unused) {
        }
        return "";
    }
}
