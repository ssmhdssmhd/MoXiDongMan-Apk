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
import io.reactivex.internal.util.Ccase;
import io.reactivex.subjects.Cthis;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes3.dex */
public final class ObservableGroupJoin<TLeft, TRight, TLeftEnd, TRightEnd, R> extends io.reactivex.internal.operators.observable.Cdo<TLeft, R> {

    /* renamed from: for, reason: not valid java name */
    public final Function<? super TLeft, ? extends ObservableSource<TLeftEnd>> f26335for;

    /* renamed from: if, reason: not valid java name */
    public final ObservableSource<? extends TRight> f26336if;

    /* renamed from: new, reason: not valid java name */
    public final Function<? super TRight, ? extends ObservableSource<TRightEnd>> f26337new;

    /* renamed from: try, reason: not valid java name */
    public final BiFunction<? super TLeft, ? super Cnew<TRight>, ? extends R> f26338try;

    public interface JoinSupport {
        void innerClose(boolean z, Cif cif);

        void innerCloseError(Throwable th);

        void innerComplete(Cfor cfor);

        void innerError(Throwable th);

        void innerValue(boolean z, Object obj);
    }

    /* renamed from: io.reactivex.internal.operators.observable.ObservableGroupJoin$do, reason: invalid class name */
    public static final class Cdo<TLeft, TRight, TLeftEnd, TRightEnd, R> extends AtomicInteger implements Disposable, JoinSupport {
        private static final long serialVersionUID = -6071216598687999801L;
        public volatile boolean cancelled;
        public final Observer<? super R> downstream;
        public final Function<? super TLeft, ? extends ObservableSource<TLeftEnd>> leftEnd;
        public int leftIndex;
        public final BiFunction<? super TLeft, ? super Cnew<TRight>, ? extends R> resultSelector;
        public final Function<? super TRight, ? extends ObservableSource<TRightEnd>> rightEnd;
        public int rightIndex;
        public static final Integer LEFT_VALUE = 1;
        public static final Integer RIGHT_VALUE = 2;
        public static final Integer LEFT_CLOSE = 3;
        public static final Integer RIGHT_CLOSE = 4;
        public final cq disposables = new cq();
        public final e12<Object> queue = new e12<>(Cnew.bufferSize());
        public final Map<Integer, Cthis<TRight>> lefts = new LinkedHashMap();
        public final Map<Integer, TRight> rights = new LinkedHashMap();
        public final AtomicReference<Throwable> error = new AtomicReference<>();
        public final AtomicInteger active = new AtomicInteger(2);

