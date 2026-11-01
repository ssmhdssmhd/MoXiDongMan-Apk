package rx.internal.operators;

import android.support.v4.b02;
import rx.Cif;
import rx.Single;
import rx.functions.Action0;

/* loaded from: classes4.dex */
public final class s2<T> implements Single.OnSubscribe<T> {

    /* renamed from: do, reason: not valid java name */
    public final Single.OnSubscribe<T> f35347do;

    /* renamed from: if, reason: not valid java name */
    public final Cif f35348if;

    /* renamed from: rx.internal.operators.s2$do, reason: invalid class name */
    public static final class Cdo<T> extends b02<T> implements Action0 {

        /* renamed from: for, reason: not valid java name */
        public final Cif.Cdo f35349for;

        /* renamed from: if, reason: not valid java name */
        public final b02<? super T> f35350if;

        /* renamed from: new, reason: not valid java name */
        public T f35351new;

        /* renamed from: try, reason: not valid java name */
        public Throwable f35352try;

        public Cdo(b02<? super T> b02Var, Cif.Cdo cdo) {
            this.f35350if = b02Var;
            this.f35349for = cdo;
        }

        @Override // rx.functions.Action0
        public void call() {
            try {
                Throwable th = this.f35352try;
                if (th != null) {
                    this.f35352try = null;
                    this.f35350if.onError(th);
                } else {
                    T t = this.f35351new;
                    this.f35351new = null;
                    this.f35350if.mo416if(t);
                }
            } finally {
                this.f35349for.unsubscribe();
            }
        }

        @Override // android.support.v4.b02
        /* renamed from: if */
        public void mo416if(T t) {
            this.f35351new = t;
            this.f35349for.mo38376if(this);
        }

        @Override // android.support.v4.b02
        public void onError(Throwable th) {
            this.f35352try = th;
            this.f35349for.mo38376if(this);
        }
    }

    public s2(Single.OnSubscribe<T> onSubscribe, Cif cif) {
        this.f35347do = onSubscribe;
        this.f35348if = cif;
    }

    @Override // rx.functions.Action1
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public void call(b02<? super T> b02Var) {
        Cif.Cdo cdoMo971do = this.f35348if.mo971do();
        Cdo cdo = new Cdo(b02Var, cdoMo971do);
        b02Var.m415do(cdoMo971do);
        b02Var.m415do(cdo);
        this.f35347do.call(cdo);
    }
}
