package io.reactivex.internal.operators.observable;

import android.support.v4.b12;
import android.support.v4.e12;
import android.support.v4.h4;
import android.support.v4.jp1;
import android.support.v4.t80;
import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Function;
import io.reactivex.internal.fuseable.QueueDisposable;
import io.reactivex.internal.fuseable.SimplePlainQueue;
import io.reactivex.internal.fuseable.SimpleQueue;
import io.reactivex.internal.util.Ccase;
import java.util.ArrayDeque;
import java.util.Queue;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes3.dex */
public final class e<T, U> extends io.reactivex.internal.operators.observable.Cdo<T, U> {

    /* renamed from: for, reason: not valid java name */
    public final boolean f26501for;

    /* renamed from: if, reason: not valid java name */
    public final Function<? super T, ? extends ObservableSource<? extends U>> f26502if;

    /* renamed from: new, reason: not valid java name */
    public final int f26503new;

    /* renamed from: try, reason: not valid java name */
    public final int f26504try;

    /* renamed from: io.reactivex.internal.operators.observable.e$do, reason: invalid class name */
    public static final class Cdo<T, U> extends AtomicReference<Disposable> implements Observer<U> {
        private static final long serialVersionUID = -4606175640614850599L;
        public volatile boolean done;
        public int fusionMode;
        public final long id;
        public final Cif<T, U> parent;
        public volatile SimpleQueue<U> queue;

        public Cdo(Cif<T, U> cif, long j) {
            this.id = j;
            this.parent = cif;
        }

        public void dispose() {
            io.reactivex.internal.disposables.Cdo.dispose(this);
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            this.done = true;
            this.parent.drain();
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            if (!this.parent.errors.addThrowable(th)) {
                jp1.l(th);
                return;
            }
            Cif<T, U> cif = this.parent;
            if (!cif.delayErrors) {
                cif.disposeAll();
            }
            this.done = true;
            this.parent.drain();
        }

        @Override // io.reactivex.Observer
        public void onNext(U u) {
            if (this.fusionMode == 0) {
                this.parent.tryEmit(u, this);
            } else {
                this.parent.drain();
            }
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            if (io.reactivex.internal.disposables.Cdo.setOnce(this, disposable) && (disposable instanceof QueueDisposable)) {
                QueueDisposable queueDisposable = (QueueDisposable) disposable;
                int iRequestFusion = queueDisposable.requestFusion(7);
                if (iRequestFusion == 1) {
                    this.fusionMode = iRequestFusion;
                    this.queue = queueDisposable;
                    this.done = true;
                    this.parent.drain();
                    return;
                }
                if (iRequestFusion == 2) {
                    this.fusionMode = iRequestFusion;
                    this.queue = queueDisposable;
                }
            }
        }
    }

    /* renamed from: io.reactivex.internal.operators.observable.e$if, reason: invalid class name */
    public static final class Cif<T, U> extends AtomicInteger implements Disposable, Observer<T> {
        private static final long serialVersionUID = -2117620485640801370L;
        public final int bufferSize;
        public volatile boolean cancelled;
        public final boolean delayErrors;
        public volatile boolean done;
        public final Observer<? super U> downstream;
        public final h4 errors = new h4();
        public long lastId;
        public int lastIndex;
        public final Function<? super T, ? extends ObservableSource<? extends U>> mapper;
        public final int maxConcurrency;
        public final AtomicReference<Cdo<?, ?>[]> observers;
        public volatile SimplePlainQueue<U> queue;
        public Queue<ObservableSource<? extends U>> sources;
        public long uniqueId;
        public Disposable upstream;
        public int wip;
        public static final Cdo<?, ?>[] EMPTY = new Cdo[0];
        public static final Cdo<?, ?>[] CANCELLED = new Cdo[0];

