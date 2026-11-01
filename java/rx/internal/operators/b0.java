package rx.internal.operators;

import android.support.v4.s80;
import android.support.v4.y22;
import rx.Observable;
import rx.Producer;
import rx.plugins.Cif;

/* loaded from: classes4.dex */
public class b0<T, R> implements Observable.Operator<R, T> {

    /* renamed from: do, reason: not valid java name */
    public final Class<R> f34508do;

    /* renamed from: rx.internal.operators.b0$do, reason: invalid class name */
    public static final class Cdo<T, R> extends y22<T> {

        /* renamed from: do, reason: not valid java name */
        public final y22<? super R> f34509do;

        /* renamed from: for, reason: not valid java name */
        public boolean f34510for;

        /* renamed from: if, reason: not valid java name */
        public final Class<R> f34511if;

        public Cdo(y22<? super R> y22Var, Class<R> cls) {
            this.f34509do = y22Var;
            this.f34511if = cls;
        }

        @Override // rx.Observer
        public void onCompleted() {
            if (this.f34510for) {
                return;
            }
            this.f34509do.onCompleted();
        }

        @Override // rx.Observer
        public void onError(Throwable th) {
            if (this.f34510for) {
                Cif.m39151protected(th);
            } else {
                this.f34510for = true;
                this.f34509do.onError(th);
            }
        }

        @Override // rx.Observer
        public void onNext(T t) {
            try {
                this.f34509do.onNext(this.f34511if.cast(t));
            } catch (Throwable th) {
                s80.m7301try(th);
                unsubscribe();
                onError(rx.exceptions.Cif.addValueAsLastCause(th, t));
            }
        }

        @Override // android.support.v4.y22, rx.observers.AssertableSubscriber
        public void setProducer(Producer producer) {
            this.f34509do.setProducer(producer);
        }
    }

    public b0(Class<R> cls) {
        this.f34508do = cls;
    }

    @Override // rx.functions.Func1
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public y22<? super T> call(y22<? super R> y22Var) {
        Cdo cdo = new Cdo(y22Var, this.f34508do);
        y22Var.add(cdo);
        return cdo;
    }
}
