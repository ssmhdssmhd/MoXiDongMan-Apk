package io.reactivex.internal.operators.maybe;

import android.support.v4.jz1;
import io.reactivex.MaybeObserver;
import io.reactivex.MaybeSource;
import io.reactivex.SingleObserver;
import io.reactivex.SingleSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.fuseable.HasUpstreamMaybeSource;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes3.dex */
public final class j<T> extends jz1<T> implements HasUpstreamMaybeSource<T> {

    /* renamed from: do, reason: not valid java name */
    public final MaybeSource<T> f26186do;

    /* renamed from: if, reason: not valid java name */
    public final SingleSource<? extends T> f26187if;

    /* renamed from: io.reactivex.internal.operators.maybe.j$do, reason: invalid class name */
    public static final class Cdo<T> extends AtomicReference<Disposable> implements MaybeObserver<T>, Disposable {
        private static final long serialVersionUID = 4603919676453758899L;
        public final SingleObserver<? super T> downstream;
        public final SingleSource<? extends T> other;

        /* renamed from: io.reactivex.internal.operators.maybe.j$do$do, reason: invalid class name and collision with other inner class name */
        public static final class C0296do<T> implements SingleObserver<T> {

            /* renamed from: do, reason: not valid java name */
            public final SingleObserver<? super T> f26188do;

            /* renamed from: if, reason: not valid java name */
            public final AtomicReference<Disposable> f26189if;

            public C0296do(SingleObserver<? super T> singleObserver, AtomicReference<Disposable> atomicReference) {
                this.f26188do = singleObserver;
                this.f26189if = atomicReference;
            }

            @Override // io.reactivex.SingleObserver
            public void onError(Throwable th) {
                this.f26188do.onError(th);
            }

            @Override // io.reactivex.SingleObserver
            public void onSubscribe(Disposable disposable) {
                io.reactivex.internal.disposables.Cdo.setOnce(this.f26189if, disposable);
            }

            @Override // io.reactivex.SingleObserver
            public void onSuccess(T t) {
                this.f26188do.onSuccess(t);
            }
        }

        public Cdo(SingleObserver<? super T> singleObserver, SingleSource<? extends T> singleSource) {
            this.downstream = singleObserver;
            this.other = singleSource;
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
            Disposable disposable = get();
            if (disposable == io.reactivex.internal.disposables.Cdo.DISPOSED || !compareAndSet(disposable, null)) {
                return;
            }
            this.other.subscribe(new C0296do(this.downstream, this));
        }

        @Override // io.reactivex.MaybeObserver
        public void onError(Throwable th) {
            this.downstream.onError(th);
        }

        @Override // io.reactivex.MaybeObserver
        public void onSubscribe(Disposable disposable) {
            if (io.reactivex.internal.disposables.Cdo.setOnce(this, disposable)) {
                this.downstream.onSubscribe(this);
            }
        }

        @Override // io.reactivex.MaybeObserver
        public void onSuccess(T t) {
            this.downstream.onSuccess(t);
        }
    }

    public j(MaybeSource<T> maybeSource, SingleSource<? extends T> singleSource) {
        this.f26186do = maybeSource;
        this.f26187if = singleSource;
    }

    @Override // android.support.v4.jz1
    public void g0(SingleObserver<? super T> singleObserver) {
        this.f26186do.subscribe(new Cdo(singleObserver, this.f26187if));
    }

    @Override // io.reactivex.internal.fuseable.HasUpstreamMaybeSource
    public MaybeSource<T> source() {
        return this.f26186do;
    }
}
