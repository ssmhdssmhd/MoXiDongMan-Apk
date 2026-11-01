package io.reactivex.internal.operators.maybe;

import android.support.v4.jz1;
import android.support.v4.t80;
import io.reactivex.MaybeObserver;
import io.reactivex.MaybeSource;
import io.reactivex.SingleObserver;
import io.reactivex.SingleSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Function;
import java.util.NoSuchElementException;
import java.util.concurrent.atomic.AtomicReference;

/* renamed from: io.reactivex.internal.operators.maybe.finally, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cfinally<T, R> extends jz1<R> {

    /* renamed from: do, reason: not valid java name */
    public final MaybeSource<T> f26140do;

    /* renamed from: if, reason: not valid java name */
    public final Function<? super T, ? extends SingleSource<? extends R>> f26141if;

    /* renamed from: io.reactivex.internal.operators.maybe.finally$do, reason: invalid class name */
    public static final class Cdo<T, R> extends AtomicReference<Disposable> implements MaybeObserver<T>, Disposable {
        private static final long serialVersionUID = 4827726964688405508L;
        public final SingleObserver<? super R> downstream;
        public final Function<? super T, ? extends SingleSource<? extends R>> mapper;

        public Cdo(SingleObserver<? super R> singleObserver, Function<? super T, ? extends SingleSource<? extends R>> function) {
            this.downstream = singleObserver;
            this.mapper = function;
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
            this.downstream.onError(new NoSuchElementException());
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
            try {
                SingleSource singleSource = (SingleSource) io.reactivex.internal.functions.Cif.m29468else(this.mapper.apply(t), "The mapper returned a null SingleSource");
                if (isDisposed()) {
                    return;
                }
                singleSource.subscribe(new Cif(this, this.downstream));
            } catch (Throwable th) {
                t80.m7781if(th);
                onError(th);
            }
        }
    }

    /* renamed from: io.reactivex.internal.operators.maybe.finally$if, reason: invalid class name */
    public static final class Cif<R> implements SingleObserver<R> {

        /* renamed from: do, reason: not valid java name */
        public final AtomicReference<Disposable> f26142do;

        /* renamed from: if, reason: not valid java name */
        public final SingleObserver<? super R> f26143if;

        public Cif(AtomicReference<Disposable> atomicReference, SingleObserver<? super R> singleObserver) {
            this.f26142do = atomicReference;
            this.f26143if = singleObserver;
        }

        @Override // io.reactivex.SingleObserver
        public void onError(Throwable th) {
            this.f26143if.onError(th);
        }

        @Override // io.reactivex.SingleObserver
        public void onSubscribe(Disposable disposable) {
            io.reactivex.internal.disposables.Cdo.replace(this.f26142do, disposable);
        }

        @Override // io.reactivex.SingleObserver
        public void onSuccess(R r) {
            this.f26143if.onSuccess(r);
        }
    }

    public Cfinally(MaybeSource<T> maybeSource, Function<? super T, ? extends SingleSource<? extends R>> function) {
        this.f26140do = maybeSource;
        this.f26141if = function;
    }

    @Override // android.support.v4.jz1
    public void g0(SingleObserver<? super R> singleObserver) {
        this.f26140do.subscribe(new Cdo(singleObserver, this.f26141if));
    }
}
