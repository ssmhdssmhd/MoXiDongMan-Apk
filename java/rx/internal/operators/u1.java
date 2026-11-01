package rx.internal.operators;

import android.support.v4.s80;
import android.support.v4.y22;
import rx.Observable;
import rx.functions.Func1;
import rx.functions.Func2;

/* loaded from: classes4.dex */
public final class u1<T> implements Observable.Operator<T, T> {

    /* renamed from: do, reason: not valid java name */
    public final Func2<? super T, ? super Integer, Boolean> f35466do;

    /* renamed from: rx.internal.operators.u1$do, reason: invalid class name */
    public class Cdo implements Func2<T, Integer, Boolean> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Func1 f35467do;

        public Cdo(Func1 func1) {
            this.f35467do = func1;
        }

        @Override // rx.functions.Func2
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public Boolean call(T t, Integer num) {
            return (Boolean) this.f35467do.call(t);
        }
    }

    /* renamed from: rx.internal.operators.u1$if, reason: invalid class name */
    public class Cif extends y22<T> {

        /* renamed from: do, reason: not valid java name */
        private int f35468do;

        /* renamed from: for, reason: not valid java name */
        public final /* synthetic */ y22 f35469for;

        /* renamed from: if, reason: not valid java name */
        private boolean f35470if;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Cif(y22 y22Var, boolean z, y22 y22Var2) {
            super(y22Var, z);
            this.f35469for = y22Var2;
        }

        @Override // rx.Observer
        public void onCompleted() {
            if (this.f35470if) {
                return;
            }
            this.f35469for.onCompleted();
        }

        @Override // rx.Observer
        public void onError(Throwable th) {
            if (this.f35470if) {
                return;
            }
            this.f35469for.onError(th);
        }

        @Override // rx.Observer
        public void onNext(T t) {
            try {
                Func2<? super T, ? super Integer, Boolean> func2 = u1.this.f35466do;
                int i = this.f35468do;
                this.f35468do = i + 1;
                if (func2.call(t, Integer.valueOf(i)).booleanValue()) {
                    this.f35469for.onNext(t);
                    return;
                }
                this.f35470if = true;
                this.f35469for.onCompleted();
                unsubscribe();
            } catch (Throwable th) {
                this.f35470if = true;
                s80.m7300this(th, this.f35469for, t);
                unsubscribe();
            }
        }
    }

    public u1(Func1<? super T, Boolean> func1) {
        this(new Cdo(func1));
    }

    @Override // rx.functions.Func1
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public y22<? super T> call(y22<? super T> y22Var) {
        Cif cif = new Cif(y22Var, false, y22Var);
        y22Var.add(cif);
        return cif;
    }

    public u1(Func2<? super T, ? super Integer, Boolean> func2) {
        this.f35466do = func2;
    }
}
