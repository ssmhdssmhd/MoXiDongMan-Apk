package io.reactivex.internal.operators.flowable;

import android.support.v4.a51;
import android.support.v4.t7;
import android.support.v4.v7;
import io.reactivex.Cfor;
import io.reactivex.functions.Function;
import io.reactivex.internal.fuseable.ConditionalSubscriber;
import org.reactivestreams.Subscriber;

/* loaded from: classes3.dex */
public final class c0<T, U> extends io.reactivex.internal.operators.flowable.Cdo<T, U> {

    /* renamed from: for, reason: not valid java name */
    public final Function<? super T, ? extends U> f25555for;

    /* renamed from: io.reactivex.internal.operators.flowable.c0$do, reason: invalid class name */
    public static final class Cdo<T, U> extends t7<T, U> {

        /* renamed from: case, reason: not valid java name */
        public final Function<? super T, ? extends U> f25556case;

        public Cdo(ConditionalSubscriber<? super U> conditionalSubscriber, Function<? super T, ? extends U> function) {
            super(conditionalSubscriber);
            this.f25556case = function;
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (this.f6431new) {
                return;
            }
            if (this.f6432try != 0) {
                this.f6428do.onNext(null);
                return;
            }
            try {
                this.f6428do.onNext(io.reactivex.internal.functions.Cif.m29468else(this.f25556case.apply(t), "The mapper function returned a null value."));
            } catch (Throwable th) {
                m7738for(th);
            }
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        @a51
        public U poll() throws Exception {
            T tPoll = this.f6429for.poll();
            if (tPoll != null) {
                return (U) io.reactivex.internal.functions.Cif.m29468else(this.f25556case.apply(tPoll), "The mapper function returned a null value.");
            }
            return null;
        }

        @Override // io.reactivex.internal.fuseable.QueueFuseable
        public int requestFusion(int i) {
            return m7740new(i);
        }

        @Override // io.reactivex.internal.fuseable.ConditionalSubscriber
        public boolean tryOnNext(T t) {
            if (this.f6431new) {
                return false;
            }
            try {
                return this.f6428do.tryOnNext(io.reactivex.internal.functions.Cif.m29468else(this.f25556case.apply(t), "The mapper function returned a null value."));
            } catch (Throwable th) {
                m7738for(th);
                return true;
            }
        }
    }

    /* renamed from: io.reactivex.internal.operators.flowable.c0$if, reason: invalid class name */
    public static final class Cif<T, U> extends v7<T, U> {

        /* renamed from: case, reason: not valid java name */
        public final Function<? super T, ? extends U> f25557case;

        public Cif(Subscriber<? super U> subscriber, Function<? super T, ? extends U> function) {
            super(subscriber);
            this.f25557case = function;
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (this.f7104new) {
                return;
            }
            if (this.f7105try != 0) {
                this.f7101do.onNext(null);
                return;
            }
            try {
                this.f7101do.onNext(io.reactivex.internal.functions.Cif.m29468else(this.f25557case.apply(t), "The mapper function returned a null value."));
            } catch (Throwable th) {
                m8757for(th);
            }
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        @a51
        public U poll() throws Exception {
            T tPoll = this.f7102for.poll();
            if (tPoll != null) {
                return (U) io.reactivex.internal.functions.Cif.m29468else(this.f25557case.apply(tPoll), "The mapper function returned a null value.");
            }
            return null;
        }

        @Override // io.reactivex.internal.fuseable.QueueFuseable
        public int requestFusion(int i) {
            return m8759new(i);
        }
    }

    public c0(Cfor<T> cfor, Function<? super T, ? extends U> function) {
        super(cfor);
        this.f25555for = function;
    }

    @Override // io.reactivex.Cfor
    public void n5(Subscriber<? super U> subscriber) {
        if (subscriber instanceof ConditionalSubscriber) {
            this.f25614if.m5(new Cdo((ConditionalSubscriber) subscriber, this.f25555for));
        } else {
            this.f25614if.m5(new Cif(subscriber, this.f25555for));
        }
    }
}
