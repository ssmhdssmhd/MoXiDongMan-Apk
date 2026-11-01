package io.reactivex.disposables;

import android.support.v4.b41;
import org.reactivestreams.Subscription;

/* renamed from: io.reactivex.disposables.case, reason: invalid class name */
/* loaded from: classes3.dex */
final class Ccase extends Cnew<Subscription> {
    private static final long serialVersionUID = -707001650852963139L;

    public Ccase(Subscription subscription) {
        super(subscription);
    }

    @Override // io.reactivex.disposables.Cnew
    public void onDisposed(@b41 Subscription subscription) {
        subscription.cancel();
    }
}
