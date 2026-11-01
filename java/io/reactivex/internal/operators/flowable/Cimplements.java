package io.reactivex.internal.operators.flowable;

import android.support.v4.a51;
import android.support.v4.t7;
import android.support.v4.v7;
import io.reactivex.Cfor;
import io.reactivex.functions.Consumer;
import io.reactivex.internal.fuseable.ConditionalSubscriber;
import org.reactivestreams.Subscriber;

/* renamed from: io.reactivex.internal.operators.flowable.implements, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cimplements<T> extends io.reactivex.internal.operators.flowable.Cdo<T, T> {

    /* renamed from: for, reason: not valid java name */
    public final Consumer<? super T> f25691for;

    /* renamed from: io.reactivex.internal.operators.flowable.implements$do, reason: invalid class name */
    public static final class Cdo<T> extends t7<T, T> {

        /* renamed from: case, reason: not valid java name */
        public final Consumer<? super T> f25692case;

        public Cdo(ConditionalSubscriber<? super T> conditionalSubscriber, Consumer<? super T> consumer) {
            super(conditionalSubscriber);
            this.f25692case = consumer;
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            this.f6428do.onNext(t);
            if (this.f6432try == 0) {
                try {
                    this.f25692case.accept(t);
                } catch (Throwable th) {
                    m7738for(th);
                }
            }
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        @a51
        public T poll() throws Exception {
            T tPoll = this.f6429for.poll();
            if (tPoll != null) {
                this.f25692case.accept(tPoll);
            }
            return tPoll;
        }

        @Override // io.reactivex.internal.fuseable.QueueFuseable
        public int requestFusion(int i) {
            return m7740new(i);
        }

        @Override // io.reactivex.internal.fuseable.ConditionalSubscriber
        public boolean tryOnNext(T t) {
            boolean zTryOnNext = this.f6428do.tryOnNext(t);
            try {
                this.f25692case.accept(t);
            } catch (Throwable th) {
                m7738for(th);
            }
            return zTryOnNext;
        }
    }

    /* renamed from: io.reactivex.internal.operators.flowable.implements$if, reason: invalid class name */
    public static final class Cif<T> extends v7<T, T> {

        /* renamed from: case, reason: not valid java name */
        public final Consumer<? super T> f25693case;

        public Cif(Subscriber<? super T> subscriber, Consumer<? super T> consumer) {
            super(subscriber);
            this.f25693case = consumer;
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (this.f7104new) {
                return;
            }
            this.f7101do.onNext(t);
            if (this.f7105try == 0) {
                try {
                    this.f25693case.accept(t);
                } catch (Throwable th) {
                    m8757for(th);
                }
            }
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        @a51
        public T poll() throws Exception {
            T tPoll = this.f7102for.poll();
            if (tPoll != null) {
                this.f25693case.accept(tPoll);
            }
            return tPoll;
        }

        @Override // io.reactivex.internal.fuseable.QueueFuseable
        public int requestFusion(int i) {
            return m8759new(i);
        }
    }

    public Cimplements(Cfor<T> cfor, Consumer<? super T> consumer) {
        super(cfor);
        this.f25691for = consumer;
    }

    @Override // io.reactivex.Cfor
    public void n5(Subscriber<? super T> subscriber) {
        if (subscriber instanceof ConditionalSubscriber) {
            this.f25614if.m5(new Cdo((ConditionalSubscriber) subscriber, this.f25691for));
        } else {
            this.f25614if.m5(new Cif(subscriber, this.f25691for));
        }
    }
}
