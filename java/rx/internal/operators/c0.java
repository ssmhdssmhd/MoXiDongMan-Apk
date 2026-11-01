package rx.internal.operators;

import android.support.v4.ax1;
import android.support.v4.s80;
import android.support.v4.ww1;
import android.support.v4.y22;
import rx.Observable;
import rx.functions.Func1;
import rx.internal.operators.d0;

/* loaded from: classes4.dex */
public final class c0<T, U> implements Observable.Operator<T, T> {

    /* renamed from: do, reason: not valid java name */
    public final Func1<? super T, ? extends Observable<U>> f34544do;

    /* renamed from: rx.internal.operators.c0$do, reason: invalid class name */
    public class Cdo extends y22<T> {

        /* renamed from: do, reason: not valid java name */
        public final d0.Cif<T> f34545do;

        /* renamed from: for, reason: not valid java name */
        public final /* synthetic */ ax1 f34546for;

        /* renamed from: if, reason: not valid java name */
        public final y22<?> f34547if;

        /* renamed from: new, reason: not valid java name */
        public final /* synthetic */ ww1 f34548new;

        /* renamed from: rx.internal.operators.c0$do$do, reason: invalid class name and collision with other inner class name */
        public class C0515do extends y22<U> {

            /* renamed from: do, reason: not valid java name */
            public final /* synthetic */ int f34550do;

            public C0515do(int i) {
                this.f34550do = i;
            }

            @Override // rx.Observer
            public void onCompleted() {
                Cdo cdo = Cdo.this;
                cdo.f34545do.m38439if(this.f34550do, cdo.f34546for, cdo.f34547if);
                unsubscribe();
            }

            @Override // rx.Observer
            public void onError(Throwable th) {
                Cdo.this.f34547if.onError(th);
            }

            @Override // rx.Observer
            public void onNext(U u) {
                onCompleted();
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Cdo(y22 y22Var, ax1 ax1Var, ww1 ww1Var) {
            super(y22Var);
            this.f34546for = ax1Var;
            this.f34548new = ww1Var;
            this.f34545do = new d0.Cif<>();
            this.f34547if = this;
        }

        @Override // rx.Observer
        public void onCompleted() {
            this.f34545do.m38438for(this.f34546for, this);
        }

        @Override // rx.Observer
        public void onError(Throwable th) {
            this.f34546for.onError(th);
            unsubscribe();
            this.f34545do.m38437do();
        }

        @Override // rx.Observer
        public void onNext(T t) {
            try {
                Observable<U> observableCall = c0.this.f34544do.call(t);
                C0515do c0515do = new C0515do(this.f34545do.m38440new(t));
                this.f34548new.m9298if(c0515do);
                observableCall.r5(c0515do);
            } catch (Throwable th) {
                s80.m7297goto(th, this);
            }
        }

        @Override // android.support.v4.y22
        public void onStart() {
            request(Long.MAX_VALUE);
        }
    }

    public c0(Func1<? super T, ? extends Observable<U>> func1) {
        this.f34544do = func1;
    }

    @Override // rx.functions.Func1
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public y22<? super T> call(y22<? super T> y22Var) {
        ax1 ax1Var = new ax1(y22Var);
        ww1 ww1Var = new ww1();
        y22Var.add(ww1Var);
        return new Cdo(y22Var, ax1Var, ww1Var);
    }
}
