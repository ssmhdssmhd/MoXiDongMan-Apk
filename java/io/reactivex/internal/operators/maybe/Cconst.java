package io.reactivex.internal.operators.maybe;

import android.support.v4.fy0;
import io.reactivex.CompletableObserver;
import io.reactivex.CompletableSource;
import io.reactivex.MaybeObserver;
import io.reactivex.MaybeSource;
import io.reactivex.disposables.Disposable;
import java.util.concurrent.atomic.AtomicReference;

/* renamed from: io.reactivex.internal.operators.maybe.const, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cconst<T> extends fy0<T> {

    /* renamed from: do, reason: not valid java name */
    public final MaybeSource<T> f26103do;

    /* renamed from: if, reason: not valid java name */
    public final CompletableSource f26104if;

    /* renamed from: io.reactivex.internal.operators.maybe.const$do, reason: invalid class name */
    public static final class Cdo<T> implements MaybeObserver<T> {

        /* renamed from: do, reason: not valid java name */
        public final AtomicReference<Disposable> f26105do;

        /* renamed from: if, reason: not valid java name */
        public final MaybeObserver<? super T> f26106if;

        public Cdo(AtomicReference<Disposable> atomicReference, MaybeObserver<? super T> maybeObserver) {
            this.f26105do = atomicReference;
            this.f26106if = maybeObserver;
        }

        @Override // io.reactivex.MaybeObserver
        public void onComplete() {
            this.f26106if.onComplete();
        }

        @Override // io.reactivex.MaybeObserver
        public void onError(Throwable th) {
            this.f26106if.onError(th);
        }

        @Override // io.reactivex.MaybeObserver
        public void onSubscribe(Disposable disposable) {
            io.reactivex.internal.disposables.Cdo.replace(this.f26105do, disposable);
        }

        @Override // io.reactivex.MaybeObserver
        public void onSuccess(T t) {
            this.f26106if.onSuccess(t);
        }
    }

    /* renamed from: io.reactivex.internal.operators.maybe.const$if, reason: invalid class name */
    public static final class Cif<T> extends AtomicReference<Disposable> implements CompletableObserver, Disposable {
        private static final long serialVersionUID = 703409937383992161L;
        public final MaybeObserver<? super T> downstream;
        public final MaybeSource<T> source;

        public Cif(MaybeObserver<? super T> maybeObserver, MaybeSource<T> maybeSource) {
            this.downstream = maybeObserver;
            this.source = maybeSource;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            io.reactivex.internal.disposables.Cdo.dispose(this);
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return io.reactivex.internal.disposables.Cdo.isDisposed(get());
        }

        @Override // io.reactivex.CompletableObserver, io.reactivex.MaybeObserver
        public void onComplete() {
            this.source.subscribe(new Cdo(this, this.downstream));
        }

        @Override // io.reactivex.CompletableObserver
        public void onError(Throwable th) {
            this.downstream.onError(th);
        }

        @Override // io.reactivex.CompletableObserver
        public void onSubscribe(Disposable disposable) {
            if (io.reactivex.internal.disposables.Cdo.setOnce(this, disposable)) {
                this.downstream.onSubscribe(this);
            }
        }
    }

    public Cconst(MaybeSource<T> maybeSource, CompletableSource completableSource) {
        this.f26103do = maybeSource;
        this.f26104if = completableSource;
    }

    @Override // android.support.v4.fy0
    public void w0(MaybeObserver<? super T> maybeObserver) {
        this.f26104if.subscribe(new Cif(maybeObserver, this.f26103do));
    }
}
