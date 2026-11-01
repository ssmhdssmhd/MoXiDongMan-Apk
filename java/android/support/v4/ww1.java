package android.support.v4;

import rx.Subscription;

/* loaded from: classes4.dex */
public final class ww1 implements Subscription {

    /* renamed from: do, reason: not valid java name */
    public final uw1 f7711do = new uw1();

    /* renamed from: do, reason: not valid java name */
    public Subscription m9297do() {
        return this.f7711do.current();
    }

    /* renamed from: if, reason: not valid java name */
    public void m9298if(Subscription subscription) {
        if (subscription == null) {
            throw new IllegalArgumentException("Subscription can not be null");
        }
        this.f7711do.update(subscription);
    }

    @Override // rx.Subscription
    public boolean isUnsubscribed() {
        return this.f7711do.isUnsubscribed();
    }

    @Override // rx.Subscription
    public void unsubscribe() {
        this.f7711do.unsubscribe();
    }
}
