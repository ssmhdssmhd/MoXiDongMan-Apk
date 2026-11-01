package rx.internal.operators;

import android.support.v4.ww1;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicInteger;
import rx.Completable;
import rx.CompletableSubscriber;
import rx.Subscription;
import rx.subscriptions.Cfor;

/* renamed from: rx.internal.operators.catch, reason: invalid class name */
/* loaded from: classes4.dex */
public final class Ccatch implements Completable.OnSubscribe {

    /* renamed from: do, reason: not valid java name */
    public final Iterable<? extends Completable> f34582do;

    /* renamed from: rx.internal.operators.catch$do, reason: invalid class name */
    public static final class Cdo extends AtomicInteger implements CompletableSubscriber {
        private static final long serialVersionUID = -7965400327305809232L;
        public final CompletableSubscriber actual;
        public final ww1 sd = new ww1();
        public final Iterator<? extends Completable> sources;

        public Cdo(CompletableSubscriber completableSubscriber, Iterator<? extends Completable> it) {
            this.actual = completableSubscriber;
            this.sources = it;
        }

        public void next() {
            if (!this.sd.isUnsubscribed() && getAndIncrement() == 0) {
                Iterator<? extends Completable> it = this.sources;
                while (!this.sd.isUnsubscribed()) {
                    try {
                        if (!it.hasNext()) {
                            this.actual.onCompleted();
                            return;
                        }
                        try {
                            Completable next = it.next();
                            if (next == null) {
                                this.actual.onError(new NullPointerException("The completable returned is null"));
                                return;
                            } else {
                                next.V(this);
                                if (decrementAndGet() == 0) {
                                    return;
                                }
                            }
                        } catch (Throwable th) {
                            this.actual.onError(th);
                            return;
                        }
                    } catch (Throwable th2) {
                        this.actual.onError(th2);
                        return;
                    }
                }
            }
        }

        @Override // rx.CompletableSubscriber
        public void onCompleted() {
            next();
        }

        @Override // rx.CompletableSubscriber
        public void onError(Throwable th) {
            this.actual.onError(th);
        }

        @Override // rx.CompletableSubscriber
        public void onSubscribe(Subscription subscription) {
            this.sd.m9298if(subscription);
        }
    }

    public Ccatch(Iterable<? extends Completable> iterable) {
        this.f34582do = iterable;
    }

    @Override // rx.functions.Action1
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public void call(CompletableSubscriber completableSubscriber) {
        try {
            Iterator<? extends Completable> it = this.f34582do.iterator();
            if (it == null) {
                completableSubscriber.onSubscribe(Cfor.m39229try());
                completableSubscriber.onError(new NullPointerException("The iterator returned is null"));
            } else {
                Cdo cdo = new Cdo(completableSubscriber, it);
                completableSubscriber.onSubscribe(cdo.sd);
                cdo.next();
            }
        } catch (Throwable th) {
            completableSubscriber.onSubscribe(Cfor.m39229try());
            completableSubscriber.onError(th);
        }
    }
}
