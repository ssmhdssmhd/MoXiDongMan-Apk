package com.uber.autodispose;

import org.reactivestreams.Subscriber;

/* loaded from: classes2.dex */
public interface ParallelFlowableSubscribeProxy<T> {
    void subscribe(Subscriber<? super T>[] subscriberArr);
}
