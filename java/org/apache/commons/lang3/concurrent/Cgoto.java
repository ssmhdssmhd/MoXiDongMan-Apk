package org.apache.commons.lang3.concurrent;

import android.support.v4.mq;

/* renamed from: org.apache.commons.lang3.concurrent.goto, reason: invalid class name */
/* loaded from: classes3.dex */
public abstract class Cgoto<T> implements ConcurrentInitializer<T> {

    /* renamed from: do, reason: not valid java name */
    private volatile T f28681do;

    /* renamed from: do, reason: not valid java name */
    public abstract T m32315do() throws mq;

    @Override // org.apache.commons.lang3.concurrent.ConcurrentInitializer
    public T get() throws mq {
        T tM32315do = this.f28681do;
        if (tM32315do == null) {
            synchronized (this) {
                tM32315do = this.f28681do;
                if (tM32315do == null) {
                    tM32315do = m32315do();
                    this.f28681do = tM32315do;
                }
            }
        }
        return tM32315do;
    }
}
