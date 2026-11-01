package rx.internal.operators;

import android.support.v4.lz1;
import android.support.v4.s80;
import android.support.v4.y22;
import rx.Observable;
import rx.functions.Func1;
import rx.plugins.Cif;

/* loaded from: classes4.dex */
public final class u<T> implements Observable.Operator<Boolean, T> {

    /* renamed from: do, reason: not valid java name */
    public final Func1<? super T, Boolean> f35446do;

    /* renamed from: rx.internal.operators.u$do, reason: invalid class name */
    public class Cdo extends y22<T> {

        /* renamed from: do, reason: not valid java name */
        public boolean f35447do;

        /* renamed from: for, reason: not valid java name */
        public final /* synthetic */ y22 f35448for;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ lz1 f35449if;

        public Cdo(lz1 lz1Var, y22 y22Var) {
            this.f35449if = lz1Var;
            this.f35448for = y22Var;
        }

        @Override // rx.Observer
        public void onCompleted() {
            if (this.f35447do) {
                return;
            }
            this.f35447do = true;
            this.f35449if.setValue(Boolean.TRUE);
        }

        @Override // rx.Observer
        public void onError(Throwable th) {
            if (this.f35447do) {
                Cif.m39151protected(th);
            } else {
                this.f35447do = true;
                this.f35448for.onError(th);
            }
        }

        @Override // rx.Observer
        public void onNext(T t) {
            if (this.f35447do) {
                return;
            }
            try {
                if (u.this.f35446do.call(t).booleanValue()) {
                    return;
                }
                this.f35447do = true;
                this.f35449if.setValue(Boolean.FALSE);
                unsubscribe();
            } catch (Throwable th) {
                s80.m7300this(th, this, t);
            }
        }
    }

    public u(Func1<? super T, Boolean> func1) {
        this.f35446do = func1;
    }

    @Override // rx.functions.Func1
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public y22<? super T> call(y22<? super Boolean> y22Var) {
        lz1 lz1Var = new lz1(y22Var);
        Cdo cdo = new Cdo(lz1Var, y22Var);
        y22Var.add(cdo);
        y22Var.setProducer(lz1Var);
        return cdo;
    }
}
