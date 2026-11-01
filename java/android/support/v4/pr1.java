package android.support.v4;

import rx.CompletableSubscriber;
import rx.Subscription;
import rx.exceptions.Cdo;
import rx.plugins.Cif;

/* loaded from: classes4.dex */
public final class pr1 implements CompletableSubscriber, Subscription {

    /* renamed from: do, reason: not valid java name */
    public final CompletableSubscriber f5173do;

    /* renamed from: for, reason: not valid java name */
    public boolean f5174for;

    /* renamed from: if, reason: not valid java name */
    public Subscription f5175if;

    public pr1(CompletableSubscriber completableSubscriber) {
        this.f5173do = completableSubscriber;
    }

    @Override // rx.Subscription
    public boolean isUnsubscribed() {
        return this.f5174for || this.f5175if.isUnsubscribed();
    }

    @Override // rx.CompletableSubscriber
    public void onCompleted() {
        if (this.f5174for) {
            return;
        }
        this.f5174for = true;
        try {
            this.f5173do.onCompleted();
        } catch (Throwable th) {
            s80.m7301try(th);
            throw new w61(th);
        }
    }

    @Override // rx.CompletableSubscriber
    public void onError(Throwable th) {
        Cif.m39151protected(th);
        if (this.f5174for) {
            return;
        }
        this.f5174for = true;
        try {
            this.f5173do.onError(th);
        } catch (Throwable th2) {
            s80.m7301try(th2);
            throw new x61(new Cdo(th, th2));
        }
    }

    @Override // rx.CompletableSubscriber
    public void onSubscribe(Subscription subscription) {
        this.f5175if = subscription;
        try {
            this.f5173do.onSubscribe(this);
        } catch (Throwable th) {
            s80.m7301try(th);
            subscription.unsubscribe();
            onError(th);
        }
    }

    @Override // rx.Subscription
    public void unsubscribe() {
        this.f5175if.unsubscribe();
    }
}
