package com.google.common.base;

import android.support.v4.af1;
import android.support.v4.af2;
import android.support.v4.b51;
import android.support.v4.ki0;
import android.support.v4.lf;
import android.support.v4.li0;
import android.support.v4.o8;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

@ki0(emulated = true)
/* renamed from: com.google.common.base.extends, reason: invalid class name */
/* loaded from: classes.dex */
public final class Cextends {

    /* renamed from: do, reason: not valid java name */
    @li0
    private static final String f13654do = "sun.misc.JavaLangAccess";

    /* renamed from: for, reason: not valid java name */
    @b51
    @li0
    private static final Object f13655for;

    /* renamed from: if, reason: not valid java name */
    @af2
    @li0
    public static final String f13656if = "sun.misc.SharedSecrets";

    /* renamed from: new, reason: not valid java name */
    @b51
    @li0
    private static final Method f13657new;

    /* renamed from: try, reason: not valid java name */
    @b51
    @li0
    private static final Method f13658try;

    /* renamed from: com.google.common.base.extends$do, reason: invalid class name */
    public static class Cdo extends AbstractList<StackTraceElement> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Throwable f13659do;

        public Cdo(Throwable th) {
            this.f13659do = th;
        }

        @Override // java.util.AbstractList, java.util.List
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public StackTraceElement get(int i) {
            return (StackTraceElement) Cextends.m15048const(Cextends.f13657new, Cextends.f13655for, this.f13659do, Integer.valueOf(i));
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return ((Integer) Cextends.m15048const(Cextends.f13658try, Cextends.f13655for, this.f13659do)).intValue();
        }
    }

    static {
        Object objM15053goto = m15053goto();
        f13655for = objM15053goto;
        f13657new = objM15053goto == null ? null : m15050else();
        f13658try = objM15053goto != null ? m15046catch() : null;
    }

    private Cextends() {
    }

    /* renamed from: break, reason: not valid java name */
    public static Throwable m15044break(Throwable th) {
        boolean z = false;
        Throwable cause = th;
        while (true) {
            Throwable cause2 = th.getCause();
            if (cause2 == null) {
                return th;
            }
            if (cause2 == cause) {
                throw new IllegalArgumentException("Loop in causal chain detected.", cause2);
            }
            if (z) {
                cause = cause.getCause();
            }
            z = !z;
            th = cause2;
        }
    }

    @li0
    @o8
    /* renamed from: case, reason: not valid java name */
    public static <X extends Throwable> X m15045case(Throwable th, Class<X> cls) {
        try {
            return cls.cast(th.getCause());
        } catch (ClassCastException e) {
            e.initCause(th);
            throw e;
        }
    }

    @b51
    @li0
    /* renamed from: catch, reason: not valid java name */
    private static Method m15046catch() throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        try {
            Method methodM15063this = m15063this("getStackTraceDepth", Throwable.class);
            if (methodM15063this == null) {
                return null;
            }
            methodM15063this.invoke(m15053goto(), new Throwable());
            return methodM15063this;
        } catch (IllegalAccessException | UnsupportedOperationException | InvocationTargetException unused) {
            return null;
        }
    }

    @li0
    /* renamed from: class, reason: not valid java name */
    public static String m15047class(Throwable th) {
        StringWriter stringWriter = new StringWriter();
        th.printStackTrace(new PrintWriter(stringWriter));
        return stringWriter.toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    @li0
    /* renamed from: const, reason: not valid java name */
    public static Object m15048const(Method method, Object obj, Object... objArr) {
        try {
            return method.invoke(obj, objArr);
        } catch (IllegalAccessException e) {
            throw new RuntimeException(e);
        } catch (InvocationTargetException e2) {
            throw m15066while(e2.getCause());
        }
    }

    @b51
    @li0
    /* renamed from: else, reason: not valid java name */
    private static Method m15050else() {
        return m15063this("getStackTraceElement", Throwable.class, Integer.TYPE);
    }

    @li0
    /* renamed from: final, reason: not valid java name */
    private static List<StackTraceElement> m15051final(Throwable th) {
        af1.m205continue(th);
        return new Cdo(th);
    }

    @b51
    @li0
    /* renamed from: goto, reason: not valid java name */
    private static Object m15053goto() {
        try {
            return Class.forName(f13656if, false, null).getMethod("getJavaLangAccess", new Class[0]).invoke(null, new Object[0]);
        } catch (ThreadDeath e) {
            throw e;
        } catch (Throwable unused) {
            return null;
        }
    }

    @li0
    @Deprecated
    /* renamed from: import, reason: not valid java name */
    public static <X extends Throwable> void m15055import(@b51 Throwable th, Class<X> cls) throws Throwable {
        if (th != null) {
            m15060static(th, cls);
        }
    }

    @li0
    @Deprecated
    /* renamed from: native, reason: not valid java name */
    public static void m15056native(@b51 Throwable th) {
        if (th != null) {
            m15062switch(th);
        }
    }

    @li0
    /* renamed from: public, reason: not valid java name */
    public static <X extends Throwable> void m15058public(@b51 Throwable th, Class<X> cls) throws Throwable {
        m15055import(th, cls);
        m15056native(th);
    }

    @li0
    /* renamed from: return, reason: not valid java name */
    public static <X1 extends Throwable, X2 extends Throwable> void m15059return(@b51 Throwable th, Class<X1> cls, Class<X2> cls2) throws Throwable {
        af1.m205continue(cls2);
        m15055import(th, cls);
        m15058public(th, cls2);
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: X extends java.lang.Throwable */
    @li0
    /* renamed from: static, reason: not valid java name */
    public static <X extends Throwable> void m15060static(Throwable th, Class<X> cls) throws Throwable {
        af1.m205continue(th);
        if (cls.isInstance(th)) {
            throw cls.cast(th);
        }
    }

    @li0
    @o8
    /* renamed from: super, reason: not valid java name */
    public static List<StackTraceElement> m15061super(Throwable th) {
        return m15064throw() ? m15051final(th) : Collections.unmodifiableList(Arrays.asList(th.getStackTrace()));
    }

    /* renamed from: switch, reason: not valid java name */
    public static void m15062switch(Throwable th) {
        af1.m205continue(th);
        if (th instanceof RuntimeException) {
            throw ((RuntimeException) th);
        }
        if (th instanceof Error) {
            throw ((Error) th);
        }
    }

    @b51
    @li0
    /* renamed from: this, reason: not valid java name */
    private static Method m15063this(String str, Class<?>... clsArr) throws ThreadDeath {
        try {
            return Class.forName(f13654do, false, null).getMethod(str, clsArr);
        } catch (ThreadDeath e) {
            throw e;
        } catch (Throwable unused) {
            return null;
        }
    }

    @li0
    @o8
    /* renamed from: throw, reason: not valid java name */
    public static boolean m15064throw() {
        return (f13657new == null || f13658try == null) ? false : true;
    }

    @o8
    /* renamed from: try, reason: not valid java name */
    public static List<Throwable> m15065try(Throwable th) {
        af1.m205continue(th);
        ArrayList arrayList = new ArrayList(4);
        arrayList.add(th);
        boolean z = false;
        Throwable cause = th;
        while (true) {
            th = th.getCause();
            if (th == null) {
                return Collections.unmodifiableList(arrayList);
            }
            arrayList.add(th);
            if (th == cause) {
                throw new IllegalArgumentException("Loop in causal chain detected.", th);
            }
            if (z) {
                cause = cause.getCause();
            }
            z = !z;
        }
    }

    @lf
    @li0
    @Deprecated
    /* renamed from: while, reason: not valid java name */
    public static RuntimeException m15066while(Throwable th) {
        m15062switch(th);
        throw new RuntimeException(th);
    }
}
