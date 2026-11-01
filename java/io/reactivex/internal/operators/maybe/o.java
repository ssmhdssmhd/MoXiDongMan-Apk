package io.reactivex.internal.operators.maybe;

import android.support.v4.fy0;
import io.reactivex.Ctry;
import io.reactivex.MaybeObserver;
import io.reactivex.disposables.Disposable;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes3.dex */
public final class o extends fy0<Long> {

    /* renamed from: do, reason: not valid java name */
    public final long f26200do;

    /* renamed from: for, reason: not valid java name */
    public final Ctry f26201for;

    /* renamed from: if, reason: not valid java name */
    public final TimeUnit f26202if;

    /* renamed from: io.reactivex.internal.operators.maybe.o$do, reason: invalid class name */
    public static final class Cdo extends AtomicReference<Disposable> implements Disposable, Runnable {
        private static final long serialVersionUID = 2875964065294031672L;
        public final MaybeObserver<? super Long> downstream;

        public Cdo(MaybeObserver<? super Long> maybeObserver) {
            this.downstream = maybeObserver;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            io.reactivex.internal.disposables.Cdo.dispose(this);
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return io.reactivex.internal.disposables.Cdo.isDisposed(get());
        }

        @Override // java.lang.Runnable
        public void run() {
            this.downstream.onSuccess(0L);
        }

        public void setFuture(Disposable disposable) {
            io.reactivex.internal.disposables.Cdo.replace(this, disposable);
        }
    }

    public o(long j, TimeUnit timeUnit, Ctry ctry) {
        this.f26200do = j;
        this.f26202if = timeUnit;
        this.f26201for = ctry;
    }

    @Override // android.support.v4.fy0
    public void w0(MaybeObserver<? super Long> maybeObserver) {
        Cdo cdo = new Cdo(maybeObserver);
        maybeObserver.onSubscribe(cdo);
        cdo.setFuture(this.f26201for.mo29361try(cdo, this.f26200do, this.f26202if));
    }
}
