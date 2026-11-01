package io.reactivex.internal.operators.observable;

import android.support.v4.jp1;
import android.support.v4.t80;
import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.BiFunction;
import io.reactivex.internal.functions.Cif;

/* loaded from: classes3.dex */
public final class c1<T> extends io.reactivex.internal.operators.observable.Cdo<T, T> {

    /* renamed from: if, reason: not valid java name */
    public final BiFunction<T, T, T> f26440if;

    /* renamed from: io.reactivex.internal.operators.observable.c1$do, reason: invalid class name */
    public static final class Cdo<T> implements Observer<T>, Disposable {

        /* renamed from: do, reason: not valid java name */
        public final Observer<? super T> f26441do;

        /* renamed from: for, reason: not valid java name */
        public Disposable f26442for;

        /* renamed from: if, reason: not valid java name */
        public final BiFunction<T, T, T> f26443if;

        /* renamed from: new, reason: not valid java name */
        public T f26444new;

        /* renamed from: try, reason: not valid java name */
        public boolean f26445try;

        public Cdo(Observer<? super T> observer, BiFunction<T, T, T> biFunction) {
            this.f26441do = observer;
            this.f26443if = biFunction;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f26442for.dispose();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f26442for.isDisposed();
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            if (this.f26445try) {
                return;
            }
            this.f26445try = true;
            this.f26441do.onComplete();
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            if (this.f26445try) {
                jp1.l(th);
            } else {
                this.f26445try = true;
                this.f26441do.onError(th);
            }
        }

        /* JADX WARN: Type inference failed for: r4v3, types: [T, java.lang.Object] */
        @Override // io.reactivex.Observer
        public void onNext(T t) {
            if (this.f26445try) {
                return;
            }
            Observer<? super T> observer = this.f26441do;
            T t2 = this.f26444new;
            if (t2 == null) {
                this.f26444new = t;
                observer.onNext(t);
                return;
            }
            try {
                ?? r4 = (T) Cif.m29468else(this.f26443if.apply(t2, t), "The value returned by the accumulator is null");
                this.f26444new = r4;
                observer.onNext(r4);
            } catch (Throwable th) {
                t80.m7781if(th);
                this.f26442for.dispose();
                onError(th);
            }
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            if (io.reactivex.internal.disposables.Cdo.validate(this.f26442for, disposable)) {
                this.f26442for = disposable;
                this.f26441do.onSubscribe(this);
            }
        }
    }

    public c1(ObservableSource<T> observableSource, BiFunction<T, T, T> biFunction) {
        super(observableSource);
        this.f26440if = biFunction;
    }

    @Override // io.reactivex.Cnew
    public void subscribeActual(Observer<? super T> observer) {
        this.f26500do.subscribe(new Cdo(observer, this.f26440if));
    }
}
