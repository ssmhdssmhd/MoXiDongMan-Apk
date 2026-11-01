package io.reactivex.internal.operators.observable;

import android.support.v4.e12;
import android.support.v4.t80;
import io.reactivex.Cnew;
import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Function;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes3.dex */
public final class n2<T, R> extends Cnew<R> {

    /* renamed from: do, reason: not valid java name */
    public final ObservableSource<? extends T>[] f26737do;

    /* renamed from: for, reason: not valid java name */
    public final Function<? super Object[], ? extends R> f26738for;

    /* renamed from: if, reason: not valid java name */
    public final Iterable<? extends ObservableSource<? extends T>> f26739if;

    /* renamed from: new, reason: not valid java name */
    public final int f26740new;

    /* renamed from: try, reason: not valid java name */
    public final boolean f26741try;

    /* renamed from: io.reactivex.internal.operators.observable.n2$do, reason: invalid class name */
    public static final class Cdo<T, R> extends AtomicInteger implements Disposable {
        private static final long serialVersionUID = 2983708048395377667L;
        public volatile boolean cancelled;
        public final boolean delayError;
        public final Observer<? super R> downstream;
        public final Cif<T, R>[] observers;
        public final T[] row;
        public final Function<? super Object[], ? extends R> zipper;

        public Cdo(Observer<? super R> observer, Function<? super Object[], ? extends R> function, int i, boolean z) {
            this.downstream = observer;
            this.zipper = function;
            this.observers = new Cif[i];
            this.row = (T[]) new Object[i];
            this.delayError = z;
        }

        public void cancel() {
            clear();
            cancelSources();
        }

        public void cancelSources() {
            for (Cif<T, R> cif : this.observers) {
                cif.m29596do();
            }
        }

        public boolean checkTerminated(boolean z, boolean z2, Observer<? super R> observer, boolean z3, Cif<?, ?> cif) {
            if (this.cancelled) {
                cancel();
                return true;
            }
            if (!z) {
                return false;
            }
            if (z3) {
                if (!z2) {
                    return false;
                }
                Throwable th = cif.f26745new;
                this.cancelled = true;
                cancel();
                if (th != null) {
                    observer.onError(th);
                } else {
                    observer.onComplete();
                }
                return true;
            }
            Throwable th2 = cif.f26745new;
            if (th2 != null) {
                this.cancelled = true;
                cancel();
                observer.onError(th2);
                return true;
            }
            if (!z2) {
                return false;
            }
            this.cancelled = true;
            cancel();
            observer.onComplete();
            return true;
        }

        public void clear() {
            for (Cif<T, R> cif : this.observers) {
                cif.f26744if.clear();
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            if (this.cancelled) {
                return;
            }
            this.cancelled = true;
            cancelSources();
            if (getAndIncrement() == 0) {
                clear();
            }
        }

        public void drain() {
            Throwable th;
            if (getAndIncrement() != 0) {
                return;
            }
            Cif<T, R>[] cifArr = this.observers;
            Observer<? super R> observer = this.downstream;
            T[] tArr = this.row;
            boolean z = this.delayError;
            int iAddAndGet = 1;
            while (true) {
                int i = 0;
                int i2 = 0;
                for (Cif<T, R> cif : cifArr) {
                    if (tArr[i2] == null) {
                        boolean z2 = cif.f26743for;
                        T tPoll = cif.f26744if.poll();
                        boolean z3 = tPoll == null;
                        if (checkTerminated(z2, z3, observer, z, cif)) {
                            return;
                        }
                        if (z3) {
                            i++;
                        } else {
                            tArr[i2] = tPoll;
                        }
                    } else if (cif.f26743for && !z && (th = cif.f26745new) != null) {
                        this.cancelled = true;
                        cancel();
                        observer.onError(th);
                        return;
                    }
                    i2++;
                }
                if (i != 0) {
                    iAddAndGet = addAndGet(-iAddAndGet);
                    if (iAddAndGet == 0) {
                        return;
                    }
                } else {
                    try {
                        observer.onNext((Object) io.reactivex.internal.functions.Cif.m29468else(this.zipper.apply(tArr.clone()), "The zipper returned a null value"));
                        Arrays.fill(tArr, (Object) null);
                    } catch (Throwable th2) {
                        t80.m7781if(th2);
                        cancel();
                        observer.onError(th2);
                        return;
                    }
                }
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.cancelled;
        }

        public void subscribe(ObservableSource<? extends T>[] observableSourceArr, int i) {
            Cif<T, R>[] cifArr = this.observers;
            int length = cifArr.length;
            for (int i2 = 0; i2 < length; i2++) {
                cifArr[i2] = new Cif<>(this, i);
            }
            lazySet(0);
            this.downstream.onSubscribe(this);
            for (int i3 = 0; i3 < length && !this.cancelled; i3++) {
                observableSourceArr[i3].subscribe(cifArr[i3]);
            }
        }
    }

    /* renamed from: io.reactivex.internal.operators.observable.n2$if, reason: invalid class name */
    public static final class Cif<T, R> implements Observer<T> {

        /* renamed from: do, reason: not valid java name */
        public final Cdo<T, R> f26742do;

        /* renamed from: for, reason: not valid java name */
        public volatile boolean f26743for;

        /* renamed from: if, reason: not valid java name */
        public final e12<T> f26744if;

        /* renamed from: new, reason: not valid java name */
        public Throwable f26745new;

        /* renamed from: try, reason: not valid java name */
        public final AtomicReference<Disposable> f26746try = new AtomicReference<>();

        public Cif(Cdo<T, R> cdo, int i) {
            this.f26742do = cdo;
            this.f26744if = new e12<>(i);
        }

        /* renamed from: do, reason: not valid java name */
        public void m29596do() {
            io.reactivex.internal.disposables.Cdo.dispose(this.f26746try);
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            this.f26743for = true;
            this.f26742do.drain();
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            this.f26745new = th;
            this.f26743for = true;
            this.f26742do.drain();
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            this.f26744if.offer(t);
            this.f26742do.drain();
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            io.reactivex.internal.disposables.Cdo.setOnce(this.f26746try, disposable);
        }
    }

    public n2(ObservableSource<? extends T>[] observableSourceArr, Iterable<? extends ObservableSource<? extends T>> iterable, Function<? super Object[], ? extends R> function, int i, boolean z) {
        this.f26737do = observableSourceArr;
        this.f26739if = iterable;
        this.f26738for = function;
        this.f26740new = i;
        this.f26741try = z;
    }

    @Override // io.reactivex.Cnew
    public void subscribeActual(Observer<? super R> observer) {
        int length;
        ObservableSource<? extends T>[] observableSourceArr = this.f26737do;
        if (observableSourceArr == null) {
            observableSourceArr = new ObservableSource[8];
            length = 0;
            for (ObservableSource<? extends T> observableSource : this.f26739if) {
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
        if (length == 0) {
            io.reactivex.internal.disposables.Cif.complete(observer);
        } else {
            new Cdo(observer, this.f26738for, length, this.f26741try).subscribe(observableSourceArr, this.f26740new);
        }
    }
}
