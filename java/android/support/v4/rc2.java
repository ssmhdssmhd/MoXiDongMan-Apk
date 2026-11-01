package android.support.v4;

import rx.Subscription;

/* loaded from: classes4.dex */
public enum rc2 implements Subscription {
    INSTANCE;

    @Override // rx.Subscription
    public boolean isUnsubscribed() {
        return true;
    }

    @Override // rx.Subscription
    public void unsubscribe() {
    }
}
