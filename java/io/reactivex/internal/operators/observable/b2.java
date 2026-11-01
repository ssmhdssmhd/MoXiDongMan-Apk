package io.reactivex.internal.operators.observable;

import io.reactivex.Cnew;
import io.reactivex.Ctry;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.Cif;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes3.dex */
public final class b2 extends Cnew<Long> {

    /* renamed from: do, reason: not valid java name */
    public final Ctry f26414do;

    /* renamed from: for, reason: not valid java name */
    public final TimeUnit f26415for;

    /* renamed from: if, reason: not valid java name */
    public final long f26416if;

    /* renamed from: io.reactivex.internal.operators.observable.b2$do, reason: invalid class name */
    public static final class Cdo extends AtomicReference<Disposable> implements Disposable, Runnable {
        private static final long serialVersionUID = -2809475196591179431L;
        public final Observer<? super Long> downstream;

        public Cdo(Observer<? super Long> observer) {
            this.downstream = observer;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            io.reactivex.internal.disposables.Cdo.dispose(this);
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return get() == io.reactivex.internal.disposables.Cdo.DISPOSED;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (isDisposed()) {
                return;
            }
            this.downstream.onNext(0L);
            lazySet(Cif.INSTANCE);
            this.downstream.onComplete();
        }

        public void setResource(Disposable disposable) {
            io.reactivex.internal.disposables.Cdo.trySet(this, disposable);
        }
    }

    public b2(long j, TimeUnit timeUnit, Ctry ctry) {
        this.f26416if = j;
        this.f26415for = timeUnit;
        this.f26414do = ctry;
    }

    @Override // io.reactivex.Cnew
    public void subscribeActual(Observer<? super Long> observer) {
        Cdo cdo = new Cdo(observer);
        observer.onSubscribe(cdo);
        cdo.setResource(this.f26414do.mo29361try(cdo, this.f26416if, this.f26415for));
    }
}
