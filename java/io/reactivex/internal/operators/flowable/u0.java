package io.reactivex.internal.operators.flowable;

import android.support.v4.a51;
import android.support.v4.g8;
import android.support.v4.r6;
import io.reactivex.internal.fuseable.ConditionalSubscriber;
import org.reactivestreams.Subscriber;

/* loaded from: classes3.dex */
public final class u0 extends io.reactivex.Cfor<Integer> {

    /* renamed from: for, reason: not valid java name */
    public final int f25991for;

    /* renamed from: if, reason: not valid java name */
    public final int f25992if;

    /* renamed from: io.reactivex.internal.operators.flowable.u0$do, reason: invalid class name */
    public static abstract class Cdo extends g8<Integer> {
        private static final long serialVersionUID = -2252972430506210021L;
        public volatile boolean cancelled;
        public final int end;
        public int index;

        public Cdo(int i, int i2) {
            this.index = i;
            this.end = i2;
        }

        @Override // org.reactivestreams.Subscription
        public final void cancel() {
            this.cancelled = true;
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        public final void clear() {
            this.index = this.end;
        }

        public abstract void fastPath();

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        public final boolean isEmpty() {
            return this.index == this.end;
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

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        @a51
        public final Integer poll() {
            int i = this.index;
            if (i == this.end) {
                return null;
            }
            this.index = i + 1;
            return Integer.valueOf(i);
        }
    }

    /* renamed from: io.reactivex.internal.operators.flowable.u0$for, reason: invalid class name */
    public static final class Cfor extends Cdo {
        private static final long serialVersionUID = 2587302975077663557L;
        public final Subscriber<? super Integer> downstream;

        public Cfor(Subscriber<? super Integer> subscriber, int i, int i2) {
            super(i, i2);
            this.downstream = subscriber;
        }

        @Override // io.reactivex.internal.operators.flowable.u0.Cdo
        public void fastPath() {
            int i = this.end;
            Subscriber<? super Integer> subscriber = this.downstream;
            for (int i2 = this.index; i2 != i; i2++) {
                if (this.cancelled) {
                    return;
                }
                subscriber.onNext(Integer.valueOf(i2));
            }
            if (this.cancelled) {
                return;
            }
            subscriber.onComplete();
        }

        /* JADX WARN: Code restructure failed: missing block: B:18:0x0033, code lost:
        
            r9.index = r1;
            r10 = addAndGet(-r5);
         */
        @Override // io.reactivex.internal.operators.flowable.u0.Cdo
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void slowPath(long j) {
            int i = this.end;
            int i2 = this.index;
            Subscriber<? super Integer> subscriber = this.downstream;
            do {
                long j2 = 0;
                while (true) {
                    if (j2 == j || i2 == i) {
                        if (i2 == i) {
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
                        subscriber.onNext(Integer.valueOf(i2));
                        j2++;
                        i2++;
                    }
                }
            } while (j != 0);
        }
    }

    /* renamed from: io.reactivex.internal.operators.flowable.u0$if, reason: invalid class name */
    public static final class Cif extends Cdo {
        private static final long serialVersionUID = 2587302975077663557L;
        public final ConditionalSubscriber<? super Integer> downstream;

        public Cif(ConditionalSubscriber<? super Integer> conditionalSubscriber, int i, int i2) {
            super(i, i2);
            this.downstream = conditionalSubscriber;
        }

        @Override // io.reactivex.internal.operators.flowable.u0.Cdo
        public void fastPath() {
            int i = this.end;
            ConditionalSubscriber<? super Integer> conditionalSubscriber = this.downstream;
            for (int i2 = this.index; i2 != i; i2++) {
                if (this.cancelled) {
                    return;
                }
                conditionalSubscriber.tryOnNext(Integer.valueOf(i2));
            }
            if (this.cancelled) {
                return;
            }
            conditionalSubscriber.onComplete();
        }

        /* JADX WARN: Code restructure failed: missing block: B:21:0x0036, code lost:
        
            r9.index = r1;
            r10 = addAndGet(-r5);
         */
        @Override // io.reactivex.internal.operators.flowable.u0.Cdo
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void slowPath(long j) {
            int i = this.end;
            int i2 = this.index;
            ConditionalSubscriber<? super Integer> conditionalSubscriber = this.downstream;
            do {
                long j2 = 0;
                while (true) {
                    if (j2 == j || i2 == i) {
                        if (i2 == i) {
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
                        if (conditionalSubscriber.tryOnNext(Integer.valueOf(i2))) {
                            j2++;
                        }
                        i2++;
                    }
                }
            } while (j != 0);
        }
    }

    public u0(int i, int i2) {
        this.f25992if = i;
        this.f25991for = i + i2;
    }

    @Override // io.reactivex.Cfor
    public void n5(Subscriber<? super Integer> subscriber) {
        if (subscriber instanceof ConditionalSubscriber) {
            subscriber.onSubscribe(new Cif((ConditionalSubscriber) subscriber, this.f25992if, this.f25991for));
        } else {
            subscriber.onSubscribe(new Cfor(subscriber, this.f25992if, this.f25991for));
        }
    }
}
