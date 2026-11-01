package io.reactivex.internal.operators.flowable;

import android.support.v4.a51;
import android.support.v4.g8;
import android.support.v4.r6;
import io.reactivex.internal.fuseable.ConditionalSubscriber;
import org.reactivestreams.Subscriber;

/* loaded from: classes3.dex */
public final class l<T> extends io.reactivex.Cfor<T> {

    /* renamed from: if, reason: not valid java name */
    public final T[] f25735if;

    /* renamed from: io.reactivex.internal.operators.flowable.l$do, reason: invalid class name */
    public static final class Cdo<T> extends Cfor<T> {
        private static final long serialVersionUID = 2587302975077663557L;
        public final ConditionalSubscriber<? super T> downstream;

        public Cdo(ConditionalSubscriber<? super T> conditionalSubscriber, T[] tArr) {
            super(tArr);
            this.downstream = conditionalSubscriber;
        }

        @Override // io.reactivex.internal.operators.flowable.l.Cfor
        public void fastPath() {
            T[] tArr = this.array;
            int length = tArr.length;
            ConditionalSubscriber<? super T> conditionalSubscriber = this.downstream;
            for (int i = this.index; i != length; i++) {
                if (this.cancelled) {
                    return;
                }
                T t = tArr[i];
                if (t == null) {
                    conditionalSubscriber.onError(new NullPointerException("The element at index " + i + " is null"));
                    return;
                }
                conditionalSubscriber.tryOnNext(t);
            }
            if (this.cancelled) {
                return;
            }
            conditionalSubscriber.onComplete();
        }

        /* JADX WARN: Code restructure failed: missing block: B:25:0x0056, code lost:
        
            r10.index = r2;
            r11 = addAndGet(-r6);
         */
        @Override // io.reactivex.internal.operators.flowable.l.Cfor
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void slowPath(long j) {
            T[] tArr = this.array;
            int length = tArr.length;
            int i = this.index;
            ConditionalSubscriber<? super T> conditionalSubscriber = this.downstream;
            do {
                long j2 = 0;
                while (true) {
                    if (j2 == j || i == length) {
                        if (i == length) {
                            if (this.cancelled) {
                                return;
                            }
                            conditionalSubscriber.onComplete();
                            return;
                        } else {
                            j = get();
                            if (j2 == j) {
                                break;
                            }
                        }
                    } else {
                        if (this.cancelled) {
                            return;
                        }
                        T t = tArr[i];
                        if (t == null) {
                            conditionalSubscriber.onError(new NullPointerException("The element at index " + i + " is null"));
                            return;
                        }
                        if (conditionalSubscriber.tryOnNext(t)) {
                            j2++;
                        }
                        i++;
                    }
                }
            } while (j != 0);
        }
    }

    /* renamed from: io.reactivex.internal.operators.flowable.l$for, reason: invalid class name */
    public static abstract class Cfor<T> extends g8<T> {
        private static final long serialVersionUID = -2252972430506210021L;
        public final T[] array;
        public volatile boolean cancelled;
        public int index;

        public Cfor(T[] tArr) {
            this.array = tArr;
        }

        @Override // org.reactivestreams.Subscription
        public final void cancel() {
            this.cancelled = true;
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        public final void clear() {
            this.index = this.array.length;
        }

        public abstract void fastPath();

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        public final boolean isEmpty() {
            return this.index == this.array.length;
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        @a51
        public final T poll() {
            int i = this.index;
            T[] tArr = this.array;
            if (i == tArr.length) {
                return null;
            }
            this.index = i + 1;
            return (T) io.reactivex.internal.functions.Cif.m29468else(tArr[i], "array element is null");
        }

        @Override // org.reactivestreams.Subscription
        public final void request(long j) {
            if (io.reactivex.internal.subscriptions.Cfor.validate(j) && r6.m6775do(this, j) == 0) {
                if (j == Long.MAX_VALUE) {
                    fastPath();
                } else {
                    slowPath(j);
                }
            }
        }

        @Override // io.reactivex.internal.fuseable.QueueFuseable
        public final int requestFusion(int i) {
            return i & 1;
        }

        public abstract void slowPath(long j);
    }

    /* renamed from: io.reactivex.internal.operators.flowable.l$if, reason: invalid class name */
    public static final class Cif<T> extends Cfor<T> {
        private static final long serialVersionUID = 2587302975077663557L;
        public final Subscriber<? super T> downstream;

        public Cif(Subscriber<? super T> subscriber, T[] tArr) {
            super(tArr);
            this.downstream = subscriber;
        }

        @Override // io.reactivex.internal.operators.flowable.l.Cfor
        public void fastPath() {
            T[] tArr = this.array;
            int length = tArr.length;
            Subscriber<? super T> subscriber = this.downstream;
            for (int i = this.index; i != length; i++) {
                if (this.cancelled) {
                    return;
                }
                T t = tArr[i];
                if (t == null) {
                    subscriber.onError(new NullPointerException("The element at index " + i + " is null"));
                    return;
                }
                subscriber.onNext(t);
            }
            if (this.cancelled) {
                return;
            }
            subscriber.onComplete();
        }

        /* JADX WARN: Code restructure failed: missing block: B:22:0x0053, code lost:
        
            r10.index = r2;
            r11 = addAndGet(-r6);
         */
        @Override // io.reactivex.internal.operators.flowable.l.Cfor
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void slowPath(long j) {
            T[] tArr = this.array;
            int length = tArr.length;
            int i = this.index;
            Subscriber<? super T> subscriber = this.downstream;
            do {
                long j2 = 0;
                while (true) {
                    if (j2 == j || i == length) {
                        if (i == length) {
                            if (this.cancelled) {
                                return;
                            }
                            subscriber.onComplete();
                            return;
                        } else {
                            j = get();
                            if (j2 == j) {
                                break;
                            }
                        }
                    } else {
                        if (this.cancelled) {
                            return;
                        }
                        T t = tArr[i];
                        if (t == null) {
                            subscriber.onError(new NullPointerException("The element at index " + i + " is null"));
                            return;
                        }
                        subscriber.onNext(t);
                        j2++;
                        i++;
                    }
                }
            } while (j != 0);
        }
    }

    public l(T[] tArr) {
        this.f25735if = tArr;
    }

    @Override // io.reactivex.Cfor
    public void n5(Subscriber<? super T> subscriber) {
        if (subscriber instanceof ConditionalSubscriber) {
            subscriber.onSubscribe(new Cdo((ConditionalSubscriber) subscriber, this.f25735if));
        } else {
            subscriber.onSubscribe(new Cif(subscriber, this.f25735if));
        }
    }
}
