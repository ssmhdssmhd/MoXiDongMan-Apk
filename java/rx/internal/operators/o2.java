package rx.internal.operators;

import android.support.v4.b02;
import android.support.v4.s80;
import rx.Single;
import rx.functions.Action1;

/* loaded from: classes4.dex */
public final class o2<T> implements Single.OnSubscribe<T> {

    /* renamed from: do, reason: not valid java name */
    public final Single<T> f35184do;

    /* renamed from: for, reason: not valid java name */
    public final Action1<Throwable> f35185for;

    /* renamed from: if, reason: not valid java name */
    public final Action1<? super T> f35186if;

    /* renamed from: rx.internal.operators.o2$do, reason: invalid class name */
    public static final class Cdo<T> extends b02<T> {

        /* renamed from: for, reason: not valid java name */
        public final Action1<? super T> f35187for;

        /* renamed from: if, reason: not valid java name */
        public final b02<? super T> f35188if;

        /* renamed from: new, reason: not valid java name */
        public final Action1<Throwable> f35189new;

        public Cdo(b02<? super T> b02Var, Action1<? super T> action1, Action1<Throwable> action12) {
            this.f35188if = b02Var;
            this.f35187for = action1;
            this.f35189new = action12;
        }

        @Override // android.support.v4.b02
        /* renamed from: if */
        public void mo416if(T t) {
            try {
                this.f35187for.call(t);
                this.f35188if.mo416if(t);
            } catch (Throwable th) {
                s80.m7295else(th, this, t);
            }
        }

        @Override // android.support.v4.b02
        public void onError(Throwable th) {
            try {
                this.f35189new.call(th);
                this.f35188if.onError(th);
            } catch (Throwable th2) {
                s80.m7301try(th2);
                this.f35188if.onError(new rx.exceptions.Cdo(th, th2));
            }
        }
    }

    public o2(Single<T> single, Action1<? super T> action1, Action1<Throwable> action12) {
        this.f35184do = single;
        this.f35186if = action1;
        this.f35185for = action12;
    }

    @Override // rx.functions.Action1
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public void call(b02<? super T> b02Var) {
        Cdo cdo = new Cdo(b02Var, this.f35186if, this.f35185for);
        b02Var.m415do(cdo);
        this.f35184do.u(cdo);
    }
}
