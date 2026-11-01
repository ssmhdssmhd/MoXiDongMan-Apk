package rx.internal.operators;

import android.support.v4.b02;
import android.support.v4.nf;
import android.support.v4.s80;
import android.support.v4.uw1;
import java.util.concurrent.atomic.AtomicBoolean;
import rx.Single;
import rx.SingleEmitter;
import rx.Subscription;
import rx.functions.Action1;
import rx.functions.Cancellable;
import rx.plugins.Cif;

/* loaded from: classes4.dex */
public final class p2<T> implements Single.OnSubscribe<T> {

    /* renamed from: do, reason: not valid java name */
    public final Action1<SingleEmitter<T>> f35221do;

    /* renamed from: rx.internal.operators.p2$do, reason: invalid class name */
    public static final class Cdo<T> extends AtomicBoolean implements SingleEmitter<T>, Subscription {
        private static final long serialVersionUID = 8082834163465882809L;
        public final b02<? super T> actual;
        public final uw1 resource = new uw1();

        public Cdo(b02<? super T> b02Var) {
            this.actual = b02Var;
        }

        @Override // rx.Subscription
        public boolean isUnsubscribed() {
            return get();
        }

        @Override // rx.SingleEmitter
        public void onError(Throwable th) {
            if (th == null) {
                th = new NullPointerException();
            }
            if (!compareAndSet(false, true)) {
                Cif.m39151protected(th);
                return;
            }
            try {
                this.actual.onError(th);
            } finally {
                this.resource.unsubscribe();
            }
        }

        @Override // rx.SingleEmitter
        public void onSuccess(T t) {
            if (compareAndSet(false, true)) {
                try {
                    this.actual.mo416if(t);
                } finally {
                    this.resource.unsubscribe();
                }
            }
        }

        @Override // rx.SingleEmitter
        public void setCancellation(Cancellable cancellable) {
            setSubscription(new nf(cancellable));
        }

        @Override // rx.SingleEmitter
        public void setSubscription(Subscription subscription) {
            this.resource.update(subscription);
        }

        @Override // rx.Subscription
        public void unsubscribe() {
            if (compareAndSet(false, true)) {
                this.resource.unsubscribe();
            }
        }
    }

    public p2(Action1<SingleEmitter<T>> action1) {
        this.f35221do = action1;
    }

    @Override // rx.functions.Action1
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public void call(b02<? super T> b02Var) {
        Cdo cdo = new Cdo(b02Var);
        b02Var.m415do(cdo);
        try {
            this.f35221do.call(cdo);
        } catch (Throwable th) {
            s80.m7301try(th);
            cdo.onError(th);
        }
    }
}
