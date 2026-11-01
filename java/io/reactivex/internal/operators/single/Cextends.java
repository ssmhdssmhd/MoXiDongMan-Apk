package io.reactivex.internal.operators.single;

import android.support.v4.fy0;
import android.support.v4.t80;
import io.reactivex.MaybeObserver;
import io.reactivex.MaybeSource;
import io.reactivex.SingleObserver;
import io.reactivex.SingleSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Function;
import java.util.concurrent.atomic.AtomicReference;

/* renamed from: io.reactivex.internal.operators.single.extends, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cextends<T, R> extends fy0<R> {

    /* renamed from: do, reason: not valid java name */
    public final SingleSource<? extends T> f27169do;

    /* renamed from: if, reason: not valid java name */
    public final Function<? super T, ? extends MaybeSource<? extends R>> f27170if;

    /* renamed from: io.reactivex.internal.operators.single.extends$do, reason: invalid class name */
    public static final class Cdo<R> implements MaybeObserver<R> {

        /* renamed from: do, reason: not valid java name */
        public final AtomicReference<Disposable> f27171do;

        /* renamed from: if, reason: not valid java name */
        public final MaybeObserver<? super R> f27172if;

        public Cdo(AtomicReference<Disposable> atomicReference, MaybeObserver<? super R> maybeObserver) {
            this.f27171do = atomicReference;
            this.f27172if = maybeObserver;
        }

        @Override // io.reactivex.MaybeObserver
        public void onComplete() {
            this.f27172if.onComplete();
        }

        @Override // io.reactivex.MaybeObserver
        public void onError(Throwable th) {
            this.f27172if.onError(th);
        }

        @Override // io.reactivex.MaybeObserver
        public void onSubscribe(Disposable disposable) {
            io.reactivex.internal.disposables.Cdo.replace(this.f27171do, disposable);
        }

        @Override // io.reactivex.MaybeObserver
        public void onSuccess(R r) {
            this.f27172if.onSuccess(r);
        }
    }

    /* renamed from: io.reactivex.internal.operators.single.extends$if, reason: invalid class name */
    public static final class Cif<T, R> extends AtomicReference<Disposable> implements SingleObserver<T>, Disposable {
        private static final long serialVersionUID = -5843758257109742742L;
        public final MaybeObserver<? super R> downstream;
        public final Function<? super T, ? extends MaybeSource<? extends R>> mapper;

        public Cif(MaybeObserver<? super R> maybeObserver, Function<? super T, ? extends MaybeSource<? extends R>> function) {
            this.downstream = maybeObserver;
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

        @Override // io.reactivex.SingleObserver
        public void onError(Throwable th) {
            this.downstream.onError(th);
        }

        @Override // io.reactivex.SingleObserver
        public void onSubscribe(Disposable disposable) {
            if (io.reactivex.internal.disposables.Cdo.setOnce(this, disposable)) {
                this.downstream.onSubscribe(this);
            }
        }

        @Override // io.reactivex.SingleObserver
        public void onSuccess(T t) {
            try {
                MaybeSource maybeSource = (MaybeSource) io.reactivex.internal.functions.Cif.m29468else(this.mapper.apply(t), "The mapper returned a null MaybeSource");
                if (isDisposed()) {
                    return;
                }
                maybeSource.subscribe(new Cdo(this, this.downstream));
            } catch (Throwable th) {
                t80.m7781if(th);
                onError(th);
            }
        }
    }

    public Cextends(SingleSource<? extends T> singleSource, Function<? super T, ? extends MaybeSource<? extends R>> function) {
        this.f27170if = function;
        this.f27169do = singleSource;
    }

    @Override // android.support.v4.fy0
    public void w0(MaybeObserver<? super R> maybeObserver) {
        this.f27169do.subscribe(new Cif(maybeObserver, this.f27170if));
    }
}
