package io.reactivex.internal.operators.observable;

import android.support.v4.jp1;
import android.support.v4.t41;
import android.support.v4.t80;
import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Function;
import io.reactivex.internal.functions.Cif;

/* renamed from: io.reactivex.internal.operators.observable.strictfp, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cstrictfp<T, R> extends io.reactivex.internal.operators.observable.Cdo<T, R> {

    /* renamed from: if, reason: not valid java name */
    public final Function<? super T, ? extends t41<R>> f26866if;

    /* renamed from: io.reactivex.internal.operators.observable.strictfp$do, reason: invalid class name */
    public static final class Cdo<T, R> implements Observer<T>, Disposable {

        /* renamed from: do, reason: not valid java name */
        public final Observer<? super R> f26867do;

        /* renamed from: for, reason: not valid java name */
        public boolean f26868for;

        /* renamed from: if, reason: not valid java name */
        public final Function<? super T, ? extends t41<R>> f26869if;

        /* renamed from: new, reason: not valid java name */
        public Disposable f26870new;

        public Cdo(Observer<? super R> observer, Function<? super T, ? extends t41<R>> function) {
            this.f26867do = observer;
            this.f26869if = function;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f26870new.dispose();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f26870new.isDisposed();
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            if (this.f26868for) {
                return;
            }
            this.f26868for = true;
            this.f26867do.onComplete();
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            if (this.f26868for) {
                jp1.l(th);
            } else {
                this.f26868for = true;
                this.f26867do.onError(th);
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // io.reactivex.Observer
        public void onNext(T t) {
            if (this.f26868for) {
                if (t instanceof t41) {
                    t41 t41Var = (t41) t;
                    if (t41Var.m7724else()) {
                        jp1.l(t41Var.m7726new());
                        return;
                    }
                    return;
                }
                return;
            }
            try {
                t41 t41Var2 = (t41) Cif.m29468else(this.f26869if.apply(t), "The selector returned a null Notification");
                if (t41Var2.m7724else()) {
                    this.f26870new.dispose();
                    onError(t41Var2.m7726new());
                } else if (!t41Var2.m7723case()) {
                    this.f26867do.onNext((Object) t41Var2.m7727try());
                } else {
                    this.f26870new.dispose();
                    onComplete();
                }
            } catch (Throwable th) {
                t80.m7781if(th);
                this.f26870new.dispose();
                onError(th);
            }
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            if (io.reactivex.internal.disposables.Cdo.validate(this.f26870new, disposable)) {
                this.f26870new = disposable;
                this.f26867do.onSubscribe(this);
            }
        }
    }

    public Cstrictfp(ObservableSource<T> observableSource, Function<? super T, ? extends t41<R>> function) {
        super(observableSource);
        this.f26866if = function;
    }

    @Override // io.reactivex.Cnew
    public void subscribeActual(Observer<? super R> observer) {
        this.f26500do.subscribe(new Cdo(observer, this.f26866if));
    }
}
