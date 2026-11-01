package io.reactivex.internal.operators.single;

import android.support.v4.jp1;
import android.support.v4.jz1;
import android.support.v4.t80;
import io.reactivex.SingleObserver;
import io.reactivex.SingleSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Function;
import io.reactivex.internal.operators.single.Ccontinue;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes3.dex */
public final class d<T, R> extends jz1<R> {

    /* renamed from: do, reason: not valid java name */
    public final SingleSource<? extends T>[] f27153do;

    /* renamed from: if, reason: not valid java name */
    public final Function<? super Object[], ? extends R> f27154if;

    /* renamed from: io.reactivex.internal.operators.single.d$do, reason: invalid class name */
    public final class Cdo implements Function<T, R> {
        public Cdo() {
        }

        /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Object, java.lang.Object[]] */
        @Override // io.reactivex.functions.Function
        public R apply(T t) throws Exception {
            return (R) io.reactivex.internal.functions.Cif.m29468else(d.this.f27154if.apply(new Object[]{t}), "The zipper returned a null value");
        }
    }

    /* renamed from: io.reactivex.internal.operators.single.d$for, reason: invalid class name */
    public static final class Cfor<T> extends AtomicReference<Disposable> implements SingleObserver<T> {
        private static final long serialVersionUID = 3323743579927613702L;
        public final int index;
        public final Cif<T, ?> parent;

        public Cfor(Cif<T, ?> cif, int i) {
            this.parent = cif;
            this.index = i;
        }

        public void dispose() {
            io.reactivex.internal.disposables.Cdo.dispose(this);
        }

        @Override // io.reactivex.SingleObserver
        public void onError(Throwable th) {
            this.parent.innerError(th, this.index);
        }

        @Override // io.reactivex.SingleObserver
        public void onSubscribe(Disposable disposable) {
            io.reactivex.internal.disposables.Cdo.setOnce(this, disposable);
        }

        @Override // io.reactivex.SingleObserver
        public void onSuccess(T t) {
            this.parent.innerSuccess(t, this.index);
        }
    }

    /* renamed from: io.reactivex.internal.operators.single.d$if, reason: invalid class name */
    public static final class Cif<T, R> extends AtomicInteger implements Disposable {
        private static final long serialVersionUID = -5556924161382950569L;
        public final SingleObserver<? super R> downstream;
        public final Cfor<T>[] observers;
        public final Object[] values;
        public final Function<? super Object[], ? extends R> zipper;

        public Cif(SingleObserver<? super R> singleObserver, int i, Function<? super Object[], ? extends R> function) {
            super(i);
            this.downstream = singleObserver;
            this.zipper = function;
            Cfor<T>[] cforArr = new Cfor[i];
            for (int i2 = 0; i2 < i; i2++) {
                cforArr[i2] = new Cfor<>(this, i2);
            }
            this.observers = cforArr;
            this.values = new Object[i];
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            if (getAndSet(0) > 0) {
                for (Cfor<T> cfor : this.observers) {
                    cfor.dispose();
                }
            }
        }

        public void disposeExcept(int i) {
            Cfor<T>[] cforArr = this.observers;
            int length = cforArr.length;
            for (int i2 = 0; i2 < i; i2++) {
                cforArr[i2].dispose();
            }
            while (true) {
                i++;
                if (i >= length) {
                    return;
                } else {
                    cforArr[i].dispose();
                }
            }
        }

        public void innerError(Throwable th, int i) {
            if (getAndSet(0) <= 0) {
                jp1.l(th);
            } else {
                disposeExcept(i);
                this.downstream.onError(th);
            }
        }

        public void innerSuccess(T t, int i) {
            this.values[i] = t;
            if (decrementAndGet() == 0) {
                try {
                    this.downstream.onSuccess(io.reactivex.internal.functions.Cif.m29468else(this.zipper.apply(this.values), "The zipper returned a null value"));
                } catch (Throwable th) {
                    t80.m7781if(th);
                    this.downstream.onError(th);
                }
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return get() <= 0;
        }
    }

    public d(SingleSource<? extends T>[] singleSourceArr, Function<? super Object[], ? extends R> function) {
        this.f27153do = singleSourceArr;
        this.f27154if = function;
    }

    @Override // android.support.v4.jz1
    public void g0(SingleObserver<? super R> singleObserver) {
        SingleSource<? extends T>[] singleSourceArr = this.f27153do;
        int length = singleSourceArr.length;
        if (length == 1) {
            singleSourceArr[0].subscribe(new Ccontinue.Cdo(singleObserver, new Cdo()));
            return;
        }
        Cif cif = new Cif(singleObserver, length, this.f27154if);
        singleObserver.onSubscribe(cif);
        for (int i = 0; i < length && !cif.isDisposed(); i++) {
            SingleSource<? extends T> singleSource = singleSourceArr[i];
            if (singleSource == null) {
                cif.innerError(new NullPointerException("One of the sources is null"), i);
                return;
            }
            singleSource.subscribe(cif.observers[i]);
        }
    }
}
