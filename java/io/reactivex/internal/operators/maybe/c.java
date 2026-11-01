package io.reactivex.internal.operators.maybe;

import io.reactivex.Ctry;
import io.reactivex.MaybeObserver;
import io.reactivex.MaybeSource;
import io.reactivex.disposables.Disposable;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes3.dex */
public final class c<T> extends io.reactivex.internal.operators.maybe.Cdo<T, T> {

    /* renamed from: if, reason: not valid java name */
    public final Ctry f26093if;

    /* renamed from: io.reactivex.internal.operators.maybe.c$do, reason: invalid class name */
    public static final class Cdo<T> extends AtomicReference<Disposable> implements MaybeObserver<T>, Disposable, Runnable {
        private static final long serialVersionUID = 8571289934935992137L;
        public final MaybeObserver<? super T> downstream;
        public Throwable error;
        public final Ctry scheduler;
        public T value;

        public Cdo(MaybeObserver<? super T> maybeObserver, Ctry ctry) {
            this.downstream = maybeObserver;
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
            io.reactivex.internal.disposables.Cdo.replace(this, this.scheduler.mo29697new(this));
        }

        @Override // io.reactivex.MaybeObserver
        public void onError(Throwable th) {
            this.error = th;
            io.reactivex.internal.disposables.Cdo.replace(this, this.scheduler.mo29697new(this));
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
            io.reactivex.internal.disposables.Cdo.replace(this, this.scheduler.mo29697new(this));
        }

        @Override // java.lang.Runnable
        public void run() {
            Throwable th = this.error;
            if (th != null) {
                this.error = null;
                this.downstream.onError(th);
                return;
            }
            T t = this.value;
            if (t == null) {
                this.downstream.onComplete();
            } else {
                this.value = null;
                this.downstream.onSuccess(t);
            }
        }
    }

    public c(MaybeSource<T> maybeSource, Ctry ctry) {
        super(maybeSource);
        this.f26093if = ctry;
    }

    @Override // android.support.v4.fy0
    public void w0(MaybeObserver<? super T> maybeObserver) {
        this.f26120do.subscribe(new Cdo(maybeObserver, this.f26093if));
    }
}
