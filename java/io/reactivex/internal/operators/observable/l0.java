package io.reactivex.internal.operators.observable;

import android.support.v4.pq;
import android.support.v4.t80;
import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;
import io.reactivex.internal.disposables.ResettableConnectable;
import io.reactivex.internal.fuseable.HasUpstreamObservableSource;
import io.reactivex.internal.util.Ccase;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes3.dex */
public final class l0<T> extends pq<T> implements HasUpstreamObservableSource<T>, ResettableConnectable {

    /* renamed from: do, reason: not valid java name */
    public final ObservableSource<T> f26691do;

    /* renamed from: if, reason: not valid java name */
    public final AtomicReference<Cif<T>> f26692if = new AtomicReference<>();

    /* renamed from: io.reactivex.internal.operators.observable.l0$do, reason: invalid class name */
    public static final class Cdo<T> extends AtomicReference<Cif<T>> implements Disposable {
        private static final long serialVersionUID = 7463222674719692880L;
        public final Observer<? super T> downstream;

        public Cdo(Observer<? super T> observer, Cif<T> cif) {
            this.downstream = observer;
            lazySet(cif);
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            Cif<T> andSet = getAndSet(null);
            if (andSet != null) {
                andSet.remove(this);
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return get() == null;
        }
    }

    /* renamed from: io.reactivex.internal.operators.observable.l0$if, reason: invalid class name */
    public static final class Cif<T> extends AtomicReference<Cdo<T>[]> implements Observer<T>, Disposable {
        public static final Cdo[] EMPTY = new Cdo[0];
        public static final Cdo[] TERMINATED = new Cdo[0];
        private static final long serialVersionUID = -3251430252873581268L;
        public final AtomicReference<Cif<T>> current;
        public Throwable error;
        public final AtomicBoolean connect = new AtomicBoolean();
        public final AtomicReference<Disposable> upstream = new AtomicReference<>();

        public Cif(AtomicReference<Cif<T>> atomicReference) {
            this.current = atomicReference;
            lazySet(EMPTY);
        }

        public boolean add(Cdo<T> cdo) {
            Cdo<T>[] cdoArr;
            Cdo[] cdoArr2;
            do {
                cdoArr = get();
                if (cdoArr == TERMINATED) {
                    return false;
                }
                int length = cdoArr.length;
                cdoArr2 = new Cdo[length + 1];
                System.arraycopy(cdoArr, 0, cdoArr2, 0, length);
                cdoArr2[length] = cdo;
            } while (!compareAndSet(cdoArr, cdoArr2));
            return true;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            getAndSet(TERMINATED);
            this.current.compareAndSet(this, null);
            io.reactivex.internal.disposables.Cdo.dispose(this.upstream);
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return get() == TERMINATED;
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            this.upstream.lazySet(io.reactivex.internal.disposables.Cdo.DISPOSED);
            for (Cdo<T> cdo : getAndSet(TERMINATED)) {
                cdo.downstream.onComplete();
            }
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            this.error = th;
            this.upstream.lazySet(io.reactivex.internal.disposables.Cdo.DISPOSED);
            for (Cdo<T> cdo : getAndSet(TERMINATED)) {
                cdo.downstream.onError(th);
            }
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            for (Cdo<T> cdo : get()) {
                cdo.downstream.onNext(t);
            }
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            io.reactivex.internal.disposables.Cdo.setOnce(this.upstream, disposable);
        }

        public void remove(Cdo<T> cdo) {
            Cdo<T>[] cdoArr;
            Cdo[] cdoArr2;
            do {
                cdoArr = get();
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
                cdoArr2 = EMPTY;
                if (length != 1) {
                    cdoArr2 = new Cdo[length - 1];
                    System.arraycopy(cdoArr, 0, cdoArr2, 0, i);
                    System.arraycopy(cdoArr, i + 1, cdoArr2, i, (length - i) - 1);
                }
            } while (!compareAndSet(cdoArr, cdoArr2));
        }
    }

    public l0(ObservableSource<T> observableSource) {
        this.f26691do = observableSource;
    }

    @Override // io.reactivex.internal.disposables.ResettableConnectable
    public void resetIf(Disposable disposable) {
        this.f26692if.compareAndSet((Cif) disposable, null);
    }

    @Override // io.reactivex.internal.fuseable.HasUpstreamObservableSource
    public ObservableSource<T> source() {
        return this.f26691do;
    }

    @Override // io.reactivex.Cnew
    public void subscribeActual(Observer<? super T> observer) {
        Cif<T> cif;
        while (true) {
            cif = this.f26692if.get();
            if (cif != null) {
                break;
            }
            Cif<T> cif2 = new Cif<>(this.f26692if);
            if (this.f26692if.compareAndSet(cif, cif2)) {
                cif = cif2;
                break;
            }
        }
        Cdo<T> cdo = new Cdo<>(observer, cif);
        observer.onSubscribe(cdo);
        if (cif.add(cdo)) {
            if (cdo.isDisposed()) {
                cif.remove(cdo);
            }
        } else {
            Throwable th = cif.error;
            if (th != null) {
                observer.onError(th);
            } else {
                observer.onComplete();
            }
        }
    }

    @Override // android.support.v4.pq
    /* renamed from: try */
    public void mo6179try(Consumer<? super Disposable> consumer) {
        Cif<T> cif;
        while (true) {
            cif = this.f26692if.get();
            if (cif != null && !cif.isDisposed()) {
                break;
            }
            Cif<T> cif2 = new Cif<>(this.f26692if);
            if (this.f26692if.compareAndSet(cif, cif2)) {
                cif = cif2;
                break;
            }
        }
        boolean z = !cif.connect.get() && cif.connect.compareAndSet(false, true);
        try {
            consumer.accept(cif);
            if (z) {
                this.f26691do.subscribe(cif);
            }
        } catch (Throwable th) {
            t80.m7781if(th);
            throw Ccase.m29712case(th);
        }
    }
}
