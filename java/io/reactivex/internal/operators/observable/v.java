package io.reactivex.internal.operators.observable;

import io.reactivex.Cnew;
import io.reactivex.Ctry;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.schedulers.Csuper;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes3.dex */
public final class v extends Cnew<Long> {

    /* renamed from: case, reason: not valid java name */
    public final TimeUnit f26967case;

    /* renamed from: do, reason: not valid java name */
    public final Ctry f26968do;

    /* renamed from: for, reason: not valid java name */
    public final long f26969for;

    /* renamed from: if, reason: not valid java name */
    public final long f26970if;

    /* renamed from: new, reason: not valid java name */
    public final long f26971new;

    /* renamed from: try, reason: not valid java name */
    public final long f26972try;

    /* renamed from: io.reactivex.internal.operators.observable.v$do, reason: invalid class name */
    public static final class Cdo extends AtomicReference<Disposable> implements Disposable, Runnable {
        private static final long serialVersionUID = 1891866368734007884L;
        public long count;
        public final Observer<? super Long> downstream;
        public final long end;

        public Cdo(Observer<? super Long> observer, long j, long j2) {
            this.downstream = observer;
            this.count = j;
            this.end = j2;
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
            long j = this.count;
            this.downstream.onNext(Long.valueOf(j));
            if (j != this.end) {
                this.count = j + 1;
            } else {
                io.reactivex.internal.disposables.Cdo.dispose(this);
                this.downstream.onComplete();
            }
        }

        public void setResource(Disposable disposable) {
            io.reactivex.internal.disposables.Cdo.setOnce(this, disposable);
        }
    }

    public v(long j, long j2, long j3, long j4, TimeUnit timeUnit, Ctry ctry) {
        this.f26971new = j3;
        this.f26972try = j4;
        this.f26967case = timeUnit;
        this.f26968do = ctry;
        this.f26970if = j;
        this.f26969for = j2;
    }

    @Override // io.reactivex.Cnew
    public void subscribeActual(Observer<? super Long> observer) {
        Cdo cdo = new Cdo(observer, this.f26970if, this.f26969for);
        observer.onSubscribe(cdo);
        Ctry ctry = this.f26968do;
        if (!(ctry instanceof Csuper)) {
            cdo.setResource(ctry.mo29689case(cdo, this.f26971new, this.f26972try, this.f26967case));
            return;
        }
        Ctry.Cfor cforMo4229if = ctry.mo4229if();
        cdo.setResource(cforMo4229if);
        cforMo4229if.mo29701new(cdo, this.f26971new, this.f26972try, this.f26967case);
    }
}
