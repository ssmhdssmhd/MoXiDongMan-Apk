package rx.internal.operators;

import android.support.v4.uw1;
import android.support.v4.y22;
import android.support.v4.zz0;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import rx.Completable;
import rx.CompletableSubscriber;
import rx.Observable;
import rx.Subscription;
import rx.internal.util.unsafe.Cswitch;
import rx.plugins.Cif;

/* renamed from: rx.internal.operators.this, reason: invalid class name */
/* loaded from: classes4.dex */
public final class Cthis implements Completable.OnSubscribe {

    /* renamed from: do, reason: not valid java name */
    public final Observable<Completable> f35417do;

    /* renamed from: if, reason: not valid java name */
    public final int f35418if;

    /* renamed from: rx.internal.operators.this$do, reason: invalid class name */
    public static final class Cdo extends y22<Completable> {

        /* renamed from: case, reason: not valid java name */
        public volatile boolean f35419case;

        /* renamed from: do, reason: not valid java name */
        public final CompletableSubscriber f35420do;

        /* renamed from: else, reason: not valid java name */
        public volatile boolean f35421else;

        /* renamed from: for, reason: not valid java name */
        public final Cswitch<Completable> f35422for;

        /* renamed from: if, reason: not valid java name */
        public final uw1 f35423if;

        /* renamed from: new, reason: not valid java name */
        public final C0538do f35424new;

        /* renamed from: try, reason: not valid java name */
        public final AtomicBoolean f35425try;

        /* renamed from: rx.internal.operators.this$do$do, reason: invalid class name and collision with other inner class name */
        public final class C0538do extends AtomicInteger implements CompletableSubscriber {
            private static final long serialVersionUID = 7233503139645205620L;

            public C0538do() {
            }

            @Override // rx.CompletableSubscriber
            public void onCompleted() {
                Cdo.this.m38748if();
            }

            @Override // rx.CompletableSubscriber
            public void onError(Throwable th) {
                Cdo.this.m38747for(th);
            }

            @Override // rx.CompletableSubscriber
            public void onSubscribe(Subscription subscription) {
                Cdo.this.f35423if.set(subscription);
            }
        }

        public Cdo(CompletableSubscriber completableSubscriber, int i) {
            this.f35420do = completableSubscriber;
            this.f35422for = new Cswitch<>(i);
            uw1 uw1Var = new uw1();
            this.f35423if = uw1Var;
            this.f35424new = new C0538do();
            this.f35425try = new AtomicBoolean();
            add(uw1Var);
            request(i);
        }

        /* renamed from: do, reason: not valid java name */
        public void m38746do() {
            C0538do c0538do = this.f35424new;
            if (c0538do.getAndIncrement() != 0) {
                return;
            }
            while (!isUnsubscribed()) {
                if (!this.f35421else) {
                    boolean z = this.f35419case;
                    Completable completablePoll = this.f35422for.poll();
                    boolean z2 = completablePoll == null;
                    if (z && z2) {
                        this.f35420do.onCompleted();
                        return;
                    } else if (!z2) {
                        this.f35421else = true;
                        completablePoll.E(c0538do);
                        request(1L);
                    }
                }
                if (c0538do.decrementAndGet() == 0) {
                    return;
                }
            }
        }

        /* renamed from: for, reason: not valid java name */
        public void m38747for(Throwable th) {
            unsubscribe();
            onError(th);
        }

        /* renamed from: if, reason: not valid java name */
        public void m38748if() {
            this.f35421else = false;
            m38746do();
        }

        @Override // rx.Observer
        /* renamed from: new, reason: not valid java name and merged with bridge method [inline-methods] */
        public void onNext(Completable completable) {
            if (this.f35422for.offer(completable)) {
                m38746do();
            } else {
                onError(new zz0());
            }
        }

        @Override // rx.Observer
        public void onCompleted() {
            if (this.f35419case) {
                return;
            }
            this.f35419case = true;
            m38746do();
        }

        @Override // rx.Observer
        public void onError(Throwable th) {
            if (this.f35425try.compareAndSet(false, true)) {
                this.f35420do.onError(th);
            } else {
                Cif.m39151protected(th);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Cthis(Observable<? extends Completable> observable, int i) {
        this.f35417do = observable;
        this.f35418if = i;
    }

    @Override // rx.functions.Action1
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public void call(CompletableSubscriber completableSubscriber) {
        Cdo cdo = new Cdo(completableSubscriber, this.f35418if);
        completableSubscriber.onSubscribe(cdo);
        this.f35417do.r5(cdo);
    }
}
