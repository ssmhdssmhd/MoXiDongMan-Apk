package rx.internal.operators;

import android.support.v4.y22;
import rx.Observable;
import rx.Producer;
import rx.functions.Action1;

/* loaded from: classes4.dex */
public class k0<T> implements Observable.Operator<T, T> {

    /* renamed from: do, reason: not valid java name */
    public final Action1<? super Long> f35013do;

    /* renamed from: rx.internal.operators.k0$do, reason: invalid class name */
    public class Cdo implements Producer {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Cif f35014do;

        public Cdo(Cif cif) {
            this.f35014do = cif;
        }

        @Override // rx.Producer
        public void request(long j) {
            k0.this.f35013do.call(Long.valueOf(j));
            this.f35014do.m38592if(j);
        }
    }

    /* renamed from: rx.internal.operators.k0$if, reason: invalid class name */
    public static final class Cif<T> extends y22<T> {

        /* renamed from: do, reason: not valid java name */
        private final y22<? super T> f35016do;

        public Cif(y22<? super T> y22Var) {
            this.f35016do = y22Var;
            request(0L);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: if, reason: not valid java name */
        public void m38592if(long j) {
            request(j);
        }

        @Override // rx.Observer
        public void onCompleted() {
            this.f35016do.onCompleted();
        }

        @Override // rx.Observer
        public void onError(Throwable th) {
            this.f35016do.onError(th);
        }

        @Override // rx.Observer
        public void onNext(T t) {
            this.f35016do.onNext(t);
        }
    }

    public k0(Action1<? super Long> action1) {
        this.f35013do = action1;
    }

    @Override // rx.functions.Func1
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public y22<? super T> call(y22<? super T> y22Var) {
        Cif cif = new Cif(y22Var);
        y22Var.setProducer(new Cdo(cif));
        y22Var.add(cif);
        return cif;
    }
}
