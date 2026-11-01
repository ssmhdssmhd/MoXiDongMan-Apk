package io.reactivex.processors;

import android.support.v4.a51;
import android.support.v4.b41;
import android.support.v4.gl;
import io.reactivex.FlowableSubscriber;
import org.reactivestreams.Processor;

/* renamed from: io.reactivex.processors.for, reason: invalid class name */
/* loaded from: classes3.dex */
public abstract class Cfor<T> extends io.reactivex.Cfor<T> implements Processor<T, T>, FlowableSubscriber<T> {
    @a51
    public abstract Throwable L7();

    public abstract boolean M7();

    public abstract boolean N7();

    public abstract boolean O7();

    @b41
    @gl
    public final Cfor<T> P7() {
        return this instanceof Ccase ? this : new Ccase(this);
    }
}
