package org.apache.commons.lang3.concurrent;

import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;

/* renamed from: org.apache.commons.lang3.concurrent.try, reason: invalid class name */
/* loaded from: classes3.dex */
public class Ctry<T> extends Cfor<T> {

    /* renamed from: new, reason: not valid java name */
    private final Callable<T> f28699new;

    public Ctry(Callable<T> callable) {
        m32345catch(callable);
        this.f28699new = callable;
    }

    /* renamed from: catch, reason: not valid java name */
    private void m32345catch(Callable<T> callable) {
        if (callable == null) {
            throw new IllegalArgumentException("Callable must not be null!");
        }
    }

    @Override // org.apache.commons.lang3.concurrent.Cfor
    /* renamed from: else */
    public T mo32309else() throws Exception {
        return this.f28699new.call();
    }

    public Ctry(Callable<T> callable, ExecutorService executorService) {
        super(executorService);
        m32345catch(callable);
        this.f28699new = callable;
    }
}
