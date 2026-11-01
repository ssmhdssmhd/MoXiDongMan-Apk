package io.reactivex.internal.operators.observable;

import android.support.v4.e72;
import io.reactivex.Ctry;
import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import java.util.concurrent.TimeUnit;

/* loaded from: classes3.dex */
public final class a2<T> extends io.reactivex.internal.operators.observable.Cdo<T, e72<T>> {

    /* renamed from: for, reason: not valid java name */
    public final TimeUnit f26381for;

    /* renamed from: if, reason: not valid java name */
    public final Ctry f26382if;

    /* renamed from: io.reactivex.internal.operators.observable.a2$do, reason: invalid class name */
    public static final class Cdo<T> implements Observer<T>, Disposable {

        /* renamed from: do, reason: not valid java name */
        public final Observer<? super e72<T>> f26383do;

        /* renamed from: for, reason: not valid java name */
        public final Ctry f26384for;

        /* renamed from: if, reason: not valid java name */
        public final TimeUnit f26385if;

        /* renamed from: new, reason: not valid java name */
        public long f26386new;

        /* renamed from: try, reason: not valid java name */
        public Disposable f26387try;

        public Cdo(Observer<? super e72<T>> observer, TimeUnit timeUnit, Ctry ctry) {
            this.f26383do = observer;
            this.f26384for = ctry;
            this.f26385if = timeUnit;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f26387try.dispose();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f26387try.isDisposed();
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            this.f26383do.onComplete();
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            this.f26383do.onError(th);
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            long jMo29783for = this.f26384for.mo29783for(this.f26385if);
            long j = this.f26386new;
            this.f26386new = jMo29783for;
            this.f26383do.onNext(new e72(t, jMo29783for - j, this.f26385if));
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            if (io.reactivex.internal.disposables.Cdo.validate(this.f26387try, disposable)) {
                this.f26387try = disposable;
                this.f26386new = this.f26384for.mo29783for(this.f26385if);
                this.f26383do.onSubscribe(this);
            }
        }
    }

    public a2(ObservableSource<T> observableSource, TimeUnit timeUnit, Ctry ctry) {
        super(observableSource);
        this.f26382if = ctry;
        this.f26381for = timeUnit;
    }

    @Override // io.reactivex.Cnew
    public void subscribeActual(Observer<? super e72<T>> observer) {
        this.f26500do.subscribe(new Cdo(observer, this.f26381for, this.f26382if));
    }
}
