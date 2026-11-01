package rx.internal.operators;

import android.support.v4.y22;
import java.util.HashSet;
import java.util.Set;
import rx.Observable;
import rx.functions.Func1;
import rx.internal.util.Cthis;

/* loaded from: classes4.dex */
public final class h0<T, U> implements Observable.Operator<T, T> {

    /* renamed from: do, reason: not valid java name */
    public final Func1<? super T, ? extends U> f34860do;

    /* renamed from: rx.internal.operators.h0$do, reason: invalid class name */
    public class Cdo extends y22<T> {

        /* renamed from: do, reason: not valid java name */
        public Set<U> f34861do;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ y22 f34863if;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Cdo(y22 y22Var, y22 y22Var2) {
            super(y22Var);
            this.f34863if = y22Var2;
            this.f34861do = new HashSet();
        }

        @Override // rx.Observer
        public void onCompleted() {
            this.f34861do = null;
            this.f34863if.onCompleted();
        }

        @Override // rx.Observer
        public void onError(Throwable th) {
            this.f34861do = null;
            this.f34863if.onError(th);
        }

        @Override // rx.Observer
        public void onNext(T t) {
            if (this.f34861do.add(h0.this.f34860do.call(t))) {
                this.f34863if.onNext(t);
            } else {
                request(1L);
            }
        }
    }

    /* renamed from: rx.internal.operators.h0$if, reason: invalid class name */
    public static final class Cif {

        /* renamed from: do, reason: not valid java name */
        public static final h0<?, ?> f34864do = new h0<>(Cthis.m38929for());
    }

    public h0(Func1<? super T, ? extends U> func1) {
        this.f34860do = func1;
    }

    /* renamed from: if, reason: not valid java name */
    public static <T> h0<T, T> m38534if() {
        return (h0<T, T>) Cif.f34864do;
    }

    @Override // rx.functions.Func1
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public y22<? super T> call(y22<? super T> y22Var) {
        return new Cdo(y22Var, y22Var);
    }
}
