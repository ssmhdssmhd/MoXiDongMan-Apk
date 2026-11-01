package io.reactivex.internal.operators.observable;

import android.support.v4.jp1;
import android.support.v4.pq;
import android.support.v4.t80;
import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;
import io.reactivex.internal.fuseable.HasUpstreamObservableSource;
import io.reactivex.internal.util.Ccase;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes3.dex */
public final class k0<T> extends pq<T> implements HasUpstreamObservableSource<T>, ObservablePublishClassic<T> {

    /* renamed from: do, reason: not valid java name */
    public final ObservableSource<T> f26657do;

    /* renamed from: for, reason: not valid java name */
    public final ObservableSource<T> f26658for;

    /* renamed from: if, reason: not valid java name */
    public final AtomicReference<Cif<T>> f26659if;

    /* renamed from: io.reactivex.internal.operators.observable.k0$do, reason: invalid class name */
    public static final class Cdo<T> extends AtomicReference<Object> implements Disposable {
        private static final long serialVersionUID = -1100270633763673112L;
        public final Observer<? super T> child;

        public Cdo(Observer<? super T> observer) {
            this.child = observer;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            Object andSet = getAndSet(this);
            if (andSet == null || andSet == this) {
                return;
            }
            ((Cif) andSet).m29587if(this);
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return get() == this;
        }

        public void setParent(Cif<T> cif) {
            if (compareAndSet(null, cif)) {
                return;
            }
            cif.m29587if(this);
        }
    }

    /* renamed from: io.reactivex.internal.operators.observable.k0$for, reason: invalid class name */
    public static final class Cfor<T> implements ObservableSource<T> {

        /* renamed from: do, reason: not valid java name */
        private final AtomicReference<Cif<T>> f26660do;

        public Cfor(AtomicReference<Cif<T>> atomicReference) {
            this.f26660do = atomicReference;
        }

        @Override // io.reactivex.ObservableSource
        public void subscribe(Observer<? super T> observer) {
            Cdo cdo = new Cdo(observer);
            observer.onSubscribe(cdo);
            while (true) {
                Cif<T> cif = this.f26660do.get();
                if (cif == null || cif.isDisposed()) {
                    Cif<T> cif2 = new Cif<>(this.f26660do);
                    if (this.f26660do.compareAndSet(cif, cif2)) {
                        cif = cif2;
                    } else {
                        continue;
                    }
                }
                if (cif.m29586do(cdo)) {
                    cdo.setParent(cif);
                    return;
                }
            }
        }
    }

    /* renamed from: io.reactivex.internal.operators.observable.k0$if, reason: invalid class name */
    public static final class Cif<T> implements Observer<T>, Disposable {

        /* renamed from: do, reason: not valid java name */
        public final AtomicReference<Cif<T>> f26663do;

        /* renamed from: try, reason: not valid java name */
        public static final Cdo[] f26662try = new Cdo[0];

        /* renamed from: case, reason: not valid java name */
        public static final Cdo[] f26661case = new Cdo[0];

        /* renamed from: new, reason: not valid java name */
        public final AtomicReference<Disposable> f26666new = new AtomicReference<>();

        /* renamed from: if, reason: not valid java name */
        public final AtomicReference<Cdo<T>[]> f26665if = new AtomicReference<>(f26662try);

        /* renamed from: for, reason: not valid java name */
        public final AtomicBoolean f26664for = new AtomicBoolean();

        public Cif(AtomicReference<Cif<T>> atomicReference) {
            this.f26663do = atomicReference;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            AtomicReference<Cdo<T>[]> atomicReference = this.f26665if;
            Cdo<T>[] cdoArr = f26661case;
            if (atomicReference.getAndSet(cdoArr) != cdoArr) {
                this.f26663do.compareAndSet(this, null);
                io.reactivex.internal.disposables.Cdo.dispose(this.f26666new);
            }
        }

