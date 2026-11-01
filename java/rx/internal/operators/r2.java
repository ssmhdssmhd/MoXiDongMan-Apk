package rx.internal.operators;

import android.support.v4.b02;
import android.support.v4.s80;
import android.support.v4.y22;
import android.support.v4.yz1;
import rx.Observable;
import rx.Single;
import rx.internal.operators.q2;
import rx.plugins.Cif;

/* loaded from: classes4.dex */
public final class r2<T, R> implements Single.OnSubscribe<R> {

    /* renamed from: do, reason: not valid java name */
    public final Single.OnSubscribe<T> f35305do;

    /* renamed from: if, reason: not valid java name */
    public final Observable.Operator<? extends R, ? super T> f35306if;

    /* renamed from: rx.internal.operators.r2$do, reason: invalid class name */
    public static final class Cdo<T> extends b02<T> {

        /* renamed from: if, reason: not valid java name */
        public final y22<? super T> f35307if;

        public Cdo(y22<? super T> y22Var) {
            this.f35307if = y22Var;
        }

        @Override // android.support.v4.b02
        /* renamed from: if */
        public void mo416if(T t) {
            this.f35307if.setProducer(new yz1(this.f35307if, t));
        }

        @Override // android.support.v4.b02
        public void onError(Throwable th) {
            this.f35307if.onError(th);
        }
    }

    public r2(Single.OnSubscribe<T> onSubscribe, Observable.Operator<? extends R, ? super T> operator) {
        this.f35305do = onSubscribe;
        this.f35306if = operator;
    }

    /* renamed from: if, reason: not valid java name */
    public static <T> b02<T> m38680if(y22<T> y22Var) {
        Cdo cdo = new Cdo(y22Var);
        y22Var.add(cdo);
        return cdo;
    }

    @Override // rx.functions.Action1
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public void call(b02<? super R> b02Var) {
        q2.Cdo cdo = new q2.Cdo(b02Var);
        b02Var.m415do(cdo);
        try {
            y22<? super T> y22VarCall = Cif.e(this.f35306if).call(cdo);
            b02 b02VarM38680if = m38680if(y22VarCall);
            y22VarCall.onStart();
            this.f35305do.call(b02VarM38680if);
        } catch (Throwable th) {
            s80.m7293case(th, b02Var);
        }
    }
}
