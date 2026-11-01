package rx.internal.operators;

import android.support.v4.y22;
import java.util.concurrent.TimeUnit;
import rx.Cif;
import rx.Observable;

/* loaded from: classes4.dex */
public final class v1<T> implements Observable.Operator<T, T> {

    /* renamed from: do, reason: not valid java name */
    public final long f35498do;

    /* renamed from: if, reason: not valid java name */
    public final Cif f35499if;

    /* renamed from: rx.internal.operators.v1$do, reason: invalid class name */
    public class Cdo extends y22<T> {

        /* renamed from: do, reason: not valid java name */
        private long f35500do;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ y22 f35502if;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Cdo(y22 y22Var, y22 y22Var2) {
            super(y22Var);
            this.f35502if = y22Var2;
            this.f35500do = -1L;
        }

        @Override // rx.Observer
        public void onCompleted() {
            this.f35502if.onCompleted();
        }

        @Override // rx.Observer
        public void onError(Throwable th) {
            this.f35502if.onError(th);
        }

        @Override // rx.Observer
        public void onNext(T t) {
            long jMo38373if = v1.this.f35499if.mo38373if();
            long j = this.f35500do;
            if (j == -1 || jMo38373if < j || jMo38373if - j >= v1.this.f35498do) {
                this.f35500do = jMo38373if;
                this.f35502if.onNext(t);
            }
        }

        @Override // android.support.v4.y22
        public void onStart() {
            request(Long.MAX_VALUE);
        }
    }

    public v1(long j, TimeUnit timeUnit, Cif cif) {
        this.f35498do = timeUnit.toMillis(j);
        this.f35499if = cif;
    }

    @Override // rx.functions.Func1
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public y22<? super T> call(y22<? super T> y22Var) {
        return new Cdo(y22Var, y22Var);
    }
}
