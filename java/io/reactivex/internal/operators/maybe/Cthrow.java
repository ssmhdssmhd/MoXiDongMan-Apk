package io.reactivex.internal.operators.maybe;

import android.support.v4.jp1;
import android.support.v4.t80;
import io.reactivex.MaybeObserver;
import io.reactivex.MaybeSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Action;
import java.util.concurrent.atomic.AtomicInteger;

/* renamed from: io.reactivex.internal.operators.maybe.throw, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cthrow<T> extends io.reactivex.internal.operators.maybe.Cdo<T, T> {

    /* renamed from: if, reason: not valid java name */
    public final Action f26245if;

    /* renamed from: io.reactivex.internal.operators.maybe.throw$do, reason: invalid class name */
    public static final class Cdo<T> extends AtomicInteger implements MaybeObserver<T>, Disposable {
        private static final long serialVersionUID = 4109457741734051389L;
        public final MaybeObserver<? super T> downstream;
        public final Action onFinally;
        public Disposable upstream;

        public Cdo(MaybeObserver<? super T> maybeObserver, Action action) {
            this.downstream = maybeObserver;
            this.onFinally = action;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.upstream.dispose();
            runFinally();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.upstream.isDisposed();
        }

        @Override // io.reactivex.MaybeObserver
        public void onComplete() {
            this.downstream.onComplete();
            runFinally();
        }

        @Override // io.reactivex.MaybeObserver
        public void onError(Throwable th) {
            this.downstream.onError(th);
            runFinally();
        }

        @Override // io.reactivex.MaybeObserver
        public void onSubscribe(Disposable disposable) {
            if (io.reactivex.internal.disposables.Cdo.validate(this.upstream, disposable)) {
                this.upstream = disposable;
                this.downstream.onSubscribe(this);
            }
        }

        @Override // io.reactivex.MaybeObserver
        public void onSuccess(T t) {
            this.downstream.onSuccess(t);
            runFinally();
        }

        public void runFinally() {
            if (compareAndSet(0, 1)) {
                try {
                    this.onFinally.run();
                } catch (Throwable th) {
                    t80.m7781if(th);
                    jp1.l(th);
                }
            }
        }
    }

    public Cthrow(MaybeSource<T> maybeSource, Action action) {
        super(maybeSource);
        this.f26245if = action;
    }

    @Override // android.support.v4.fy0
    public void w0(MaybeObserver<? super T> maybeObserver) {
        this.f26120do.subscribe(new Cdo(maybeObserver, this.f26245if));
    }
}
