package rx.observers;

import java.util.concurrent.atomic.AtomicReference;
import rx.CompletableSubscriber;
import rx.Subscription;
import rx.plugins.Cif;

/* renamed from: rx.observers.do, reason: invalid class name */
/* loaded from: classes4.dex */
public abstract class Cdo implements CompletableSubscriber, Subscription {

    /* renamed from: if, reason: not valid java name */
    public static final C0563do f36093if = new C0563do();

    /* renamed from: do, reason: not valid java name */
    private final AtomicReference<Subscription> f36094do = new AtomicReference<>();

    /* renamed from: rx.observers.do$do, reason: invalid class name and collision with other inner class name */
    public static final class C0563do implements Subscription {
        @Override // rx.Subscription
        public boolean isUnsubscribed() {
            return true;
        }

        @Override // rx.Subscription
        public void unsubscribe() {
        }
    }

    /* renamed from: do, reason: not valid java name */
    public final void m39106do() {
        this.f36094do.set(f36093if);
    }

    @Override // rx.Subscription
    public final boolean isUnsubscribed() {
        return this.f36094do.get() == f36093if;
    }

    public void onStart() {
    }

    @Override // rx.CompletableSubscriber
    public final void onSubscribe(Subscription subscription) {
        if (this.f36094do.compareAndSet(null, subscription)) {
            onStart();
            return;
        }
        subscription.unsubscribe();
        if (this.f36094do.get() != f36093if) {
            Cif.m39151protected(new IllegalStateException("Subscription already set!"));
        }
    }

    @Override // rx.Subscription
    public final void unsubscribe() {
        Subscription andSet;
        Subscription subscription = this.f36094do.get();
        C0563do c0563do = f36093if;
        if (subscription == c0563do || (andSet = this.f36094do.getAndSet(c0563do)) == null || andSet == c0563do) {
            return;
        }
        andSet.unsubscribe();
    }
}
