package rx.internal.operators;

import android.support.v4.s80;
import android.support.v4.y22;
import rx.Observable;
import rx.functions.Func1;
import rx.functions.Func2;
import rx.internal.util.Cthis;

/* loaded from: classes4.dex */
public final class i0<T, U> implements Observable.Operator<T, T>, Func2<U, U, Boolean> {

    /* renamed from: do, reason: not valid java name */
    public final Func1<? super T, ? extends U> f34905do;

    /* renamed from: if, reason: not valid java name */
    public final Func2<? super U, ? super U, Boolean> f34906if;

    /* renamed from: rx.internal.operators.i0$do, reason: invalid class name */
    public class Cdo extends y22<T> {

        /* renamed from: do, reason: not valid java name */
        public U f34907do;

        /* renamed from: for, reason: not valid java name */
        public final /* synthetic */ y22 f34908for;

        /* renamed from: if, reason: not valid java name */
        public boolean f34909if;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Cdo(y22 y22Var, y22 y22Var2) {
            super(y22Var);
            this.f34908for = y22Var2;
        }

        @Override // rx.Observer
        public void onCompleted() {
            this.f34908for.onCompleted();
        }

        @Override // rx.Observer
        public void onError(Throwable th) {
            this.f34908for.onError(th);
        }

        @Override // rx.Observer
        public void onNext(T t) {
            try {
                U uCall = i0.this.f34905do.call(t);
                U u = this.f34907do;
                this.f34907do = uCall;
                if (!this.f34909if) {
                    this.f34909if = true;
                    this.f34908for.onNext(t);
                    return;
                }
                try {
                    if (i0.this.f34906if.call(u, uCall).booleanValue()) {
                        request(1L);
                    } else {
                        this.f34908for.onNext(t);
                    }
                } catch (Throwable th) {
                    s80.m7300this(th, this.f34908for, uCall);
                }
            } catch (Throwable th2) {
                s80.m7300this(th2, this.f34908for, t);
            }
        }
    }

    /* renamed from: rx.internal.operators.i0$if, reason: invalid class name */
    public static final class Cif {

        /* renamed from: do, reason: not valid java name */
        public static final i0<?, ?> f34911do = new i0<>(Cthis.m38929for());
    }

    public i0(Func1<? super T, ? extends U> func1) {
        this.f34905do = func1;
        this.f34906if = this;
    }

    /* renamed from: for, reason: not valid java name */
    public static <T> i0<T, T> m38554for() {
        return (i0<T, T>) Cif.f34911do;
    }

    @Override // rx.functions.Func1
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public y22<? super T> call(y22<? super T> y22Var) {
        return new Cdo(y22Var, y22Var);
    }

    @Override // rx.functions.Func2
    /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
    public Boolean call(U u, U u2) {
        return Boolean.valueOf(u == u2 || (u != null && u.equals(u2)));
    }

    public i0(Func2<? super U, ? super U, Boolean> func2) {
        this.f34905do = Cthis.m38929for();
        this.f34906if = func2;
    }
}
