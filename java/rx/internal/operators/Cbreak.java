package rx.internal.operators;

import android.support.v4.ww1;
import java.util.concurrent.atomic.AtomicInteger;
import rx.Completable;
import rx.CompletableSubscriber;
import rx.Subscription;

/* renamed from: rx.internal.operators.break, reason: invalid class name */
/* loaded from: classes4.dex */
public final class Cbreak implements Completable.OnSubscribe {

    /* renamed from: do, reason: not valid java name */
    public final Completable[] f34538do;

    /* renamed from: rx.internal.operators.break$do, reason: invalid class name */
    public static final class Cdo extends AtomicInteger implements CompletableSubscriber {
        private static final long serialVersionUID = -7965400327305809232L;
        public final CompletableSubscriber actual;
        public int index;
        public final ww1 sd = new ww1();
        public final Completable[] sources;

        public Cdo(CompletableSubscriber completableSubscriber, Completable[] completableArr) {
            this.actual = completableSubscriber;
            this.sources = completableArr;
        }

        public void next() {
            if (!this.sd.isUnsubscribed() && getAndIncrement() == 0) {
                Completable[] completableArr = this.sources;
                while (!this.sd.isUnsubscribed()) {
                    int i = this.index;
                    this.index = i + 1;
                    if (i == completableArr.length) {
                        this.actual.onCompleted();
                        return;
                    } else {
                        completableArr[i].V(this);
                        if (decrementAndGet() == 0) {
                            return;
                        }
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

    public Cbreak(Completable[] completableArr) {
        this.f34538do = completableArr;
    }

    @Override // rx.functions.Action1
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public void call(CompletableSubscriber completableSubscriber) {
        Cdo cdo = new Cdo(completableSubscriber, this.f34538do);
        completableSubscriber.onSubscribe(cdo.sd);
        cdo.next();
    }
}
