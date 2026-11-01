package io.reactivex.internal.operators.flowable;

import android.R;
import android.support.v4.a01;
import android.support.v4.cq;
import android.support.v4.e12;
import android.support.v4.jp1;
import android.support.v4.r6;
import android.support.v4.t80;
import io.reactivex.Cfor;
import io.reactivex.functions.BiFunction;
import io.reactivex.functions.Function;
import io.reactivex.internal.functions.Cif;
import io.reactivex.internal.fuseable.SimpleQueue;
import io.reactivex.internal.operators.flowable.FlowableGroupJoin;
import io.reactivex.internal.util.Ccase;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* loaded from: classes3.dex */
public final class x<TLeft, TRight, TLeftEnd, TRightEnd, R> extends io.reactivex.internal.operators.flowable.Cdo<TLeft, R> {

    /* renamed from: case, reason: not valid java name */
    public final BiFunction<? super TLeft, ? super TRight, ? extends R> f26036case;

    /* renamed from: for, reason: not valid java name */
    public final Publisher<? extends TRight> f26037for;

    /* renamed from: new, reason: not valid java name */
    public final Function<? super TLeft, ? extends Publisher<TLeftEnd>> f26038new;

    /* renamed from: try, reason: not valid java name */
    public final Function<? super TRight, ? extends Publisher<TRightEnd>> f26039try;

    /* renamed from: io.reactivex.internal.operators.flowable.x$do, reason: invalid class name */
    public static final class Cdo<TLeft, TRight, TLeftEnd, TRightEnd, R> extends AtomicInteger implements Subscription, FlowableGroupJoin.JoinSupport {
        private static final long serialVersionUID = -6071216598687999801L;
        public volatile boolean cancelled;
        public final Subscriber<? super R> downstream;
        public final Function<? super TLeft, ? extends Publisher<TLeftEnd>> leftEnd;
        public int leftIndex;
        public final BiFunction<? super TLeft, ? super TRight, ? extends R> resultSelector;
        public final Function<? super TRight, ? extends Publisher<TRightEnd>> rightEnd;
        public int rightIndex;
        public static final Integer LEFT_VALUE = 1;
        public static final Integer RIGHT_VALUE = 2;
        public static final Integer LEFT_CLOSE = 3;
        public static final Integer RIGHT_CLOSE = 4;
        public final AtomicLong requested = new AtomicLong();
        public final cq disposables = new cq();
        public final e12<Object> queue = new e12<>(Cfor.g());
        public final Map<Integer, TLeft> lefts = new LinkedHashMap();
        public final Map<Integer, TRight> rights = new LinkedHashMap();
        public final AtomicReference<Throwable> error = new AtomicReference<>();
        public final AtomicInteger active = new AtomicInteger(2);

        public Cdo(Subscriber<? super R> subscriber, Function<? super TLeft, ? extends Publisher<TLeftEnd>> function, Function<? super TRight, ? extends Publisher<TRightEnd>> function2, BiFunction<? super TLeft, ? super TRight, ? extends R> biFunction) {
            this.downstream = subscriber;
            this.leftEnd = function;
            this.rightEnd = function2;
            this.resultSelector = biFunction;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            if (this.cancelled) {
                return;
            }
            this.cancelled = true;
            cancelAll();
            if (getAndIncrement() == 0) {
                this.queue.clear();
            }
        }

        public void cancelAll() {
            this.disposables.dispose();
        }

