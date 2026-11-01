package android.support.v4;

import io.reactivex.FlowableSubscriber;
import io.reactivex.internal.subscriptions.Cdo;
import io.reactivex.internal.subscriptions.Cfor;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* loaded from: classes3.dex */
public final class tr1<T> implements FlowableSubscriber<T>, Subscription {

    /* renamed from: do, reason: not valid java name */
    public final Subscriber<? super T> f6647do;

    /* renamed from: for, reason: not valid java name */
    public boolean f6648for;

    /* renamed from: if, reason: not valid java name */
    public Subscription f6649if;

    public tr1(Subscriber<? super T> subscriber) {
        this.f6647do = subscriber;
    }

    @Override // org.reactivestreams.Subscription
    public void cancel() {
        try {
            this.f6649if.cancel();
        } catch (Throwable th) {
            t80.m7781if(th);
            jp1.l(th);
        }
    }

    /* renamed from: do, reason: not valid java name */
    public void m8064do() {
        NullPointerException nullPointerException = new NullPointerException("Subscription not set!");
        try {
            this.f6647do.onSubscribe(Cdo.INSTANCE);
            try {
                this.f6647do.onError(nullPointerException);
            } catch (Throwable th) {
                t80.m7781if(th);
                jp1.l(new io.reactivex.exceptions.Cdo(nullPointerException, th));
            }
        } catch (Throwable th2) {
            t80.m7781if(th2);
            jp1.l(new io.reactivex.exceptions.Cdo(nullPointerException, th2));
        }
    }

    /* renamed from: if, reason: not valid java name */
    public void m8065if() {
        this.f6648for = true;
        NullPointerException nullPointerException = new NullPointerException("Subscription not set!");
        try {
            this.f6647do.onSubscribe(Cdo.INSTANCE);
            try {
                this.f6647do.onError(nullPointerException);
            } catch (Throwable th) {
                t80.m7781if(th);
                jp1.l(new io.reactivex.exceptions.Cdo(nullPointerException, th));
            }
        } catch (Throwable th2) {
            t80.m7781if(th2);
            jp1.l(new io.reactivex.exceptions.Cdo(nullPointerException, th2));
        }
    }

    @Override // org.reactivestreams.Subscriber
    public void onComplete() {
        if (this.f6648for) {
            return;
        }
        this.f6648for = true;
        if (this.f6649if == null) {
            m8064do();
            return;
        }
        try {
            this.f6647do.onComplete();
        } catch (Throwable th) {
            t80.m7781if(th);
            jp1.l(th);
        }
    }

    @Override // org.reactivestreams.Subscriber
    public void onError(Throwable th) {
        if (this.f6648for) {
            jp1.l(th);
            return;
        }
        this.f6648for = true;
        if (this.f6649if != null) {
            if (th == null) {
                th = new NullPointerException("onError called with null. Null values are generally not allowed in 2.x operators and sources.");
            }
            try {
                this.f6647do.onError(th);
                return;
            } catch (Throwable th2) {
                t80.m7781if(th2);
                jp1.l(new io.reactivex.exceptions.Cdo(th, th2));
                return;
            }
        }
        NullPointerException nullPointerException = new NullPointerException("Subscription not set!");
        try {
            this.f6647do.onSubscribe(Cdo.INSTANCE);
            try {
                this.f6647do.onError(new io.reactivex.exceptions.Cdo(th, nullPointerException));
            } catch (Throwable th3) {
                t80.m7781if(th3);
                jp1.l(new io.reactivex.exceptions.Cdo(th, nullPointerException, th3));
            }
        } catch (Throwable th4) {
            t80.m7781if(th4);
            jp1.l(new io.reactivex.exceptions.Cdo(th, nullPointerException, th4));
        }
    }

    @Override // org.reactivestreams.Subscriber
    public void onNext(T t) {
        if (this.f6648for) {
            return;
        }
        if (this.f6649if == null) {
            m8065if();
            return;
        }
        if (t == null) {
            NullPointerException nullPointerException = new NullPointerException("onNext called with null. Null values are generally not allowed in 2.x operators and sources.");
            try {
                this.f6649if.cancel();
                onError(nullPointerException);
                return;
            } catch (Throwable th) {
                t80.m7781if(th);
                onError(new io.reactivex.exceptions.Cdo(nullPointerException, th));
                return;
            }
        }
        try {
            this.f6647do.onNext(t);
        } catch (Throwable th2) {
            t80.m7781if(th2);
            try {
                this.f6649if.cancel();
                onError(th2);
            } catch (Throwable th3) {
                t80.m7781if(th3);
                onError(new io.reactivex.exceptions.Cdo(th2, th3));
            }
        }
    }

    @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
    public void onSubscribe(Subscription subscription) {
        if (Cfor.validate(this.f6649if, subscription)) {
            this.f6649if = subscription;
            try {
                this.f6647do.onSubscribe(this);
            } catch (Throwable th) {
                t80.m7781if(th);
                this.f6648for = true;
                try {
                    subscription.cancel();
                    jp1.l(th);
                } catch (Throwable th2) {
                    t80.m7781if(th2);
                    jp1.l(new io.reactivex.exceptions.Cdo(th, th2));
                }
            }
        }
    }

    @Override // org.reactivestreams.Subscription
    public void request(long j) {
        try {
            this.f6649if.request(j);
        } catch (Throwable th) {
            t80.m7781if(th);
            try {
                this.f6649if.cancel();
                jp1.l(th);
            } catch (Throwable th2) {
                t80.m7781if(th2);
                jp1.l(new io.reactivex.exceptions.Cdo(th, th2));
            }
        }
    }
}
