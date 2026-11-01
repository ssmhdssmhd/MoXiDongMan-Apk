package android.support.v4;

import io.reactivex.FlowableSubscriber;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.subscriptions.Cfor;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Subscription;

/* loaded from: classes3.dex */
public abstract class p10<T> implements FlowableSubscriber<T>, Disposable {

    /* renamed from: do, reason: not valid java name */
    public final AtomicReference<Subscription> f4822do = new AtomicReference<>();

    @Override // io.reactivex.disposables.Disposable
    public final void dispose() {
        Cfor.cancel(this.f4822do);
    }

    /* renamed from: do, reason: not valid java name */
    public final void m5829do() {
        dispose();
    }

    /* renamed from: for, reason: not valid java name */
    public final void m5830for(long j) {
        this.f4822do.get().request(j);
    }

    /* renamed from: if, reason: not valid java name */
    public void m5831if() {
        this.f4822do.get().request(Long.MAX_VALUE);
    }

    @Override // io.reactivex.disposables.Disposable
    public final boolean isDisposed() {
        return this.f4822do.get() == Cfor.CANCELLED;
    }

    @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
    public final void onSubscribe(Subscription subscription) {
        if (v70.m8764new(this.f4822do, subscription, getClass())) {
            m5831if();
        }
    }
}
