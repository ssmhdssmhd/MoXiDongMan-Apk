package rx.internal.operators;

import android.support.v4.s80;
import android.support.v4.y22;
import java.util.Arrays;
import rx.Observable;
import rx.Observer;
import rx.plugins.Cif;

/* renamed from: rx.internal.operators.continue, reason: invalid class name */
/* loaded from: classes4.dex */
public class Ccontinue<T> implements Observable.OnSubscribe<T> {

    /* renamed from: do, reason: not valid java name */
    private final Observer<? super T> f34602do;

    /* renamed from: if, reason: not valid java name */
    private final Observable<T> f34603if;

    /* renamed from: rx.internal.operators.continue$do, reason: invalid class name */
    public static final class Cdo<T> extends y22<T> {

        /* renamed from: do, reason: not valid java name */
        private final y22<? super T> f34604do;

        /* renamed from: for, reason: not valid java name */
        private boolean f34605for;

        /* renamed from: if, reason: not valid java name */
        private final Observer<? super T> f34606if;

        public Cdo(y22<? super T> y22Var, Observer<? super T> observer) {
            super(y22Var);
            this.f34604do = y22Var;
            this.f34606if = observer;
        }

        @Override // rx.Observer
        public void onCompleted() {
            if (this.f34605for) {
                return;
            }
            try {
                this.f34606if.onCompleted();
                this.f34605for = true;
                this.f34604do.onCompleted();
            } catch (Throwable th) {
                s80.m7297goto(th, this);
            }
        }

        @Override // rx.Observer
        public void onError(Throwable th) {
            if (this.f34605for) {
                Cif.m39151protected(th);
                return;
            }
            this.f34605for = true;
            try {
                this.f34606if.onError(th);
                this.f34604do.onError(th);
            } catch (Throwable th2) {
                s80.m7301try(th2);
                this.f34604do.onError(new rx.exceptions.Cdo(Arrays.asList(th, th2)));
            }
        }

        @Override // rx.Observer
        public void onNext(T t) {
            if (this.f34605for) {
                return;
            }
            try {
                this.f34606if.onNext(t);
                this.f34604do.onNext(t);
            } catch (Throwable th) {
                s80.m7300this(th, this, t);
            }
        }
    }

    public Ccontinue(Observable<T> observable, Observer<? super T> observer) {
        this.f34603if = observable;
        this.f34602do = observer;
    }

    @Override // rx.functions.Action1
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public void call(y22<? super T> y22Var) {
        this.f34603if.r5(new Cdo(y22Var, this.f34602do));
    }
}
