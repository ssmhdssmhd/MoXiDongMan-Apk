package android.support.v4;

import io.reactivex.FlowableSubscriber;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.functions.Cif;
import io.reactivex.internal.subscriptions.Cfor;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Subscription;

/* loaded from: classes3.dex */
public abstract class mn1<T> implements FlowableSubscriber<T>, Disposable {

    /* renamed from: do, reason: not valid java name */
    private final AtomicReference<Subscription> f3971do = new AtomicReference<>();

    /* renamed from: if, reason: not valid java name */
    private final it0 f3973if = new it0();

    /* renamed from: for, reason: not valid java name */
    private final AtomicLong f3972for = new AtomicLong();

    @Override // io.reactivex.disposables.Disposable
    public final void dispose() {
        if (Cfor.cancel(this.f3971do)) {
            this.f3973if.dispose();
        }
    }

    /* renamed from: do, reason: not valid java name */
    public final void m4952do(Disposable disposable) {
        Cif.m29468else(disposable, "resource is null");
        this.f3973if.add(disposable);
    }

    /* renamed from: for, reason: not valid java name */
    public final void m4953for(long j) {
        Cfor.deferredRequest(this.f3971do, this.f3972for, j);
    }

    /* renamed from: if, reason: not valid java name */
    public void m4954if() {
        m4953for(Long.MAX_VALUE);
    }

    @Override // io.reactivex.disposables.Disposable
    public final boolean isDisposed() {
        return this.f3971do.get() == Cfor.CANCELLED;
    }

    @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
    public final void onSubscribe(Subscription subscription) {
        if (v70.m8764new(this.f3971do, subscription, getClass())) {
            long andSet = this.f3972for.getAndSet(0L);
            if (andSet != 0) {
                subscription.request(andSet);
            }
            m4954if();
        }
    }
}
