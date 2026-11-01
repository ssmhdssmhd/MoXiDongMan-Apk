package rx.internal.operators;

import android.support.v4.s80;
import android.support.v4.y22;
import java.util.NoSuchElementException;
import rx.Observable;
import rx.Producer;
import rx.functions.Func2;

/* loaded from: classes4.dex */
public final class h<T> implements Observable.OnSubscribe<T> {

    /* renamed from: do, reason: not valid java name */
    public final Observable<T> f34851do;

    /* renamed from: if, reason: not valid java name */
    public final Func2<T, T, T> f34852if;

    /* renamed from: rx.internal.operators.h$do, reason: invalid class name */
    public class Cdo implements Producer {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Cif f34853do;

        public Cdo(Cif cif) {
            this.f34853do = cif;
        }

        @Override // rx.Producer
        public void request(long j) {
            this.f34853do.m38533do(j);
        }
    }

    /* renamed from: rx.internal.operators.h$if, reason: invalid class name */
    public static final class Cif<T> extends y22<T> {

        /* renamed from: try, reason: not valid java name */
        public static final Object f34855try = new Object();

        /* renamed from: do, reason: not valid java name */
        public final y22<? super T> f34856do;

        /* renamed from: for, reason: not valid java name */
        public T f34857for = (T) f34855try;

        /* renamed from: if, reason: not valid java name */
        public final Func2<T, T, T> f34858if;

        /* renamed from: new, reason: not valid java name */
        public boolean f34859new;

        public Cif(y22<? super T> y22Var, Func2<T, T, T> func2) {
            this.f34856do = y22Var;
            this.f34858if = func2;
            request(0L);
        }

        /* renamed from: do, reason: not valid java name */
        public void m38533do(long j) {
            if (j >= 0) {
                if (j != 0) {
                    request(Long.MAX_VALUE);
                }
            } else {
                throw new IllegalArgumentException("n >= 0 required but it was " + j);
            }
        }

        @Override // rx.Observer
        public void onCompleted() {
            if (this.f34859new) {
                return;
            }
            this.f34859new = true;
            T t = this.f34857for;
            if (t == f34855try) {
                this.f34856do.onError(new NoSuchElementException());
            } else {
                this.f34856do.onNext(t);
                this.f34856do.onCompleted();
            }
        }

        @Override // rx.Observer
        public void onError(Throwable th) {
            if (this.f34859new) {
                rx.plugins.Cif.m39151protected(th);
            } else {
                this.f34859new = true;
                this.f34856do.onError(th);
            }
        }

        @Override // rx.Observer
        public void onNext(T t) {
            if (this.f34859new) {
                return;
            }
            T t2 = this.f34857for;
            if (t2 == f34855try) {
                this.f34857for = t;
                return;
            }
            try {
                this.f34857for = this.f34858if.call(t2, t);
            } catch (Throwable th) {
                s80.m7301try(th);
                unsubscribe();
                onError(th);
            }
        }
    }

    public h(Observable<T> observable, Func2<T, T, T> func2) {
        this.f34851do = observable;
        this.f34852if = func2;
    }

    @Override // rx.functions.Action1
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public void call(y22<? super T> y22Var) {
        Cif cif = new Cif(y22Var, this.f34852if);
        y22Var.add(cif);
        y22Var.setProducer(new Cdo(cif));
        this.f34851do.r5(cif);
    }
}