        public Cif(Observer<? super U> observer, Function<? super T, ? extends ObservableSource<? extends U>> function, boolean z, int i, int i2) {
            this.downstream = observer;
            this.mapper = function;
            this.delayErrors = z;
            this.maxConcurrency = i;
            this.bufferSize = i2;
            if (i != Integer.MAX_VALUE) {
                this.sources = new ArrayDeque(i);
            }
            this.observers = new AtomicReference<>(EMPTY);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public boolean addInner(Cdo<T, U> cdo) {
            Cdo<?, ?>[] cdoArr;
            Cdo[] cdoArr2;
            do {
                cdoArr = this.observers.get();
                if (cdoArr == CANCELLED) {
                    cdo.dispose();
                    return false;
                }
                int length = cdoArr.length;
                cdoArr2 = new Cdo[length + 1];
                System.arraycopy(cdoArr, 0, cdoArr2, 0, length);
                cdoArr2[length] = cdo;
            } while (!this.observers.compareAndSet(cdoArr, cdoArr2));
            return true;
        }

        public boolean checkTerminate() {
            if (this.cancelled) {
                return true;
            }
            Throwable th = this.errors.get();
            if (this.delayErrors || th == null) {
                return false;
            }
            disposeAll();
            Throwable thTerminate = this.errors.terminate();
            if (thTerminate != Ccase.f27435do) {
                this.downstream.onError(thTerminate);
            }
            return true;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            Throwable thTerminate;
            if (this.cancelled) {
                return;
            }
            this.cancelled = true;
            if (!disposeAll() || (thTerminate = this.errors.terminate()) == null || thTerminate == Ccase.f27435do) {
                return;
            }
            jp1.l(thTerminate);
        }

        public boolean disposeAll() {
            Cdo<?, ?>[] andSet;
            this.upstream.dispose();
            Cdo<?, ?>[] cdoArr = this.observers.get();
            Cdo<?, ?>[] cdoArr2 = CANCELLED;
            if (cdoArr == cdoArr2 || (andSet = this.observers.getAndSet(cdoArr2)) == cdoArr2) {
                return false;
            }
            for (Cdo<?, ?> cdo : andSet) {
                cdo.dispose();
            }
            return true;
        }

        public void drain() {
            if (getAndIncrement() == 0) {
                drainLoop();
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:128:0x0004, code lost:
        
            continue;
         */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:120:0x00ea A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:133:0x00f2 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:82:0x00eb  */
        /* JADX WARN: Removed duplicated region for block: B:85:0x00f1 A[PHI: r4
          0x00f1: PHI (r4v10 int) = (r4v8 int), (r4v11 int) binds: [B:72:0x00d0, B:84:0x00ef] A[DONT_GENERATE, DONT_INLINE]] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void drainLoop() {
            int size;
            U uPoll;
            boolean z;
            Observer<? super U> observer = this.downstream;
            int iAddAndGet = 1;
            while (!checkTerminate()) {
                SimplePlainQueue<U> simplePlainQueue = this.queue;
                if (simplePlainQueue != null) {
                    while (!checkTerminate()) {
                        U uPoll2 = simplePlainQueue.poll();
                        if (uPoll2 != null) {
                            observer.onNext(uPoll2);
                        }
                    }
                    return;
                }
                boolean z2 = this.done;
                SimplePlainQueue<U> simplePlainQueue2 = this.queue;
                Cdo<?, ?>[] cdoArr = this.observers.get();
                int length = cdoArr.length;
                int i = 0;
                if (this.maxConcurrency != Integer.MAX_VALUE) {
                    synchronized (this) {
                        size = this.sources.size();
                    }
                } else {
                    size = 0;
                }
                if (z2 && ((simplePlainQueue2 == null || simplePlainQueue2.isEmpty()) && length == 0 && size == 0)) {
                    Throwable thTerminate = this.errors.terminate();
                    if (thTerminate != Ccase.f27435do) {
                        if (thTerminate == null) {
                            observer.onComplete();
                            return;
                        } else {
                            observer.onError(thTerminate);
                            return;
                        }
                    }
                    return;
                }
                if (length != 0) {
                    long j = this.lastId;
                    int i2 = this.lastIndex;
                    if (length <= i2 || cdoArr[i2].id != j) {
                        if (length <= i2) {
                            i2 = 0;
                        }
                        for (int i3 = 0; i3 < length && cdoArr[i2].id != j; i3++) {
                            i2++;
                            if (i2 == length) {
                                i2 = 0;
                            }
                        }
                        this.lastIndex = i2;
                        this.lastId = cdoArr[i2].id;
                    }
                    int i4 = 0;
                    for (int i5 = 0; i5 < length; i5++) {
                        if (checkTerminate()) {
                            return;
                        }
                        Cdo<T, U> cdo = cdoArr[i2];
                        SimpleQueue<U> simpleQueue = cdo.queue;
                        if (simpleQueue != null) {
                            do {
                                try {
                                    uPoll = simpleQueue.poll();
                                } catch (Throwable th) {
                                    t80.m7781if(th);
                                    cdo.dispose();
                                    this.errors.addThrowable(th);
                                    if (checkTerminate()) {
                                        return;
                                    }
                                    removeInner(cdo);
                                    i4++;
                                    i2++;
                                    if (i2 == length) {
                                    }
                                }
                                if (uPoll == null) {
                                    z = cdo.done;
                                    SimpleQueue<U> simpleQueue2 = cdo.queue;
                                    if (z && (simpleQueue2 == null || simpleQueue2.isEmpty())) {
                                        removeInner(cdo);
                                        if (!checkTerminate()) {
                                            return;
                                        } else {
                                            i4++;
                                        }
                                    }
                                    i2++;
                                    if (i2 != length) {
                                        i2 = 0;
                                    }
                                } else {
                                    observer.onNext(uPoll);
                                }
                            } while (!checkTerminate());
                            return;
                        }
                        z = cdo.done;
                        SimpleQueue<U> simpleQueue22 = cdo.queue;
                        if (z) {
                            removeInner(cdo);
                            if (!checkTerminate()) {
                            }
                        }
                        i2++;
                        if (i2 != length) {
                        }
                    }
                    this.lastIndex = i2;
                    this.lastId = cdoArr[i2].id;
                    i = i4;
                }
                if (i == 0) {
                    iAddAndGet = addAndGet(-iAddAndGet);
                    if (iAddAndGet == 0) {
                        return;
                    }
                } else if (this.maxConcurrency != Integer.MAX_VALUE) {
                    while (true) {
                        int i6 = i - 1;
                        if (i != 0) {
                            synchronized (this) {
                                ObservableSource<? extends U> observableSourcePoll = this.sources.poll();
                                if (observableSourcePoll == null) {
                                    this.wip--;
                                } else {
                                    subscribeInner(observableSourcePoll);
                                }
                            }
                            i = i6;
                        }
                    }
                } else {
                    continue;
                }
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.cancelled;
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            if (this.done) {
                return;
            }
            this.done = true;
            drain();
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            if (this.done) {
                jp1.l(th);
            } else if (!this.errors.addThrowable(th)) {
                jp1.l(th);
            } else {
                this.done = true;
                drain();
            }
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            if (this.done) {
                return;
            }
            try {
                ObservableSource<? extends U> observableSource = (ObservableSource) io.reactivex.internal.functions.Cif.m29468else(this.mapper.apply(t), "The mapper returned a null ObservableSource");
                if (this.maxConcurrency != Integer.MAX_VALUE) {
                    synchronized (this) {
                        int i = this.wip;
                        if (i == this.maxConcurrency) {
                            this.sources.offer(observableSource);
                            return;
                        }
                        this.wip = i + 1;
                    }
                }
                subscribeInner(observableSource);
            } catch (Throwable th) {
                t80.m7781if(th);
                this.upstream.dispose();
                onError(th);
            }
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            if (io.reactivex.internal.disposables.Cdo.validate(this.upstream, disposable)) {
                this.upstream = disposable;
                this.downstream.onSubscribe(this);
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public void removeInner(Cdo<T, U> cdo) {
            Cdo<?, ?>[] cdoArr;
            Cdo<?, ?>[] cdoArr2;
            do {
                cdoArr = this.observers.get();
                int length = cdoArr.length;
                if (length == 0) {
                    return;
                }
                int i = -1;
                int i2 = 0;
                while (true) {
                    if (i2 >= length) {
                        break;
                    }
                    if (cdoArr[i2] == cdo) {
                        i = i2;
                        break;
                    }
                    i2++;
                }
                if (i < 0) {
                    return;
                }
                if (length == 1) {
                    cdoArr2 = EMPTY;
                } else {
                    Cdo<?, ?>[] cdoArr3 = new Cdo[length - 1];
                    System.arraycopy(cdoArr, 0, cdoArr3, 0, i);
                    System.arraycopy(cdoArr, i + 1, cdoArr3, i, (length - i) - 1);
                    cdoArr2 = cdoArr3;
                }
            } while (!this.observers.compareAndSet(cdoArr, cdoArr2));
        }

        public void subscribeInner(ObservableSource<? extends U> observableSource) {
            ObservableSource<? extends U> observableSourcePoll;
            while (observableSource instanceof Callable) {
                if (!tryEmitScalar((Callable) observableSource) || this.maxConcurrency == Integer.MAX_VALUE) {
                    return;
                }
                boolean z = false;
                synchronized (this) {
                    observableSourcePoll = this.sources.poll();
                    if (observableSourcePoll == null) {
                        this.wip--;
                        z = true;
                    }
                }
                if (z) {
                    drain();
                    return;
                }
                observableSource = observableSourcePoll;
            }
            long j = this.uniqueId;
            this.uniqueId = 1 + j;
            Cdo<T, U> cdo = new Cdo<>(this, j);
            if (addInner(cdo)) {
                observableSource.subscribe(cdo);
            }
        }

        public void tryEmit(U u, Cdo<T, U> cdo) {
            if (get() == 0 && compareAndSet(0, 1)) {
                this.downstream.onNext(u);
                if (decrementAndGet() == 0) {
                    return;
                }
            } else {
                SimpleQueue e12Var = cdo.queue;
                if (e12Var == null) {
                    e12Var = new e12(this.bufferSize);
                    cdo.queue = e12Var;
                }
                e12Var.offer(u);
                if (getAndIncrement() != 0) {
                    return;
                }
            }
            drainLoop();
        }

        public boolean tryEmitScalar(Callable<? extends U> callable) {
            try {
                U uCall = callable.call();
                if (uCall == null) {
                    return true;
                }
                if (get() == 0 && compareAndSet(0, 1)) {
                    this.downstream.onNext(uCall);
                    if (decrementAndGet() == 0) {
                        return true;
                    }
                } else {
                    SimplePlainQueue<U> e12Var = this.queue;
                    if (e12Var == null) {
                        e12Var = this.maxConcurrency == Integer.MAX_VALUE ? new e12<>(this.bufferSize) : new b12<>(this.maxConcurrency);
                        this.queue = e12Var;
                    }
                    if (!e12Var.offer(uCall)) {
                        onError(new IllegalStateException("Scalar queue full?!"));
                        return true;
                    }
                    if (getAndIncrement() != 0) {
                        return false;
                    }
                }
                drainLoop();
                return true;
            } catch (Throwable th) {
                t80.m7781if(th);
                this.errors.addThrowable(th);
                drain();
                return true;
            }
        }
    }

    public e(ObservableSource<T> observableSource, Function<? super T, ? extends ObservableSource<? extends U>> function, boolean z, int i, int i2) {
        super(observableSource);
        this.f26502if = function;
        this.f26501for = z;
        this.f26503new = i;
        this.f26504try = i2;
    }

    @Override // io.reactivex.Cnew
    public void subscribeActual(Observer<? super U> observer) {
        if (b1.m29569if(this.f26500do, observer, this.f26502if)) {
            return;
        }
        this.f26500do.subscribe(new Cif(observer, this.f26502if, this.f26501for, this.f26503new, this.f26504try));
    }
}
