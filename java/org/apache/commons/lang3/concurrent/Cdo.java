package org.apache.commons.lang3.concurrent;

import android.support.v4.mq;
import java.util.concurrent.atomic.AtomicReference;

/* renamed from: org.apache.commons.lang3.concurrent.do, reason: invalid class name */
/* loaded from: classes3.dex */
public abstract class Cdo<T> implements ConcurrentInitializer<T> {

    /* renamed from: do, reason: not valid java name */
    private final AtomicReference<T> f28673do = new AtomicReference<>();

    /* renamed from: do, reason: not valid java name */
    public abstract T m32303do() throws mq;

    @Override // org.apache.commons.lang3.concurrent.ConcurrentInitializer
    public T get() throws mq {
        T t = this.f28673do.get();
        if (t != null) {
            return t;
        }
        T tM32303do = m32303do();
        return !this.f28673do.compareAndSet(null, tM32303do) ? this.f28673do.get() : tM32303do;
    }
}
