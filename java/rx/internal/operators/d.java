package rx.internal.operators;

import android.support.v4.b02;
import android.support.v4.u3;
import rx.Single;

/* loaded from: classes4.dex */
public final class d<T> implements Single.OnSubscribe<T> {

    /* renamed from: for, reason: not valid java name */
    public static volatile boolean f34607for;

    /* renamed from: do, reason: not valid java name */
    public final Single.OnSubscribe<T> f34608do;

    /* renamed from: if, reason: not valid java name */
    public final String f34609if = b.m38408if();

    /* renamed from: rx.internal.operators.d$do, reason: invalid class name */
    public static final class Cdo<T> extends b02<T> {

        /* renamed from: for, reason: not valid java name */
        public final String f34610for;

        /* renamed from: if, reason: not valid java name */
        public final b02<? super T> f34611if;

        public Cdo(b02<? super T> b02Var, String str) {
            this.f34611if = b02Var;
            this.f34610for = str;
            b02Var.m415do(this);
        }

        @Override // android.support.v4.b02
        /* renamed from: if */
        public void mo416if(T t) {
            this.f34611if.mo416if(t);
        }

        @Override // android.support.v4.b02
        public void onError(Throwable th) {
            new u3(this.f34610for).attachTo(th);
            this.f34611if.onError(th);
        }
    }

    public d(Single.OnSubscribe<T> onSubscribe) {
        this.f34608do = onSubscribe;
    }

    @Override // rx.functions.Action1
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public void call(b02<? super T> b02Var) {
        this.f34608do.call(new Cdo(b02Var, this.f34609if));
    }
}
