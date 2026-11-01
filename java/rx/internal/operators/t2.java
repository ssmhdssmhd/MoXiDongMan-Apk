package rx.internal.operators;

import android.support.v4.b02;
import android.support.v4.s80;
import rx.Single;
import rx.functions.Func1;

/* loaded from: classes4.dex */
public final class t2<T> implements Single.OnSubscribe<T> {

    /* renamed from: do, reason: not valid java name */
    public final Single.OnSubscribe<T> f35413do;

    /* renamed from: if, reason: not valid java name */
    public final Func1<Throwable, ? extends T> f35414if;

    /* renamed from: rx.internal.operators.t2$do, reason: invalid class name */
    public static final class Cdo<T> extends b02<T> {

        /* renamed from: for, reason: not valid java name */
        public final Func1<Throwable, ? extends T> f35415for;

        /* renamed from: if, reason: not valid java name */
        public final b02<? super T> f35416if;

        public Cdo(b02<? super T> b02Var, Func1<Throwable, ? extends T> func1) {
            this.f35416if = b02Var;
            this.f35415for = func1;
        }

        @Override // android.support.v4.b02
        /* renamed from: if */
        public void mo416if(T t) {
            this.f35416if.mo416if(t);
        }

        @Override // android.support.v4.b02
        public void onError(Throwable th) {
            try {
                this.f35416if.mo416if(this.f35415for.call(th));
            } catch (Throwable th2) {
                s80.m7301try(th2);
                this.f35416if.onError(th2);
            }
        }
    }

    public t2(Single.OnSubscribe<T> onSubscribe, Func1<Throwable, ? extends T> func1) {
        this.f35413do = onSubscribe;
        this.f35414if = func1;
    }

    @Override // rx.functions.Action1
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public void call(b02<? super T> b02Var) {
        Cdo cdo = new Cdo(b02Var, this.f35414if);
        b02Var.m415do(cdo);
        this.f35413do.call(cdo);
    }
}
