package io.reactivex.internal.operators.maybe;

import android.support.v4.t80;
import io.reactivex.MaybeObserver;
import io.reactivex.MaybeSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Function;
import io.reactivex.internal.functions.Cif;

/* loaded from: classes3.dex */
public final class b<T, R> extends io.reactivex.internal.operators.maybe.Cdo<T, R> {

    /* renamed from: if, reason: not valid java name */
    public final Function<? super T, ? extends R> f26086if;

    /* renamed from: io.reactivex.internal.operators.maybe.b$do, reason: invalid class name */
    public static final class Cdo<T, R> implements MaybeObserver<T>, Disposable {

        /* renamed from: do, reason: not valid java name */
        public final MaybeObserver<? super R> f26087do;

        /* renamed from: for, reason: not valid java name */
        public Disposable f26088for;

        /* renamed from: if, reason: not valid java name */
        public final Function<? super T, ? extends R> f26089if;

        public Cdo(MaybeObserver<? super R> maybeObserver, Function<? super T, ? extends R> function) {
            this.f26087do = maybeObserver;
            this.f26089if = function;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            Disposable disposable = this.f26088for;
            this.f26088for = io.reactivex.internal.disposables.Cdo.DISPOSED;
            disposable.dispose();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f26088for.isDisposed();
        }

        @Override // io.reactivex.MaybeObserver
        public void onComplete() {
            this.f26087do.onComplete();
        }

        @Override // io.reactivex.MaybeObserver
        public void onError(Throwable th) {
            this.f26087do.onError(th);
        }

        @Override // io.reactivex.MaybeObserver
        public void onSubscribe(Disposable disposable) {
            if (io.reactivex.internal.disposables.Cdo.validate(this.f26088for, disposable)) {
                this.f26088for = disposable;
                this.f26087do.onSubscribe(this);
            }
        }

        @Override // io.reactivex.MaybeObserver
        public void onSuccess(T t) {
            try {
                this.f26087do.onSuccess(Cif.m29468else(this.f26089if.apply(t), "The mapper returned a null item"));
            } catch (Throwable th) {
                t80.m7781if(th);
                this.f26087do.onError(th);
            }
        }
    }

    public b(MaybeSource<T> maybeSource, Function<? super T, ? extends R> function) {
        super(maybeSource);
        this.f26086if = function;
    }

    @Override // android.support.v4.fy0
    public void w0(MaybeObserver<? super R> maybeObserver) {
        this.f26120do.subscribe(new Cdo(maybeObserver, this.f26086if));
    }
}
