package android.support.v4;

import android.content.Context;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* loaded from: classes3.dex */
public class pl0 {

    /* renamed from: case, reason: not valid java name */
    private static Method f5103case = null;

    /* renamed from: do, reason: not valid java name */
    private static final String f5104do = "IdentifierManager";

    /* renamed from: else, reason: not valid java name */
    private static Method f5105else;

    /* renamed from: for, reason: not valid java name */
    private static Class<?> f5106for;

    /* renamed from: if, reason: not valid java name */
    private static Object f5107if;

    /* renamed from: new, reason: not valid java name */
    private static Method f5108new;

    /* renamed from: try, reason: not valid java name */
    private static Method f5109try;

    static {
        try {
            Class<?> cls = Class.forName("com.android.id.impl.IdProviderImpl");
            f5106for = cls;
            f5107if = cls.newInstance();
            f5108new = f5106for.getMethod("getUDID", Context.class);
            f5109try = f5106for.getMethod("getOAID", Context.class);
            f5103case = f5106for.getMethod("getVAID", Context.class);
            f5105else = f5106for.getMethod("getAAID", Context.class);
        } catch (Exception unused) {
        }
    }

    /* renamed from: case, reason: not valid java name */
    public static String m6105case(Context context) {
        return m6108if(context, f5105else);
    }

    /* renamed from: do, reason: not valid java name */
    public static String m6106do(Context context) {
        return m6108if(context, f5108new);
    }

    /* renamed from: for, reason: not valid java name */
    public static boolean m6107for() {
        return (f5106for == null || f5107if == null) ? false : true;
    }

    /* renamed from: if, reason: not valid java name */
    private static String m6108if(Context context, Method method) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        Object obj = f5107if;
        if (obj == null || method == null) {
            return null;
        }
        try {
            Object objInvoke = method.invoke(obj, context);
            if (objInvoke != null) {
                return (String) objInvoke;
            }
            return null;
        } catch (Exception unused) {
            return null;
        }
    }

    /* renamed from: new, reason: not valid java name */
    public static String m6109new(Context context) {
        return m6108if(context, f5109try);
    }

    /* renamed from: try, reason: not valid java name */
    public static String m6110try(Context context) {
        return m6108if(context, f5103case);
    }
}
