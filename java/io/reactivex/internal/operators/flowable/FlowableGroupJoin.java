package io.reactivex.internal.operators.flowable;

import android.R;
import android.support.v4.a01;
import android.support.v4.cq;
import android.support.v4.e12;
import android.support.v4.jp1;
import android.support.v4.r6;
import android.support.v4.t80;
import io.reactivex.FlowableSubscriber;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.BiFunction;
import io.reactivex.functions.Function;
import io.reactivex.internal.fuseable.SimpleQueue;
import io.reactivex.internal.util.Ccase;
import io.reactivex.processors.Celse;
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
public final class FlowableGroupJoin<TLeft, TRight, TLeftEnd, TRightEnd, R> extends io.reactivex.internal.operators.flowable.Cdo<TLeft, R> {

    /* renamed from: case, reason: not valid java name */
    public final BiFunction<? super TLeft, ? super io.reactivex.Cfor<TRight>, ? extends R> f25481case;

    /* renamed from: for, reason: not valid java name */
    public final Publisher<? extends TRight> f25482for;

    /* renamed from: new, reason: not valid java name */
    public final Function<? super TLeft, ? extends Publisher<TLeftEnd>> f25483new;

    /* renamed from: try, reason: not valid java name */
    public final Function<? super TRight, ? extends Publisher<TRightEnd>> f25484try;

    public interface JoinSupport {
        void innerClose(boolean z, Cif cif);

        void innerCloseError(Throwable th);

        void innerComplete(Cfor cfor);

        void innerError(Throwable th);

        void innerValue(boolean z, Object obj);
    }

    /* renamed from: io.reactivex.internal.operators.flowable.FlowableGroupJoin$do, reason: invalid class name */
    public static final class Cdo<TLeft, TRight, TLeftEnd, TRightEnd, R> extends AtomicInteger implements Subscription, JoinSupport {
        private static final long serialVersionUID = -6071216598687999801L;
        public volatile boolean cancelled;
        public final Subscriber<? super R> downstream;
        public final Function<? super TLeft, ? extends Publisher<TLeftEnd>> leftEnd;
        public int leftIndex;
        public final BiFunction<? super TLeft, ? super io.reactivex.Cfor<TRight>, ? extends R> resultSelector;
        public final Function<? super TRight, ? extends Publisher<TRightEnd>> rightEnd;
        public int rightIndex;
        public static final Integer LEFT_VALUE = 1;
        public static final Integer RIGHT_VALUE = 2;
        public static final Integer LEFT_CLOSE = 3;
        public static final Integer RIGHT_CLOSE = 4;
        public final AtomicLong requested = new AtomicLong();
        public final cq disposables = new cq();
        public final e12<Object> queue = new e12<>(io.reactivex.Cfor.g());
        public final Map<Integer, Celse<TRight>> lefts = new LinkedHashMap();
        public final Map<Integer, TRight> rights = new LinkedHashMap();
        public final AtomicReference<Throwable> error = new AtomicReference<>();
        public final AtomicInteger active = new AtomicInteger(2);

