package rx.observables;

import android.support.v4.b71;
import rx.Observable;
import rx.Subscription;
import rx.functions.Action1;
import rx.internal.operators.j;

/* renamed from: rx.observables.for, reason: invalid class name */
/* loaded from: classes4.dex */
public abstract class Cfor<T> extends Observable<T> {

    /* renamed from: rx.observables.for$do, reason: invalid class name */
    public class Cdo implements Action1<Subscription> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Subscription[] f36045do;

        public Cdo(Subscription[] subscriptionArr) {
            this.f36045do = subscriptionArr;
        }

        @Override // rx.functions.Action1
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void call(Subscription subscription) {
            this.f36045do[0] = subscription;
        }
    }

    public Cfor(Observable.OnSubscribe<T> onSubscribe) {
        super(onSubscribe);
    }

    public Observable<T> e6() {
        return f6(1);
    }

    public Observable<T> f6(int i) {
        return g6(i, rx.functions.Cdo.m38335do());
    }

    public Observable<T> g6(int i, Action1<? super Subscription> action1) {
        if (i > 0) {
            return Observable.q5(new b71(this, i, action1));
        }
        i6(action1);
        return this;
    }

    public final Subscription h6() {
        Subscription[] subscriptionArr = new Subscription[1];
        i6(new Cdo(subscriptionArr));
        return subscriptionArr[0];
    }

    public abstract void i6(Action1<? super Subscription> action1);

    public Observable<T> j6() {
        return Observable.q5(new j(this));
    }
}
