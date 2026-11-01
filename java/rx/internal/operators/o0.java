package rx.internal.operators;

import android.support.v4.y22;
import rx.Observable;

/* loaded from: classes4.dex */
public class o0<T> implements Observable.Operator<T, T> {

    /* renamed from: rx.internal.operators.o0$do, reason: invalid class name */
    public class Cdo extends y22<T> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ y22 f35173do;

        public Cdo(y22 y22Var) {
            this.f35173do = y22Var;
        }

        @Override // rx.Observer
        public void onCompleted() {
            this.f35173do.onCompleted();
        }

        @Override // rx.Observer
        public void onError(Throwable th) {
            this.f35173do.onError(th);
        }

        @Override // rx.Observer
        public void onNext(T t) {
        }
    }

    /* renamed from: rx.internal.operators.o0$if, reason: invalid class name */
    public static final class Cif {

        /* renamed from: do, reason: not valid java name */
        public static final o0<?> f35175do = new o0<>();
    }

    /* renamed from: if, reason: not valid java name */
    public static <T> o0<T> m38641if() {
        return (o0<T>) Cif.f35175do;
    }

    @Override // rx.functions.Func1
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public y22<? super T> call(y22<? super T> y22Var) {
        Cdo cdo = new Cdo(y22Var);
        y22Var.add(cdo);
        return cdo;
    }
}
