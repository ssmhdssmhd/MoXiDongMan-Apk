package io.reactivex.internal.operators.observable;

import android.support.v4.jp1;
import android.support.v4.t80;
import io.reactivex.Cnew;
import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* renamed from: io.reactivex.internal.operators.observable.goto, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cgoto<T> extends Cnew<T> {

    /* renamed from: do, reason: not valid java name */
    public final ObservableSource<? extends T>[] f26561do;

    /* renamed from: if, reason: not valid java name */
    public final Iterable<? extends ObservableSource<? extends T>> f26562if;

    /* renamed from: io.reactivex.internal.operators.observable.goto$do, reason: invalid class name */
    public static final class Cdo<T> implements Disposable {

        /* renamed from: do, reason: not valid java name */
        public final Observer<? super T> f26563do;

        /* renamed from: for, reason: not valid java name */
        public final AtomicInteger f26564for = new AtomicInteger();

        /* renamed from: if, reason: not valid java name */
        public final Cif<T>[] f26565if;

        public Cdo(Observer<? super T> observer, int i) {
            this.f26563do = observer;
            this.f26565if = new Cif[i];
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            if (this.f26564for.get() != -1) {
                this.f26564for.lazySet(-1);
                for (Cif<T> cif : this.f26565if) {
                    cif.dispose();
                }
            }
        }

        /* renamed from: do, reason: not valid java name */
        public void m29577do(ObservableSource<? extends T>[] observableSourceArr) {
            Cif<T>[] cifArr = this.f26565if;
            int length = cifArr.length;
            int i = 0;
            while (i < length) {
                int i2 = i + 1;
                cifArr[i] = new Cif<>(this, i2, this.f26563do);
                i = i2;
            }
            this.f26564for.lazySet(0);
            this.f26563do.onSubscribe(this);
            for (int i3 = 0; i3 < length && this.f26564for.get() == 0; i3++) {
                observableSourceArr[i3].subscribe(cifArr[i3]);
            }
        }

        /* renamed from: if, reason: not valid java name */
        public boolean m29578if(int i) {
            int i2 = this.f26564for.get();
            int i3 = 0;
            if (i2 != 0) {
                return i2 == i;
            }
            if (!this.f26564for.compareAndSet(0, i)) {
                return false;
            }
            Cif<T>[] cifArr = this.f26565if;
            int length = cifArr.length;
            while (i3 < length) {
                int i4 = i3 + 1;
                if (i4 != i) {
                    cifArr[i3].dispose();
                }
                i3 = i4;
            }
            return true;
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f26564for.get() == -1;
        }
    }

    /* renamed from: io.reactivex.internal.operators.observable.goto$if, reason: invalid class name */
    public static final class Cif<T> extends AtomicReference<Disposable> implements Observer<T> {
        private static final long serialVersionUID = -1185974347409665484L;
        public final Observer<? super T> downstream;
        public final int index;
        public final Cdo<T> parent;
        public boolean won;

        public Cif(Cdo<T> cdo, int i, Observer<? super T> observer) {
            this.parent = cdo;
            this.index = i;
            this.downstream = observer;
        }

        public void dispose() {
            io.reactivex.internal.disposables.Cdo.dispose(this);
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            if (this.won) {
                this.downstream.onComplete();
            } else if (this.parent.m29578if(this.index)) {
                this.won = true;
                this.downstream.onComplete();
            }
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            if (this.won) {
                this.downstream.onError(th);
            } else if (!this.parent.m29578if(this.index)) {
                jp1.l(th);
            } else {
                this.won = true;
                this.downstream.onError(th);
            }
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            if (this.won) {
                this.downstream.onNext(t);
            } else if (!this.parent.m29578if(this.index)) {
                get().dispose();
            } else {
                this.won = true;
                this.downstream.onNext(t);
            }
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            io.reactivex.internal.disposables.Cdo.setOnce(this, disposable);
        }
    }

    public Cgoto(ObservableSource<? extends T>[] observableSourceArr, Iterable<? extends ObservableSource<? extends T>> iterable) {
        this.f26561do = observableSourceArr;
        this.f26562if = iterable;
    }

    @Override // io.reactivex.Cnew
    public void subscribeActual(Observer<? super T> observer) {
        int length;
        ObservableSource<? extends T>[] observableSourceArr = this.f26561do;
        if (observableSourceArr == null) {
            observableSourceArr = new ObservableSource[8];
            try {
                length = 0;
                for (ObservableSource<? extends T> observableSource : this.f26562if) {
                    if (observableSource == null) {
                        io.reactivex.internal.disposables.Cif.error(new NullPointerException("One of the sources is null"), observer);
                        return;
                    }
                    if (length == observableSourceArr.length) {
                        ObservableSource<? extends T>[] observableSourceArr2 = new ObservableSource[(length >> 2) + length];
                        System.arraycopy(observableSourceArr, 0, observableSourceArr2, 0, length);
                        observableSourceArr = observableSourceArr2;
                    }
                    int i = length + 1;
                    observableSourceArr[length] = observableSource;
                    length = i;
                }
            } catch (Throwable th) {
                t80.m7781if(th);
                io.reactivex.internal.disposables.Cif.error(th, observer);
                return;
            }
        } else {
            length = observableSourceArr.length;
        }
        if (length == 0) {
            io.reactivex.internal.disposables.Cif.complete(observer);
        } else if (length == 1) {
            observableSourceArr[0].subscribe(observer);
        } else {
            new Cdo(observer, length).m29577do(observableSourceArr);
        }
    }
}
