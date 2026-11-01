package rx.internal.operators;

import android.support.v4.b02;
import android.support.v4.s80;
import rx.Single;
import rx.functions.Action0;
import rx.plugins.Cif;

/* loaded from: classes4.dex */
public final class n2<T> implements Single.OnSubscribe<T> {

    /* renamed from: do, reason: not valid java name */
    public final Single<T> f35155do;

    /* renamed from: if, reason: not valid java name */
    public final Action0 f35156if;

    /* renamed from: rx.internal.operators.n2$do, reason: invalid class name */
    public static final class Cdo<T> extends b02<T> {

        /* renamed from: for, reason: not valid java name */
        public final Action0 f35157for;

        /* renamed from: if, reason: not valid java name */
        public final b02<? super T> f35158if;

        public Cdo(b02<? super T> b02Var, Action0 action0) {
            this.f35158if = b02Var;
            this.f35157for = action0;
        }

        /* renamed from: for, reason: not valid java name */
        public void m38637for() {
            try {
                this.f35157for.call();
            } catch (Throwable th) {
                s80.m7301try(th);
                Cif.m39151protected(th);
            }
        }

        @Override // android.support.v4.b02
        /* renamed from: if */
        public void mo416if(T t) {
            try {
                this.f35158if.mo416if(t);
            } finally {
                m38637for();
            }
        }

        @Override // android.support.v4.b02
        public void onError(Throwable th) {
            try {
                this.f35158if.onError(th);
            } finally {
                m38637for();
            }
        }
    }

    public n2(Single<T> single, Action0 action0) {
        this.f35155do = single;
        this.f35156if = action0;
    }

    @Override // rx.functions.Action1
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public void call(b02<? super T> b02Var) {
        Cdo cdo = new Cdo(b02Var, this.f35156if);
        b02Var.m415do(cdo);
        this.f35155do.u(cdo);
    }
}
