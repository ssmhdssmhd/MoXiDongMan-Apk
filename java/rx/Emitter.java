package rx;

import rx.functions.Cancellable;

/* loaded from: classes4.dex */
public interface Emitter<T> extends Observer<T> {

    /* renamed from: rx.Emitter$do, reason: invalid class name */
    public enum Cdo {
        NONE,
        ERROR,
        BUFFER,
        DROP,
        LATEST
    }

    long requested();

    void setCancellation(Cancellable cancellable);

    void setSubscription(Subscription subscription);
}
