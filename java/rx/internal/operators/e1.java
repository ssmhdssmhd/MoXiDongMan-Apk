package rx.internal.operators;

import rx.Observable;
import rx.functions.Func2;
import rx.internal.util.Cthis;

/* loaded from: classes4.dex */
public final class e1 {

    /* renamed from: do, reason: not valid java name */
    public static final Object f34700do = new Object();

    /* renamed from: rx.internal.operators.e1$do, reason: invalid class name */
    public static class Cdo implements Func2<Object, Object, Boolean> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Func2 f34701do;

        public Cdo(Func2 func2) {
            this.f34701do = func2;
        }

        @Override // rx.functions.Func2
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public Boolean call(Object obj, Object obj2) {
            Object obj3 = e1.f34700do;
            boolean z = obj == obj3;
            boolean z2 = obj2 == obj3;
            return (z && z2) ? Boolean.TRUE : (z || z2) ? Boolean.FALSE : (Boolean) this.f34701do.call(obj, obj2);
        }
    }

    private e1() {
        throw new IllegalStateException("No instances!");
    }

    /* renamed from: do, reason: not valid java name */
    public static <T> Observable<Object> m38465do(Observable<T> observable) {
        return Observable.e(observable, Observable.u1(f34700do));
    }

    /* renamed from: if, reason: not valid java name */
    public static <T> Observable<Boolean> m38466if(Observable<? extends T> observable, Observable<? extends T> observable2, Func2<? super T, ? super T, Boolean> func2) {
        return Observable.Z5(m38465do(observable), m38465do(observable2), new Cdo(func2)).m38245do(Cthis.m38929for());
    }
}
