package rx.internal.operators;

import android.support.v4.u3;
import rx.Completable;
import rx.CompletableSubscriber;
import rx.Subscription;

/* loaded from: classes4.dex */
public final class c<T> implements Completable.OnSubscribe {

    /* renamed from: for, reason: not valid java name */
    public static volatile boolean f34539for;

    /* renamed from: do, reason: not valid java name */
    public final Completable.OnSubscribe f34540do;

    /* renamed from: if, reason: not valid java name */
    public final String f34541if = b.m38408if();

    /* renamed from: rx.internal.operators.c$do, reason: invalid class name */
    public static final class Cdo implements CompletableSubscriber {

        /* renamed from: do, reason: not valid java name */
        public final CompletableSubscriber f34542do;

        /* renamed from: if, reason: not valid java name */
        public final String f34543if;

        public Cdo(CompletableSubscriber completableSubscriber, String str) {
            this.f34542do = completableSubscriber;
            this.f34543if = str;
        }

        @Override // rx.CompletableSubscriber
        public void onCompleted() {
            this.f34542do.onCompleted();
        }

        @Override // rx.CompletableSubscriber
        public void onError(Throwable th) {
            new u3(this.f34543if).attachTo(th);
            this.f34542do.onError(th);
        }

        @Override // rx.CompletableSubscriber
        public void onSubscribe(Subscription subscription) {
            this.f34542do.onSubscribe(subscription);
        }
    }

    public c(Completable.OnSubscribe onSubscribe) {
        this.f34540do = onSubscribe;
    }

    @Override // rx.functions.Action1
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public void call(CompletableSubscriber completableSubscriber) {
        this.f34540do.call(new Cdo(completableSubscriber, this.f34541if));
    }
}
