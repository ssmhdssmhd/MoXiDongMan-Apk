package io.reactivex.internal.operators.observable;

import android.support.v4.jp1;
import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.BiConsumer;
import io.reactivex.internal.functions.Cif;
import java.util.concurrent.Callable;

/* renamed from: io.reactivex.internal.operators.observable.while, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cwhile<T, U> extends io.reactivex.internal.operators.observable.Cdo<T, U> {

    /* renamed from: for, reason: not valid java name */
    public final BiConsumer<? super U, ? super T> f26987for;

    /* renamed from: if, reason: not valid java name */
    public final Callable<? extends U> f26988if;

    /* renamed from: io.reactivex.internal.operators.observable.while$do, reason: invalid class name */
    public static final class Cdo<T, U> implements Observer<T>, Disposable {

        /* renamed from: do, reason: not valid java name */
        public final Observer<? super U> f26989do;

        /* renamed from: for, reason: not valid java name */
        public final U f26990for;

        /* renamed from: if, reason: not valid java name */
        public final BiConsumer<? super U, ? super T> f26991if;

        /* renamed from: new, reason: not valid java name */
        public Disposable f26992new;

        /* renamed from: try, reason: not valid java name */
        public boolean f26993try;

        public Cdo(Observer<? super U> observer, U u, BiConsumer<? super U, ? super T> biConsumer) {
            this.f26989do = observer;
            this.f26991if = biConsumer;
            this.f26990for = u;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f26992new.dispose();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f26992new.isDisposed();
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            if (this.f26993try) {
                return;
            }
            this.f26993try = true;
            this.f26989do.onNext(this.f26990for);
            this.f26989do.onComplete();
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            if (this.f26993try) {
                jp1.l(th);
            } else {
                this.f26993try = true;
                this.f26989do.onError(th);
            }
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            if (this.f26993try) {
                return;
            }
            try {
                this.f26991if.accept(this.f26990for, t);
            } catch (Throwable th) {
                this.f26992new.dispose();
                onError(th);
            }
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            if (io.reactivex.internal.disposables.Cdo.validate(this.f26992new, disposable)) {
                this.f26992new = disposable;
                this.f26989do.onSubscribe(this);
            }
        }
    }

    public Cwhile(ObservableSource<T> observableSource, Callable<? extends U> callable, BiConsumer<? super U, ? super T> biConsumer) {
        super(observableSource);
        this.f26988if = callable;
        this.f26987for = biConsumer;
    }

    @Override // io.reactivex.Cnew
    public void subscribeActual(Observer<? super U> observer) {
        try {
            this.f26500do.subscribe(new Cdo(observer, Cif.m29468else(this.f26988if.call(), "The initialSupplier returned a null value"), this.f26987for));
        } catch (Throwable th) {
            io.reactivex.internal.disposables.Cif.error(th, observer);
        }
    }
}
