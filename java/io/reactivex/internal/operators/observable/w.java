package io.reactivex.internal.operators.observable;

import android.support.v4.cq;
import android.support.v4.e12;
import android.support.v4.jp1;
import android.support.v4.t80;
import io.reactivex.Cnew;
import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.BiFunction;
import io.reactivex.functions.Function;
import io.reactivex.internal.functions.Cif;
import io.reactivex.internal.operators.observable.ObservableGroupJoin;
import io.reactivex.internal.util.Ccase;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes3.dex */
public final class w<TLeft, TRight, TLeftEnd, TRightEnd, R> extends io.reactivex.internal.operators.observable.Cdo<TLeft, R> {

    /* renamed from: for, reason: not valid java name */
    public final Function<? super TLeft, ? extends ObservableSource<TLeftEnd>> f26977for;

    /* renamed from: if, reason: not valid java name */
    public final ObservableSource<? extends TRight> f26978if;

    /* renamed from: new, reason: not valid java name */
    public final Function<? super TRight, ? extends ObservableSource<TRightEnd>> f26979new;

    /* renamed from: try, reason: not valid java name */
    public final BiFunction<? super TLeft, ? super TRight, ? extends R> f26980try;

    /* renamed from: io.reactivex.internal.operators.observable.w$do, reason: invalid class name */
    public static final class Cdo<TLeft, TRight, TLeftEnd, TRightEnd, R> extends AtomicInteger implements Disposable, ObservableGroupJoin.JoinSupport {
        private static final long serialVersionUID = -6071216598687999801L;
        public volatile boolean cancelled;
        public final Observer<? super R> downstream;
        public final Function<? super TLeft, ? extends ObservableSource<TLeftEnd>> leftEnd;
        public int leftIndex;
        public final BiFunction<? super TLeft, ? super TRight, ? extends R> resultSelector;
        public final Function<? super TRight, ? extends ObservableSource<TRightEnd>> rightEnd;
        public int rightIndex;
        public static final Integer LEFT_VALUE = 1;
        public static final Integer RIGHT_VALUE = 2;
        public static final Integer LEFT_CLOSE = 3;
        public static final Integer RIGHT_CLOSE = 4;
        public final cq disposables = new cq();
        public final e12<Object> queue = new e12<>(Cnew.bufferSize());
        public final Map<Integer, TLeft> lefts = new LinkedHashMap();
        public final Map<Integer, TRight> rights = new LinkedHashMap();
        public final AtomicReference<Throwable> error = new AtomicReference<>();
        public final AtomicInteger active = new AtomicInteger(2);

        public Cdo(Observer<? super R> observer, Function<? super TLeft, ? extends ObservableSource<TLeftEnd>> function, Function<? super TRight, ? extends ObservableSource<TRightEnd>> function2, BiFunction<? super TLeft, ? super TRight, ? extends R> biFunction) {
            this.downstream = observer;
            this.leftEnd = function;
            this.rightEnd = function2;
            this.resultSelector = biFunction;
        }

        public void cancelAll() {
            this.disposables.dispose();
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            if (this.cancelled) {
                return;
            }
            this.cancelled = true;
            cancelAll();
            if (getAndIncrement() == 0) {
                this.queue.clear();
            }
        }