        public Cdo(Observer<? super R> observer, Function<? super TLeft, ? extends ObservableSource<TLeftEnd>> function, Function<? super TRight, ? extends ObservableSource<TRightEnd>> function2, BiFunction<? super TLeft, ? super Cnew<TRight>, ? extends R> biFunction) {
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
                    Iterator<Cthis<TRight>> it = this.lefts.values().iterator();
                    while (it.hasNext()) {
                        it.next().onComplete();
                    }
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
                        Cthis cthisM29830case = Cthis.m29830case();
                        int i = this.leftIndex;
                        this.leftIndex = i + 1;
                        this.lefts.put(Integer.valueOf(i), cthisM29830case);
                        try {
                            ObservableSource observableSource = (ObservableSource) io.reactivex.internal.functions.Cif.m29468else(this.leftEnd.apply(objPoll), "The leftEnd returned a null ObservableSource");
                            Cif cif = new Cif(this, true, i);
                            this.disposables.add(cif);
                            observableSource.subscribe(cif);
                            if (this.error.get() != null) {
                                e12Var.clear();
                                cancelAll();
                                errorAll(observer);
                                return;
                            } else {
                                try {
                                    observer.onNext((Object) io.reactivex.internal.functions.Cif.m29468else(this.resultSelector.apply(objPoll, cthisM29830case), "The resultSelector returned a null value"));
                                    Iterator<TRight> it2 = this.rights.values().iterator();
                                    while (it2.hasNext()) {
                                        cthisM29830case.onNext(it2.next());
                                    }
                                } catch (Throwable th) {
                                    fail(th, observer, e12Var);
                                    return;
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
                            ObservableSource observableSource2 = (ObservableSource) io.reactivex.internal.functions.Cif.m29468else(this.rightEnd.apply(objPoll), "The rightEnd returned a null ObservableSource");
                            Cif cif2 = new Cif(this, false, i2);
                            this.disposables.add(cif2);
                            observableSource2.subscribe(cif2);
                            if (this.error.get() != null) {
                                e12Var.clear();
                                cancelAll();
                                errorAll(observer);
                                return;
                            } else {
                                Iterator<Cthis<TRight>> it3 = this.lefts.values().iterator();
                                while (it3.hasNext()) {
                                    it3.next().onNext(objPoll);
                                }
                            }
                        } catch (Throwable th3) {
                            fail(th3, observer, e12Var);
                            return;
                        }
                    } else if (num == LEFT_CLOSE) {
                        Cif cif3 = (Cif) objPoll;
                        Cthis<TRight> cthisRemove = this.lefts.remove(Integer.valueOf(cif3.index));
                        this.disposables.remove(cif3);
                        if (cthisRemove != null) {
                            cthisRemove.onComplete();
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

        public void errorAll(Observer<?> observer) {
            Throwable thM29714for = Ccase.m29714for(this.error);
            Iterator<Cthis<TRight>> it = this.lefts.values().iterator();
            while (it.hasNext()) {
                it.next().onError(thM29714for);
            }
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
        public void innerClose(boolean z, Cif cif) {
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
        public void innerComplete(Cfor cfor) {
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

    /* renamed from: io.reactivex.internal.operators.observable.ObservableGroupJoin$for, reason: invalid class name */
    public static final class Cfor extends AtomicReference<Disposable> implements Observer<Object>, Disposable {
        private static final long serialVersionUID = 1883890389173668373L;
        public final boolean isLeft;
        public final JoinSupport parent;

        public Cfor(JoinSupport joinSupport, boolean z) {
            this.parent = joinSupport;
            this.isLeft = z;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            io.reactivex.internal.disposables.Cdo.dispose(this);
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return io.reactivex.internal.disposables.Cdo.isDisposed(get());
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            this.parent.innerComplete(this);
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            this.parent.innerError(th);
        }

        @Override // io.reactivex.Observer
        public void onNext(Object obj) {
            this.parent.innerValue(this.isLeft, obj);
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            io.reactivex.internal.disposables.Cdo.setOnce(this, disposable);
        }
    }

    /* renamed from: io.reactivex.internal.operators.observable.ObservableGroupJoin$if, reason: invalid class name */
    public static final class Cif extends AtomicReference<Disposable> implements Observer<Object>, Disposable {
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
            io.reactivex.internal.disposables.Cdo.dispose(this);
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return io.reactivex.internal.disposables.Cdo.isDisposed(get());
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            this.parent.innerClose(this.isLeft, this);
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            this.parent.innerCloseError(th);
        }

        @Override // io.reactivex.Observer
        public void onNext(Object obj) {
            if (io.reactivex.internal.disposables.Cdo.dispose(this)) {
                this.parent.innerClose(this.isLeft, this);
            }
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            io.reactivex.internal.disposables.Cdo.setOnce(this, disposable);
        }
    }

    public ObservableGroupJoin(ObservableSource<TLeft> observableSource, ObservableSource<? extends TRight> observableSource2, Function<? super TLeft, ? extends ObservableSource<TLeftEnd>> function, Function<? super TRight, ? extends ObservableSource<TRightEnd>> function2, BiFunction<? super TLeft, ? super Cnew<TRight>, ? extends R> biFunction) {
        super(observableSource);
        this.f26336if = observableSource2;
        this.f26335for = function;
        this.f26337new = function2;
        this.f26338try = biFunction;
    }

    @Override // io.reactivex.Cnew
    public void subscribeActual(Observer<? super R> observer) {
        Cdo cdo = new Cdo(observer, this.f26335for, this.f26337new, this.f26338try);
        observer.onSubscribe(cdo);
        Cfor cfor = new Cfor(cdo, true);
        cdo.disposables.add(cfor);
        Cfor cfor2 = new Cfor(cdo, false);
        cdo.disposables.add(cfor2);
        this.f26500do.subscribe(cfor);
        this.f26336if.subscribe(cfor2);
    }
}
