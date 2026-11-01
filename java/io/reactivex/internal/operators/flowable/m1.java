package io.reactivex.internal.operators.flowable;

import android.support.v4.h4;
import android.support.v4.jp1;
import android.support.v4.jz1;
import android.support.v4.t80;
import io.reactivex.SingleObserver;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.BiPredicate;
import io.reactivex.internal.fuseable.FuseToFlowable;
import io.reactivex.internal.fuseable.SimpleQueue;
import io.reactivex.internal.operators.flowable.FlowableSequenceEqual;
import io.reactivex.internal.subscriptions.Cfor;
import java.util.concurrent.atomic.AtomicInteger;
import org.reactivestreams.Publisher;

/* loaded from: classes3.dex */
public final class m1<T> extends jz1<Boolean> implements FuseToFlowable<Boolean> {

    /* renamed from: do, reason: not valid java name */
    public final Publisher<? extends T> f25745do;

    /* renamed from: for, reason: not valid java name */
    public final BiPredicate<? super T, ? super T> f25746for;

    /* renamed from: if, reason: not valid java name */
    public final Publisher<? extends T> f25747if;

    /* renamed from: new, reason: not valid java name */
    public final int f25748new;

    /* renamed from: io.reactivex.internal.operators.flowable.m1$do, reason: invalid class name */
    public static final class Cdo<T> extends AtomicInteger implements Disposable, FlowableSequenceEqual.EqualCoordinatorHelper {
        private static final long serialVersionUID = -6178010334400373240L;
        public final BiPredicate<? super T, ? super T> comparer;
        public final SingleObserver<? super Boolean> downstream;
        public final h4 error = new h4();
        public final FlowableSequenceEqual.Cif<T> first;
        public final FlowableSequenceEqual.Cif<T> second;
        public T v1;
        public T v2;

        public Cdo(SingleObserver<? super Boolean> singleObserver, int i, BiPredicate<? super T, ? super T> biPredicate) {
            this.downstream = singleObserver;
            this.comparer = biPredicate;
            this.first = new FlowableSequenceEqual.Cif<>(this, i);
            this.second = new FlowableSequenceEqual.Cif<>(this, i);
        }

        public void cancelAndClear() {
            this.first.cancel();
            this.first.clear();
            this.second.cancel();
            this.second.clear();
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.first.cancel();
            this.second.cancel();
            if (getAndIncrement() == 0) {
                this.first.clear();
                this.second.clear();
            }
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableSequenceEqual.EqualCoordinatorHelper
        public void drain() {
            if (getAndIncrement() != 0) {
                return;
            }
            int iAddAndGet = 1;
            do {
                SimpleQueue<T> simpleQueue = this.first.queue;
                SimpleQueue<T> simpleQueue2 = this.second.queue;
                if (simpleQueue != null && simpleQueue2 != null) {
                    while (!isDisposed()) {
                        if (this.error.get() != null) {
                            cancelAndClear();
                            this.downstream.onError(this.error.terminate());
                            return;
                        }
                        boolean z = this.first.done;
                        T tPoll = this.v1;
                        if (tPoll == null) {
                            try {
                                tPoll = simpleQueue.poll();
                                this.v1 = tPoll;
                            } catch (Throwable th) {
                                t80.m7781if(th);
                                cancelAndClear();
                                this.error.addThrowable(th);
                                this.downstream.onError(this.error.terminate());
                                return;
                            }
                        }
                        boolean z2 = tPoll == null;
                        boolean z3 = this.second.done;
                        T tPoll2 = this.v2;
                        if (tPoll2 == null) {
                            try {
                                tPoll2 = simpleQueue2.poll();
                                this.v2 = tPoll2;
                            } catch (Throwable th2) {
                                t80.m7781if(th2);
                                cancelAndClear();
                                this.error.addThrowable(th2);
                                this.downstream.onError(this.error.terminate());
                                return;
                            }
                        }
                        boolean z4 = tPoll2 == null;
                        if (z && z3 && z2 && z4) {
                            this.downstream.onSuccess(Boolean.TRUE);
                            return;
                        }
                        if (z && z3 && z2 != z4) {
                            cancelAndClear();
                            this.downstream.onSuccess(Boolean.FALSE);
                            return;
                        }
                        if (!z2 && !z4) {
                            try {
                                if (!this.comparer.test(tPoll, tPoll2)) {
                                    cancelAndClear();
                                    this.downstream.onSuccess(Boolean.FALSE);
                                    return;
                                } else {
                                    this.v1 = null;
                                    this.v2 = null;
                                    this.first.request();
                                    this.second.request();
                                }
                            } catch (Throwable th3) {
                                t80.m7781if(th3);
                                cancelAndClear();
                                this.error.addThrowable(th3);
                                this.downstream.onError(this.error.terminate());
                                return;
                            }
                        }
                    }
                    this.first.clear();
                    this.second.clear();
                    return;
                }
                if (isDisposed()) {
                    this.first.clear();
                    this.second.clear();
                    return;
                } else if (this.error.get() != null) {
                    cancelAndClear();
                    this.downstream.onError(this.error.terminate());
                    return;
                }
                iAddAndGet = addAndGet(-iAddAndGet);
            } while (iAddAndGet != 0);
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableSequenceEqual.EqualCoordinatorHelper
        public void innerError(Throwable th) {
            if (this.error.addThrowable(th)) {
                drain();
            } else {
                jp1.l(th);
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.first.get() == Cfor.CANCELLED;
        }

        public void subscribe(Publisher<? extends T> publisher, Publisher<? extends T> publisher2) {
            publisher.subscribe(this.first);
            publisher2.subscribe(this.second);
        }
    }

    public m1(Publisher<? extends T> publisher, Publisher<? extends T> publisher2, BiPredicate<? super T, ? super T> biPredicate, int i) {
        this.f25745do = publisher;
        this.f25747if = publisher2;
        this.f25746for = biPredicate;
        this.f25748new = i;
    }

    @Override // io.reactivex.internal.fuseable.FuseToFlowable
    public io.reactivex.Cfor<Boolean> fuseToFlowable() {
        return jp1.h(new FlowableSequenceEqual(this.f25745do, this.f25747if, this.f25746for, this.f25748new));
    }

    @Override // android.support.v4.jz1
    public void g0(SingleObserver<? super Boolean> singleObserver) {
        Cdo cdo = new Cdo(singleObserver, this.f25748new, this.f25746for);
        singleObserver.onSubscribe(cdo);
        cdo.subscribe(this.f25745do, this.f25747if);
    }
}
