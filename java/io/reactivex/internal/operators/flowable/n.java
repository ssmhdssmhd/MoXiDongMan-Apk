package io.reactivex.internal.operators.flowable;

import android.support.v4.a51;
import android.support.v4.g8;
import android.support.v4.r6;
import android.support.v4.t80;
import io.reactivex.internal.fuseable.ConditionalSubscriber;
import java.util.Iterator;
import org.reactivestreams.Subscriber;

/* loaded from: classes3.dex */
public final class n<T> extends io.reactivex.Cfor<T> {

    /* renamed from: if, reason: not valid java name */
    public final Iterable<? extends T> f25754if;

    /* renamed from: io.reactivex.internal.operators.flowable.n$do, reason: invalid class name */
    public static abstract class Cdo<T> extends g8<T> {
        private static final long serialVersionUID = -2252972430506210021L;
        public volatile boolean cancelled;
        public Iterator<? extends T> it;
        public boolean once;

        public Cdo(Iterator<? extends T> it) {
            this.it = it;
        }

        @Override // org.reactivestreams.Subscription
        public final void cancel() {
            this.cancelled = true;
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        public final void clear() {
            this.it = null;
        }

        public abstract void fastPath();

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        public final boolean isEmpty() {
            Iterator<? extends T> it = this.it;
            return it == null || !it.hasNext();
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        @a51
        public final T poll() {
            Iterator<? extends T> it = this.it;
            if (it == null) {
                return null;
            }
            if (!this.once) {
                this.once = true;
            } else if (!it.hasNext()) {
                return null;
            }
            return (T) io.reactivex.internal.functions.Cif.m29468else(this.it.next(), "Iterator.next() returned a null value");
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

    /* renamed from: io.reactivex.internal.operators.flowable.n$for, reason: invalid class name */
    public static final class Cfor<T> extends Cdo<T> {
        private static final long serialVersionUID = -6022804456014692607L;
        public final Subscriber<? super T> downstream;

        public Cfor(Subscriber<? super T> subscriber, Iterator<? extends T> it) {
            super(it);
            this.downstream = subscriber;
        }

        @Override // io.reactivex.internal.operators.flowable.n.Cdo
        public void fastPath() {
            Iterator<? extends T> it = this.it;
            Subscriber<? super T> subscriber = this.downstream;
            while (!this.cancelled) {
                try {
                    T next = it.next();
                    if (this.cancelled) {
                        return;
                    }
                    if (next == null) {
                        subscriber.onError(new NullPointerException("Iterator.next() returned a null value"));
                        return;
                    }
                    subscriber.onNext(next);
                    if (this.cancelled) {
                        return;
                    }
                    try {
                        if (!it.hasNext()) {
                            if (this.cancelled) {
                                return;
                            }
                            subscriber.onComplete();
                            return;
                        }
                    } catch (Throwable th) {
                        t80.m7781if(th);
                        subscriber.onError(th);
                        return;
                    }
                } catch (Throwable th2) {
                    t80.m7781if(th2);
                    subscriber.onError(th2);
                    return;
                }
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:34:0x0058, code lost:
        
            r9 = addAndGet(-r4);
         */
        @Override // io.reactivex.internal.operators.flowable.n.Cdo
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void slowPath(long j) {
            Iterator<? extends T> it = this.it;
            Subscriber<? super T> subscriber = this.downstream;
            do {
                long j2 = 0;
                while (true) {
                    if (j2 == j) {
                        j = get();
                        if (j2 == j) {
                            break;
                        }
                    } else {
                        if (this.cancelled) {
                            return;
                        }
                        try {
                            T next = it.next();
                            if (this.cancelled) {
                                return;
                            }
                            if (next == null) {
                                subscriber.onError(new NullPointerException("Iterator.next() returned a null value"));
                                return;
                            }
                            subscriber.onNext(next);
                            if (this.cancelled) {
                                return;
                            }
                            try {
                                if (!it.hasNext()) {
                                    if (this.cancelled) {
                                        return;
                                    }
                                    subscriber.onComplete();
                                    return;
                                }
                                j2++;
                            } catch (Throwable th) {
                                t80.m7781if(th);
                                subscriber.onError(th);
                                return;
                            }
                        } catch (Throwable th2) {
                            t80.m7781if(th2);
                            subscriber.onError(th2);
                            return;
                        }
                    }
                }
            } while (j != 0);
        }
    }

    /* renamed from: io.reactivex.internal.operators.flowable.n$if, reason: invalid class name */
    public static final class Cif<T> extends Cdo<T> {
        private static final long serialVersionUID = -6022804456014692607L;
        public final ConditionalSubscriber<? super T> downstream;

        public Cif(ConditionalSubscriber<? super T> conditionalSubscriber, Iterator<? extends T> it) {
            super(it);
            this.downstream = conditionalSubscriber;
        }

        @Override // io.reactivex.internal.operators.flowable.n.Cdo
        public void fastPath() {
            Iterator<? extends T> it = this.it;
            ConditionalSubscriber<? super T> conditionalSubscriber = this.downstream;
            while (!this.cancelled) {
                try {
                    T next = it.next();
                    if (this.cancelled) {
                        return;
                    }
                    if (next == null) {
                        conditionalSubscriber.onError(new NullPointerException("Iterator.next() returned a null value"));
                        return;
                    }
                    conditionalSubscriber.tryOnNext(next);
                    if (this.cancelled) {
                        return;
                    }
                    try {
                        if (!it.hasNext()) {
                            if (this.cancelled) {
                                return;
                            }
                            conditionalSubscriber.onComplete();
                            return;
                        }
                    } catch (Throwable th) {
                        t80.m7781if(th);
                        conditionalSubscriber.onError(th);
                        return;
                    }
                } catch (Throwable th2) {
                    t80.m7781if(th2);
                    conditionalSubscriber.onError(th2);
                    return;
                }
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:35:0x005b, code lost:
        
            r9 = addAndGet(-r4);
         */
        @Override // io.reactivex.internal.operators.flowable.n.Cdo
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void slowPath(long j) {
            Iterator<? extends T> it = this.it;
            ConditionalSubscriber<? super T> conditionalSubscriber = this.downstream;
            do {
                long j2 = 0;
                while (true) {
                    if (j2 == j) {
                        j = get();
                        if (j2 == j) {
                            break;
                        }
                    } else {
                        if (this.cancelled) {
                            return;
                        }
                        try {
                            T next = it.next();
                            if (this.cancelled) {
                                return;
                            }
                            if (next == null) {
                                conditionalSubscriber.onError(new NullPointerException("Iterator.next() returned a null value"));
                                return;
                            }
                            boolean zTryOnNext = conditionalSubscriber.tryOnNext(next);
                            if (this.cancelled) {
                                return;
                            }
                            try {
                                if (!it.hasNext()) {
                                    if (this.cancelled) {
                                        return;
                                    }
                                    conditionalSubscriber.onComplete();
                                    return;
                                } else if (zTryOnNext) {
                                    j2++;
                                }
                            } catch (Throwable th) {
                                t80.m7781if(th);
                                conditionalSubscriber.onError(th);
                                return;
                            }
                        } catch (Throwable th2) {
                            t80.m7781if(th2);
                            conditionalSubscriber.onError(th2);
                            return;
                        }
                    }
                }
            } while (j != 0);
        }
    }

    public n(Iterable<? extends T> iterable) {
        this.f25754if = iterable;
    }

    public static <T> void L7(Subscriber<? super T> subscriber, Iterator<? extends T> it) {
        try {
            if (!it.hasNext()) {
                io.reactivex.internal.subscriptions.Cdo.complete(subscriber);
            } else if (subscriber instanceof ConditionalSubscriber) {
                subscriber.onSubscribe(new Cif((ConditionalSubscriber) subscriber, it));
            } else {
                subscriber.onSubscribe(new Cfor(subscriber, it));
            }
        } catch (Throwable th) {
            t80.m7781if(th);
            io.reactivex.internal.subscriptions.Cdo.error(th, subscriber);
        }
    }

    @Override // io.reactivex.Cfor
    public void n5(Subscriber<? super T> subscriber) {
        try {
            L7(subscriber, this.f25754if.iterator());
        } catch (Throwable th) {
            t80.m7781if(th);
            io.reactivex.internal.subscriptions.Cdo.error(th, subscriber);
        }
    }
}
