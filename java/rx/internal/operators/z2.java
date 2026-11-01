package rx.internal.operators;

import android.support.v4.b02;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicBoolean;
import rx.Completable;
import rx.CompletableSubscriber;
import rx.Single;
import rx.Subscription;
import rx.plugins.Cif;

/* loaded from: classes4.dex */
public final class z2<T> implements Single.OnSubscribe<T> {

    /* renamed from: do, reason: not valid java name */
    public final Single.OnSubscribe<T> f35658do;

    /* renamed from: if, reason: not valid java name */
    public final Completable f35659if;

    /* renamed from: rx.internal.operators.z2$do, reason: invalid class name */
    public static final class Cdo<T> extends b02<T> implements CompletableSubscriber {

        /* renamed from: for, reason: not valid java name */
        public final AtomicBoolean f35660for = new AtomicBoolean();

        /* renamed from: if, reason: not valid java name */
        public final b02<? super T> f35661if;

        public Cdo(b02<? super T> b02Var) {
            this.f35661if = b02Var;
        }

        @Override // android.support.v4.b02
        /* renamed from: if */
        public void mo416if(T t) {
            if (this.f35660for.compareAndSet(false, true)) {
                unsubscribe();
                this.f35661if.mo416if(t);
            }
        }

        @Override // rx.CompletableSubscriber
        public void onCompleted() {
            onError(new CancellationException("Single::takeUntil(Completable) - Stream was canceled before emitting a terminal event."));
        }

        @Override // android.support.v4.b02
        public void onError(Throwable th) {
            if (!this.f35660for.compareAndSet(false, true)) {
                Cif.m39151protected(th);
            } else {
                unsubscribe();
                this.f35661if.onError(th);
            }
        }

        @Override // rx.CompletableSubscriber
        public void onSubscribe(Subscription subscription) {
            m415do(subscription);
        }
    }

    public z2(Single.OnSubscribe<T> onSubscribe, Completable completable) {
        this.f35658do = onSubscribe;
        this.f35659if = completable;
    }

    @Override // rx.functions.Action1
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public void call(b02<? super T> b02Var) {
        Cdo cdo = new Cdo(b02Var);
        b02Var.m415do(cdo);
        this.f35659if.E(cdo);
        this.f35658do.call(cdo);
    }
}
