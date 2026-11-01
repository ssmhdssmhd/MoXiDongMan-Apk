package io.reactivex.internal.operators.observable;

import android.support.v4.a51;
import android.support.v4.b41;
import android.support.v4.h4;
import android.support.v4.jp1;
import android.support.v4.si0;
import android.support.v4.t80;
import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Function;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.atomic.AtomicReferenceArray;

/* loaded from: classes3.dex */
public final class m2<T, R> extends io.reactivex.internal.operators.observable.Cdo<T, R> {

    /* renamed from: for, reason: not valid java name */
    @a51
    public final Iterable<? extends ObservableSource<?>> f26723for;

    /* renamed from: if, reason: not valid java name */
    @a51
    public final ObservableSource<?>[] f26724if;

    /* renamed from: new, reason: not valid java name */
    @b41
    public final Function<? super Object[], R> f26725new;

    /* renamed from: io.reactivex.internal.operators.observable.m2$do, reason: invalid class name */
    public final class Cdo implements Function<T, R> {
        public Cdo() {
        }

        /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Object, java.lang.Object[]] */
        @Override // io.reactivex.functions.Function
        public R apply(T t) throws Exception {
            return (R) io.reactivex.internal.functions.Cif.m29468else(m2.this.f26725new.apply(new Object[]{t}), "The combiner returned a null value");
        }
    }

    /* renamed from: io.reactivex.internal.operators.observable.m2$for, reason: invalid class name */
    public static final class Cfor extends AtomicReference<Disposable> implements Observer<Object> {
        private static final long serialVersionUID = 3256684027868224024L;
        public boolean hasValue;
        public final int index;
        public final Cif<?, ?> parent;

        public Cfor(Cif<?, ?> cif, int i) {
            this.parent = cif;
            this.index = i;
        }

        public void dispose() {
            io.reactivex.internal.disposables.Cdo.dispose(this);
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            this.parent.innerComplete(this.index, this.hasValue);
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            this.parent.innerError(this.index, th);
        }

        @Override // io.reactivex.Observer
        public void onNext(Object obj) {
            if (!this.hasValue) {
                this.hasValue = true;
            }
            this.parent.innerNext(this.index, obj);
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            io.reactivex.internal.disposables.Cdo.setOnce(this, disposable);
        }
    }

    /* renamed from: io.reactivex.internal.operators.observable.m2$if, reason: invalid class name */
    public static final class Cif<T, R> extends AtomicInteger implements Observer<T>, Disposable {
        private static final long serialVersionUID = 1577321883966341961L;
        public final Function<? super Object[], R> combiner;
        public volatile boolean done;
        public final Observer<? super R> downstream;
        public final h4 error;
        public final Cfor[] observers;
        public final AtomicReference<Disposable> upstream;
        public final AtomicReferenceArray<Object> values;

        public Cif(Observer<? super R> observer, Function<? super Object[], R> function, int i) {
            this.downstream = observer;
            this.combiner = function;
            Cfor[] cforArr = new Cfor[i];
            for (int i2 = 0; i2 < i; i2++) {
                cforArr[i2] = new Cfor(this, i2);
            }
            this.observers = cforArr;
            this.values = new AtomicReferenceArray<>(i);
            this.upstream = new AtomicReference<>();
            this.error = new h4();
        }

        public void cancelAllBut(int i) {
            Cfor[] cforArr = this.observers;
            for (int i2 = 0; i2 < cforArr.length; i2++) {
                if (i2 != i) {
                    cforArr[i2].dispose();
                }
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            io.reactivex.internal.disposables.Cdo.dispose(this.upstream);
            for (Cfor cfor : this.observers) {
                cfor.dispose();
            }
        }

        public void innerComplete(int i, boolean z) {
            if (z) {
                return;
            }
            this.done = true;
            cancelAllBut(i);
            si0.m7411do(this.downstream, this, this.error);
        }

        public void innerError(int i, Throwable th) {
            this.done = true;
            io.reactivex.internal.disposables.Cdo.dispose(this.upstream);
            cancelAllBut(i);
            si0.m7412for(this.downstream, th, this, this.error);
        }

        public void innerNext(int i, Object obj) {
            this.values.set(i, obj);
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return io.reactivex.internal.disposables.Cdo.isDisposed(this.upstream.get());
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            if (this.done) {
                return;
            }
            this.done = true;
            cancelAllBut(-1);
            si0.m7411do(this.downstream, this, this.error);
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            if (this.done) {
                jp1.l(th);
                return;
            }
            this.done = true;
            cancelAllBut(-1);
            si0.m7412for(this.downstream, th, this, this.error);
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            if (this.done) {
                return;
            }
            AtomicReferenceArray<Object> atomicReferenceArray = this.values;
            int length = atomicReferenceArray.length();
            Object[] objArr = new Object[length + 1];
            int i = 0;
            objArr[0] = t;
            while (i < length) {
                Object obj = atomicReferenceArray.get(i);
                if (obj == null) {
                    return;
                }
                i++;
                objArr[i] = obj;
            }
            try {
                si0.m7415try(this.downstream, io.reactivex.internal.functions.Cif.m29468else(this.combiner.apply(objArr), "combiner returned a null value"), this, this.error);
            } catch (Throwable th) {
                t80.m7781if(th);
                dispose();
                onError(th);
            }
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            io.reactivex.internal.disposables.Cdo.setOnce(this.upstream, disposable);
        }

        public void subscribe(ObservableSource<?>[] observableSourceArr, int i) {
            Cfor[] cforArr = this.observers;
            AtomicReference<Disposable> atomicReference = this.upstream;
            for (int i2 = 0; i2 < i && !io.reactivex.internal.disposables.Cdo.isDisposed(atomicReference.get()) && !this.done; i2++) {
                observableSourceArr[i2].subscribe(cforArr[i2]);
            }
        }
    }

    public m2(@b41 ObservableSource<T> observableSource, @b41 ObservableSource<?>[] observableSourceArr, @b41 Function<? super Object[], R> function) {
        super(observableSource);
        this.f26724if = observableSourceArr;
        this.f26723for = null;
        this.f26725new = function;
    }

    @Override // io.reactivex.Cnew
    public void subscribeActual(Observer<? super R> observer) {
        int length;
        ObservableSource<?>[] observableSourceArr = this.f26724if;
        if (observableSourceArr == null) {
            observableSourceArr = new ObservableSource[8];
            try {
                length = 0;
                for (ObservableSource<?> observableSource : this.f26723for) {
                    if (length == observableSourceArr.length) {
                        observableSourceArr = (ObservableSource[]) Arrays.copyOf(observableSourceArr, (length >> 1) + length);
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
            new b0(this.f26500do, new Cdo()).subscribeActual(observer);
            return;
        }
        Cif cif = new Cif(observer, this.f26725new, length);
        observer.onSubscribe(cif);
        cif.subscribe(observableSourceArr, length);
        this.f26500do.subscribe(cif);
    }

    public m2(@b41 ObservableSource<T> observableSource, @b41 Iterable<? extends ObservableSource<?>> iterable, @b41 Function<? super Object[], R> function) {
        super(observableSource);
        this.f26724if = null;
        this.f26723for = iterable;
        this.f26725new = function;
    }
}
