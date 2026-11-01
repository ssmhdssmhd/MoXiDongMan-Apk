package android.support.v4;

import io.reactivex.FlowableSubscriber;
import io.reactivex.internal.subscriptions.Cfor;
import org.reactivestreams.Subscription;

/* loaded from: classes3.dex */
public abstract class uy<T> implements FlowableSubscriber<T> {

    /* renamed from: do, reason: not valid java name */
    public Subscription f7010do;

    /* renamed from: do, reason: not valid java name */
    public final void m8696do() {
        Subscription subscription = this.f7010do;
        this.f7010do = Cfor.CANCELLED;
        subscription.cancel();
    }

    /* renamed from: for, reason: not valid java name */
    public final void m8697for(long j) {
        Subscription subscription = this.f7010do;
        if (subscription != null) {
            subscription.request(j);
        }
    }

    /* renamed from: if, reason: not valid java name */
    public void m8698if() {
        m8697for(Long.MAX_VALUE);
    }

    @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
    public final void onSubscribe(Subscription subscription) {
        if (v70.m8760case(this.f7010do, subscription, getClass())) {
            this.f7010do = subscription;
            m8698if();
        }
    }
}