        public void drain() {
            if (getAndIncrement() != 0) {
                return;
            }
            e12<Object> e12Var = this.queue;
            Subscriber<? super R> subscriber = this.downstream;
            boolean z = true;
            int iAddAndGet = 1;
            while (!this.cancelled) {
                if (this.error.get() != null) {
                    e12Var.clear();
                    cancelAll();
                    errorAll(subscriber);
                    return;
                }
                boolean z2 = this.active.get() == 0;
                Integer num = (Integer) e12Var.poll();
                boolean z3 = num == null;
                if (z2 && z3) {
                    this.lefts.clear();
                    this.rights.clear();
                    this.disposables.dispose();
                    subscriber.onComplete();
                    return;
                }
                if (z3) {
                    iAddAndGet = addAndGet(-iAddAndGet);
                    if (iAddAndGet == 0) {
                        return;
                    }
                } else {
                    Object objPoll = e12Var.poll();
                    if (num == LEFT_VALUE) {
                        int i = this.leftIndex;
                        this.leftIndex = i + 1;
                        this.lefts.put(Integer.valueOf(i), objPoll);
                        try {
                            Publisher publisher = (Publisher) Cif.m29468else(this.leftEnd.apply(objPoll), "The leftEnd returned a null Publisher");
                            FlowableGroupJoin.Cif cif = new FlowableGroupJoin.Cif(this, z, i);
                            this.disposables.add(cif);
                            publisher.subscribe(cif);
                            if (this.error.get() != null) {
                                e12Var.clear();
                                cancelAll();
                                errorAll(subscriber);
                                return;
                            }
                            long j = this.requested.get();
                            Iterator<TRight> it = this.rights.values().iterator();
                            long j2 = 0;
                            while (it.hasNext()) {
                                try {
                                    R.bool boolVar = (Object) Cif.m29468else(this.resultSelector.apply(objPoll, it.next()), "The resultSelector returned a null value");
                                    if (j2 == j) {
                                        Ccase.m29713do(this.error, new a01("Could not emit value due to lack of requests"));
                                        e12Var.clear();
                                        cancelAll();
                                        errorAll(subscriber);
                                        return;
                                    }
                                    subscriber.onNext(boolVar);
                                    j2++;
                                } catch (Throwable th) {
                                    fail(th, subscriber, e12Var);
                                    return;
                                }
                            }
                            if (j2 != 0) {
                                r6.m6779try(this.requested, j2);
                            }
                        } catch (Throwable th2) {
                            fail(th2, subscriber, e12Var);
                            return;
                        }
                    } else if (num == RIGHT_VALUE) {
                        int i2 = this.rightIndex;
                        this.rightIndex = i2 + 1;
                        this.rights.put(Integer.valueOf(i2), objPoll);
                        try {
                            Publisher publisher2 = (Publisher) Cif.m29468else(this.rightEnd.apply(objPoll), "The rightEnd returned a null Publisher");
                            FlowableGroupJoin.Cif cif2 = new FlowableGroupJoin.Cif(this, false, i2);
                            this.disposables.add(cif2);
                            publisher2.subscribe(cif2);
                            if (this.error.get() != null) {
                                e12Var.clear();
                                cancelAll();
                                errorAll(subscriber);
                                return;
                            }
                            long j3 = this.requested.get();
                            Iterator<TLeft> it2 = this.lefts.values().iterator();
                            long j4 = 0;
                            while (it2.hasNext()) {
                                try {
                                    R.bool boolVar2 = (Object) Cif.m29468else(this.resultSelector.apply(it2.next(), objPoll), "The resultSelector returned a null value");
                                    if (j4 == j3) {
                                        Ccase.m29713do(this.error, new a01("Could not emit value due to lack of requests"));
                                        e12Var.clear();
                                        cancelAll();
                                        errorAll(subscriber);
                                        return;
                                    }
                                    subscriber.onNext(boolVar2);
                                    j4++;
                                } catch (Throwable th3) {
                                    fail(th3, subscriber, e12Var);
                                    return;
                                }
                            }
                            if (j4 != 0) {
                                r6.m6779try(this.requested, j4);
                            }
                        } catch (Throwable th4) {
                            fail(th4, subscriber, e12Var);
                            return;
                        }
                    } else if (num == LEFT_CLOSE) {
                        FlowableGroupJoin.Cif cif3 = (FlowableGroupJoin.Cif) objPoll;
                        this.lefts.remove(Integer.valueOf(cif3.index));
                        this.disposables.remove(cif3);
                    } else if (num == RIGHT_CLOSE) {
                        FlowableGroupJoin.Cif cif4 = (FlowableGroupJoin.Cif) objPoll;
                        this.rights.remove(Integer.valueOf(cif4.index));
                        this.disposables.remove(cif4);
                    }
                    z = true;
                }
            }
            e12Var.clear();
        }

        public void errorAll(Subscriber<?> subscriber) {
            Throwable thM29714for = Ccase.m29714for(this.error);
            this.lefts.clear();
            this.rights.clear();
            subscriber.onError(thM29714for);
        }

        public void fail(Throwable th, Subscriber<?> subscriber, SimpleQueue<?> simpleQueue) {
            t80.m7781if(th);
            Ccase.m29713do(this.error, th);
            simpleQueue.clear();
            cancelAll();
            errorAll(subscriber);
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableGroupJoin.JoinSupport
        public void innerClose(boolean z, FlowableGroupJoin.Cif cif) {
            synchronized (this) {
                this.queue.offer(z ? LEFT_CLOSE : RIGHT_CLOSE, cif);
            }
            drain();
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableGroupJoin.JoinSupport
        public void innerCloseError(Throwable th) {
            if (Ccase.m29713do(this.error, th)) {
                drain();
            } else {
                jp1.l(th);
            }
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableGroupJoin.JoinSupport
        public void innerComplete(FlowableGroupJoin.Cfor cfor) {
            this.disposables.delete(cfor);
            this.active.decrementAndGet();
            drain();
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableGroupJoin.JoinSupport
        public void innerError(Throwable th) {
            if (!Ccase.m29713do(this.error, th)) {
                jp1.l(th);
            } else {
                this.active.decrementAndGet();
                drain();
            }
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableGroupJoin.JoinSupport
        public void innerValue(boolean z, Object obj) {
            synchronized (this) {
                this.queue.offer(z ? LEFT_VALUE : RIGHT_VALUE, obj);
            }
            drain();
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            if (io.reactivex.internal.subscriptions.Cfor.validate(j)) {
                r6.m6775do(this.requested, j);
            }
        }
    }

    public x(Cfor<TLeft> cfor, Publisher<? extends TRight> publisher, Function<? super TLeft, ? extends Publisher<TLeftEnd>> function, Function<? super TRight, ? extends Publisher<TRightEnd>> function2, BiFunction<? super TLeft, ? super TRight, ? extends R> biFunction) {
        super(cfor);
        this.f26037for = publisher;
        this.f26038new = function;
        this.f26039try = function2;
        this.f26036case = biFunction;
    }

    @Override // io.reactivex.Cfor
    public void n5(Subscriber<? super R> subscriber) {
        Cdo cdo = new Cdo(subscriber, this.f26038new, this.f26039try, this.f26036case);
        subscriber.onSubscribe(cdo);
        FlowableGroupJoin.Cfor cfor = new FlowableGroupJoin.Cfor(cdo, true);
        cdo.disposables.add(cfor);
        FlowableGroupJoin.Cfor cfor2 = new FlowableGroupJoin.Cfor(cdo, false);
        cdo.disposables.add(cfor2);
        this.f25614if.m5(cfor);
        this.f26037for.subscribe(cfor2);
    }
}
