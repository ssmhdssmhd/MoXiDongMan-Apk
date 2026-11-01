package io.reactivex.internal.operators.single;

import android.support.v4.jz1;
import io.reactivex.SingleObserver;
import io.reactivex.SingleSource;
import io.reactivex.disposables.Disposable;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* renamed from: io.reactivex.internal.operators.single.if, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cif<T> extends jz1<T> implements SingleObserver<T> {

    /* renamed from: case, reason: not valid java name */
    public static final Cdo[] f27184case = new Cdo[0];

    /* renamed from: else, reason: not valid java name */
    public static final Cdo[] f27185else = new Cdo[0];

    /* renamed from: do, reason: not valid java name */
    public final SingleSource<? extends T> f27186do;

    /* renamed from: new, reason: not valid java name */
    public T f27189new;

    /* renamed from: try, reason: not valid java name */
    public Throwable f27190try;

    /* renamed from: if, reason: not valid java name */
    public final AtomicInteger f27188if = new AtomicInteger();

    /* renamed from: for, reason: not valid java name */
    public final AtomicReference<Cdo<T>[]> f27187for = new AtomicReference<>(f27184case);

    /* renamed from: io.reactivex.internal.operators.single.if$do, reason: invalid class name */
    public static final class Cdo<T> extends AtomicBoolean implements Disposable {
        private static final long serialVersionUID = 7514387411091976596L;
        public final SingleObserver<? super T> downstream;
        public final Cif<T> parent;

        public Cdo(SingleObserver<? super T> singleObserver, Cif<T> cif) {
            this.downstream = singleObserver;
            this.parent = cif;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            if (compareAndSet(false, true)) {
                this.parent.Q0(this);
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return get();
        }
    }

    public Cif(SingleSource<? extends T> singleSource) {
        this.f27186do = singleSource;
    }

    public boolean P0(Cdo<T> cdo) {
        Cdo<T>[] cdoArr;
        Cdo<T>[] cdoArr2;
        do {
            cdoArr = this.f27187for.get();
            if (cdoArr == f27185else) {
                return false;
            }
            int length = cdoArr.length;
            cdoArr2 = new Cdo[length + 1];
            System.arraycopy(cdoArr, 0, cdoArr2, 0, length);
            cdoArr2[length] = cdo;
        } while (!this.f27187for.compareAndSet(cdoArr, cdoArr2));
        return true;
    }

    public void Q0(Cdo<T> cdo) {
        Cdo<T>[] cdoArr;
        Cdo<T>[] cdoArr2;
        do {
            cdoArr = this.f27187for.get();
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
                cdoArr2 = f27184case;
            } else {
                Cdo<T>[] cdoArr3 = new Cdo[length - 1];
                System.arraycopy(cdoArr, 0, cdoArr3, 0, i);
                System.arraycopy(cdoArr, i + 1, cdoArr3, i, (length - i) - 1);
                cdoArr2 = cdoArr3;
            }
        } while (!this.f27187for.compareAndSet(cdoArr, cdoArr2));
    }

    @Override // android.support.v4.jz1
    public void g0(SingleObserver<? super T> singleObserver) {
        Cdo<T> cdo = new Cdo<>(singleObserver, this);
        singleObserver.onSubscribe(cdo);
        if (P0(cdo)) {
            if (cdo.isDisposed()) {
                Q0(cdo);
            }
            if (this.f27188if.getAndIncrement() == 0) {
                this.f27186do.subscribe(this);
                return;
            }
            return;
        }
        Throwable th = this.f27190try;
        if (th != null) {
            singleObserver.onError(th);
        } else {
            singleObserver.onSuccess(this.f27189new);
        }
    }

    @Override // io.reactivex.SingleObserver
    public void onError(Throwable th) {
        this.f27190try = th;
        for (Cdo<T> cdo : this.f27187for.getAndSet(f27185else)) {
            if (!cdo.isDisposed()) {
                cdo.downstream.onError(th);
            }
        }
    }

    @Override // io.reactivex.SingleObserver
    public void onSubscribe(Disposable disposable) {
    }

    @Override // io.reactivex.SingleObserver
    public void onSuccess(T t) {
        this.f27189new = t;
        for (Cdo<T> cdo : this.f27187for.getAndSet(f27185else)) {
            if (!cdo.isDisposed()) {
                cdo.downstream.onSuccess(t);
            }
        }
    }
}
