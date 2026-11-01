package io.reactivex.internal.operators.maybe;

import io.reactivex.Ctry;
import io.reactivex.MaybeObserver;
import io.reactivex.MaybeSource;
import io.reactivex.disposables.Disposable;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

/* renamed from: io.reactivex.internal.operators.maybe.break, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cbreak<T> extends io.reactivex.internal.operators.maybe.Cdo<T, T> {

    /* renamed from: for, reason: not valid java name */
    public final TimeUnit f26090for;

    /* renamed from: if, reason: not valid java name */
    public final long f26091if;

    /* renamed from: new, reason: not valid java name */
    public final Ctry f26092new;

    /* renamed from: io.reactivex.internal.operators.maybe.break$do, reason: invalid class name */
    public static final class Cdo<T> extends AtomicReference<Disposable> implements MaybeObserver<T>, Disposable, Runnable {
        private static final long serialVersionUID = 5566860102500855068L;
        public final long delay;
        public final MaybeObserver<? super T> downstream;
        public Throwable error;
        public final Ctry scheduler;
        public final TimeUnit unit;
        public T value;

        public Cdo(MaybeObserver<? super T> maybeObserver, long j, TimeUnit timeUnit, Ctry ctry) {
            this.downstream = maybeObserver;
            this.delay = j;
            this.unit = timeUnit;
            this.scheduler = ctry;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            io.reactivex.internal.disposables.Cdo.dispose(this);
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return io.reactivex.internal.disposables.Cdo.isDisposed(get());
        }

        @Override // io.reactivex.MaybeObserver
        public void onComplete() {
            schedule();
        }

        @Override // io.reactivex.MaybeObserver
        public void onError(Throwable th) {
            this.error = th;
            schedule();
        }

        @Override // io.reactivex.MaybeObserver
        public void onSubscribe(Disposable disposable) {
            if (io.reactivex.internal.disposables.Cdo.setOnce(this, disposable)) {
                this.downstream.onSubscribe(this);
            }
        }

        @Override // io.reactivex.MaybeObserver
        public void onSuccess(T t) {
            this.value = t;
            schedule();
        }

        @Override // java.lang.Runnable
        public void run() {
            Throwable th = this.error;
            if (th != null) {
                this.downstream.onError(th);
                return;
            }
            T t = this.value;
            if (t != null) {
                this.downstream.onSuccess(t);
            } else {
                this.downstream.onComplete();
            }
        }

        public void schedule() {
            io.reactivex.internal.disposables.Cdo.replace(this, this.scheduler.mo29361try(this, this.delay, this.unit));
        }
    }

    public Cbreak(MaybeSource<T> maybeSource, long j, TimeUnit timeUnit, Ctry ctry) {
        super(maybeSource);
        this.f26091if = j;
        this.f26090for = timeUnit;
        this.f26092new = ctry;
    }

    @Override // android.support.v4.fy0
    public void w0(MaybeObserver<? super T> maybeObserver) {
        this.f26120do.subscribe(new Cdo(maybeObserver, this.f26091if, this.f26090for, this.f26092new));
    }
}
