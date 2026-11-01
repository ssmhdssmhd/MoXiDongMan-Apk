package io.reactivex.internal.operators.observable;

import android.R;
import android.support.v4.a51;
import android.support.v4.jp1;
import android.support.v4.t80;
import io.reactivex.Cnew;
import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.functions.Function;
import io.reactivex.internal.fuseable.QueueDisposable;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes3.dex */
public final class b1 {

    /* renamed from: io.reactivex.internal.operators.observable.b1$do, reason: invalid class name */
    public static final class Cdo<T> extends AtomicInteger implements QueueDisposable<T>, Runnable {
        public static final int FUSED = 1;
        public static final int ON_COMPLETE = 3;
        public static final int ON_NEXT = 2;
        public static final int START = 0;
        private static final long serialVersionUID = 3880992722410194083L;
        public final Observer<? super T> observer;
        public final T value;

        public Cdo(Observer<? super T> observer, T t) {
            this.observer = observer;
            this.value = t;
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        public void clear() {
            lazySet(3);
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            set(3);
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return get() == 3;
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        public boolean isEmpty() {
            return get() != 1;
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        public boolean offer(T t) {
            throw new UnsupportedOperationException("Should not be called!");
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        @a51
        public T poll() throws Exception {
            if (get() != 1) {
                return null;
            }
            lazySet(3);
            return this.value;
        }

        @Override // io.reactivex.internal.fuseable.QueueFuseable
        public int requestFusion(int i) {
            if ((i & 1) == 0) {
                return 0;
            }
            lazySet(1);
            return 1;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (get() == 0 && compareAndSet(0, 2)) {
                this.observer.onNext(this.value);
                if (get() == 2) {
                    lazySet(3);
                    this.observer.onComplete();
                }
            }
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        public boolean offer(T t, T t2) {
            throw new UnsupportedOperationException("Should not be called!");
        }
    }

    /* renamed from: io.reactivex.internal.operators.observable.b1$if, reason: invalid class name */
    public static final class Cif<T, R> extends Cnew<R> {

        /* renamed from: do, reason: not valid java name */
        public final T f26412do;

        /* renamed from: if, reason: not valid java name */
        public final Function<? super T, ? extends ObservableSource<? extends R>> f26413if;

        public Cif(T t, Function<? super T, ? extends ObservableSource<? extends R>> function) {
            this.f26412do = t;
            this.f26413if = function;
        }

        @Override // io.reactivex.Cnew
        public void subscribeActual(Observer<? super R> observer) {
            try {
                ObservableSource observableSource = (ObservableSource) io.reactivex.internal.functions.Cif.m29468else(this.f26413if.apply(this.f26412do), "The mapper returned a null ObservableSource");
                if (!(observableSource instanceof Callable)) {
                    observableSource.subscribe(observer);
                    return;
                }
                try {
                    Object objCall = ((Callable) observableSource).call();
                    if (objCall == null) {
                        io.reactivex.internal.disposables.Cif.complete(observer);
                        return;
                    }
                    Cdo cdo = new Cdo(observer, objCall);
                    observer.onSubscribe(cdo);
                    cdo.run();
                } catch (Throwable th) {
                    t80.m7781if(th);
                    io.reactivex.internal.disposables.Cif.error(th, observer);
                }
            } catch (Throwable th2) {
                io.reactivex.internal.disposables.Cif.error(th2, observer);
            }
        }
    }

    private b1() {
        throw new IllegalStateException("No instances!");
    }

    /* renamed from: do, reason: not valid java name */
    public static <T, U> Cnew<U> m29568do(T t, Function<? super T, ? extends ObservableSource<? extends U>> function) {
        return jp1.i(new Cif(t, function));
    }

    /* renamed from: if, reason: not valid java name */
    public static <T, R> boolean m29569if(ObservableSource<T> observableSource, Observer<? super R> observer, Function<? super T, ? extends ObservableSource<? extends R>> function) {
        if (!(observableSource instanceof Callable)) {
            return false;
        }
        try {
            R.attr attrVar = (Object) ((Callable) observableSource).call();
            if (attrVar == null) {
                io.reactivex.internal.disposables.Cif.complete(observer);
                return true;
            }
            try {
                ObservableSource observableSource2 = (ObservableSource) io.reactivex.internal.functions.Cif.m29468else(function.apply(attrVar), "The mapper returned a null ObservableSource");
                if (observableSource2 instanceof Callable) {
                    try {
                        Object objCall = ((Callable) observableSource2).call();
                        if (objCall == null) {
                            io.reactivex.internal.disposables.Cif.complete(observer);
                            return true;
                        }
                        Cdo cdo = new Cdo(observer, objCall);
                        observer.onSubscribe(cdo);
                        cdo.run();
                    } catch (Throwable th) {
                        t80.m7781if(th);
                        io.reactivex.internal.disposables.Cif.error(th, observer);
                        return true;
                    }
                } else {
                    observableSource2.subscribe(observer);
                }
                return true;
            } catch (Throwable th2) {
                t80.m7781if(th2);
                io.reactivex.internal.disposables.Cif.error(th2, observer);
                return true;
            }
        } catch (Throwable th3) {
            t80.m7781if(th3);
            io.reactivex.internal.disposables.Cif.error(th3, observer);
            return true;
        }
    }
}
