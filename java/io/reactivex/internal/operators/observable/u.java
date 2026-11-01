package io.reactivex.internal.operators.observable;

import io.reactivex.Cnew;
import io.reactivex.Ctry;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.schedulers.Csuper;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes3.dex */
public final class u extends Cnew<Long> {

    /* renamed from: do, reason: not valid java name */
    public final Ctry f26956do;

    /* renamed from: for, reason: not valid java name */
    public final long f26957for;

    /* renamed from: if, reason: not valid java name */
    public final long f26958if;

    /* renamed from: new, reason: not valid java name */
    public final TimeUnit f26959new;

    /* renamed from: io.reactivex.internal.operators.observable.u$do, reason: invalid class name */
    public static final class Cdo extends AtomicReference<Disposable> implements Disposable, Runnable {
        private static final long serialVersionUID = 346773832286157679L;
        public long count;
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
            if (get() != io.reactivex.internal.disposables.Cdo.DISPOSED) {
                Observer<? super Long> observer = this.downstream;
                long j = this.count;
                this.count = 1 + j;
                observer.onNext(Long.valueOf(j));
            }
        }

        public void setResource(Disposable disposable) {
            io.reactivex.internal.disposables.Cdo.setOnce(this, disposable);
        }
    }

    public u(long j, long j2, TimeUnit timeUnit, Ctry ctry) {
        this.f26958if = j;
        this.f26957for = j2;
        this.f26959new = timeUnit;
        this.f26956do = ctry;
    }

    @Override // io.reactivex.Cnew
    public void subscribeActual(Observer<? super Long> observer) {
        Cdo cdo = new Cdo(observer);
        observer.onSubscribe(cdo);
        Ctry ctry = this.f26956do;
        if (!(ctry instanceof Csuper)) {
            cdo.setResource(ctry.mo29689case(cdo, this.f26958if, this.f26957for, this.f26959new));
            return;
        }
        Ctry.Cfor cforMo4229if = ctry.mo4229if();
        cdo.setResource(cforMo4229if);
        cforMo4229if.mo29701new(cdo, this.f26958if, this.f26957for, this.f26959new);
    }
}
