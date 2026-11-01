package android.support.v4;

import java.util.concurrent.atomic.AtomicInteger;
import rx.Observable;
import rx.Subscription;
import rx.functions.Action1;
import rx.observables.Cfor;
import rx.observers.Cnew;

/* loaded from: classes4.dex */
public final class b71<T> extends AtomicInteger implements Observable.OnSubscribe<T> {
    public final Action1<? super Subscription> connection;
    public final int numberOfSubscribers;
    public final Cfor<? extends T> source;

    public b71(Cfor<? extends T> cfor, int i, Action1<? super Subscription> action1) {
        if (i <= 0) {
            throw new IllegalArgumentException("numberOfSubscribers > 0 required");
        }
        this.source = cfor;
        this.numberOfSubscribers = i;
        this.connection = action1;
    }

    @Override // rx.functions.Action1
    public void call(y22<? super T> y22Var) {
        this.source.r5(Cnew.m39112case(y22Var));
        if (incrementAndGet() == this.numberOfSubscribers) {
            this.source.i6(this.connection);
        }
    }
}
