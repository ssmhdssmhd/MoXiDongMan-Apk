package android.support.v4;

import java.util.concurrent.atomic.AtomicReference;
import rx.Subscription;
import rx.functions.Cancellable;
import rx.plugins.Cif;

/* loaded from: classes4.dex */
public final class nf extends AtomicReference<Cancellable> implements Subscription {
    private static final long serialVersionUID = 5718521705281392066L;

    public nf(Cancellable cancellable) {
        super(cancellable);
    }

    @Override // rx.Subscription
    public boolean isUnsubscribed() {
        return get() == null;
    }

    @Override // rx.Subscription
    public void unsubscribe() {
        Cancellable andSet;
        if (get() == null || (andSet = getAndSet(null)) == null) {
            return;
        }
        try {
            andSet.cancel();
        } catch (Exception e) {
            s80.m7301try(e);
            Cif.m39151protected(e);
        }
    }
}
