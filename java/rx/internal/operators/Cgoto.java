package rx.internal.operators;

import android.support.v4.nf;
import android.support.v4.s80;
import android.support.v4.uw1;
import java.util.concurrent.atomic.AtomicBoolean;
import rx.Completable;
import rx.CompletableEmitter;
import rx.CompletableSubscriber;
import rx.Subscription;
import rx.functions.Action1;
import rx.functions.Cancellable;
import rx.plugins.Cif;

/* renamed from: rx.internal.operators.goto, reason: invalid class name */
/* loaded from: classes4.dex */
public final class Cgoto implements Completable.OnSubscribe {

    /* renamed from: do, reason: not valid java name */
    public final Action1<CompletableEmitter> f34850do;

    /* renamed from: rx.internal.operators.goto$do, reason: invalid class name */
    public static final class Cdo extends AtomicBoolean implements CompletableEmitter, Subscription {
        private static final long serialVersionUID = 5539301318568668881L;
        public final CompletableSubscriber actual;
        public final uw1 resource = new uw1();

        public Cdo(CompletableSubscriber completableSubscriber) {
            this.actual = completableSubscriber;
        }

        @Override // rx.Subscription
        public boolean isUnsubscribed() {
            return get();
        }

        @Override // rx.CompletableEmitter
        public void onCompleted() {
            if (compareAndSet(false, true)) {
                try {
                    this.actual.onCompleted();
                } finally {
                    this.resource.unsubscribe();
                }
            }
        }

        @Override // rx.CompletableEmitter
        public void onError(Throwable th) {
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

        @Override // rx.CompletableEmitter
        public void setCancellation(Cancellable cancellable) {
            setSubscription(new nf(cancellable));
        }

        @Override // rx.CompletableEmitter
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

    public Cgoto(Action1<CompletableEmitter> action1) {
        this.f34850do = action1;
    }

    @Override // rx.functions.Action1
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public void call(CompletableSubscriber completableSubscriber) {
        Cdo cdo = new Cdo(completableSubscriber);
        completableSubscriber.onSubscribe(cdo);
        try {
            this.f34850do.call(cdo);
        } catch (Throwable th) {
            s80.m7301try(th);
            cdo.onError(th);
        }
    }
}
