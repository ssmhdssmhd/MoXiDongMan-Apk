package io.reactivex.subjects;

import android.support.v4.a51;
import android.support.v4.b41;
import android.support.v4.gl;
import android.support.v4.jp1;
import android.support.v4.jz1;
import io.reactivex.SingleObserver;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.functions.Cif;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

/* renamed from: io.reactivex.subjects.else, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Celse<T> extends jz1<T> implements SingleObserver<T> {

    /* renamed from: for, reason: not valid java name */
    public T f27573for;

    /* renamed from: new, reason: not valid java name */
    public Throwable f27575new;

    /* renamed from: try, reason: not valid java name */
    public static final Cdo[] f27571try = new Cdo[0];

    /* renamed from: case, reason: not valid java name */
    public static final Cdo[] f27570case = new Cdo[0];

    /* renamed from: if, reason: not valid java name */
    public final AtomicBoolean f27574if = new AtomicBoolean();

    /* renamed from: do, reason: not valid java name */
    public final AtomicReference<Cdo<T>[]> f27572do = new AtomicReference<>(f27571try);

    /* renamed from: io.reactivex.subjects.else$do, reason: invalid class name */
    public static final class Cdo<T> extends AtomicReference<Celse<T>> implements Disposable {
        private static final long serialVersionUID = -7650903191002190468L;
        public final SingleObserver<? super T> downstream;

        public Cdo(SingleObserver<? super T> singleObserver, Celse<T> celse) {
            this.downstream = singleObserver;
            lazySet(celse);
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            Celse<T> andSet = getAndSet(null);
            if (andSet != null) {
                andSet.X0(this);
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return get() == null;
        }
    }

    @b41
    @gl
    public static <T> Celse<T> Q0() {
        return new Celse<>();
    }

    public boolean P0(@b41 Cdo<T> cdo) {
        Cdo<T>[] cdoArr;
        Cdo<T>[] cdoArr2;
        do {
            cdoArr = this.f27572do.get();
            if (cdoArr == f27570case) {
                return false;
            }
            int length = cdoArr.length;
            cdoArr2 = new Cdo[length + 1];
            System.arraycopy(cdoArr, 0, cdoArr2, 0, length);
            cdoArr2[length] = cdo;
        } while (!this.f27572do.compareAndSet(cdoArr, cdoArr2));
        return true;
    }

    @a51
    public Throwable R0() {
        if (this.f27572do.get() == f27570case) {
            return this.f27575new;
        }
        return null;
    }

    @a51
    public T S0() {
        if (this.f27572do.get() == f27570case) {
            return this.f27573for;
        }
        return null;
    }

    public boolean T0() {
        return this.f27572do.get().length != 0;
    }

    public boolean U0() {
        return this.f27572do.get() == f27570case && this.f27575new != null;
    }

    public boolean V0() {
        return this.f27572do.get() == f27570case && this.f27573for != null;
    }

    public int W0() {
        return this.f27572do.get().length;
    }

    public void X0(@b41 Cdo<T> cdo) {
        Cdo<T>[] cdoArr;
        Cdo<T>[] cdoArr2;
        do {
            cdoArr = this.f27572do.get();
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
                cdoArr2 = f27571try;
            } else {
                Cdo<T>[] cdoArr3 = new Cdo[length - 1];
                System.arraycopy(cdoArr, 0, cdoArr3, 0, i);
                System.arraycopy(cdoArr, i + 1, cdoArr3, i, (length - i) - 1);
                cdoArr2 = cdoArr3;
            }
        } while (!this.f27572do.compareAndSet(cdoArr, cdoArr2));
    }

    @Override // android.support.v4.jz1
    public void g0(@b41 SingleObserver<? super T> singleObserver) {
        Cdo<T> cdo = new Cdo<>(singleObserver, this);
        singleObserver.onSubscribe(cdo);
        if (P0(cdo)) {
            if (cdo.isDisposed()) {
                X0(cdo);
            }
        } else {
            Throwable th = this.f27575new;
            if (th != null) {
                singleObserver.onError(th);
            } else {
                singleObserver.onSuccess(this.f27573for);
            }
        }
    }

    @Override // io.reactivex.SingleObserver
    public void onError(@b41 Throwable th) {
        Cif.m29468else(th, "onError called with null. Null values are generally not allowed in 2.x operators and sources.");
        if (!this.f27574if.compareAndSet(false, true)) {
            jp1.l(th);
            return;
        }
        this.f27575new = th;
        for (Cdo<T> cdo : this.f27572do.getAndSet(f27570case)) {
            cdo.downstream.onError(th);
        }
    }

    @Override // io.reactivex.SingleObserver
    public void onSubscribe(@b41 Disposable disposable) {
        if (this.f27572do.get() == f27570case) {
            disposable.dispose();
        }
    }

    @Override // io.reactivex.SingleObserver
    public void onSuccess(@b41 T t) {
        Cif.m29468else(t, "onSuccess called with null. Null values are generally not allowed in 2.x operators and sources.");
        if (this.f27574if.compareAndSet(false, true)) {
            this.f27573for = t;
            for (Cdo<T> cdo : this.f27572do.getAndSet(f27570case)) {
                cdo.downstream.onSuccess(t);
            }
        }
    }
}
