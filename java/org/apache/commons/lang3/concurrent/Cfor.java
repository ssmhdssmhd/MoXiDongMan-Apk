package org.apache.commons.lang3.concurrent;

import android.support.v4.mq;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;

/* renamed from: org.apache.commons.lang3.concurrent.for, reason: invalid class name */
/* loaded from: classes3.dex */
public abstract class Cfor<T> implements ConcurrentInitializer<T> {

    /* renamed from: do, reason: not valid java name */
    private ExecutorService f28676do;

    /* renamed from: for, reason: not valid java name */
    private Future<T> f28677for;

    /* renamed from: if, reason: not valid java name */
    private ExecutorService f28678if;

    /* renamed from: org.apache.commons.lang3.concurrent.for$do, reason: invalid class name */
    public class Cdo implements Callable<T> {

        /* renamed from: do, reason: not valid java name */
        private final ExecutorService f28679do;

        public Cdo(ExecutorService executorService) {
            this.f28679do = executorService;
        }

        @Override // java.util.concurrent.Callable
        public T call() throws Exception {
            try {
                return (T) Cfor.this.mo32309else();
            } finally {
                ExecutorService executorService = this.f28679do;
                if (executorService != null) {
                    executorService.shutdown();
                }
            }
        }
    }

    public Cfor() {
        this(null);
    }

    /* renamed from: do, reason: not valid java name */
    private ExecutorService m32305do() {
        return Executors.newFixedThreadPool(mo32308case());
    }

    /* renamed from: if, reason: not valid java name */
    private Callable<T> m32306if(ExecutorService executorService) {
        return new Cdo(executorService);
    }

    /* renamed from: break, reason: not valid java name */
    public synchronized boolean m32307break() {
        ExecutorService executorServiceM32305do;
        if (m32311goto()) {
            return false;
        }
        ExecutorService executorServiceM32312new = m32312new();
        this.f28678if = executorServiceM32312new;
        if (executorServiceM32312new == null) {
            executorServiceM32305do = m32305do();
            this.f28678if = executorServiceM32305do;
        } else {
            executorServiceM32305do = null;
        }
        this.f28677for = this.f28678if.submit(m32306if(executorServiceM32305do));
        return true;
    }

    /* renamed from: case, reason: not valid java name */
    public int mo32308case() {
        return 1;
    }

    /* renamed from: else, reason: not valid java name */
    public abstract T mo32309else() throws Exception;

    /* renamed from: for, reason: not valid java name */
    public final synchronized ExecutorService m32310for() {
        return this.f28678if;
    }

    @Override // org.apache.commons.lang3.concurrent.ConcurrentInitializer
    public T get() throws mq {
        try {
            return m32314try().get();
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
            throw new mq(e);
        } catch (ExecutionException e2) {
            Ccase.m32296else(e2);
            return null;
        }
    }

    /* renamed from: goto, reason: not valid java name */
    public synchronized boolean m32311goto() {
        return this.f28677for != null;
    }

    /* renamed from: new, reason: not valid java name */
    public final synchronized ExecutorService m32312new() {
        return this.f28676do;
    }

    /* renamed from: this, reason: not valid java name */
    public final synchronized void m32313this(ExecutorService executorService) {
        if (m32311goto()) {
            throw new IllegalStateException("Cannot set ExecutorService after start()!");
        }
        this.f28676do = executorService;
    }

    /* renamed from: try, reason: not valid java name */
    public synchronized Future<T> m32314try() {
        Future<T> future;
        future = this.f28677for;
        if (future == null) {
            throw new IllegalStateException("start() must be called first!");
        }
        return future;
    }

    public Cfor(ExecutorService executorService) {
        m32313this(executorService);
    }
}
