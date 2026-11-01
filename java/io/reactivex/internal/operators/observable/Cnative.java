package io.reactivex.internal.operators.observable;

import android.support.v4.e12;
import android.support.v4.h4;
import android.support.v4.jp1;
import android.support.v4.t80;
import io.reactivex.Cnew;
import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Function;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* renamed from: io.reactivex.internal.operators.observable.native, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cnative<T, R> extends Cnew<R> {

    /* renamed from: do, reason: not valid java name */
    public final ObservableSource<? extends T>[] f26747do;

    /* renamed from: for, reason: not valid java name */
    public final Function<? super Object[], ? extends R> f26748for;

    /* renamed from: if, reason: not valid java name */
    public final Iterable<? extends ObservableSource<? extends T>> f26749if;

    /* renamed from: new, reason: not valid java name */
    public final int f26750new;

    /* renamed from: try, reason: not valid java name */
    public final boolean f26751try;

    /* renamed from: io.reactivex.internal.operators.observable.native$do, reason: invalid class name */
    public static final class Cdo<T, R> extends AtomicReference<Disposable> implements Observer<T> {
        private static final long serialVersionUID = -4823716997131257941L;
        public final int index;
        public final Cif<T, R> parent;

        public Cdo(Cif<T, R> cif, int i) {
            this.parent = cif;
            this.index = i;
        }

        public void dispose() {
            io.reactivex.internal.disposables.Cdo.dispose(this);
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            this.parent.innerComplete(this.index);
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            this.parent.innerError(this.index, th);
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            this.parent.innerNext(this.index, t);
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            io.reactivex.internal.disposables.Cdo.setOnce(this, disposable);
        }
    }

    /* renamed from: io.reactivex.internal.operators.observable.native$if, reason: invalid class name */
    public static final class Cif<T, R> extends AtomicInteger implements Disposable {
        private static final long serialVersionUID = 8567835998786448817L;
        public int active;
        public volatile boolean cancelled;
        public final Function<? super Object[], ? extends R> combiner;
        public int complete;
        public final boolean delayError;
        public volatile boolean done;
        public final Observer<? super R> downstream;
        public final h4 errors = new h4();
        public Object[] latest;
        public final Cdo<T, R>[] observers;
        public final e12<Object[]> queue;

        public Cif(Observer<? super R> observer, Function<? super Object[], ? extends R> function, int i, int i2, boolean z) {
            this.downstream = observer;
            this.combiner = function;
            this.delayError = z;
            this.latest = new Object[i];
            Cdo<T, R>[] cdoArr = new Cdo[i];
            for (int i3 = 0; i3 < i; i3++) {
                cdoArr[i3] = new Cdo<>(this, i3);
            }
            this.observers = cdoArr;
            this.queue = new e12<>(i2);
        }

        public void cancelSources() {
            for (Cdo<T, R> cdo : this.observers) {
                cdo.dispose();
            }
        }

        public void clear(e12<?> e12Var) {
            synchronized (this) {
                this.latest = null;
            }
            e12Var.clear();
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            if (this.cancelled) {
                return;
            }
            this.cancelled = true;
            cancelSources();
            if (getAndIncrement() == 0) {
                clear(this.queue);
            }
        }

        public void drain() {
            if (getAndIncrement() != 0) {
                return;
            }
            e12<Object[]> e12Var = this.queue;
            Observer<? super R> observer = this.downstream;
            boolean z = this.delayError;
            int iAddAndGet = 1;
            while (!this.cancelled) {
                if (!z && this.errors.get() != null) {
                    cancelSources();
                    clear(e12Var);
                    observer.onError(this.errors.terminate());
                    return;
                }
                boolean z2 = this.done;
                Object[] objArrPoll = e12Var.poll();
                boolean z3 = objArrPoll == null;
                if (z2 && z3) {
                    clear(e12Var);
                    Throwable thTerminate = this.errors.terminate();
                    if (thTerminate == null) {
                        observer.onComplete();
                        return;
                    } else {
                        observer.onError(thTerminate);
                        return;
                    }
                }
                if (z3) {
                    iAddAndGet = addAndGet(-iAddAndGet);
                    if (iAddAndGet == 0) {
                        return;
                    }
                } else {
                    try {
                        observer.onNext((Object) io.reactivex.internal.functions.Cif.m29468else(this.combiner.apply(objArrPoll), "The combiner returned a null value"));
                    } catch (Throwable th) {
                        t80.m7781if(th);
                        this.errors.addThrowable(th);
                        cancelSources();
                        clear(e12Var);
                        observer.onError(this.errors.terminate());
                        return;
                    }
                }
            }
            clear(e12Var);
        }

        /* JADX WARN: Removed duplicated region for block: B:14:0x0019 A[Catch: all -> 0x0025, TryCatch #0 {, blocks: (B:3:0x0001, B:5:0x0005, B:7:0x0007, B:12:0x0011, B:15:0x001b, B:14:0x0019), top: B:23:0x0001 }] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void innerComplete(int i) {
            synchronized (this) {
                Object[] objArr = this.latest;
                if (objArr == null) {
                    return;
                }
                boolean z = objArr[i] == null;
                if (!z) {
                    int i2 = this.complete + 1;
                    this.complete = i2;
                    if (i2 == objArr.length) {
                        this.done = true;
                    }
                }
                if (z) {
                    cancelSources();
                }
                drain();
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:18:0x0025 A[Catch: all -> 0x002a, TryCatch #0 {, blocks: (B:7:0x000e, B:9:0x0012, B:11:0x0014, B:16:0x001d, B:19:0x0027, B:18:0x0025), top: B:29:0x000e }] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void innerError(int i, Throwable th) {
            if (!this.errors.addThrowable(th)) {
                jp1.l(th);
                return;
            }
            boolean z = true;
            if (this.delayError) {
                synchronized (this) {
                    Object[] objArr = this.latest;
                    if (objArr == null) {
                        return;
                    }
                    boolean z2 = objArr[i] == null;
                    if (!z2) {
                        int i2 = this.complete + 1;
                        this.complete = i2;
                        if (i2 == objArr.length) {
                            this.done = true;
                        }
                        z = z2;
                    }
                }
            }
            if (z) {
                cancelSources();
            }
            drain();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public void innerNext(int i, T t) {
            boolean z;
            synchronized (this) {
                Object[] objArr = this.latest;
                if (objArr == null) {
                    return;
                }
                Object obj = objArr[i];
                int i2 = this.active;
                if (obj == null) {
                    i2++;
                    this.active = i2;
                }
                objArr[i] = t;
                if (i2 == objArr.length) {
                    this.queue.offer(objArr.clone());
                    z = true;
                } else {
                    z = false;
                }
                if (z) {
                    drain();
                }
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.cancelled;
        }

        public void subscribe(ObservableSource<? extends T>[] observableSourceArr) {
            Cdo<T, R>[] cdoArr = this.observers;
            int length = cdoArr.length;
            this.downstream.onSubscribe(this);
            for (int i = 0; i < length && !this.done && !this.cancelled; i++) {
                observableSourceArr[i].subscribe(cdoArr[i]);
            }
        }
    }

    public Cnative(ObservableSource<? extends T>[] observableSourceArr, Iterable<? extends ObservableSource<? extends T>> iterable, Function<? super Object[], ? extends R> function, int i, boolean z) {
        this.f26747do = observableSourceArr;
        this.f26749if = iterable;
        this.f26748for = function;
        this.f26750new = i;
        this.f26751try = z;
    }

    @Override // io.reactivex.Cnew
    public void subscribeActual(Observer<? super R> observer) {
        int length;
        ObservableSource<? extends T>[] observableSourceArr = this.f26747do;
        if (observableSourceArr == null) {
            observableSourceArr = new ObservableSource[8];
            length = 0;
            for (ObservableSource<? extends T> observableSource : this.f26749if) {
                if (length == observableSourceArr.length) {
                    ObservableSource<? extends T>[] observableSourceArr2 = new ObservableSource[(length >> 2) + length];
                    System.arraycopy(observableSourceArr, 0, observableSourceArr2, 0, length);
                    observableSourceArr = observableSourceArr2;
                }
                observableSourceArr[length] = observableSource;
                length++;
            }
        } else {
            length = observableSourceArr.length;
        }
        int i = length;
        if (i == 0) {
            io.reactivex.internal.disposables.Cif.complete(observer);
        } else {
            new Cif(observer, this.f26748for, i, this.f26750new, this.f26751try).subscribe(observableSourceArr);
        }
    }
}
