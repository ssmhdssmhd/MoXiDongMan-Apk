package io.reactivex.internal.operators.maybe;

import android.support.v4.fy0;
import io.reactivex.MaybeObserver;
import io.reactivex.MaybeSource;
import io.reactivex.disposables.Disposable;
import java.util.concurrent.atomic.AtomicReference;

/* renamed from: io.reactivex.internal.operators.maybe.for, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cfor<T> extends fy0<T> implements MaybeObserver<T> {

    /* renamed from: do, reason: not valid java name */
    public final AtomicReference<MaybeSource<T>> f26146do;

    /* renamed from: for, reason: not valid java name */
    public T f26147for;

    /* renamed from: if, reason: not valid java name */
    public final AtomicReference<Cdo<T>[]> f26148if = new AtomicReference<>(f26145try);

    /* renamed from: new, reason: not valid java name */
    public Throwable f26149new;

    /* renamed from: try, reason: not valid java name */
    public static final Cdo[] f26145try = new Cdo[0];

    /* renamed from: case, reason: not valid java name */
    public static final Cdo[] f26144case = new Cdo[0];

    /* renamed from: io.reactivex.internal.operators.maybe.for$do, reason: invalid class name */
    public static final class Cdo<T> extends AtomicReference<Cfor<T>> implements Disposable {
        private static final long serialVersionUID = -5791853038359966195L;
        public final MaybeObserver<? super T> downstream;

        public Cdo(MaybeObserver<? super T> maybeObserver, Cfor<T> cfor) {
            super(cfor);
            this.downstream = maybeObserver;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            Cfor<T> andSet = getAndSet(null);
            if (andSet != null) {
                andSet.i1(this);
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return get() == null;
        }
    }

    public Cfor(MaybeSource<T> maybeSource) {
        this.f26146do = new AtomicReference<>(maybeSource);
    }

    public boolean h1(Cdo<T> cdo) {
        Cdo<T>[] cdoArr;
        Cdo<T>[] cdoArr2;
        do {
            cdoArr = this.f26148if.get();
            if (cdoArr == f26144case) {
                return false;
            }
            int length = cdoArr.length;
            cdoArr2 = new Cdo[length + 1];
            System.arraycopy(cdoArr, 0, cdoArr2, 0, length);
            cdoArr2[length] = cdo;
        } while (!this.f26148if.compareAndSet(cdoArr, cdoArr2));
        return true;
    }

    public void i1(Cdo<T> cdo) {
        Cdo<T>[] cdoArr;
        Cdo<T>[] cdoArr2;
        do {
            cdoArr = this.f26148if.get();
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
                cdoArr2 = f26145try;
            } else {
                Cdo<T>[] cdoArr3 = new Cdo[length - 1];
                System.arraycopy(cdoArr, 0, cdoArr3, 0, i);
                System.arraycopy(cdoArr, i + 1, cdoArr3, i, (length - i) - 1);
                cdoArr2 = cdoArr3;
            }
        } while (!this.f26148if.compareAndSet(cdoArr, cdoArr2));
    }

    @Override // io.reactivex.MaybeObserver
    public void onComplete() {
        for (Cdo<T> cdo : this.f26148if.getAndSet(f26144case)) {
            if (!cdo.isDisposed()) {
                cdo.downstream.onComplete();
            }
        }
    }

    @Override // io.reactivex.MaybeObserver
    public void onError(Throwable th) {
        this.f26149new = th;
        for (Cdo<T> cdo : this.f26148if.getAndSet(f26144case)) {
            if (!cdo.isDisposed()) {
                cdo.downstream.onError(th);
            }
        }
    }

    @Override // io.reactivex.MaybeObserver
    public void onSubscribe(Disposable disposable) {
    }

    @Override // io.reactivex.MaybeObserver
    public void onSuccess(T t) {
        this.f26147for = t;
        for (Cdo<T> cdo : this.f26148if.getAndSet(f26144case)) {
            if (!cdo.isDisposed()) {
                cdo.downstream.onSuccess(t);
            }
        }
    }

    @Override // android.support.v4.fy0
    public void w0(MaybeObserver<? super T> maybeObserver) {
        Cdo<T> cdo = new Cdo<>(maybeObserver, this);
        maybeObserver.onSubscribe(cdo);
        if (h1(cdo)) {
            if (cdo.isDisposed()) {
                i1(cdo);
                return;
            }
            MaybeSource<T> andSet = this.f26146do.getAndSet(null);
            if (andSet != null) {
                andSet.subscribe(this);
                return;
            }
            return;
        }
        if (cdo.isDisposed()) {
            return;
        }
        Throwable th = this.f26149new;
        if (th != null) {
            maybeObserver.onError(th);
            return;
        }
        T t = this.f26147for;
        if (t != null) {
            maybeObserver.onSuccess(t);
        } else {
            maybeObserver.onComplete();
        }
    }
}
