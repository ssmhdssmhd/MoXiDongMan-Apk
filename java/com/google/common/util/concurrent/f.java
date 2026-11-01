package com.google.common.util.concurrent;

import android.support.v4.af1;
import android.support.v4.ib2;
import android.support.v4.jb2;
import android.support.v4.lf;
import android.support.v4.li0;
import android.support.v4.o8;
import android.support.v4.y80;
import com.google.common.collect.c3;
import com.google.common.collect.h2;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

@li0
@o8
/* loaded from: classes2.dex */
public final class f implements TimeLimiter {

    /* renamed from: do, reason: not valid java name */
    private final ExecutorService f15743do;

    /* renamed from: com.google.common.util.concurrent.f$do, reason: invalid class name */
    public class Cdo implements InvocationHandler {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Object f15744do;

        /* renamed from: for, reason: not valid java name */
        public final /* synthetic */ TimeUnit f15745for;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ long f15746if;

        /* renamed from: new, reason: not valid java name */
        public final /* synthetic */ Set f15747new;

        /* renamed from: com.google.common.util.concurrent.f$do$do, reason: invalid class name and collision with other inner class name */
        public class CallableC0148do implements Callable<Object> {

            /* renamed from: do, reason: not valid java name */
            public final /* synthetic */ Method f15749do;

            /* renamed from: if, reason: not valid java name */
            public final /* synthetic */ Object[] f15751if;

            public CallableC0148do(Method method, Object[] objArr) {
                this.f15749do = method;
                this.f15751if = objArr;
            }

            @Override // java.util.concurrent.Callable
            public Object call() throws Exception {
                try {
                    return this.f15749do.invoke(Cdo.this.f15744do, this.f15751if);
                } catch (InvocationTargetException e) {
                    throw f.m18154this(e, false);
                }
            }
        }

        public Cdo(Object obj, long j, TimeUnit timeUnit, Set set) {
            this.f15744do = obj;
            this.f15746if = j;
            this.f15745for = timeUnit;
            this.f15747new = set;
        }

        @Override // java.lang.reflect.InvocationHandler
        public Object invoke(Object obj, Method method, Object[] objArr) throws Throwable {
            return f.this.m18150for(new CallableC0148do(method, objArr), this.f15746if, this.f15745for, this.f15747new.contains(method));
        }
    }

    private f(ExecutorService executorService) {
        this.f15743do = (ExecutorService) af1.m205continue(executorService);
    }

    /* renamed from: break, reason: not valid java name */
    private void m18145break(Throwable th) throws ExecutionException {
        if (th instanceof Error) {
            throw new y80((Error) th);
        }
        if (!(th instanceof RuntimeException)) {
            throw new ExecutionException(th);
        }
        throw new ib2(th);
    }

