package io.reactivex.internal.operators.flowable;

import android.support.v4.a51;
import android.support.v4.t7;
import android.support.v4.v7;
import io.reactivex.Cfor;
import io.reactivex.functions.BiPredicate;
import io.reactivex.functions.Function;
import io.reactivex.internal.fuseable.ConditionalSubscriber;
import org.reactivestreams.Subscriber;

/* renamed from: io.reactivex.internal.operators.flowable.transient, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Ctransient<T, K> extends io.reactivex.internal.operators.flowable.Cdo<T, T> {

    /* renamed from: for, reason: not valid java name */
    public final Function<? super T, K> f25944for;

    /* renamed from: new, reason: not valid java name */
    public final BiPredicate<? super K, ? super K> f25945new;

    /* renamed from: io.reactivex.internal.operators.flowable.transient$do, reason: invalid class name */
    public static final class Cdo<T, K> extends t7<T, T> {

        /* renamed from: case, reason: not valid java name */
        public final Function<? super T, K> f25946case;

        /* renamed from: else, reason: not valid java name */
        public final BiPredicate<? super K, ? super K> f25947else;

        /* renamed from: goto, reason: not valid java name */
        public K f25948goto;

        /* renamed from: this, reason: not valid java name */
        public boolean f25949this;

        public Cdo(ConditionalSubscriber<? super T> conditionalSubscriber, Function<? super T, K> function, BiPredicate<? super K, ? super K> biPredicate) {
            super(conditionalSubscriber);
            this.f25946case = function;
            this.f25947else = biPredicate;
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
            while (true) {
                T tPoll = this.f6429for.poll();
                if (tPoll == null) {
                    return null;
                }
                K kApply = this.f25946case.apply(tPoll);
                if (!this.f25949this) {
                    this.f25949this = true;
                    this.f25948goto = kApply;
                    return tPoll;
                }
                if (!this.f25947else.test(this.f25948goto, kApply)) {
                    this.f25948goto = kApply;
                    return tPoll;
                }
                this.f25948goto = kApply;
                if (this.f6432try != 1) {
                    this.f6430if.request(1L);
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
                return this.f6428do.tryOnNext(t);
            }
            try {
                K kApply = this.f25946case.apply(t);
                if (this.f25949this) {
                    boolean zTest = this.f25947else.test(this.f25948goto, kApply);
                    this.f25948goto = kApply;
                    if (zTest) {
                        return false;
                    }
                } else {
                    this.f25949this = true;
                    this.f25948goto = kApply;
                }
                this.f6428do.onNext(t);
                return true;
            } catch (Throwable th) {
                m7738for(th);
                return true;
            }
        }
    }

    /* renamed from: io.reactivex.internal.operators.flowable.transient$if, reason: invalid class name */
    public static final class Cif<T, K> extends v7<T, T> implements ConditionalSubscriber<T> {

        /* renamed from: case, reason: not valid java name */
        public final Function<? super T, K> f25950case;

        /* renamed from: else, reason: not valid java name */
        public final BiPredicate<? super K, ? super K> f25951else;

        /* renamed from: goto, reason: not valid java name */
        public K f25952goto;

        /* renamed from: this, reason: not valid java name */
        public boolean f25953this;

        public Cif(Subscriber<? super T> subscriber, Function<? super T, K> function, BiPredicate<? super K, ? super K> biPredicate) {
            super(subscriber);
            this.f25950case = function;
            this.f25951else = biPredicate;
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
            while (true) {
                T tPoll = this.f7102for.poll();
                if (tPoll == null) {
                    return null;
                }
                K kApply = this.f25950case.apply(tPoll);
                if (!this.f25953this) {
                    this.f25953this = true;
                    this.f25952goto = kApply;
                    return tPoll;
                }
                if (!this.f25951else.test(this.f25952goto, kApply)) {
                    this.f25952goto = kApply;
                    return tPoll;
                }
                this.f25952goto = kApply;
                if (this.f7105try != 1) {
                    this.f7103if.request(1L);
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
                this.f7101do.onNext(t);
                return true;
            }
            try {
                K kApply = this.f25950case.apply(t);
                if (this.f25953this) {
                    boolean zTest = this.f25951else.test(this.f25952goto, kApply);
                    this.f25952goto = kApply;
                    if (zTest) {
                        return false;
                    }
                } else {
                    this.f25953this = true;
                    this.f25952goto = kApply;
                }
                this.f7101do.onNext(t);
                return true;
            } catch (Throwable th) {
                m8757for(th);
                return true;
            }
        }
    }

    public Ctransient(Cfor<T> cfor, Function<? super T, K> function, BiPredicate<? super K, ? super K> biPredicate) {
        super(cfor);
        this.f25944for = function;
        this.f25945new = biPredicate;
    }

    @Override // io.reactivex.Cfor
    public void n5(Subscriber<? super T> subscriber) {
        if (subscriber instanceof ConditionalSubscriber) {
            this.f25614if.m5(new Cdo((ConditionalSubscriber) subscriber, this.f25944for, this.f25945new));
        } else {
            this.f25614if.m5(new Cif(subscriber, this.f25944for, this.f25945new));
        }
    }
}
