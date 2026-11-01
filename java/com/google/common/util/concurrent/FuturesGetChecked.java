package com.google.common.util.concurrent;

import android.support.v4.af1;
import android.support.v4.af2;
import android.support.v4.b51;
import android.support.v4.ib2;
import android.support.v4.lf;
import android.support.v4.li0;
import android.support.v4.y80;
import com.google.common.base.Function;
import com.google.common.collect.k2;
import java.lang.ref.WeakReference;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

@li0
/* loaded from: classes2.dex */
final class FuturesGetChecked {

    /* renamed from: do, reason: not valid java name */
    private static final k2<Constructor<?>> f15646do = k2.natural().onResultOf(new Cdo()).reverse();

    @af2
    public interface GetCheckedTypeValidator {
        void validateClass(Class<? extends Exception> cls);
    }

    /* renamed from: com.google.common.util.concurrent.FuturesGetChecked$do, reason: invalid class name */
    public static class Cdo implements Function<Constructor<?>, Boolean> {
        @Override // com.google.common.base.Function
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public Boolean apply(Constructor<?> constructor) {
            return Boolean.valueOf(Arrays.asList(constructor.getParameterTypes()).contains(String.class));
        }
    }

    @af2
    /* renamed from: com.google.common.util.concurrent.FuturesGetChecked$if, reason: invalid class name */
    public static class Cif {

        /* renamed from: do, reason: not valid java name */
        public static final String f15647do = Cif.class.getName() + "$ClassValueValidator";

        /* renamed from: if, reason: not valid java name */
        public static final GetCheckedTypeValidator f15648if = m18028do();

        @Cstrictfp
        /* renamed from: com.google.common.util.concurrent.FuturesGetChecked$if$do, reason: invalid class name */
        public enum Cdo implements GetCheckedTypeValidator {
            INSTANCE;


            /* renamed from: do, reason: not valid java name */
            private static final ClassValue<Boolean> f15649do = new C0142do();

            /* renamed from: com.google.common.util.concurrent.FuturesGetChecked$if$do$do, reason: invalid class name and collision with other inner class name */
            public static class C0142do extends ClassValue<Boolean> {
                /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
                public Boolean m18030if(Class<?> cls) {
                    FuturesGetChecked.m18023if(cls.asSubclass(Exception.class));
                    return Boolean.TRUE;
                }
            }

            @Override // com.google.common.util.concurrent.FuturesGetChecked.GetCheckedTypeValidator
            public void validateClass(Class<? extends Exception> cls) {
                f15649do.get(cls);
            }
        }

        /* renamed from: com.google.common.util.concurrent.FuturesGetChecked$if$if, reason: invalid class name and collision with other inner class name */
        public enum EnumC0143if implements GetCheckedTypeValidator {
            INSTANCE;


            /* renamed from: do, reason: not valid java name */
            private static final Set<WeakReference<Class<? extends Exception>>> f15651do = new CopyOnWriteArraySet();

            @Override // com.google.common.util.concurrent.FuturesGetChecked.GetCheckedTypeValidator
            public void validateClass(Class<? extends Exception> cls) {
                Iterator<WeakReference<Class<? extends Exception>>> it = f15651do.iterator();
                while (it.hasNext()) {
                    if (cls.equals(it.next().get())) {
                        return;
                    }
                }
                FuturesGetChecked.m18023if(cls);
                Set<WeakReference<Class<? extends Exception>>> set = f15651do;
                if (set.size() > 1000) {
                    set.clear();
                }
                set.add(new WeakReference<>(cls));
            }
        }

        /* renamed from: do, reason: not valid java name */
        public static GetCheckedTypeValidator m18028do() {
            try {
                return (GetCheckedTypeValidator) Class.forName(f15647do).getEnumConstants()[0];
            } catch (Throwable unused) {
                return FuturesGetChecked.m18017class();
            }
        }
    }

    private FuturesGetChecked() {
    }

    /* renamed from: break, reason: not valid java name */
    private static <X extends Exception> X m18014break(Class<X> cls, Throwable th) {
        Iterator it = m18016catch(Arrays.asList(cls.getConstructors())).iterator();
        while (it.hasNext()) {
            X x = (X) m18025this((Constructor) it.next(), th);
            if (x != null) {
                if (x.getCause() == null) {
                    x.initCause(th);
                }
                return x;
            }
        }
        throw new IllegalArgumentException("No appropriate constructor for exception of type " + cls + " in response to chained exception", th);
    }

