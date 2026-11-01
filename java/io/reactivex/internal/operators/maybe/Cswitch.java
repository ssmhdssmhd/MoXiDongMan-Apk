package io.reactivex.internal.operators.maybe;

import android.support.v4.np;
import android.support.v4.t80;
import io.reactivex.CompletableObserver;
import io.reactivex.CompletableSource;
import io.reactivex.MaybeObserver;
import io.reactivex.MaybeSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Function;
import io.reactivex.internal.functions.Cif;
import java.util.concurrent.atomic.AtomicReference;

/* renamed from: io.reactivex.internal.operators.maybe.switch, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cswitch<T> extends np {

    /* renamed from: do, reason: not valid java name */
    public final MaybeSource<T> f26239do;

    /* renamed from: if, reason: not valid java name */
    public final Function<? super T, ? extends CompletableSource> f26240if;

    /* renamed from: io.reactivex.internal.operators.maybe.switch$do, reason: invalid class name */
    public static final class Cdo<T> extends AtomicReference<Disposable> implements MaybeObserver<T>, CompletableObserver, Disposable {
        private static final long serialVersionUID = -2177128922851101253L;
        public final CompletableObserver downstream;
        public final Function<? super T, ? extends CompletableSource> mapper;

        public Cdo(CompletableObserver completableObserver, Function<? super T, ? extends CompletableSource> function) {
            this.downstream = completableObserver;
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
            io.reactivex.internal.disposables.Cdo.replace(this, disposable);
        }

        @Override // io.reactivex.MaybeObserver
        public void onSuccess(T t) {
            try {
                CompletableSource completableSource = (CompletableSource) Cif.m29468else(this.mapper.apply(t), "The mapper returned a null CompletableSource");
                if (isDisposed()) {
                    return;
                }
                completableSource.subscribe(this);
            } catch (Throwable th) {
                t80.m7781if(th);
                onError(th);
            }
        }
    }

    public Cswitch(MaybeSource<T> maybeSource, Function<? super T, ? extends CompletableSource> function) {
        this.f26239do = maybeSource;
        this.f26240if = function;
    }

    @Override // android.support.v4.np
    public void O(CompletableObserver completableObserver) {
        Cdo cdo = new Cdo(completableObserver, this.f26240if);
        completableObserver.onSubscribe(cdo);
        this.f26239do.subscribe(cdo);
    }
}
