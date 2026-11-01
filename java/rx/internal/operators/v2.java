package rx.internal.operators;

import android.support.v4.b02;
import android.support.v4.s80;
import rx.Single;
import rx.exceptions.Cif;
import rx.functions.Func1;

/* loaded from: classes4.dex */
public final class v2<T, R> implements Single.OnSubscribe<R> {

    /* renamed from: do, reason: not valid java name */
    public final Single<T> f35503do;

    /* renamed from: if, reason: not valid java name */
    public final Func1<? super T, ? extends R> f35504if;

    /* renamed from: rx.internal.operators.v2$do, reason: invalid class name */
    public static final class Cdo<T, R> extends b02<T> {

        /* renamed from: for, reason: not valid java name */
        public final Func1<? super T, ? extends R> f35505for;

        /* renamed from: if, reason: not valid java name */
        public final b02<? super R> f35506if;

        /* renamed from: new, reason: not valid java name */
        public boolean f35507new;

        public Cdo(b02<? super R> b02Var, Func1<? super T, ? extends R> func1) {
            this.f35506if = b02Var;
            this.f35505for = func1;
        }

        @Override // android.support.v4.b02
        /* renamed from: if */
        public void mo416if(T t) {
            try {
                this.f35506if.mo416if(this.f35505for.call(t));
            } catch (Throwable th) {
                s80.m7301try(th);
                unsubscribe();
                onError(Cif.addValueAsLastCause(th, t));
            }
        }

        @Override // android.support.v4.b02
        public void onError(Throwable th) {
            if (this.f35507new) {
                rx.plugins.Cif.m39151protected(th);
            } else {
                this.f35507new = true;
                this.f35506if.onError(th);
            }
        }
    }

    public v2(Single<T> single, Func1<? super T, ? extends R> func1) {
        this.f35503do = single;
        this.f35504if = func1;
    }

    @Override // rx.functions.Action1
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public void call(b02<? super R> b02Var) {
        Cdo cdo = new Cdo(b02Var, this.f35504if);
        b02Var.m415do(cdo);
        this.f35503do.u(cdo);
    }
}
