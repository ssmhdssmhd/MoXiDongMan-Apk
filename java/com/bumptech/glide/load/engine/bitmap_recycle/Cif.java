package com.bumptech.glide.load.engine.bitmap_recycle;

import com.bumptech.glide.load.engine.bitmap_recycle.Poolable;
import com.bumptech.glide.util.Ccase;
import java.util.Queue;

/* renamed from: com.bumptech.glide.load.engine.bitmap_recycle.if, reason: invalid class name */
/* loaded from: classes.dex */
abstract class Cif<T extends Poolable> {

    /* renamed from: if, reason: not valid java name */
    private static final int f9665if = 20;

    /* renamed from: do, reason: not valid java name */
    private final Queue<T> f9666do = Ccase.m12039case(20);

    /* renamed from: do */
    public abstract T mo11388do();

    /* renamed from: for, reason: not valid java name */
    public void m11406for(T t) {
        if (this.f9666do.size() < 20) {
            this.f9666do.offer(t);
        }
    }

    /* renamed from: if, reason: not valid java name */
    public T m11407if() {
        T tPoll = this.f9666do.poll();
        return tPoll == null ? (T) mo11388do() : tPoll;
    }
}
