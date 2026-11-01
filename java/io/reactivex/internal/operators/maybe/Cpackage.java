package io.reactivex.internal.operators.maybe;

import android.support.v4.fy0;
import android.support.v4.t80;
import io.reactivex.MaybeObserver;
import io.reactivex.MaybeSource;
import io.reactivex.SingleObserver;
import io.reactivex.SingleSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Function;
import java.util.concurrent.atomic.AtomicReference;

/* renamed from: io.reactivex.internal.operators.maybe.package, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cpackage<T, R> extends fy0<R> {

    /* renamed from: do, reason: not valid java name */
    public final MaybeSource<T> f26204do;

    /* renamed from: if, reason: not valid java name */
    public final Function<? super T, ? extends SingleSource<? extends R>> f26205if;

    /* renamed from: io.reactivex.internal.operators.maybe.package$do, reason: invalid class name */
    public static final class Cdo<T, R> extends AtomicReference<Disposable> implements MaybeObserver<T>, Disposable {
        private static final long serialVersionUID = 4827726964688405508L;
        public final MaybeObserver<? super R> downstream;
        public final Function<? super T, ? extends SingleSource<? extends R>> mapper;

        public Cdo(MaybeObserver<? super R> maybeObserver, Function<? super T, ? extends SingleSource<? extends R>> function) {
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
            if (io.reactivex.internal.disposables.Cdo.setOnce(this, disposable)) {
                this.downstream.onSubscribe(this);
            }
        }

        @Override // io.reactivex.MaybeObserver
        public void onSuccess(T t) {
            try {
                ((SingleSource) io.reactivex.internal.functions.Cif.m29468else(this.mapper.apply(t), "The mapper returned a null SingleSource")).subscribe(new Cif(this, this.downstream));
            } catch (Throwable th) {
                t80.m7781if(th);
                onError(th);
            }
        }
    }

    /* renamed from: io.reactivex.internal.operators.maybe.package$if, reason: invalid class name */
    public static final class Cif<R> implements SingleObserver<R> {

        /* renamed from: do, reason: not valid java name */
        public final AtomicReference<Disposable> f26206do;

        /* renamed from: if, reason: not valid java name */
        public final MaybeObserver<? super R> f26207if;

        public Cif(AtomicReference<Disposable> atomicReference, MaybeObserver<? super R> maybeObserver) {
            this.f26206do = atomicReference;
            this.f26207if = maybeObserver;
        }

        @Override // io.reactivex.SingleObserver
        public void onError(Throwable th) {
            this.f26207if.onError(th);
        }

        @Override // io.reactivex.SingleObserver
        public void onSubscribe(Disposable disposable) {
            io.reactivex.internal.disposables.Cdo.replace(this.f26206do, disposable);
        }

        @Override // io.reactivex.SingleObserver
        public void onSuccess(R r) {
            this.f26207if.onSuccess(r);
        }
    }

    public Cpackage(MaybeSource<T> maybeSource, Function<? super T, ? extends SingleSource<? extends R>> function) {
        this.f26204do = maybeSource;
        this.f26205if = function;
    }

    @Override // android.support.v4.fy0
    public void w0(MaybeObserver<? super R> maybeObserver) {
        this.f26204do.subscribe(new Cdo(maybeObserver, this.f26205if));
    }
}
