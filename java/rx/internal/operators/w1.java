package rx.internal.operators;

import android.support.v4.w62;
import android.support.v4.y22;
import rx.Cif;
import rx.Observable;

/* loaded from: classes4.dex */
public final class w1<T> implements Observable.Operator<w62<T>, T> {

    /* renamed from: do, reason: not valid java name */
    public final Cif f35528do;

    /* renamed from: rx.internal.operators.w1$do, reason: invalid class name */
    public class Cdo extends y22<T> {

        /* renamed from: do, reason: not valid java name */
        private long f35529do;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ y22 f35531if;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Cdo(y22 y22Var, y22 y22Var2) {
            super(y22Var);
            this.f35531if = y22Var2;
            this.f35529do = w1.this.f35528do.mo38373if();
        }

        @Override // rx.Observer
        public void onCompleted() {
            this.f35531if.onCompleted();
        }

        @Override // rx.Observer
        public void onError(Throwable th) {
            this.f35531if.onError(th);
        }

        @Override // rx.Observer
        public void onNext(T t) {
            long jMo38373if = w1.this.f35528do.mo38373if();
            this.f35531if.onNext(new w62(jMo38373if - this.f35529do, t));
            this.f35529do = jMo38373if;
        }
    }

    public w1(Cif cif) {
        this.f35528do = cif;
    }

    @Override // rx.functions.Func1
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public y22<? super T> call(y22<? super w62<T>> y22Var) {
        return new Cdo(y22Var, y22Var);
    }
}
