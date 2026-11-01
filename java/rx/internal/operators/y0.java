package rx.internal.operators;

import android.support.v4.s80;
import android.support.v4.ww1;
import android.support.v4.y22;
import rx.Observable;
import rx.Producer;
import rx.functions.Func1;

/* loaded from: classes4.dex */
public final class y0<T> implements Observable.Operator<T, T> {

    /* renamed from: do, reason: not valid java name */
    public final Func1<? super Throwable, ? extends Observable<? extends T>> f35598do;

    /* renamed from: rx.internal.operators.y0$do, reason: invalid class name */
    public static class Cdo implements Func1<Throwable, Observable<? extends T>> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Func1 f35599do;

        public Cdo(Func1 func1) {
            this.f35599do = func1;
        }

        @Override // rx.functions.Func1
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public Observable<? extends T> call(Throwable th) {
            return Observable.u1(this.f35599do.call(th));
        }
    }

    /* renamed from: rx.internal.operators.y0$for, reason: invalid class name */
    public static class Cfor implements Func1<Throwable, Observable<? extends T>> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Observable f35600do;

        public Cfor(Observable observable) {
            this.f35600do = observable;
        }

        @Override // rx.functions.Func1
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public Observable<? extends T> call(Throwable th) {
            return th instanceof Exception ? this.f35600do : Observable.C0(th);
        }
    }

    /* renamed from: rx.internal.operators.y0$if, reason: invalid class name */
    public static class Cif implements Func1<Throwable, Observable<? extends T>> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Observable f35601do;

        public Cif(Observable observable) {
            this.f35601do = observable;
        }

        @Override // rx.functions.Func1
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public Observable<? extends T> call(Throwable th) {
            return this.f35601do;
        }
    }

    /* renamed from: rx.internal.operators.y0$new, reason: invalid class name */
    public class Cnew extends y22<T> {

        /* renamed from: do, reason: not valid java name */
        private boolean f35603do;

        /* renamed from: for, reason: not valid java name */
        public final /* synthetic */ y22 f35604for;

        /* renamed from: if, reason: not valid java name */
        public long f35605if;

        /* renamed from: new, reason: not valid java name */
        public final /* synthetic */ rx.internal.producers.Cdo f35606new;

        /* renamed from: try, reason: not valid java name */
        public final /* synthetic */ ww1 f35607try;

        /* renamed from: rx.internal.operators.y0$new$do, reason: invalid class name */
        public class Cdo extends y22<T> {
            public Cdo() {
            }

            @Override // rx.Observer
            public void onCompleted() {
                Cnew.this.f35604for.onCompleted();
            }

            @Override // rx.Observer
            public void onError(Throwable th) {
                Cnew.this.f35604for.onError(th);
            }

            @Override // rx.Observer
            public void onNext(T t) {
                Cnew.this.f35604for.onNext(t);
            }

            @Override // android.support.v4.y22, rx.observers.AssertableSubscriber
            public void setProducer(Producer producer) {
                Cnew.this.f35606new.m38829for(producer);
            }
        }

        public Cnew(y22 y22Var, rx.internal.producers.Cdo cdo, ww1 ww1Var) {
            this.f35604for = y22Var;
            this.f35606new = cdo;
            this.f35607try = ww1Var;
        }

        @Override // rx.Observer
        public void onCompleted() {
            if (this.f35603do) {
                return;
            }
            this.f35603do = true;
            this.f35604for.onCompleted();
        }

        @Override // rx.Observer
        public void onError(Throwable th) {
            if (this.f35603do) {
                s80.m7301try(th);
                rx.plugins.Cif.m39151protected(th);
                return;
            }
            this.f35603do = true;
            try {
                unsubscribe();
                Cdo cdo = new Cdo();
                this.f35607try.m9298if(cdo);
                long j = this.f35605if;
                if (j != 0) {
                    this.f35606new.m38830if(j);
                }
                y0.this.f35598do.call(th).r5(cdo);
            } catch (Throwable th2) {
                s80.m7297goto(th2, this.f35604for);
            }
        }

        @Override // rx.Observer
        public void onNext(T t) {
            if (this.f35603do) {
                return;
            }
            this.f35605if++;
            this.f35604for.onNext(t);
        }

        @Override // android.support.v4.y22, rx.observers.AssertableSubscriber
        public void setProducer(Producer producer) {
            this.f35606new.m38829for(producer);
        }
    }

    public y0(Func1<? super Throwable, ? extends Observable<? extends T>> func1) {
        this.f35598do = func1;
    }

    /* renamed from: for, reason: not valid java name */
    public static <T> y0<T> m38805for(Observable<? extends T> observable) {
        return new y0<>(new Cif(observable));
    }

    /* renamed from: if, reason: not valid java name */
    public static <T> y0<T> m38806if(Observable<? extends T> observable) {
        return new y0<>(new Cfor(observable));
    }

    /* renamed from: new, reason: not valid java name */
    public static <T> y0<T> m38807new(Func1<? super Throwable, ? extends T> func1) {
        return new y0<>(new Cdo(func1));
    }

    @Override // rx.functions.Func1
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public y22<? super T> call(y22<? super T> y22Var) {
        rx.internal.producers.Cdo cdo = new rx.internal.producers.Cdo();
        ww1 ww1Var = new ww1();
        Cnew cnew = new Cnew(y22Var, cdo, ww1Var);
        ww1Var.m9298if(cnew);
        y22Var.add(ww1Var);
        y22Var.setProducer(cdo);
        return cnew;
    }
}
