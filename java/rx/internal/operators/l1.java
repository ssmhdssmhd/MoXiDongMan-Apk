package rx.internal.operators;

import android.support.v4.s80;
import android.support.v4.y22;
import rx.Observable;
import rx.functions.Func1;
import rx.functions.Func2;

/* loaded from: classes4.dex */
public final class l1<T> implements Observable.Operator<T, T> {

    /* renamed from: do, reason: not valid java name */
    public final Func2<? super T, Integer, Boolean> f35055do;

    /* renamed from: rx.internal.operators.l1$do, reason: invalid class name */
    public class Cdo extends y22<T> {

        /* renamed from: do, reason: not valid java name */
        public boolean f35056do;

        /* renamed from: for, reason: not valid java name */
        public final /* synthetic */ y22 f35057for;

        /* renamed from: if, reason: not valid java name */
        public int f35058if;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Cdo(y22 y22Var, y22 y22Var2) {
            super(y22Var);
            this.f35057for = y22Var2;
            this.f35056do = true;
        }

        @Override // rx.Observer
        public void onCompleted() {
            this.f35057for.onCompleted();
        }

        @Override // rx.Observer
        public void onError(Throwable th) {
            this.f35057for.onError(th);
        }

        @Override // rx.Observer
        public void onNext(T t) {
            if (!this.f35056do) {
                this.f35057for.onNext(t);
                return;
            }
            try {
                Func2<? super T, Integer, Boolean> func2 = l1.this.f35055do;
                int i = this.f35058if;
                this.f35058if = i + 1;
                if (func2.call(t, Integer.valueOf(i)).booleanValue()) {
                    request(1L);
                } else {
                    this.f35056do = false;
                    this.f35057for.onNext(t);
                }
            } catch (Throwable th) {
                s80.m7300this(th, this.f35057for, t);
            }
        }
    }

    /* renamed from: rx.internal.operators.l1$if, reason: invalid class name */
    public static class Cif implements Func2<T, Integer, Boolean> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Func1 f35060do;

        public Cif(Func1 func1) {
            this.f35060do = func1;
        }

        @Override // rx.functions.Func2
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public Boolean call(T t, Integer num) {
            return (Boolean) this.f35060do.call(t);
        }
    }

    public l1(Func2<? super T, Integer, Boolean> func2) {
        this.f35055do = func2;
    }

    /* renamed from: if, reason: not valid java name */
    public static <T> Func2<T, Integer, Boolean> m38603if(Func1<? super T, Boolean> func1) {
        return new Cif(func1);
    }

    @Override // rx.functions.Func1
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public y22<? super T> call(y22<? super T> y22Var) {
        return new Cdo(y22Var, y22Var);
    }
}
