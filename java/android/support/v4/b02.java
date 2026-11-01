package android.support.v4;

import rx.Subscription;

/* loaded from: classes4.dex */
public abstract class b02<T> implements Subscription {

    /* renamed from: do, reason: not valid java name */
    private final d32 f305do = new d32();

    /* renamed from: do, reason: not valid java name */
    public final void m415do(Subscription subscription) {
        this.f305do.m1132do(subscription);
    }

    /* renamed from: if, reason: not valid java name */
    public abstract void mo416if(T t);

    @Override // rx.Subscription
    public final boolean isUnsubscribed() {
        return this.f305do.isUnsubscribed();
    }

    public abstract void onError(Throwable th);

    @Override // rx.Subscription
    public final void unsubscribe() {
        this.f305do.unsubscribe();
    }
}
