package rx.internal.operators;

import android.support.v4.b02;
import android.support.v4.y22;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicBoolean;
import rx.Observable;
import rx.Single;
import rx.plugins.Cif;

/* loaded from: classes4.dex */
public final class a3<T, U> implements Single.OnSubscribe<T> {

    /* renamed from: do, reason: not valid java name */
    public final Single.OnSubscribe<T> f34491do;

    /* renamed from: if, reason: not valid java name */
    public final Observable<? extends U> f34492if;

    /* renamed from: rx.internal.operators.a3$do, reason: invalid class name */
    public static final class Cdo<T, U> extends b02<T> {

        /* renamed from: for, reason: not valid java name */
        public final AtomicBoolean f34493for = new AtomicBoolean();

        /* renamed from: if, reason: not valid java name */
        public final b02<? super T> f34494if;

        /* renamed from: new, reason: not valid java name */
        public final y22<U> f34495new;

        /* renamed from: rx.internal.operators.a3$do$do, reason: invalid class name and collision with other inner class name */
        public final class C0513do extends y22<U> {
            public C0513do() {
            }

            @Override // rx.Observer
            public void onCompleted() {
                onError(new CancellationException("Single::takeUntil(Observable) - Stream was canceled before emitting a terminal event."));
            }

            @Override // rx.Observer
            public void onError(Throwable th) {
                Cdo.this.onError(th);
            }

            @Override // rx.Observer
            public void onNext(U u) {
                onCompleted();
            }
        }

        public Cdo(b02<? super T> b02Var) {
            this.f34494if = b02Var;
            C0513do c0513do = new C0513do();
            this.f34495new = c0513do;
            m415do(c0513do);
        }

        @Override // android.support.v4.b02
        /* renamed from: if */
        public void mo416if(T t) {
            if (this.f34493for.compareAndSet(false, true)) {
                unsubscribe();
                this.f34494if.mo416if(t);
            }
        }

        @Override // android.support.v4.b02
        public void onError(Throwable th) {
            if (!this.f34493for.compareAndSet(false, true)) {
                Cif.m39151protected(th);
            } else {
                unsubscribe();
                this.f34494if.onError(th);
            }
        }
    }

    public a3(Single.OnSubscribe<T> onSubscribe, Observable<? extends U> observable) {
        this.f34491do = onSubscribe;
        this.f34492if = observable;
    }

    @Override // rx.functions.Action1
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public void call(b02<? super T> b02Var) {
        Cdo cdo = new Cdo(b02Var);
        b02Var.m415do(cdo);
        this.f34492if.Y3(cdo.f34495new);
        this.f34491do.call(cdo);
    }
}
