package android.support.v4;

import io.reactivex.FlowableSubscriber;
import io.reactivex.internal.subscriptions.Cfor;
import io.reactivex.internal.util.Ccase;
import java.util.concurrent.CountDownLatch;
import org.reactivestreams.Subscription;

/* loaded from: classes3.dex */
public abstract class ga<T> extends CountDownLatch implements FlowableSubscriber<T> {

    /* renamed from: do, reason: not valid java name */
    public T f2082do;

    /* renamed from: for, reason: not valid java name */
    public Subscription f2083for;

    /* renamed from: if, reason: not valid java name */
    public Throwable f2084if;

    /* renamed from: new, reason: not valid java name */
    public volatile boolean f2085new;

    public ga() {
        super(1);
    }

    /* renamed from: do, reason: not valid java name */
    public final T m2621do() throws InterruptedException {
        if (getCount() != 0) {
            try {
                ja.m3755if();
                await();
            } catch (InterruptedException e) {
                Subscription subscription = this.f2083for;
                this.f2083for = Cfor.CANCELLED;
                if (subscription != null) {
                    subscription.cancel();
                }
                throw Ccase.m29712case(e);
            }
        }
        Throwable th = this.f2084if;
        if (th == null) {
            return this.f2082do;
        }
        throw Ccase.m29712case(th);
    }

    @Override // org.reactivestreams.Subscriber
    public final void onComplete() {
        countDown();
    }

    @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
    public final void onSubscribe(Subscription subscription) {
        if (Cfor.validate(this.f2083for, subscription)) {
            this.f2083for = subscription;
            if (this.f2085new) {
                return;
            }
            subscription.request(Long.MAX_VALUE);
            if (this.f2085new) {
                this.f2083for = Cfor.CANCELLED;
                subscription.cancel();
            }
        }
    }
}
