package io.reactivex.processors;

import android.support.v4.a51;
import android.support.v4.jp1;
import io.reactivex.internal.util.AppendOnlyLinkedArrayList;
import io.reactivex.internal.util.Cbreak;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* renamed from: io.reactivex.processors.case, reason: invalid class name */
/* loaded from: classes3.dex */
final class Ccase<T> extends Cfor<T> {

    /* renamed from: for, reason: not valid java name */
    public boolean f27487for;

    /* renamed from: if, reason: not valid java name */
    public final Cfor<T> f27488if;

    /* renamed from: new, reason: not valid java name */
    public AppendOnlyLinkedArrayList<Object> f27489new;

    /* renamed from: try, reason: not valid java name */
    public volatile boolean f27490try;

    public Ccase(Cfor<T> cfor) {
        this.f27488if = cfor;
    }

    @Override // io.reactivex.processors.Cfor
    @a51
    public Throwable L7() {
        return this.f27488if.L7();
    }

    @Override // io.reactivex.processors.Cfor
    public boolean M7() {
        return this.f27488if.M7();
    }

    @Override // io.reactivex.processors.Cfor
    public boolean N7() {
        return this.f27488if.N7();
    }

    @Override // io.reactivex.processors.Cfor
    public boolean O7() {
        return this.f27488if.O7();
    }

    public void Q7() {
        AppendOnlyLinkedArrayList<Object> appendOnlyLinkedArrayList;
        while (true) {
            synchronized (this) {
                appendOnlyLinkedArrayList = this.f27489new;
                if (appendOnlyLinkedArrayList == null) {
                    this.f27487for = false;
                    return;
                }
                this.f27489new = null;
            }
            appendOnlyLinkedArrayList.m29709if(this.f27488if);
        }
    }

    @Override // io.reactivex.Cfor
    public void n5(Subscriber<? super T> subscriber) {
        this.f27488if.subscribe(subscriber);
    }

    @Override // org.reactivestreams.Subscriber
    public void onComplete() {
        if (this.f27490try) {
            return;
        }
        synchronized (this) {
            if (this.f27490try) {
                return;
            }
            this.f27490try = true;
            if (!this.f27487for) {
                this.f27487for = true;
                this.f27488if.onComplete();
                return;
            }
            AppendOnlyLinkedArrayList<Object> appendOnlyLinkedArrayList = this.f27489new;
            if (appendOnlyLinkedArrayList == null) {
                appendOnlyLinkedArrayList = new AppendOnlyLinkedArrayList<>(4);
                this.f27489new = appendOnlyLinkedArrayList;
            }
            appendOnlyLinkedArrayList.m29708for(Cbreak.complete());
        }
    }

    @Override // org.reactivestreams.Subscriber
    public void onError(Throwable th) {
        if (this.f27490try) {
            jp1.l(th);
            return;
        }
        synchronized (this) {
            boolean z = true;
            if (!this.f27490try) {
                this.f27490try = true;
                if (this.f27487for) {
                    AppendOnlyLinkedArrayList<Object> appendOnlyLinkedArrayList = this.f27489new;
                    if (appendOnlyLinkedArrayList == null) {
                        appendOnlyLinkedArrayList = new AppendOnlyLinkedArrayList<>(4);
                        this.f27489new = appendOnlyLinkedArrayList;
                    }
                    appendOnlyLinkedArrayList.m29706case(Cbreak.error(th));
                    return;
                }
                this.f27487for = true;
                z = false;
            }
            if (z) {
                jp1.l(th);
            } else {
                this.f27488if.onError(th);
            }
        }
    }

    @Override // org.reactivestreams.Subscriber
    public void onNext(T t) {
        if (this.f27490try) {
            return;
        }
        synchronized (this) {
            if (this.f27490try) {
                return;
            }
            if (!this.f27487for) {
                this.f27487for = true;
                this.f27488if.onNext(t);
                Q7();
            } else {
                AppendOnlyLinkedArrayList<Object> appendOnlyLinkedArrayList = this.f27489new;
                if (appendOnlyLinkedArrayList == null) {
                    appendOnlyLinkedArrayList = new AppendOnlyLinkedArrayList<>(4);
                    this.f27489new = appendOnlyLinkedArrayList;
                }
                appendOnlyLinkedArrayList.m29708for(Cbreak.next(t));
            }
        }
    }

    @Override // org.reactivestreams.Subscriber
    public void onSubscribe(Subscription subscription) {
        boolean z = true;
        if (!this.f27490try) {
            synchronized (this) {
                if (!this.f27490try) {
                    if (this.f27487for) {
                        AppendOnlyLinkedArrayList<Object> appendOnlyLinkedArrayList = this.f27489new;
                        if (appendOnlyLinkedArrayList == null) {
                            appendOnlyLinkedArrayList = new AppendOnlyLinkedArrayList<>(4);
                            this.f27489new = appendOnlyLinkedArrayList;
                        }
                        appendOnlyLinkedArrayList.m29708for(Cbreak.subscription(subscription));
                        return;
                    }
                    this.f27487for = true;
                    z = false;
                }
            }
        }
        if (z) {
            subscription.cancel();
        } else {
            this.f27488if.onSubscribe(subscription);
            Q7();
        }
    }
}