        public void drain() {
            if (getAndIncrement() != 0) {
                return;
            }
            e12<?> e12Var = this.queue;
            Observer<? super R> observer = this.downstream;
            int iAddAndGet = 1;
            while (!this.cancelled) {
                if (this.error.get() != null) {
                    e12Var.clear();
                    cancelAll();
                    errorAll(observer);
                    return;
                }
                boolean z = this.active.get() == 0;
                Integer num = (Integer) e12Var.poll();
                boolean z2 = num == null;
                if (z && z2) {
                    this.lefts.clear();
                    this.rights.clear();
                    this.disposables.dispose();
                    observer.onComplete();
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
                        int i = this.leftIndex;
                        this.leftIndex = i + 1;
                        this.lefts.put(Integer.valueOf(i), objPoll);
                        try {
                            ObservableSource observableSource = (ObservableSource) Cif.m29468else(this.leftEnd.apply(objPoll), "The leftEnd returned a null ObservableSource");
                            ObservableGroupJoin.Cif cif = new ObservableGroupJoin.Cif(this, true, i);
                            this.disposables.add(cif);
                            observableSource.subscribe(cif);
                            if (this.error.get() != null) {
                                e12Var.clear();
                                cancelAll();
                                errorAll(observer);
                                return;
                            } else {
                                Iterator<TRight> it = this.rights.values().iterator();
                                while (it.hasNext()) {
                                    try {
                                        observer.onNext((Object) Cif.m29468else(this.resultSelector.apply(objPoll, it.next()), "The resultSelector returned a null value"));
                                    } catch (Throwable th) {
                                        fail(th, observer, e12Var);
                                        return;
                                    }
                                }
                            }
                        } catch (Throwable th2) {
                            fail(th2, observer, e12Var);
                            return;
                        }
                    } else if (num == RIGHT_VALUE) {
                        int i2 = this.rightIndex;
                        this.rightIndex = i2 + 1;
                        this.rights.put(Integer.valueOf(i2), objPoll);
                        try {
                            ObservableSource observableSource2 = (ObservableSource) Cif.m29468else(this.rightEnd.apply(objPoll), "The rightEnd returned a null ObservableSource");
                            ObservableGroupJoin.Cif cif2 = new ObservableGroupJoin.Cif(this, false, i2);
                            this.disposables.add(cif2);
                            observableSource2.subscribe(cif2);
                            if (this.error.get() != null) {
                                e12Var.clear();
                                cancelAll();
                                errorAll(observer);
                                return;
                            } else {
                                Iterator<TLeft> it2 = this.lefts.values().iterator();
                                while (it2.hasNext()) {
                                    try {
                                        observer.onNext((Object) Cif.m29468else(this.resultSelector.apply(it2.next(), objPoll), "The resultSelector returned a null value"));
                                    } catch (Throwable th3) {
                                        fail(th3, observer, e12Var);
                                        return;
                                    }
                                }
                            }
                        } catch (Throwable th4) {
                            fail(th4, observer, e12Var);
                            return;
                        }
                    } else if (num == LEFT_CLOSE) {
                        ObservableGroupJoin.Cif cif3 = (ObservableGroupJoin.Cif) objPoll;
                        this.lefts.remove(Integer.valueOf(cif3.index));
                        this.disposables.remove(cif3);
                    } else {
                        ObservableGroupJoin.Cif cif4 = (ObservableGroupJoin.Cif) objPoll;
                        this.rights.remove(Integer.valueOf(cif4.index));
                        this.disposables.remove(cif4);
                    }
                }
            }
            e12Var.clear();
        }

        public void errorAll(Observer<?> observer) {
            Throwable thM29714for = Ccase.m29714for(this.error);
            this.lefts.clear();
            this.rights.clear();
            observer.onError(thM29714for);
        }

        public void fail(Throwable th, Observer<?> observer, e12<?> e12Var) {
            t80.m7781if(th);
            Ccase.m29713do(this.error, th);
            e12Var.clear();
            cancelAll();
            errorAll(observer);
        }

        @Override // io.reactivex.internal.operators.observable.ObservableGroupJoin.JoinSupport
        public void innerClose(boolean z, ObservableGroupJoin.Cif cif) {
            synchronized (this) {
                this.queue.offer(z ? LEFT_CLOSE : RIGHT_CLOSE, cif);
            }
            drain();
        }

        @Override // io.reactivex.internal.operators.observable.ObservableGroupJoin.JoinSupport
        public void innerCloseError(Throwable th) {
            if (Ccase.m29713do(this.error, th)) {
                drain();
            } else {
                jp1.l(th);
            }
        }

        @Override // io.reactivex.internal.operators.observable.ObservableGroupJoin.JoinSupport
        public void innerComplete(ObservableGroupJoin.Cfor cfor) {
            this.disposables.delete(cfor);
            this.active.decrementAndGet();
            drain();
        }

        @Override // io.reactivex.internal.operators.observable.ObservableGroupJoin.JoinSupport
        public void innerError(Throwable th) {
            if (!Ccase.m29713do(this.error, th)) {
                jp1.l(th);
            } else {
                this.active.decrementAndGet();
                drain();
            }
        }

        @Override // io.reactivex.internal.operators.observable.ObservableGroupJoin.JoinSupport
        public void innerValue(boolean z, Object obj) {
            synchronized (this) {
                this.queue.offer(z ? LEFT_VALUE : RIGHT_VALUE, obj);
            }
            drain();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.cancelled;
        }
    }

    public w(ObservableSource<TLeft> observableSource, ObservableSource<? extends TRight> observableSource2, Function<? super TLeft, ? extends ObservableSource<TLeftEnd>> function, Function<? super TRight, ? extends ObservableSource<TRightEnd>> function2, BiFunction<? super TLeft, ? super TRight, ? extends R> biFunction) {
        super(observableSource);
        this.f26978if = observableSource2;
        this.f26977for = function;
        this.f26979new = function2;
        this.f26980try = biFunction;
    }

    @Override // io.reactivex.Cnew
    public void subscribeActual(Observer<? super R> observer) {
        Cdo cdo = new Cdo(observer, this.f26977for, this.f26979new, this.f26980try);
        observer.onSubscribe(cdo);
        ObservableGroupJoin.Cfor cfor = new ObservableGroupJoin.Cfor(cdo, true);
        cdo.disposables.add(cfor);
        ObservableGroupJoin.Cfor cfor2 = new ObservableGroupJoin.Cfor(cdo, false);
        cdo.disposables.add(cfor2);
        this.f26500do.subscribe(cfor);
        this.f26978if.subscribe(cfor2);
    }
}
