package io.reactivex.internal.operators.mixed;

import android.support.v4.t80;
import io.reactivex.Cnew;
import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.SingleObserver;
import io.reactivex.SingleSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Function;
import io.reactivex.internal.functions.Cif;
import java.util.concurrent.atomic.AtomicReference;

/* renamed from: io.reactivex.internal.operators.mixed.import, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cimport<T, R> extends Cnew<R> {

    /* renamed from: do, reason: not valid java name */
    public final SingleSource<T> f26317do;

    /* renamed from: if, reason: not valid java name */
    public final Function<? super T, ? extends ObservableSource<? extends R>> f26318if;

    /* renamed from: io.reactivex.internal.operators.mixed.import$do, reason: invalid class name */
    public static final class Cdo<T, R> extends AtomicReference<Disposable> implements Observer<R>, SingleObserver<T>, Disposable {
        private static final long serialVersionUID = -8948264376121066672L;
        public final Observer<? super R> downstream;
        public final Function<? super T, ? extends ObservableSource<? extends R>> mapper;

        public Cdo(Observer<? super R> observer, Function<? super T, ? extends ObservableSource<? extends R>> function) {
            this.downstream = observer;
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

        @Override // io.reactivex.Observer
        public void onComplete() {
            this.downstream.onComplete();
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            this.downstream.onError(th);
        }

        @Override // io.reactivex.Observer
        public void onNext(R r) {
            this.downstream.onNext(r);
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            io.reactivex.internal.disposables.Cdo.replace(this, disposable);
        }

        @Override // io.reactivex.SingleObserver
        public void onSuccess(T t) {
            try {
                ((ObservableSource) Cif.m29468else(this.mapper.apply(t), "The mapper returned a null Publisher")).subscribe(this);
            } catch (Throwable th) {
                t80.m7781if(th);
                this.downstream.onError(th);
            }
        }
    }

    public Cimport(SingleSource<T> singleSource, Function<? super T, ? extends ObservableSource<? extends R>> function) {
        this.f26317do = singleSource;
        this.f26318if = function;
    }

    @Override // io.reactivex.Cnew
    public void subscribeActual(Observer<? super R> observer) {
        Cdo cdo = new Cdo(observer, this.f26318if);
        observer.onSubscribe(cdo);
        this.f26317do.subscribe(cdo);
    }
}
