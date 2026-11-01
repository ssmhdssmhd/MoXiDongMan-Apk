package rx.internal.operators;

import android.support.v4.s80;
import android.support.v4.y22;
import java.util.Iterator;
import rx.Observable;
import rx.functions.Func2;
import rx.observers.Cnew;

/* loaded from: classes4.dex */
public final class l2<T1, T2, R> implements Observable.Operator<R, T1> {

    /* renamed from: do, reason: not valid java name */
    public final Iterable<? extends T2> f35061do;

    /* renamed from: if, reason: not valid java name */
    public final Func2<? super T1, ? super T2, ? extends R> f35062if;

    /* renamed from: rx.internal.operators.l2$do, reason: invalid class name */
    public class Cdo extends y22<T1> {

        /* renamed from: do, reason: not valid java name */
        public boolean f35063do;

        /* renamed from: for, reason: not valid java name */
        public final /* synthetic */ Iterator f35064for;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ y22 f35065if;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Cdo(y22 y22Var, y22 y22Var2, Iterator it) {
            super(y22Var);
            this.f35065if = y22Var2;
            this.f35064for = it;
        }

        @Override // rx.Observer
        public void onCompleted() {
            if (this.f35063do) {
                return;
            }
            this.f35063do = true;
            this.f35065if.onCompleted();
        }

        @Override // rx.Observer
        public void onError(Throwable th) {
            if (this.f35063do) {
                s80.m7301try(th);
            } else {
                this.f35063do = true;
                this.f35065if.onError(th);
            }
        }

        @Override // rx.Observer
        public void onNext(T1 t1) {
            if (this.f35063do) {
                return;
            }
            try {
                this.f35065if.onNext(l2.this.f35062if.call(t1, (Object) this.f35064for.next()));
                if (this.f35064for.hasNext()) {
                    return;
                }
                onCompleted();
            } catch (Throwable th) {
                s80.m7297goto(th, this);
            }
        }
    }

    public l2(Iterable<? extends T2> iterable, Func2<? super T1, ? super T2, ? extends R> func2) {
        this.f35061do = iterable;
        this.f35062if = func2;
    }

    @Override // rx.functions.Func1
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public y22<? super T1> call(y22<? super R> y22Var) {
        Iterator<? extends T2> it = this.f35061do.iterator();
        try {
            if (it.hasNext()) {
                return new Cdo(y22Var, y22Var, it);
            }
            y22Var.onCompleted();
            return Cnew.m39116new();
        } catch (Throwable th) {
            s80.m7297goto(th, y22Var);
            return Cnew.m39116new();
        }
    }
}
