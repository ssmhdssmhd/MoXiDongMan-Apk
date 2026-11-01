package rx.internal.operators;

import android.support.v4.y22;
import rx.Observable;

/* loaded from: classes4.dex */
public final class w<T> implements Observable.Operator<T, T> {

    /* renamed from: rx.internal.operators.w$do, reason: invalid class name */
    public static final class Cdo {

        /* renamed from: do, reason: not valid java name */
        public static final w<Object> f35519do = new w<>();
    }

    /* renamed from: if, reason: not valid java name */
    public static <T> w<T> m38776if() {
        return (w<T>) Cdo.f35519do;
    }

    @Override // rx.functions.Func1
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public y22<? super T> call(y22<? super T> y22Var) {
        return y22Var;
    }
}