    /* renamed from: case, reason: not valid java name */
    private static boolean m18146case(Method method) {
        for (Class<?> cls : method.getExceptionTypes()) {
            if (cls == InterruptedException.class) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: catch, reason: not valid java name */
    private void m18147catch(Throwable th) {
        if (!(th instanceof Error)) {
            throw new ib2(th);
        }
        throw new y80((Error) th);
    }

    /* renamed from: else, reason: not valid java name */
    private static Set<Method> m18149else(Class<?> cls) throws SecurityException {
        HashSet hashSetM15706return = c3.m15706return();
        for (Method method : cls.getMethods()) {
            if (m18146case(method)) {
                hashSetM15706return.add(method);
            }
        }
        return hashSetM15706return;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: for, reason: not valid java name */
    public <T> T m18150for(Callable<T> callable, long j, TimeUnit timeUnit, boolean z) throws Exception {
        af1.m205continue(callable);
        af1.m205continue(timeUnit);
        m18153new(j);
        Future<T> futureSubmit = this.f15743do.submit(callable);
        try {
            if (!z) {
                return (T) m.m18261try(futureSubmit, j, timeUnit);
            }
            try {
                return futureSubmit.get(j, timeUnit);
            } catch (InterruptedException e) {
                futureSubmit.cancel(true);
                throw e;
            }
        } catch (ExecutionException e2) {
            throw m18154this(e2, true);
        } catch (TimeoutException e3) {
            futureSubmit.cancel(true);
            throw new jb2(e3);
        }
    }

    /* renamed from: goto, reason: not valid java name */
    private static <T> T m18151goto(Class<T> cls, InvocationHandler invocationHandler) {
        return cls.cast(Proxy.newProxyInstance(cls.getClassLoader(), new Class[]{cls}, invocationHandler));
    }

    /* renamed from: new, reason: not valid java name */
    private static void m18153new(long j) {
        af1.m232throw(j > 0, "timeout must be positive: %s", j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: this, reason: not valid java name */
    public static Exception m18154this(Exception exc, boolean z) throws Exception {
        Throwable cause = exc.getCause();
        if (cause == null) {
            throw exc;
        }
        if (z) {
            cause.setStackTrace((StackTraceElement[]) h2.m15834case(cause.getStackTrace(), exc.getStackTrace(), StackTraceElement.class));
        }
        if (cause instanceof Exception) {
            throw ((Exception) cause);
        }
        if (cause instanceof Error) {
            throw ((Error) cause);
        }
        throw exc;
    }

    /* renamed from: try, reason: not valid java name */
    public static f m18155try(ExecutorService executorService) {
        return new f(executorService);
    }

    @Override // com.google.common.util.concurrent.TimeLimiter
    @lf
    public <T> T callUninterruptiblyWithTimeout(Callable<T> callable, long j, TimeUnit timeUnit) throws ExecutionException, TimeoutException {
        af1.m205continue(callable);
        af1.m205continue(timeUnit);
        m18153new(j);
        Future<T> futureSubmit = this.f15743do.submit(callable);
        try {
            return (T) m.m18261try(futureSubmit, j, timeUnit);
        } catch (ExecutionException e) {
            m18145break(e.getCause());
            throw new AssertionError();
        } catch (TimeoutException e2) {
            futureSubmit.cancel(true);
            throw e2;
        }
    }

    @Override // com.google.common.util.concurrent.TimeLimiter
    @lf
    public <T> T callWithTimeout(Callable<T> callable, long j, TimeUnit timeUnit) throws Throwable {
        af1.m205continue(callable);
        af1.m205continue(timeUnit);
        m18153new(j);
        Future<T> futureSubmit = this.f15743do.submit(callable);
        try {
            return futureSubmit.get(j, timeUnit);
        } catch (InterruptedException e) {
            e = e;
            futureSubmit.cancel(true);
            throw e;
        } catch (ExecutionException e2) {
            m18145break(e2.getCause());
            throw new AssertionError();
        } catch (TimeoutException e3) {
            e = e3;
            futureSubmit.cancel(true);
            throw e;
        }
    }

    @Override // com.google.common.util.concurrent.TimeLimiter
    public <T> T newProxy(T t, Class<T> cls, long j, TimeUnit timeUnit) {
        af1.m205continue(t);
        af1.m205continue(cls);
        af1.m205continue(timeUnit);
        m18153new(j);
        af1.m235try(cls.isInterface(), "interfaceType must be an interface type");
        return (T) m18151goto(cls, new Cdo(t, j, timeUnit, m18149else(cls)));
    }

    @Override // com.google.common.util.concurrent.TimeLimiter
    public void runUninterruptiblyWithTimeout(Runnable runnable, long j, TimeUnit timeUnit) throws TimeoutException {
        af1.m205continue(runnable);
        af1.m205continue(timeUnit);
        m18153new(j);
        Future<?> futureSubmit = this.f15743do.submit(runnable);
        try {
            m.m18261try(futureSubmit, j, timeUnit);
        } catch (ExecutionException e) {
            m18147catch(e.getCause());
            throw new AssertionError();
        } catch (TimeoutException e2) {
            futureSubmit.cancel(true);
            throw e2;
        }
    }

    @Override // com.google.common.util.concurrent.TimeLimiter
    public void runWithTimeout(Runnable runnable, long j, TimeUnit timeUnit) throws Throwable {
        af1.m205continue(runnable);
        af1.m205continue(timeUnit);
        m18153new(j);
        Future<?> futureSubmit = this.f15743do.submit(runnable);
        try {
            futureSubmit.get(j, timeUnit);
        } catch (InterruptedException e) {
            e = e;
            futureSubmit.cancel(true);
            throw e;
        } catch (ExecutionException e2) {
            m18147catch(e2.getCause());
            throw new AssertionError();
        } catch (TimeoutException e3) {
            e = e3;
            futureSubmit.cancel(true);
            throw e;
        }
    }
}
