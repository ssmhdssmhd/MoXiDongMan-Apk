package io.reactivex.internal.operators.flowable;

import android.R;
import android.support.v4.cq;
import android.support.v4.e12;
import android.support.v4.h4;
import android.support.v4.jp1;
import android.support.v4.r6;
import android.support.v4.t80;
import io.reactivex.Cfor;
import io.reactivex.FlowableSubscriber;
import io.reactivex.SingleObserver;
import io.reactivex.SingleSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Function;
import io.reactivex.internal.functions.Cif;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* loaded from: classes3.dex */
public final class j<T, R> extends io.reactivex.internal.operators.flowable.Cdo<T, R> {

    /* renamed from: for, reason: not valid java name */
    public final Function<? super T, ? extends SingleSource<? extends R>> f25705for;

    /* renamed from: new, reason: not valid java name */
    public final boolean f25706new;

    /* renamed from: try, reason: not valid java name */
    public final int f25707try;

    /* renamed from: io.reactivex.internal.operators.flowable.j$do, reason: invalid class name */
    public static final class Cdo<T, R> extends AtomicInteger implements FlowableSubscriber<T>, Subscription {
        private static final long serialVersionUID = 8600231336733376951L;
        public volatile boolean cancelled;
        public final boolean delayErrors;
        public final Subscriber<? super R> downstream;
        public final Function<? super T, ? extends SingleSource<? extends R>> mapper;
        public final int maxConcurrency;
        public Subscription upstream;
        public final AtomicLong requested = new AtomicLong();
        public final cq set = new cq();
        public final h4 errors = new h4();
        public final AtomicInteger active = new AtomicInteger(1);
        public final AtomicReference<e12<R>> queue = new AtomicReference<>();

        /* renamed from: io.reactivex.internal.operators.flowable.j$do$do, reason: invalid class name and collision with other inner class name */
        public final class C0285do extends AtomicReference<Disposable> implements SingleObserver<R>, Disposable {
            private static final long serialVersionUID = -502562646270949838L;

            public C0285do() {
            }

            @Override // io.reactivex.disposables.Disposable
            public void dispose() {
                io.reactivex.internal.disposables.Cdo.dispose(this);
            }

            @Override // io.reactivex.disposables.Disposable
            public boolean isDisposed() {
                return io.reactivex.internal.disposables.Cdo.isDisposed(get());
            }

            @Override // io.reactivex.SingleObserver
            public void onError(Throwable th) {
                Cdo.this.innerError(this, th);
            }

            @Override // io.reactivex.SingleObserver
            public void onSubscribe(Disposable disposable) {
                io.reactivex.internal.disposables.Cdo.setOnce(this, disposable);
            }

            @Override // io.reactivex.SingleObserver
            public void onSuccess(R r) {
                Cdo.this.innerSuccess(this, r);
            }
        }

        public Cdo(Subscriber<? super R> subscriber, Function<? super T, ? extends SingleSource<? extends R>> function, boolean z, int i) {
            this.downstream = subscriber;
            this.mapper = function;
            this.delayErrors = z;
            this.maxConcurrency = i;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            this.cancelled = true;
            this.upstream.cancel();
            this.set.dispose();
        }

        public void clear() {
            e12<R> e12Var = this.queue.get();
            if (e12Var != null) {
                e12Var.clear();
            }
        }

