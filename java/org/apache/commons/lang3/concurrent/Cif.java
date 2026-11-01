package org.apache.commons.lang3.concurrent;

import android.support.v4.mq;
import java.util.concurrent.atomic.AtomicReference;

/* renamed from: org.apache.commons.lang3.concurrent.if, reason: invalid class name */
/* loaded from: classes3.dex */
public abstract class Cif<T> implements ConcurrentInitializer<T> {

    /* renamed from: do, reason: not valid java name */
    private final AtomicReference<Cif<T>> f28682do = new AtomicReference<>();

    /* renamed from: if, reason: not valid java name */
    private final AtomicReference<T> f28683if = new AtomicReference<>();

    /* renamed from: do, reason: not valid java name */
    public abstract T m32316do() throws mq;

    @Override // org.apache.commons.lang3.concurrent.ConcurrentInitializer
    public final T get() throws mq {
        while (true) {
            T t = this.f28683if.get();
            if (t != null) {
                return t;
            }
            if (this.f28682do.compareAndSet(null, this)) {
                this.f28683if.set(m32316do());
            }
        }
    }
}
