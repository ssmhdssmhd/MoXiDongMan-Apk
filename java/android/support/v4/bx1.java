package android.support.v4;

import io.reactivex.FlowableSubscriber;
import io.reactivex.internal.subscriptions.Cfor;
import io.reactivex.internal.util.AppendOnlyLinkedArrayList;
import io.reactivex.internal.util.Cbreak;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* loaded from: classes3.dex */
public final class bx1<T> implements FlowableSubscriber<T>, Subscription {

    /* renamed from: else, reason: not valid java name */
    public static final int f553else = 4;

    /* renamed from: case, reason: not valid java name */
    public volatile boolean f554case;

    /* renamed from: do, reason: not valid java name */
    public final Subscriber<? super T> f555do;

    /* renamed from: for, reason: not valid java name */
    public Subscription f556for;

    /* renamed from: if, reason: not valid java name */
    public final boolean f557if;

    /* renamed from: new, reason: not valid java name */
    public boolean f558new;

    /* renamed from: try, reason: not valid java name */
    public AppendOnlyLinkedArrayList<Object> f559try;

    public bx1(Subscriber<? super T> subscriber) {
        this(subscriber, false);
    }

    @Override // org.reactivestreams.Subscription
    public void cancel() {
        this.f556for.cancel();
    }

    /* renamed from: do, reason: not valid java name */
    public void m699do() {
        AppendOnlyLinkedArrayList<Object> appendOnlyLinkedArrayList;
        do {
            synchronized (this) {
                appendOnlyLinkedArrayList = this.f559try;
                if (appendOnlyLinkedArrayList == null) {
                    this.f558new = false;
                    return;
                }
                this.f559try = null;
            }
        } while (!appendOnlyLinkedArrayList.m29709if(this.f555do));
    }

    @Override // org.reactivestreams.Subscriber
    public void onComplete() {
        if (this.f554case) {
            return;
        }
        synchronized (this) {
            if (this.f554case) {
                return;
            }
            if (!this.f558new) {
                this.f554case = true;
                this.f558new = true;
                this.f555do.onComplete();
            } else {
                AppendOnlyLinkedArrayList<Object> appendOnlyLinkedArrayList = this.f559try;
                if (appendOnlyLinkedArrayList == null) {
                    appendOnlyLinkedArrayList = new AppendOnlyLinkedArrayList<>(4);
                    this.f559try = appendOnlyLinkedArrayList;
                }
                appendOnlyLinkedArrayList.m29708for(Cbreak.complete());
            }
        }
    }

    @Override // org.reactivestreams.Subscriber
    public void onError(Throwable th) {
        if (this.f554case) {
            jp1.l(th);
            return;
        }
        synchronized (this) {
            boolean z = true;
            if (!this.f554case) {
                if (this.f558new) {
                    this.f554case = true;
                    AppendOnlyLinkedArrayList<Object> appendOnlyLinkedArrayList = this.f559try;
                    if (appendOnlyLinkedArrayList == null) {
                        appendOnlyLinkedArrayList = new AppendOnlyLinkedArrayList<>(4);
                        this.f559try = appendOnlyLinkedArrayList;
                    }
                    Object objError = Cbreak.error(th);
                    if (this.f557if) {
                        appendOnlyLinkedArrayList.m29708for(objError);
                    } else {
                        appendOnlyLinkedArrayList.m29706case(objError);
                    }
                    return;
                }
                this.f554case = true;
                this.f558new = true;
                z = false;
            }
            if (z) {
                jp1.l(th);
            } else {
                this.f555do.onError(th);
            }
        }
    }

    @Override // org.reactivestreams.Subscriber
    public void onNext(T t) {
        if (this.f554case) {
            return;
        }
        if (t == null) {
            this.f556for.cancel();
            onError(new NullPointerException("onNext called with null. Null values are generally not allowed in 2.x operators and sources."));
            return;
        }
        synchronized (this) {
            if (this.f554case) {
                return;
            }
            if (!this.f558new) {
                this.f558new = true;
                this.f555do.onNext(t);
                m699do();
            } else {
                AppendOnlyLinkedArrayList<Object> appendOnlyLinkedArrayList = this.f559try;
                if (appendOnlyLinkedArrayList == null) {
                    appendOnlyLinkedArrayList = new AppendOnlyLinkedArrayList<>(4);
                    this.f559try = appendOnlyLinkedArrayList;
                }
                appendOnlyLinkedArrayList.m29708for(Cbreak.next(t));
            }
        }
    }

    @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
    public void onSubscribe(Subscription subscription) {
        if (Cfor.validate(this.f556for, subscription)) {
            this.f556for = subscription;
            this.f555do.onSubscribe(this);
        }
    }

    @Override // org.reactivestreams.Subscription
    public void request(long j) {
        this.f556for.request(j);
    }

    public bx1(Subscriber<? super T> subscriber, boolean z) {
        this.f555do = subscriber;
        this.f557if = z;
    }
}
