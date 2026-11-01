package android.support.v4;

import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.Cdo;
import io.reactivex.internal.subscriptions.Cfor;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Subscription;

/* loaded from: classes3.dex */
public final class b4 extends AtomicLong implements Subscription, Disposable {
    private static final long serialVersionUID = 7028635084060361255L;
    public final AtomicReference<Subscription> actual;
    public final AtomicReference<Disposable> resource;

    public b4() {
        this.resource = new AtomicReference<>();
        this.actual = new AtomicReference<>();
    }

    @Override // org.reactivestreams.Subscription
    public void cancel() {
        dispose();
    }

    @Override // io.reactivex.disposables.Disposable
    public void dispose() {
        Cfor.cancel(this.actual);
        Cdo.dispose(this.resource);
    }

    @Override // io.reactivex.disposables.Disposable
    public boolean isDisposed() {
        return this.actual.get() == Cfor.CANCELLED;
    }

    public boolean replaceResource(Disposable disposable) {
        return Cdo.replace(this.resource, disposable);
    }

    @Override // org.reactivestreams.Subscription
    public void request(long j) {
        Cfor.deferredRequest(this.actual, this, j);
    }

    public boolean setResource(Disposable disposable) {
        return Cdo.set(this.resource, disposable);
    }

    public void setSubscription(Subscription subscription) {
        Cfor.deferredSetOnce(this.actual, this, subscription);
    }

    public b4(Disposable disposable) {
        this();
        this.resource.lazySet(disposable);
    }
}
