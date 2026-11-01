package rx.internal.operators;

import android.support.v4.b02;
import android.support.v4.y22;
import java.util.NoSuchElementException;
import rx.Observable;
import rx.Single;
import rx.plugins.Cif;

/* loaded from: classes4.dex */
public final class q2<T> implements Single.OnSubscribe<T> {

    /* renamed from: do, reason: not valid java name */
    public final Observable.OnSubscribe<T> f35277do;

    /* renamed from: rx.internal.operators.q2$do, reason: invalid class name */
    public static final class Cdo<T> extends y22<T> {

        /* renamed from: case, reason: not valid java name */
        public static final int f35278case = 2;

        /* renamed from: new, reason: not valid java name */
        public static final int f35279new = 0;

        /* renamed from: try, reason: not valid java name */
        public static final int f35280try = 1;

        /* renamed from: do, reason: not valid java name */
        public final b02<? super T> f35281do;

        /* renamed from: for, reason: not valid java name */
        public int f35282for;

        /* renamed from: if, reason: not valid java name */
        public T f35283if;

        public Cdo(b02<? super T> b02Var) {
            this.f35281do = b02Var;
        }

        @Override // rx.Observer
        public void onCompleted() {
            int i = this.f35282for;
            if (i == 0) {
                this.f35281do.onError(new NoSuchElementException());
            } else if (i == 1) {
                this.f35282for = 2;
                T t = this.f35283if;
                this.f35283if = null;
                this.f35281do.mo416if(t);
            }
        }

        @Override // rx.Observer
        public void onError(Throwable th) {
            if (this.f35282for == 2) {
                Cif.m39151protected(th);
            } else {
                this.f35283if = null;
                this.f35281do.onError(th);
            }
        }

        @Override // rx.Observer
        public void onNext(T t) {
            int i = this.f35282for;
            if (i == 0) {
                this.f35282for = 1;
                this.f35283if = t;
            } else if (i == 1) {
                this.f35282for = 2;
                this.f35281do.onError(new IndexOutOfBoundsException("The upstream produced more than one value"));
            }
        }
    }

    public q2(Observable.OnSubscribe<T> onSubscribe) {
        this.f35277do = onSubscribe;
    }

    @Override // rx.functions.Action1
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public void call(b02<? super T> b02Var) {
        Cdo cdo = new Cdo(b02Var);
        b02Var.m415do(cdo);
        this.f35277do.call(cdo);
    }
}
