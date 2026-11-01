package rx.internal.operators;

import android.support.v4.s80;
import android.support.v4.y22;
import rx.Observable;
import rx.Producer;
import rx.functions.Func1;

/* loaded from: classes4.dex */
public final class t1<T> implements Observable.Operator<T, T> {

    /* renamed from: do, reason: not valid java name */
    public final Func1<? super T, Boolean> f35407do;

    /* renamed from: rx.internal.operators.t1$do, reason: invalid class name */
    public class Cdo implements Producer {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Cif f35408do;

        public Cdo(Cif cif) {
            this.f35408do = cif;
        }

        @Override // rx.Producer
        public void request(long j) {
            this.f35408do.m38743do(j);
        }
    }

    /* renamed from: rx.internal.operators.t1$if, reason: invalid class name */
    public final class Cif extends y22<T> {

        /* renamed from: do, reason: not valid java name */
        private final y22<? super T> f35410do;

        /* renamed from: if, reason: not valid java name */
        private boolean f35412if;

        public Cif(y22<? super T> y22Var) {
            this.f35410do = y22Var;
        }

        /* renamed from: do, reason: not valid java name */
        public void m38743do(long j) {
            request(j);
        }

        @Override // rx.Observer
        public void onCompleted() {
            if (this.f35412if) {
                return;
            }
            this.f35410do.onCompleted();
        }

        @Override // rx.Observer
        public void onError(Throwable th) {
            if (this.f35412if) {
                return;
            }
            this.f35410do.onError(th);
        }

        @Override // rx.Observer
        public void onNext(T t) {
            this.f35410do.onNext(t);
            try {
                if (t1.this.f35407do.call(t).booleanValue()) {
                    this.f35412if = true;
                    this.f35410do.onCompleted();
                    unsubscribe();
                }
            } catch (Throwable th) {
                this.f35412if = true;
                s80.m7300this(th, this.f35410do, t);
                unsubscribe();
            }
        }
    }

    public t1(Func1<? super T, Boolean> func1) {
        this.f35407do = func1;
    }

    @Override // rx.functions.Func1
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public y22<? super T> call(y22<? super T> y22Var) {
        Cif cif = new Cif(y22Var);
        y22Var.add(cif);
        y22Var.setProducer(new Cdo(cif));
        return cif;
    }
}
