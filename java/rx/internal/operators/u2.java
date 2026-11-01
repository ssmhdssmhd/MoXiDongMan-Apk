package rx.internal.operators;

import android.support.v4.b02;
import android.support.v4.ww1;
import android.support.v4.y22;
import rx.Observable;
import rx.Single;

/* loaded from: classes4.dex */
public final class u2<T> implements Single.OnSubscribe<T> {

    /* renamed from: do, reason: not valid java name */
    public final Single<? extends T> f35472do;

    /* renamed from: if, reason: not valid java name */
    public final Observable<?> f35473if;

    /* renamed from: rx.internal.operators.u2$do, reason: invalid class name */
    public class Cdo extends b02<T> {

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ b02 f35475if;

        public Cdo(b02 b02Var) {
            this.f35475if = b02Var;
        }

        @Override // android.support.v4.b02
        /* renamed from: if */
        public void mo416if(T t) {
            this.f35475if.mo416if(t);
        }

        @Override // android.support.v4.b02
        public void onError(Throwable th) {
            this.f35475if.onError(th);
        }
    }

    /* renamed from: rx.internal.operators.u2$if, reason: invalid class name */
    public class Cif extends y22<Object> {

        /* renamed from: do, reason: not valid java name */
        public boolean f35476do;

        /* renamed from: for, reason: not valid java name */
        public final /* synthetic */ ww1 f35477for;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ b02 f35478if;

        public Cif(b02 b02Var, ww1 ww1Var) {
            this.f35478if = b02Var;
            this.f35477for = ww1Var;
        }

        @Override // rx.Observer
        public void onCompleted() {
            if (this.f35476do) {
                return;
            }
            this.f35476do = true;
            this.f35477for.m9298if(this.f35478if);
            u2.this.f35472do.u(this.f35478if);
        }

        @Override // rx.Observer
        public void onError(Throwable th) {
            if (this.f35476do) {
                rx.plugins.Cif.m39151protected(th);
            } else {
                this.f35476do = true;
                this.f35478if.onError(th);
            }
        }

        @Override // rx.Observer
        public void onNext(Object obj) {
            onCompleted();
        }
    }

    public u2(Single<? extends T> single, Observable<?> observable) {
        this.f35472do = single;
        this.f35473if = observable;
    }

    @Override // rx.functions.Action1
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public void call(b02<? super T> b02Var) {
        Cdo cdo = new Cdo(b02Var);
        ww1 ww1Var = new ww1();
        b02Var.m415do(ww1Var);
        Cif cif = new Cif(cdo, ww1Var);
        ww1Var.m9298if(cif);
        this.f35473if.Y3(cif);
    }
}
