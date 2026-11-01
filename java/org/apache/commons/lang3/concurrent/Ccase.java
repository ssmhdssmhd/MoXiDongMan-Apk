package org.apache.commons.lang3.concurrent;

import android.support.v4.mq;
import android.support.v4.nq;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;

/* renamed from: org.apache.commons.lang3.concurrent.case, reason: invalid class name */
/* loaded from: classes3.dex */
public class Ccase {

    /* renamed from: org.apache.commons.lang3.concurrent.case$do, reason: invalid class name */
    public static final class Cdo<T> implements Future<T> {

        /* renamed from: do, reason: not valid java name */
        private final T f28672do;

        public Cdo(T t) {
            this.f28672do = t;
        }

        @Override // java.util.concurrent.Future
        public boolean cancel(boolean z) {
            return false;
        }

        @Override // java.util.concurrent.Future
        public T get() {
            return this.f28672do;
        }

        @Override // java.util.concurrent.Future
        public boolean isCancelled() {
            return false;
        }

        @Override // java.util.concurrent.Future
        public boolean isDone() {
            return true;
        }

        @Override // java.util.concurrent.Future
        public T get(long j, TimeUnit timeUnit) {
            return this.f28672do;
        }
    }

    private Ccase() {
    }

    /* renamed from: break, reason: not valid java name */
    public static <T> T m32291break(ConcurrentInitializer<T> concurrentInitializer) {
        try {
            return (T) m32301this(concurrentInitializer);
        } catch (mq e) {
            throw new nq(e.getCause());
        }
    }

    /* renamed from: case, reason: not valid java name */
    public static nq m32292case(ExecutionException executionException) {
        if (executionException == null || executionException.getCause() == null) {
            return null;
        }
        m32294class(executionException);
        return new nq(executionException.getMessage(), executionException.getCause());
    }

    /* renamed from: catch, reason: not valid java name */
    public static <K, V> V m32293catch(ConcurrentMap<K, V> concurrentMap, K k, V v) {
        if (concurrentMap == null) {
            return null;
        }
        V vPutIfAbsent = concurrentMap.putIfAbsent(k, v);
        return vPutIfAbsent != null ? vPutIfAbsent : v;
    }

    /* renamed from: class, reason: not valid java name */
    private static void m32294class(ExecutionException executionException) {
        if (executionException.getCause() instanceof RuntimeException) {
            throw ((RuntimeException) executionException.getCause());
        }
        if (executionException.getCause() instanceof Error) {
            throw ((Error) executionException.getCause());
        }
    }

    /* renamed from: do, reason: not valid java name */
    public static Throwable m32295do(Throwable th) {
        if (th != null && !(th instanceof RuntimeException) && !(th instanceof Error)) {
            return th;
        }
        throw new IllegalArgumentException("Not a checked exception: " + th);
    }

    /* renamed from: else, reason: not valid java name */
    public static void m32296else(ExecutionException executionException) throws mq {
        mq mqVarM32302try = m32302try(executionException);
        if (mqVarM32302try != null) {
            throw mqVarM32302try;
        }
    }

    /* renamed from: for, reason: not valid java name */
    public static <K, V> V m32297for(ConcurrentMap<K, V> concurrentMap, K k, ConcurrentInitializer<V> concurrentInitializer) throws mq {
        if (concurrentMap == null || concurrentInitializer == null) {
            return null;
        }
        V v = concurrentMap.get(k);
        return v == null ? (V) m32293catch(concurrentMap, k, concurrentInitializer.get()) : v;
    }

    /* renamed from: goto, reason: not valid java name */
    public static void m32298goto(ExecutionException executionException) {
        nq nqVarM32292case = m32292case(executionException);
        if (nqVarM32292case != null) {
            throw nqVarM32292case;
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static <T> Future<T> m32299if(T t) {
        return new Cdo(t);
    }

    /* renamed from: new, reason: not valid java name */
    public static <K, V> V m32300new(ConcurrentMap<K, V> concurrentMap, K k, ConcurrentInitializer<V> concurrentInitializer) {
        try {
            return (V) m32297for(concurrentMap, k, concurrentInitializer);
        } catch (mq e) {
            throw new nq(e.getCause());
        }
    }

    /* renamed from: this, reason: not valid java name */
    public static <T> T m32301this(ConcurrentInitializer<T> concurrentInitializer) throws mq {
        if (concurrentInitializer != null) {
            return concurrentInitializer.get();
        }
        return null;
    }

    /* renamed from: try, reason: not valid java name */
    public static mq m32302try(ExecutionException executionException) {
        if (executionException == null || executionException.getCause() == null) {
            return null;
        }
        m32294class(executionException);
        return new mq(executionException.getMessage(), executionException.getCause());
    }
}