        /* renamed from: do, reason: not valid java name */
        public boolean m29586do(Cdo<T> cdo) {
            Cdo<T>[] cdoArr;
            Cdo<T>[] cdoArr2;
            do {
                cdoArr = this.f26665if.get();
                if (cdoArr == f26661case) {
                    return false;
                }
                int length = cdoArr.length;
                cdoArr2 = new Cdo[length + 1];
                System.arraycopy(cdoArr, 0, cdoArr2, 0, length);
                cdoArr2[length] = cdo;
            } while (!this.f26665if.compareAndSet(cdoArr, cdoArr2));
            return true;
        }

        /* renamed from: if, reason: not valid java name */
        public void m29587if(Cdo<T> cdo) {
            Cdo<T>[] cdoArr;
            Cdo<T>[] cdoArr2;
            do {
                cdoArr = this.f26665if.get();
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
                    if (cdoArr[i2].equals(cdo)) {
                        i = i2;
                        break;
                    }
                    i2++;
                }
                if (i < 0) {
                    return;
                }
                if (length == 1) {
                    cdoArr2 = f26662try;
                } else {
                    Cdo<T>[] cdoArr3 = new Cdo[length - 1];
                    System.arraycopy(cdoArr, 0, cdoArr3, 0, i);
                    System.arraycopy(cdoArr, i + 1, cdoArr3, i, (length - i) - 1);
                    cdoArr2 = cdoArr3;
                }
            } while (!this.f26665if.compareAndSet(cdoArr, cdoArr2));
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f26665if.get() == f26661case;
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            this.f26663do.compareAndSet(this, null);
            for (Cdo<T> cdo : this.f26665if.getAndSet(f26661case)) {
                cdo.child.onComplete();
            }
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            this.f26663do.compareAndSet(this, null);
            Cdo<T>[] andSet = this.f26665if.getAndSet(f26661case);
            if (andSet.length == 0) {
                jp1.l(th);
                return;
            }
            for (Cdo<T> cdo : andSet) {
                cdo.child.onError(th);
            }
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            for (Cdo<T> cdo : this.f26665if.get()) {
                cdo.child.onNext(t);
            }
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            io.reactivex.internal.disposables.Cdo.setOnce(this.f26666new, disposable);
        }
    }

    private k0(ObservableSource<T> observableSource, ObservableSource<T> observableSource2, AtomicReference<Cif<T>> atomicReference) {
        this.f26658for = observableSource;
        this.f26657do = observableSource2;
        this.f26659if = atomicReference;
    }

    /* renamed from: const, reason: not valid java name */
    public static <T> pq<T> m29585const(ObservableSource<T> observableSource) {
        AtomicReference atomicReference = new AtomicReference();
        return jp1.d(new k0(new Cfor(atomicReference), observableSource, atomicReference));
    }

    @Override // io.reactivex.internal.operators.observable.ObservablePublishClassic
    public ObservableSource<T> publishSource() {
        return this.f26657do;
    }

    @Override // io.reactivex.internal.fuseable.HasUpstreamObservableSource
    public ObservableSource<T> source() {
        return this.f26657do;
    }

    @Override // io.reactivex.Cnew
    public void subscribeActual(Observer<? super T> observer) {
        this.f26658for.subscribe(observer);
    }

    @Override // android.support.v4.pq
    /* renamed from: try */
    public void mo6179try(Consumer<? super Disposable> consumer) {
        Cif<T> cif;
        while (true) {
            cif = this.f26659if.get();
            if (cif != null && !cif.isDisposed()) {
                break;
            }
            Cif<T> cif2 = new Cif<>(this.f26659if);
            if (this.f26659if.compareAndSet(cif, cif2)) {
                cif = cif2;
                break;
            }
        }
        boolean z = !cif.f26664for.get() && cif.f26664for.compareAndSet(false, true);
        try {
            consumer.accept(cif);
            if (z) {
                this.f26657do.subscribe(cif);
            }
        } catch (Throwable th) {
            t80.m7781if(th);
            throw Ccase.m29712case(th);
        }
    }
}