    @lf
    /* renamed from: case, reason: not valid java name */
    public static <V, X extends Exception> V m18015case(Future<V> future, Class<X> cls, long j, TimeUnit timeUnit) throws Exception {
        m18019do().validateClass(cls);
        try {
            return future.get(j, timeUnit);
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
            throw m18014break(cls, e);
        } catch (ExecutionException e2) {
            m18018const(e2.getCause(), cls);
            throw new AssertionError();
        } catch (TimeoutException e3) {
            throw m18014break(cls, e3);
        }
    }

    /* renamed from: catch, reason: not valid java name */
    private static <X extends Exception> List<Constructor<X>> m18016catch(List<Constructor<X>> list) {
        return (List<Constructor<X>>) f15646do.sortedCopy(list);
    }

    @af2
    /* renamed from: class, reason: not valid java name */
    public static GetCheckedTypeValidator m18017class() {
        return Cif.EnumC0143if.INSTANCE;
    }

    /* renamed from: const, reason: not valid java name */
    private static <X extends Exception> void m18018const(Throwable th, Class<X> cls) throws Exception {
        if (th instanceof Error) {
            throw new y80((Error) th);
        }
        if (!(th instanceof RuntimeException)) {
            throw m18014break(cls, th);
        }
        throw new ib2(th);
    }

    /* renamed from: do, reason: not valid java name */
    private static GetCheckedTypeValidator m18019do() {
        return Cif.f15648if;
    }

    /* renamed from: else, reason: not valid java name */
    private static boolean m18020else(Class<? extends Exception> cls) {
        try {
            m18014break(cls, new Exception());
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    @af2
    /* renamed from: for, reason: not valid java name */
    public static GetCheckedTypeValidator m18021for() {
        return Cif.Cdo.INSTANCE;
    }

    @af2
    /* renamed from: goto, reason: not valid java name */
    public static boolean m18022goto(Class<? extends Exception> cls) {
        return !RuntimeException.class.isAssignableFrom(cls);
    }

    @af2
    /* renamed from: if, reason: not valid java name */
    public static void m18023if(Class<? extends Exception> cls) {
        af1.m225return(m18022goto(cls), "Futures.getChecked exception type (%s) must not be a RuntimeException", cls);
        af1.m225return(m18020else(cls), "Futures.getChecked exception type (%s) must be an accessible class with an accessible constructor whose parameters (if any) must be of type String and/or Throwable", cls);
    }

    @af2
    @lf
    /* renamed from: new, reason: not valid java name */
    public static <V, X extends Exception> V m18024new(GetCheckedTypeValidator getCheckedTypeValidator, Future<V> future, Class<X> cls) throws Exception {
        getCheckedTypeValidator.validateClass(cls);
        try {
            return future.get();
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
            throw m18014break(cls, e);
        } catch (ExecutionException e2) {
            m18018const(e2.getCause(), cls);
            throw new AssertionError();
        }
    }

    @b51
    /* renamed from: this, reason: not valid java name */
    private static <X> X m18025this(Constructor<X> constructor, Throwable th) {
        Class<?>[] parameterTypes = constructor.getParameterTypes();
        Object[] objArr = new Object[parameterTypes.length];
        for (int i = 0; i < parameterTypes.length; i++) {
            Class<?> cls = parameterTypes[i];
            if (cls.equals(String.class)) {
                objArr[i] = th.toString();
            } else {
                if (!cls.equals(Throwable.class)) {
                    return null;
                }
                objArr[i] = th;
            }
        }
        try {
            return constructor.newInstance(objArr);
        } catch (IllegalAccessException | IllegalArgumentException | InstantiationException | InvocationTargetException unused) {
            return null;
        }
    }

    @lf
    /* renamed from: try, reason: not valid java name */
    public static <V, X extends Exception> V m18026try(Future<V> future, Class<X> cls) throws Exception {
        return (V) m18024new(m18019do(), future, cls);
    }
}
