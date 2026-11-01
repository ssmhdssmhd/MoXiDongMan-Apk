package rx.internal.operators;

import android.support.v4.s80;
import android.support.v4.y22;
import rx.Observable;
import rx.Producer;
import rx.functions.Func1;
import rx.functions.Func2;

/* loaded from: classes4.dex */
public final class q0<T, U, R> implements Observable.Operator<Observable<? extends R>, T> {

    /* renamed from: do, reason: not valid java name */
    public final Func1<? super T, ? extends Observable<? extends U>> f35256do;

    /* renamed from: if, reason: not valid java name */
    public final Func2<? super T, ? super U, ? extends R> f35257if;

    /* renamed from: rx.internal.operators.q0$do, reason: invalid class name */
    public static class Cdo implements Func1<T, Observable<U>> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Func1 f35258do;

        public Cdo(Func1 func1) {
            this.f35258do = func1;
        }

        @Override // rx.functions.Func1
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public Observable<U> call(T t) {
            return Observable.d1((Iterable) this.f35258do.call(t));
        }
    }

    /* renamed from: rx.internal.operators.q0$for, reason: invalid class name */
    public static final class Cfor<T, U, R> implements Func1<U, R> {

        /* renamed from: do, reason: not valid java name */
        public final T f35259do;

        /* renamed from: if, reason: not valid java name */
        public final Func2<? super T, ? super U, ? extends R> f35260if;

        public Cfor(T t, Func2<? super T, ? super U, ? extends R> func2) {
            this.f35259do = t;
            this.f35260if = func2;
        }

        @Override // rx.functions.Func1
        public R call(U u) {
            return this.f35260if.call(this.f35259do, u);
        }
    }

    /* renamed from: rx.internal.operators.q0$if, reason: invalid class name */
    public static final class Cif<T, U, R> extends y22<T> {

        /* renamed from: do, reason: not valid java name */
        public final y22<? super Observable<? extends R>> f35261do;

        /* renamed from: for, reason: not valid java name */
        public final Func2<? super T, ? super U, ? extends R> f35262for;

        /* renamed from: if, reason: not valid java name */
        public final Func1<? super T, ? extends Observable<? extends U>> f35263if;

        /* renamed from: new, reason: not valid java name */
        public boolean f35264new;

        public Cif(y22<? super Observable<? extends R>> y22Var, Func1<? super T, ? extends Observable<? extends U>> func1, Func2<? super T, ? super U, ? extends R> func2) {
            this.f35261do = y22Var;
            this.f35263if = func1;
            this.f35262for = func2;
        }

        @Override // rx.Observer
        public void onCompleted() {
            if (this.f35264new) {
                return;
            }
            this.f35261do.onCompleted();
        }

        @Override // rx.Observer
        public void onError(Throwable th) {
            if (this.f35264new) {
                rx.plugins.Cif.m39151protected(th);
            } else {
                this.f35264new = true;
                this.f35261do.onError(th);
            }
        }

        @Override // rx.Observer
        public void onNext(T t) {
            try {
                this.f35261do.onNext(this.f35263if.call(t).K1(new Cfor(t, this.f35262for)));
            } catch (Throwable th) {
                s80.m7301try(th);
                unsubscribe();
                onError(rx.exceptions.Cif.addValueAsLastCause(th, t));
            }
        }

        @Override // android.support.v4.y22, rx.observers.AssertableSubscriber
        public void setProducer(Producer producer) {
            this.f35261do.setProducer(producer);
        }
    }

    public q0(Func1<? super T, ? extends Observable<? extends U>> func1, Func2<? super T, ? super U, ? extends R> func2) {
        this.f35256do = func1;
        this.f35257if = func2;
    }

    /* renamed from: if, reason: not valid java name */
    public static <T, U> Func1<T, Observable<U>> m38663if(Func1<? super T, ? extends Iterable<? extends U>> func1) {
        return new Cdo(func1);
    }

    @Override // rx.functions.Func1
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public y22<? super T> call(y22<? super Observable<? extends R>> y22Var) {
        Cif cif = new Cif(y22Var, this.f35256do, this.f35257if);
        y22Var.add(cif);
        return cif;
    }
}
