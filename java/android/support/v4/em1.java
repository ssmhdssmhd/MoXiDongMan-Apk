package android.support.v4;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Proxy;

@o8
/* loaded from: classes2.dex */
public final class em1 {
    private em1() {
    }

    /* renamed from: do, reason: not valid java name */
    public static String m1957do(Class<?> cls) {
        return m1959if(cls.getName());
    }

    /* renamed from: for, reason: not valid java name */
    public static void m1958for(Class<?>... clsArr) throws ClassNotFoundException {
        for (Class<?> cls : clsArr) {
            try {
                Class.forName(cls.getName(), true, cls.getClassLoader());
            } catch (ClassNotFoundException e) {
                throw new AssertionError(e);
            }
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static String m1959if(String str) {
        int iLastIndexOf = str.lastIndexOf(46);
        return iLastIndexOf < 0 ? "" : str.substring(0, iLastIndexOf);
    }

    /* renamed from: new, reason: not valid java name */
    public static <T> T m1960new(Class<T> cls, InvocationHandler invocationHandler) {
        af1.m205continue(invocationHandler);
        af1.m225return(cls.isInterface(), "%s is not an interface", cls);
        return cls.cast(Proxy.newProxyInstance(cls.getClassLoader(), new Class[]{cls}, invocationHandler));
    }
}
