package rx.internal.operators;

import android.support.v4.i72;
import android.support.v4.y22;
import rx.Cif;
import rx.Observable;

/* loaded from: classes4.dex */
public final class z1<T> implements Observable.Operator<i72<T>, T> {

    /* renamed from: do, reason: not valid java name */
    public final Cif f35655do;

    /* renamed from: rx.internal.operators.z1$do, reason: invalid class name */
    public class Cdo extends y22<T> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ y22 f35656do;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Cdo(y22 y22Var, y22 y22Var2) {
            super(y22Var);
            this.f35656do = y22Var2;
        }

        @Override // rx.Observer
        public void onCompleted() {
            this.f35656do.onCompleted();
        }

        @Override // rx.Observer
        public void onError(Throwable th) {
            this.f35656do.onError(th);
        }

        @Override // rx.Observer
        public void onNext(T t) {
            this.f35656do.onNext(new i72(z1.this.f35655do.mo38373if(), t));
        }
    }

    public z1(Cif cif) {
        this.f35655do = cif;
    }

    @Override // rx.functions.Func1
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public y22<? super T> call(y22<? super i72<T>> y22Var) {
        return new Cdo(y22Var, y22Var);
    }
}
