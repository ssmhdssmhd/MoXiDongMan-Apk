package io.reactivex.internal.operators.completable;

import android.support.v4.np;
import io.reactivex.CompletableObserver;
import io.reactivex.CompletableSource;
import io.reactivex.disposables.Disposable;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

/* renamed from: io.reactivex.internal.operators.completable.for, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cfor extends np implements CompletableObserver {

    /* renamed from: do, reason: not valid java name */
    public final CompletableSource f25403do;

    /* renamed from: new, reason: not valid java name */
    public Throwable f25406new;

    /* renamed from: try, reason: not valid java name */
    public static final Cdo[] f25402try = new Cdo[0];

    /* renamed from: case, reason: not valid java name */
    public static final Cdo[] f25401case = new Cdo[0];

    /* renamed from: if, reason: not valid java name */
    public final AtomicReference<Cdo[]> f25405if = new AtomicReference<>(f25402try);

    /* renamed from: for, reason: not valid java name */
    public final AtomicBoolean f25404for = new AtomicBoolean();

    /* renamed from: io.reactivex.internal.operators.completable.for$do, reason: invalid class name */
    public final class Cdo extends AtomicBoolean implements Disposable {
        private static final long serialVersionUID = 8943152917179642732L;
        public final CompletableObserver downstream;

        public Cdo(CompletableObserver completableObserver) {
            this.downstream = completableObserver;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            if (compareAndSet(false, true)) {
                Cfor.this.l0(this);
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return get();
        }
    }

    public Cfor(CompletableSource completableSource) {
        this.f25403do = completableSource;
    }

    @Override // android.support.v4.np
    public void O(CompletableObserver completableObserver) {
        Cdo cdo = new Cdo(completableObserver);
        completableObserver.onSubscribe(cdo);
        if (k0(cdo)) {
            if (cdo.isDisposed()) {
                l0(cdo);
            }
            if (this.f25404for.compareAndSet(false, true)) {
                this.f25403do.subscribe(this);
                return;
            }
            return;
        }
        Throwable th = this.f25406new;
        if (th != null) {
            completableObserver.onError(th);
        } else {
            completableObserver.onComplete();
        }
    }

    public boolean k0(Cdo cdo) {
        Cdo[] cdoArr;
        Cdo[] cdoArr2;
        do {
            cdoArr = this.f25405if.get();
            if (cdoArr == f25401case) {
                return false;
            }
            int length = cdoArr.length;
            cdoArr2 = new Cdo[length + 1];
            System.arraycopy(cdoArr, 0, cdoArr2, 0, length);
            cdoArr2[length] = cdo;
        } while (!this.f25405if.compareAndSet(cdoArr, cdoArr2));
        return true;
    }

    public void l0(Cdo cdo) {
        Cdo[] cdoArr;
        Cdo[] cdoArr2;
        do {
            cdoArr = this.f25405if.get();
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
                cdoArr2 = f25402try;
            } else {
                Cdo[] cdoArr3 = new Cdo[length - 1];
                System.arraycopy(cdoArr, 0, cdoArr3, 0, i);
                System.arraycopy(cdoArr, i + 1, cdoArr3, i, (length - i) - 1);
                cdoArr2 = cdoArr3;
            }
        } while (!this.f25405if.compareAndSet(cdoArr, cdoArr2));
    }

    @Override // io.reactivex.CompletableObserver, io.reactivex.MaybeObserver
    public void onComplete() {
        for (Cdo cdo : this.f25405if.getAndSet(f25401case)) {
            if (!cdo.get()) {
                cdo.downstream.onComplete();
            }
        }
    }

    @Override // io.reactivex.CompletableObserver
    public void onError(Throwable th) {
        this.f25406new = th;
        for (Cdo cdo : this.f25405if.getAndSet(f25401case)) {
            if (!cdo.get()) {
                cdo.downstream.onError(th);
            }
        }
    }

    @Override // io.reactivex.CompletableObserver
    public void onSubscribe(Disposable disposable) {
    }
}