        public void drain() {
            if (getAndIncrement() == 0) {
                drainLoop();
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:38:0x0075, code lost:
        
            if (r9 != r5) goto L65;
         */
        /* JADX WARN: Code restructure failed: missing block: B:40:0x0079, code lost:
        
            if (r15.cancelled == false) goto L43;
         */
        /* JADX WARN: Code restructure failed: missing block: B:41:0x007b, code lost:
        
            clear();
         */
        /* JADX WARN: Code restructure failed: missing block: B:42:0x007e, code lost:
        
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:44:0x0081, code lost:
        
            if (r15.delayErrors != false) goto L49;
         */
        /* JADX WARN: Code restructure failed: missing block: B:46:0x008b, code lost:
        
            if (r15.errors.get() == null) goto L49;
         */
        /* JADX WARN: Code restructure failed: missing block: B:47:0x008d, code lost:
        
            r1 = r15.errors.terminate();
            clear();
            r0.onError(r1);
         */
        /* JADX WARN: Code restructure failed: missing block: B:48:0x0099, code lost:
        
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:50:0x009e, code lost:
        
            if (r1.get() != 0) goto L52;
         */
        /* JADX WARN: Code restructure failed: missing block: B:51:0x00a0, code lost:
        
            r5 = true;
         */
        /* JADX WARN: Code restructure failed: missing block: B:52:0x00a2, code lost:
        
            r5 = false;
         */
        /* JADX WARN: Code restructure failed: missing block: B:53:0x00a3, code lost:
        
            r6 = r2.get();
         */
        /* JADX WARN: Code restructure failed: missing block: B:54:0x00a9, code lost:
        
            if (r6 == null) goto L57;
         */
        /* JADX WARN: Code restructure failed: missing block: B:56:0x00af, code lost:
        
            if (r6.isEmpty() == false) goto L58;
         */
        /* JADX WARN: Code restructure failed: missing block: B:57:0x00b1, code lost:
        
            r11 = true;
         */
        /* JADX WARN: Code restructure failed: missing block: B:58:0x00b2, code lost:
        
            if (r5 == false) goto L65;
         */
        /* JADX WARN: Code restructure failed: missing block: B:59:0x00b4, code lost:
        
            if (r11 == false) goto L65;
         */
        /* JADX WARN: Code restructure failed: missing block: B:60:0x00b6, code lost:
        
            r1 = r15.errors.terminate();
         */
        /* JADX WARN: Code restructure failed: missing block: B:61:0x00bc, code lost:
        
            if (r1 == null) goto L63;
         */
        /* JADX WARN: Code restructure failed: missing block: B:62:0x00be, code lost:
        
            r0.onError(r1);
         */
        /* JADX WARN: Code restructure failed: missing block: B:63:0x00c2, code lost:
        
            r0.onComplete();
         */
        /* JADX WARN: Code restructure failed: missing block: B:64:0x00c5, code lost:
        
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:66:0x00c8, code lost:
        
            if (r9 == 0) goto L70;
         */
        /* JADX WARN: Code restructure failed: missing block: B:67:0x00ca, code lost:
        
            android.support.v4.r6.m6779try(r15.requested, r9);
         */
        /* JADX WARN: Code restructure failed: missing block: B:68:0x00d4, code lost:
        
            if (r15.maxConcurrency == Integer.MAX_VALUE) goto L70;
         */
        /* JADX WARN: Code restructure failed: missing block: B:69:0x00d6, code lost:
        
            r15.upstream.request(r9);
         */
        /* JADX WARN: Code restructure failed: missing block: B:70:0x00db, code lost:
        
            r4 = addAndGet(-r4);
         */
        /* JADX WARN: Code restructure failed: missing block: B:84:?, code lost:
        
            return;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void drainLoop() {
            Subscriber<? super R> subscriber = this.downstream;
            AtomicInteger atomicInteger = this.active;
            AtomicReference<e12<R>> atomicReference = this.queue;
            int iAddAndGet = 1;
            do {
                long j = this.requested.get();
                long j2 = 0;
                while (true) {
                    boolean z = false;
                    if (j2 == j) {
                        break;
                    }
                    if (this.cancelled) {
                        clear();
                        return;
                    }
                    if (!this.delayErrors && this.errors.get() != null) {
                        Throwable thTerminate = this.errors.terminate();
                        clear();
                        subscriber.onError(thTerminate);
                        return;
                    }
                    boolean z2 = atomicInteger.get() == 0;
                    e12<R> e12Var = atomicReference.get();
                    R.bool boolVarPoll = e12Var != null ? e12Var.poll() : null;
                    boolean z3 = boolVarPoll == null;
                    if (z2 && z3) {
                        Throwable thTerminate2 = this.errors.terminate();
                        if (thTerminate2 != null) {
                            subscriber.onError(thTerminate2);
                            return;
                        } else {
                            subscriber.onComplete();
                            return;
                        }
                    }
                    if (z3) {
                        break;
                    }
                    subscriber.onNext(boolVarPoll);
                    j2++;
                }
            } while (iAddAndGet != 0);
        }

        public e12<R> getOrCreateQueue() {
            e12<R> e12Var;
            do {
                e12<R> e12Var2 = this.queue.get();
                if (e12Var2 != null) {
                    return e12Var2;
                }
                e12Var = new e12<>(Cfor.g());
            } while (!this.queue.compareAndSet(null, e12Var));
            return e12Var;
        }

        public void innerError(Cdo<T, R>.C0285do c0285do, Throwable th) {
            this.set.delete(c0285do);
            if (!this.errors.addThrowable(th)) {
                jp1.l(th);
                return;
            }
            if (!this.delayErrors) {
                this.upstream.cancel();
                this.set.dispose();
            } else if (this.maxConcurrency != Integer.MAX_VALUE) {
                this.upstream.request(1L);
            }
            this.active.decrementAndGet();
            drain();
        }

        /* JADX WARN: Removed duplicated region for block: B:34:0x007a  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void innerSuccess(Cdo<T, R>.C0285do c0285do, R r) {
            this.set.delete(c0285do);
            if (get() == 0) {
                if (compareAndSet(0, 1)) {
                    boolean z = this.active.decrementAndGet() == 0;
                    if (this.requested.get() != 0) {
                        this.downstream.onNext(r);
                        e12<R> e12Var = this.queue.get();
                        if (z && (e12Var == null || e12Var.isEmpty())) {
                            Throwable thTerminate = this.errors.terminate();
                            if (thTerminate != null) {
                                this.downstream.onError(thTerminate);
                                return;
                            } else {
                                this.downstream.onComplete();
                                return;
                            }
                        }
                        r6.m6779try(this.requested, 1L);
                        if (this.maxConcurrency != Integer.MAX_VALUE) {
                            this.upstream.request(1L);
                        }
                    } else {
                        e12<R> orCreateQueue = getOrCreateQueue();
                        synchronized (orCreateQueue) {
                            orCreateQueue.offer(r);
                        }
                    }
                    if (decrementAndGet() == 0) {
                        return;
                    }
                } else {
                    e12<R> orCreateQueue2 = getOrCreateQueue();
                    synchronized (orCreateQueue2) {
                        orCreateQueue2.offer(r);
                    }
                    this.active.decrementAndGet();
                    if (getAndIncrement() != 0) {
                        return;
                    }
                }
            }
            drainLoop();
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            this.active.decrementAndGet();
            drain();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            this.active.decrementAndGet();
            if (!this.errors.addThrowable(th)) {
                jp1.l(th);
                return;
            }
            if (!this.delayErrors) {
                this.set.dispose();
            }
            drain();
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            try {
                SingleSource singleSource = (SingleSource) Cif.m29468else(this.mapper.apply(t), "The mapper returned a null SingleSource");
                this.active.getAndIncrement();
                C0285do c0285do = new C0285do();
                if (this.cancelled || !this.set.add(c0285do)) {
                    return;
                }
                singleSource.subscribe(c0285do);
            } catch (Throwable th) {
                t80.m7781if(th);
                this.upstream.cancel();
                onError(th);
            }
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (io.reactivex.internal.subscriptions.Cfor.validate(this.upstream, subscription)) {
                this.upstream = subscription;
                this.downstream.onSubscribe(this);
                int i = this.maxConcurrency;
                if (i == Integer.MAX_VALUE) {
                    subscription.request(Long.MAX_VALUE);
                } else {
                    subscription.request(i);
                }
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            if (io.reactivex.internal.subscriptions.Cfor.validate(j)) {
                r6.m6775do(this.requested, j);
                drain();
            }
        }
    }

    public j(Cfor<T> cfor, Function<? super T, ? extends SingleSource<? extends R>> function, boolean z, int i) {
        super(cfor);
        this.f25705for = function;
        this.f25706new = z;
        this.f25707try = i;
    }

    @Override // io.reactivex.Cfor
    public void n5(Subscriber<? super R> subscriber) {
        this.f25614if.m5(new Cdo(subscriber, this.f25705for, this.f25706new, this.f25707try));
    }
}