        public Cdo(Subscriber<? super R> subscriber, Function<? super TLeft, ? extends Publisher<TLeftEnd>> function, Function<? super TRight, ? extends Publisher<TRightEnd>> function2, BiFunction<? super TLeft, ? super io.reactivex.Cfor<TRight>, ? extends R> biFunction) {
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
            int iAddAndGet = 1;
            while (!this.cancelled) {
                if (this.error.get() != null) {
                    e12Var.clear();
                    cancelAll();
                    errorAll(subscriber);
                    return;
                }
                boolean z = this.active.get() == 0;
                Integer num = (Integer) e12Var.poll();
                boolean z2 = num == null;
                if (z && z2) {
                    Iterator<Celse<TRight>> it = this.lefts.values().iterator();
                    while (it.hasNext()) {
                        it.next().onComplete();
                    }
                    this.lefts.clear();
                    this.rights.clear();
                    this.disposables.dispose();
                    subscriber.onComplete();
                    return;
                }
                if (z2) {
                    iAddAndGet = addAndGet(-iAddAndGet);
                    if (iAddAndGet == 0) {
                        return;
                    }
                } else {
                    Object objPoll = e12Var.poll();
                    if (num == LEFT_VALUE) {
                        Celse celseR7 = Celse.R7();
                        int i = this.leftIndex;
                        this.leftIndex = i + 1;
                        this.lefts.put(Integer.valueOf(i), celseR7);
                        try {
                            Publisher publisher = (Publisher) io.reactivex.internal.functions.Cif.m29468else(this.leftEnd.apply(objPoll), "The leftEnd returned a null Publisher");
                            Cif cif = new Cif(this, true, i);
                            this.disposables.add(cif);
                            publisher.subscribe(cif);
                            if (this.error.get() != null) {
                                e12Var.clear();
                                cancelAll();
                                errorAll(subscriber);
                                return;
                            }
                            try {
                                R.bool boolVar = (Object) io.reactivex.internal.functions.Cif.m29468else(this.resultSelector.apply(objPoll, celseR7), "The resultSelector returned a null value");
                                if (this.requested.get() == 0) {
                                    fail(new a01("Could not emit value due to lack of requests"), subscriber, e12Var);
                                    return;
                                }
                                subscriber.onNext(boolVar);
                                r6.m6779try(this.requested, 1L);
                                Iterator<TRight> it2 = this.rights.values().iterator();
                                while (it2.hasNext()) {
                                    celseR7.onNext(it2.next());
                                }
                            } catch (Throwable th) {
                                fail(th, subscriber, e12Var);
                                return;
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
                            Publisher publisher2 = (Publisher) io.reactivex.internal.functions.Cif.m29468else(this.rightEnd.apply(objPoll), "The rightEnd returned a null Publisher");
                            Cif cif2 = new Cif(this, false, i2);
                            this.disposables.add(cif2);
                            publisher2.subscribe(cif2);
                            if (this.error.get() != null) {
                                e12Var.clear();
                                cancelAll();
                                errorAll(subscriber);
                                return;
                            } else {
                                Iterator<Celse<TRight>> it3 = this.lefts.values().iterator();
                                while (it3.hasNext()) {
                                    it3.next().onNext(objPoll);
                                }
                            }
                        } catch (Throwable th3) {
                            fail(th3, subscriber, e12Var);
                            return;
                        }
                    } else if (num == LEFT_CLOSE) {
                        Cif cif3 = (Cif) objPoll;
                        Celse<TRight> celseRemove = this.lefts.remove(Integer.valueOf(cif3.index));
                        this.disposables.remove(cif3);
                        if (celseRemove != null) {
                            celseRemove.onComplete();
                        }
                    } else if (num == RIGHT_CLOSE) {
                        Cif cif4 = (Cif) objPoll;
                        this.rights.remove(Integer.valueOf(cif4.index));
                        this.disposables.remove(cif4);
                    }
                }
            }
            e12Var.clear();
        }

        public void errorAll(Subscriber<?> subscriber) {
            Throwable thM29714for = Ccase.m29714for(this.error);
            Iterator<Celse<TRight>> it = this.lefts.values().iterator();
            while (it.hasNext()) {
                it.next().onError(thM29714for);
            }
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
        public void innerClose(boolean z, Cif cif) {
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
        public void innerComplete(Cfor cfor) {
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

    /* renamed from: io.reactivex.internal.operators.flowable.FlowableGroupJoin$for, reason: invalid class name */
    public static final class Cfor extends AtomicReference<Subscription> implements FlowableSubscriber<Object>, Disposable {
        private static final long serialVersionUID = 1883890389173668373L;
        public final boolean isLeft;
        public final JoinSupport parent;

        public Cfor(JoinSupport joinSupport, boolean z) {
            this.parent = joinSupport;
            this.isLeft = z;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            io.reactivex.internal.subscriptions.Cfor.cancel(this);
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return get() == io.reactivex.internal.subscriptions.Cfor.CANCELLED;
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            this.parent.innerComplete(this);
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            this.parent.innerError(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(Object obj) {
            this.parent.innerValue(this.isLeft, obj);
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            io.reactivex.internal.subscriptions.Cfor.setOnce(this, subscription, Long.MAX_VALUE);
        }
    }

    /* renamed from: io.reactivex.internal.operators.flowable.FlowableGroupJoin$if, reason: invalid class name */
    public static final class Cif extends AtomicReference<Subscription> implements FlowableSubscriber<Object>, Disposable {
        private static final long serialVersionUID = 1883890389173668373L;
        public final int index;
        public final boolean isLeft;
        public final JoinSupport parent;

        public Cif(JoinSupport joinSupport, boolean z, int i) {
            this.parent = joinSupport;
            this.isLeft = z;
            this.index = i;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            io.reactivex.internal.subscriptions.Cfor.cancel(this);
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return get() == io.reactivex.internal.subscriptions.Cfor.CANCELLED;
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            this.parent.innerClose(this.isLeft, this);
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            this.parent.innerCloseError(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(Object obj) {
            if (io.reactivex.internal.subscriptions.Cfor.cancel(this)) {
                this.parent.innerClose(this.isLeft, this);
            }
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            io.reactivex.internal.subscriptions.Cfor.setOnce(this, subscription, Long.MAX_VALUE);
        }
    }

    public FlowableGroupJoin(io.reactivex.Cfor<TLeft> cfor, Publisher<? extends TRight> publisher, Function<? super TLeft, ? extends Publisher<TLeftEnd>> function, Function<? super TRight, ? extends Publisher<TRightEnd>> function2, BiFunction<? super TLeft, ? super io.reactivex.Cfor<TRight>, ? extends R> biFunction) {
        super(cfor);
        this.f25482for = publisher;
        this.f25483new = function;
        this.f25484try = function2;
        this.f25481case = biFunction;
    }

    @Override // io.reactivex.Cfor
    public void n5(Subscriber<? super R> subscriber) {
        Cdo cdo = new Cdo(subscriber, this.f25483new, this.f25484try, this.f25481case);
        subscriber.onSubscribe(cdo);
        Cfor cfor = new Cfor(cdo, true);
        cdo.disposables.add(cfor);
        Cfor cfor2 = new Cfor(cdo, false);
        cdo.disposables.add(cfor2);
        this.f25614if.m5(cfor);
        this.f25482for.subscribe(cfor2);
    }
}
