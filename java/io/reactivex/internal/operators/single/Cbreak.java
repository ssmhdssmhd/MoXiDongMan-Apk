package io.reactivex.internal.operators.single;

import android.support.v4.f90;
import android.support.v4.fy0;
import android.support.v4.jz1;
import android.support.v4.t41;
import android.support.v4.t80;
import io.reactivex.MaybeObserver;
import io.reactivex.SingleObserver;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Function;
import io.reactivex.internal.functions.Cif;

@f90
/* renamed from: io.reactivex.internal.operators.single.break, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cbreak<T, R> extends fy0<R> {

    /* renamed from: do, reason: not valid java name */
    public final jz1<T> f27125do;

    /* renamed from: if, reason: not valid java name */
    public final Function<? super T, t41<R>> f27126if;

    /* renamed from: io.reactivex.internal.operators.single.break$do, reason: invalid class name */
    public static final class Cdo<T, R> implements SingleObserver<T>, Disposable {

        /* renamed from: do, reason: not valid java name */
        public final MaybeObserver<? super R> f27127do;

        /* renamed from: for, reason: not valid java name */
        public Disposable f27128for;

        /* renamed from: if, reason: not valid java name */
        public final Function<? super T, t41<R>> f27129if;

        public Cdo(MaybeObserver<? super R> maybeObserver, Function<? super T, t41<R>> function) {
            this.f27127do = maybeObserver;
            this.f27129if = function;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f27128for.dispose();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f27128for.isDisposed();
        }

        @Override // io.reactivex.SingleObserver
        public void onError(Throwable th) {
            this.f27127do.onError(th);
        }

        @Override // io.reactivex.SingleObserver
        public void onSubscribe(Disposable disposable) {
            if (io.reactivex.internal.disposables.Cdo.validate(this.f27128for, disposable)) {
                this.f27128for = disposable;
                this.f27127do.onSubscribe(this);
            }
        }

        @Override // io.reactivex.SingleObserver
        public void onSuccess(T t) {
            try {
                t41 t41Var = (t41) Cif.m29468else(this.f27129if.apply(t), "The selector returned a null Notification");
                if (t41Var.m7725goto()) {
                    this.f27127do.onSuccess((Object) t41Var.m7727try());
                } else if (t41Var.m7723case()) {
                    this.f27127do.onComplete();
                } else {
                    this.f27127do.onError(t41Var.m7726new());
                }
            } catch (Throwable th) {
                t80.m7781if(th);
                this.f27127do.onError(th);
            }
        }
    }

    public Cbreak(jz1<T> jz1Var, Function<? super T, t41<R>> function) {
        this.f27125do = jz1Var;
        this.f27126if = function;
    }

    @Override // android.support.v4.fy0
    public void w0(MaybeObserver<? super R> maybeObserver) {
        this.f27125do.subscribe(new Cdo(maybeObserver, this.f27126if));
    }
}
