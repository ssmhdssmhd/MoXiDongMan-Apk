package io.reactivex.internal.operators.flowable;

import android.support.v4.a51;
import android.support.v4.t7;
import android.support.v4.v7;
import io.reactivex.Cfor;
import io.reactivex.functions.Predicate;
import io.reactivex.internal.fuseable.ConditionalSubscriber;
import io.reactivex.internal.fuseable.QueueSubscription;
import org.reactivestreams.Subscriber;

/* loaded from: classes3.dex */
public final class e<T> extends io.reactivex.internal.operators.flowable.Cdo<T, T> {

    /* renamed from: for, reason: not valid java name */
    public final Predicate<? super T> f25615for;

    /* renamed from: io.reactivex.internal.operators.flowable.e$do, reason: invalid class name */
    public static final class Cdo<T> extends t7<T, T> {

        /* renamed from: case, reason: not valid java name */
        public final Predicate<? super T> f25616case;

        public Cdo(ConditionalSubscriber<? super T> conditionalSubscriber, Predicate<? super T> predicate) {
            super(conditionalSubscriber);
            this.f25616case = predicate;
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (tryOnNext(t)) {
                return;
            }
            this.f6430if.request(1L);
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        @a51
        public T poll() throws Exception {
            QueueSubscription<T> queueSubscription = this.f6429for;
            Predicate<? super T> predicate = this.f25616case;
            while (true) {
                T tPoll = queueSubscription.poll();
                if (tPoll == null) {
                    return null;
                }
                if (predicate.test(tPoll)) {
                    return tPoll;
                }
                if (this.f6432try == 2) {
                    queueSubscription.request(1L);
                }
            }
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
            if (this.f6432try != 0) {
                return this.f6428do.tryOnNext(null);
            }
            try {
                return this.f25616case.test(t) && this.f6428do.tryOnNext(t);
            } catch (Throwable th) {
                m7738for(th);
                return true;
            }
        }
    }

    /* renamed from: io.reactivex.internal.operators.flowable.e$if, reason: invalid class name */
    public static final class Cif<T> extends v7<T, T> implements ConditionalSubscriber<T> {

        /* renamed from: case, reason: not valid java name */
        public final Predicate<? super T> f25617case;

        public Cif(Subscriber<? super T> subscriber, Predicate<? super T> predicate) {
            super(subscriber);
            this.f25617case = predicate;
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (tryOnNext(t)) {
                return;
            }
            this.f7103if.request(1L);
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        @a51
        public T poll() throws Exception {
            QueueSubscription<T> queueSubscription = this.f7102for;
            Predicate<? super T> predicate = this.f25617case;
            while (true) {
                T tPoll = queueSubscription.poll();
                if (tPoll == null) {
                    return null;
                }
                if (predicate.test(tPoll)) {
                    return tPoll;
                }
                if (this.f7105try == 2) {
                    queueSubscription.request(1L);
                }
            }
        }

        @Override // io.reactivex.internal.fuseable.QueueFuseable
        public int requestFusion(int i) {
            return m8759new(i);
        }

        @Override // io.reactivex.internal.fuseable.ConditionalSubscriber
        public boolean tryOnNext(T t) {
            if (this.f7104new) {
                return false;
            }
            if (this.f7105try != 0) {
                this.f7101do.onNext(null);
                return true;
            }
            try {
                boolean zTest = this.f25617case.test(t);
                if (zTest) {
                    this.f7101do.onNext(t);
                }
                return zTest;
            } catch (Throwable th) {
                m8757for(th);
                return true;
            }
        }
    }

    public e(Cfor<T> cfor, Predicate<? super T> predicate) {
        super(cfor);
        this.f25615for = predicate;
    }

    @Override // io.reactivex.Cfor
    public void n5(Subscriber<? super T> subscriber) {
        if (subscriber instanceof ConditionalSubscriber) {
            this.f25614if.m5(new Cdo((ConditionalSubscriber) subscriber, this.f25615for));
        } else {
            this.f25614if.m5(new Cif(subscriber, this.f25615for));
        }
    }
}
