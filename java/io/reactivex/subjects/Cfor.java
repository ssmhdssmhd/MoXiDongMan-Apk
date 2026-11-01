package io.reactivex.subjects;

import android.support.v4.a51;
import android.support.v4.b41;
import android.support.v4.gl;
import android.support.v4.jp1;
import android.support.v4.np;
import io.reactivex.CompletableObserver;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.functions.Cif;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

/* renamed from: io.reactivex.subjects.for, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cfor extends np implements CompletableObserver {

    /* renamed from: new, reason: not valid java name */
    public static final Cdo[] f27576new = new Cdo[0];

    /* renamed from: try, reason: not valid java name */
    public static final Cdo[] f27577try = new Cdo[0];

    /* renamed from: for, reason: not valid java name */
    public Throwable f27579for;

    /* renamed from: if, reason: not valid java name */
    public final AtomicBoolean f27580if = new AtomicBoolean();

    /* renamed from: do, reason: not valid java name */
    public final AtomicReference<Cdo[]> f27578do = new AtomicReference<>(f27576new);

    /* renamed from: io.reactivex.subjects.for$do, reason: invalid class name */
    public static final class Cdo extends AtomicReference<Cfor> implements Disposable {
        private static final long serialVersionUID = -7650903191002190468L;
        public final CompletableObserver downstream;

        public Cdo(CompletableObserver completableObserver, Cfor cfor) {
            this.downstream = completableObserver;
            lazySet(cfor);
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            Cfor andSet = getAndSet(null);
            if (andSet != null) {
                andSet.r0(this);
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return get() == null;
        }
    }

    @b41
    @gl
    public static Cfor l0() {
        return new Cfor();
    }

    @Override // android.support.v4.np
    public void O(CompletableObserver completableObserver) {
        Cdo cdo = new Cdo(completableObserver, this);
        completableObserver.onSubscribe(cdo);
        if (k0(cdo)) {
            if (cdo.isDisposed()) {
                r0(cdo);
            }
        } else {
            Throwable th = this.f27579for;
            if (th != null) {
                completableObserver.onError(th);
            } else {
                completableObserver.onComplete();
            }
        }
    }

    public boolean k0(Cdo cdo) {
        Cdo[] cdoArr;
        Cdo[] cdoArr2;
        do {
            cdoArr = this.f27578do.get();
            if (cdoArr == f27577try) {
                return false;
            }
            int length = cdoArr.length;
            cdoArr2 = new Cdo[length + 1];
            System.arraycopy(cdoArr, 0, cdoArr2, 0, length);
            cdoArr2[length] = cdo;
        } while (!this.f27578do.compareAndSet(cdoArr, cdoArr2));
        return true;
    }

    @a51
    public Throwable m0() {
        if (this.f27578do.get() == f27577try) {
            return this.f27579for;
        }
        return null;
    }

    public boolean n0() {
        return this.f27578do.get() == f27577try && this.f27579for == null;
    }

    public boolean o0() {
        return this.f27578do.get().length != 0;
    }

    @Override // io.reactivex.CompletableObserver, io.reactivex.MaybeObserver
    public void onComplete() {
        if (this.f27580if.compareAndSet(false, true)) {
            for (Cdo cdo : this.f27578do.getAndSet(f27577try)) {
                cdo.downstream.onComplete();
            }
        }
    }

    @Override // io.reactivex.CompletableObserver
    public void onError(Throwable th) {
        Cif.m29468else(th, "onError called with null. Null values are generally not allowed in 2.x operators and sources.");
        if (!this.f27580if.compareAndSet(false, true)) {
            jp1.l(th);
            return;
        }
        this.f27579for = th;
        for (Cdo cdo : this.f27578do.getAndSet(f27577try)) {
            cdo.downstream.onError(th);
        }
    }

    @Override // io.reactivex.CompletableObserver
    public void onSubscribe(Disposable disposable) {
        if (this.f27578do.get() == f27577try) {
            disposable.dispose();
        }
    }

    public boolean p0() {
        return this.f27578do.get() == f27577try && this.f27579for != null;
    }

    public int q0() {
        return this.f27578do.get().length;
    }

    public void r0(Cdo cdo) {
        Cdo[] cdoArr;
        Cdo[] cdoArr2;
        do {
            cdoArr = this.f27578do.get();
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
                cdoArr2 = f27576new;
            } else {
                Cdo[] cdoArr3 = new Cdo[length - 1];
                System.arraycopy(cdoArr, 0, cdoArr3, 0, i);
                System.arraycopy(cdoArr, i + 1, cdoArr3, i, (length - i) - 1);
                cdoArr2 = cdoArr3;
            }
        } while (!this.f27578do.compareAndSet(cdoArr, cdoArr2));
    }
}
