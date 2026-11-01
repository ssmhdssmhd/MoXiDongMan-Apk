package io.reactivex.internal.operators.flowable;

import android.support.v4.a51;
import android.support.v4.g8;
import android.support.v4.r6;
import io.reactivex.internal.fuseable.ConditionalSubscriber;
import org.reactivestreams.Subscriber;

/* loaded from: classes3.dex */
public final class v0 extends io.reactivex.Cfor<Long> {

    /* renamed from: for, reason: not valid java name */
    public final long f26002for;

    /* renamed from: if, reason: not valid java name */
    public final long f26003if;

    /* renamed from: io.reactivex.internal.operators.flowable.v0$do, reason: invalid class name */
    public static abstract class Cdo extends g8<Long> {
        private static final long serialVersionUID = -2252972430506210021L;
        public volatile boolean cancelled;
        public final long end;
        public long index;

        public Cdo(long j, long j2) {
            this.index = j;
            this.end = j2;
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
        public final Long poll() {
            long j = this.index;
            if (j == this.end) {
                return null;
            }
            this.index = 1 + j;
            return Long.valueOf(j);
        }
    }

    /* renamed from: io.reactivex.internal.operators.flowable.v0$for, reason: invalid class name */
    public static final class Cfor extends Cdo {
        private static final long serialVersionUID = 2587302975077663557L;
        public final Subscriber<? super Long> downstream;

        public Cfor(Subscriber<? super Long> subscriber, long j, long j2) {
            super(j, j2);
            this.downstream = subscriber;
        }

        @Override // io.reactivex.internal.operators.flowable.v0.Cdo
        public void fastPath() {
            long j = this.end;
            Subscriber<? super Long> subscriber = this.downstream;
            for (long j2 = this.index; j2 != j; j2++) {
                if (this.cancelled) {
                    return;
                }
                subscriber.onNext(Long.valueOf(j2));
            }
            if (this.cancelled) {
                return;
            }
            subscriber.onComplete();
        }

        /* JADX WARN: Code restructure failed: missing block: B:20:0x0036, code lost:
        
            r11.index = r2;
            r12 = addAndGet(-r7);
         */
        @Override // io.reactivex.internal.operators.flowable.v0.Cdo
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void slowPath(long j) {
            long j2 = this.end;
            long j3 = this.index;
            Subscriber<? super Long> subscriber = this.downstream;
            do {
                long j4 = 0;
                while (true) {
                    if (j4 == j || j3 == j2) {
                        if (j3 == j2) {
                            if (this.cancelled) {
                                return;
                            }
                            subscriber.onComplete();
                            return;
                        } else {
                            j = get();
                            if (j4 == j) {
                                break;
                            }
                        }
                    } else {
                        if (this.cancelled) {
                            return;
                        }
                        subscriber.onNext(Long.valueOf(j3));
                        j4++;
                        j3++;
                    }
                }
            } while (j != 0);
        }
    }

    /* renamed from: io.reactivex.internal.operators.flowable.v0$if, reason: invalid class name */
    public static final class Cif extends Cdo {
        private static final long serialVersionUID = 2587302975077663557L;
        public final ConditionalSubscriber<? super Long> downstream;

        public Cif(ConditionalSubscriber<? super Long> conditionalSubscriber, long j, long j2) {
            super(j, j2);
            this.downstream = conditionalSubscriber;
        }

        @Override // io.reactivex.internal.operators.flowable.v0.Cdo
        public void fastPath() {
            long j = this.end;
            ConditionalSubscriber<? super Long> conditionalSubscriber = this.downstream;
            for (long j2 = this.index; j2 != j; j2++) {
                if (this.cancelled) {
                    return;
                }
                conditionalSubscriber.tryOnNext(Long.valueOf(j2));
            }
            if (this.cancelled) {
                return;
            }
            conditionalSubscriber.onComplete();
        }

        /* JADX WARN: Code restructure failed: missing block: B:23:0x0039, code lost:
        
            r12.index = r2;
            r13 = addAndGet(-r7);
         */
        @Override // io.reactivex.internal.operators.flowable.v0.Cdo
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void slowPath(long j) {
            long j2 = this.end;
            long j3 = this.index;
            ConditionalSubscriber<? super Long> conditionalSubscriber = this.downstream;
            do {
                long j4 = 0;
                while (true) {
                    if (j4 == j || j3 == j2) {
                        if (j3 == j2) {
                            if (this.cancelled) {
                                return;
                            }
                            conditionalSubscriber.onComplete();
                            return;
                        } else {
                            j = get();
                            if (j4 == j) {
                                break;
                            }
                        }
                    } else {
                        if (this.cancelled) {
                            return;
                        }
                        if (conditionalSubscriber.tryOnNext(Long.valueOf(j3))) {
                            j4++;
                        }
                        j3++;
                    }
                }
            } while (j != 0);
        }
    }

    public v0(long j, long j2) {
        this.f26003if = j;
        this.f26002for = j + j2;
    }

    @Override // io.reactivex.Cfor
    public void n5(Subscriber<? super Long> subscriber) {
        if (subscriber instanceof ConditionalSubscriber) {
            subscriber.onSubscribe(new Cif((ConditionalSubscriber) subscriber, this.f26003if, this.f26002for));
        } else {
            subscriber.onSubscribe(new Cfor(subscriber, this.f26003if, this.f26002for));
        }
    }
}
