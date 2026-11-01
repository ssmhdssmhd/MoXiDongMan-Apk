package io.reactivex.internal.operators.maybe;

import android.support.v4.tw1;
import io.reactivex.Ctry;
import io.reactivex.MaybeObserver;
import io.reactivex.MaybeSource;
import io.reactivex.disposables.Disposable;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes3.dex */
public final class h<T> extends io.reactivex.internal.operators.maybe.Cdo<T, T> {

    /* renamed from: if, reason: not valid java name */
    public final Ctry f26162if;

    /* renamed from: io.reactivex.internal.operators.maybe.h$do, reason: invalid class name */
    public static final class Cdo<T> extends AtomicReference<Disposable> implements MaybeObserver<T>, Disposable {
        private static final long serialVersionUID = 8571289934935992137L;
        public final MaybeObserver<? super T> downstream;
        public final tw1 task = new tw1();

        public Cdo(MaybeObserver<? super T> maybeObserver) {
            this.downstream = maybeObserver;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            io.reactivex.internal.disposables.Cdo.dispose(this);
            this.task.dispose();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return io.reactivex.internal.disposables.Cdo.isDisposed(get());
        }

        @Override // io.reactivex.MaybeObserver
        public void onComplete() {
            this.downstream.onComplete();
        }

        @Override // io.reactivex.MaybeObserver
        public void onError(Throwable th) {
            this.downstream.onError(th);
        }

        @Override // io.reactivex.MaybeObserver
        public void onSubscribe(Disposable disposable) {
            io.reactivex.internal.disposables.Cdo.setOnce(this, disposable);
        }

        @Override // io.reactivex.MaybeObserver
        public void onSuccess(T t) {
            this.downstream.onSuccess(t);
        }
    }

    /* renamed from: io.reactivex.internal.operators.maybe.h$if, reason: invalid class name */
    public static final class Cif<T> implements Runnable {

        /* renamed from: do, reason: not valid java name */
        public final MaybeObserver<? super T> f26163do;

        /* renamed from: if, reason: not valid java name */
        public final MaybeSource<T> f26164if;

        public Cif(MaybeObserver<? super T> maybeObserver, MaybeSource<T> maybeSource) {
            this.f26163do = maybeObserver;
            this.f26164if = maybeSource;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f26164if.subscribe(this.f26163do);
        }
    }

    public h(MaybeSource<T> maybeSource, Ctry ctry) {
        super(maybeSource);
        this.f26162if = ctry;
    }

    @Override // android.support.v4.fy0
    public void w0(MaybeObserver<? super T> maybeObserver) {
        Cdo cdo = new Cdo(maybeObserver);
        maybeObserver.onSubscribe(cdo);
        cdo.task.replace(this.f26162if.mo29697new(new Cif(cdo, this.f26120do)));
    }
}
