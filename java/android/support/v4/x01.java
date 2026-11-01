package android.support.v4;

import rx.Subscription;

/* loaded from: classes4.dex */
public final class x01 implements Subscription {

    /* renamed from: do, reason: not valid java name */
    public final uw1 f7737do = new uw1();

    /* renamed from: do, reason: not valid java name */
    public Subscription m9320do() {
        return this.f7737do.current();
    }

    /* renamed from: if, reason: not valid java name */
    public void m9321if(Subscription subscription) {
        if (subscription == null) {
            throw new IllegalArgumentException("Subscription can not be null");
        }
        this.f7737do.replace(subscription);
    }

    @Override // rx.Subscription
    public boolean isUnsubscribed() {
        return this.f7737do.isUnsubscribed();
    }

    @Override // rx.Subscription
    public void unsubscribe() {
        this.f7737do.unsubscribe();
    }
}
