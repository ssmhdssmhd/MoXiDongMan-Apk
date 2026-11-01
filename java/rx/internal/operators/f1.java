package rx.internal.operators;

import android.support.v4.ax1;
import android.support.v4.y22;
import rx.Observable;

/* loaded from: classes4.dex */
public final class f1<T> implements Observable.Operator<T, T> {

    /* renamed from: rx.internal.operators.f1$do, reason: invalid class name */
    public class Cdo extends y22<T> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ y22 f34730do;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Cdo(y22 y22Var, y22 y22Var2) {
            super(y22Var);
            this.f34730do = y22Var2;
        }

        @Override // rx.Observer
        public void onCompleted() {
            this.f34730do.onCompleted();
        }

        @Override // rx.Observer
        public void onError(Throwable th) {
            this.f34730do.onError(th);
        }

        @Override // rx.Observer
        public void onNext(T t) {
            this.f34730do.onNext(t);
        }
    }

    /* renamed from: rx.internal.operators.f1$if, reason: invalid class name */
    public static final class Cif {

        /* renamed from: do, reason: not valid java name */
        public static final f1<Object> f34732do = new f1<>();
    }

    /* renamed from: if, reason: not valid java name */
    public static <T> f1<T> m38480if() {
        return (f1<T>) Cif.f34732do;
    }

    @Override // rx.functions.Func1
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public y22<? super T> call(y22<? super T> y22Var) {
        return new ax1(new Cdo(y22Var, y22Var));
    }
}
