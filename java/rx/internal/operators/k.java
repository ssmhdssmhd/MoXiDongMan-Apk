package rx.internal.operators;

import android.support.v4.b02;
import android.support.v4.y22;
import java.util.NoSuchElementException;
import rx.Observable;
import rx.Single;

/* loaded from: classes4.dex */
public class k<T> implements Single.OnSubscribe<T> {

    /* renamed from: do, reason: not valid java name */
    private final Observable<T> f35007do;

    /* renamed from: rx.internal.operators.k$do, reason: invalid class name */
    public class Cdo extends y22<T> {

        /* renamed from: do, reason: not valid java name */
        private boolean f35008do;

        /* renamed from: for, reason: not valid java name */
        private T f35009for;

        /* renamed from: if, reason: not valid java name */
        private boolean f35010if;

        /* renamed from: new, reason: not valid java name */
        public final /* synthetic */ b02 f35011new;

        public Cdo(b02 b02Var) {
            this.f35011new = b02Var;
        }

        @Override // rx.Observer
        public void onCompleted() {
            if (this.f35008do) {
                return;
            }
            if (this.f35010if) {
                this.f35011new.mo416if(this.f35009for);
            } else {
                this.f35011new.onError(new NoSuchElementException("Observable emitted no items"));
            }
        }

        @Override // rx.Observer
        public void onError(Throwable th) {
            this.f35011new.onError(th);
            unsubscribe();
        }

        @Override // rx.Observer
        public void onNext(T t) {
            if (!this.f35010if) {
                this.f35010if = true;
                this.f35009for = t;
            } else {
                this.f35008do = true;
                this.f35011new.onError(new IllegalArgumentException("Observable emitted too many elements"));
                unsubscribe();
            }
        }

        @Override // android.support.v4.y22
        public void onStart() {
            request(2L);
        }
    }

    public k(Observable<T> observable) {
        this.f35007do = observable;
    }

    /* renamed from: if, reason: not valid java name */
    public static <T> k<T> m38588if(Observable<T> observable) {
        return new k<>(observable);
    }

    @Override // rx.functions.Action1
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public void call(b02<? super T> b02Var) {
        Cdo cdo = new Cdo(b02Var);
        b02Var.m415do(cdo);
        this.f35007do.r5(cdo);
    }
}
