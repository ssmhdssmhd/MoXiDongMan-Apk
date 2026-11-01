package rx.internal.operators;

import android.support.v4.dq;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import rx.Completable;
import rx.CompletableSubscriber;
import rx.Subscription;
import rx.plugins.Cif;

/* renamed from: rx.internal.operators.throw, reason: invalid class name */
/* loaded from: classes4.dex */
public final class Cthrow implements Completable.OnSubscribe {

    /* renamed from: do, reason: not valid java name */
    public final Iterable<? extends Completable> f35426do;

    /* renamed from: rx.internal.operators.throw$do, reason: invalid class name */
    public class Cdo implements CompletableSubscriber {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ dq f35427do;

        /* renamed from: for, reason: not valid java name */
        public final /* synthetic */ CompletableSubscriber f35428for;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ AtomicBoolean f35429if;

        /* renamed from: new, reason: not valid java name */
        public final /* synthetic */ AtomicInteger f35430new;

        public Cdo(dq dqVar, AtomicBoolean atomicBoolean, CompletableSubscriber completableSubscriber, AtomicInteger atomicInteger) {
            this.f35427do = dqVar;
            this.f35429if = atomicBoolean;
            this.f35428for = completableSubscriber;
            this.f35430new = atomicInteger;
        }

        @Override // rx.CompletableSubscriber
        public void onCompleted() {
            if (this.f35430new.decrementAndGet() == 0 && this.f35429if.compareAndSet(false, true)) {
                this.f35428for.onCompleted();
            }
        }

        @Override // rx.CompletableSubscriber
        public void onError(Throwable th) {
            this.f35427do.unsubscribe();
            if (this.f35429if.compareAndSet(false, true)) {
                this.f35428for.onError(th);
            } else {
                Cif.m39151protected(th);
            }
        }

        @Override // rx.CompletableSubscriber
        public void onSubscribe(Subscription subscription) {
            this.f35427do.m1488do(subscription);
        }
    }

    public Cthrow(Iterable<? extends Completable> iterable) {
        this.f35426do = iterable;
    }

    @Override // rx.functions.Action1
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public void call(CompletableSubscriber completableSubscriber) {
        dq dqVar = new dq();
        completableSubscriber.onSubscribe(dqVar);
        try {
            Iterator<? extends Completable> it = this.f35426do.iterator();
            if (it == null) {
                completableSubscriber.onError(new NullPointerException("The source iterator returned is null"));
                return;
            }
            AtomicInteger atomicInteger = new AtomicInteger(1);
            AtomicBoolean atomicBoolean = new AtomicBoolean();
            while (!dqVar.isUnsubscribed()) {
                try {
                    if (!it.hasNext()) {
                        if (atomicInteger.decrementAndGet() == 0 && atomicBoolean.compareAndSet(false, true)) {
                            completableSubscriber.onCompleted();
                            return;
                        }
                        return;
                    }
                    if (dqVar.isUnsubscribed()) {
                        return;
                    }
                    try {
                        Completable next = it.next();
                        if (dqVar.isUnsubscribed()) {
                            return;
                        }
                        if (next == null) {
                            dqVar.unsubscribe();
                            Throwable nullPointerException = new NullPointerException("A completable source is null");
                            if (atomicBoolean.compareAndSet(false, true)) {
                                completableSubscriber.onError(nullPointerException);
                                return;
                            } else {
                                Cif.m39151protected(nullPointerException);
                                return;
                            }
                        }
                        atomicInteger.getAndIncrement();
                        next.V(new Cdo(dqVar, atomicBoolean, completableSubscriber, atomicInteger));
                    } catch (Throwable th) {
                        dqVar.unsubscribe();
                        if (atomicBoolean.compareAndSet(false, true)) {
                            completableSubscriber.onError(th);
                            return;
                        } else {
                            Cif.m39151protected(th);
                            return;
                        }
                    }
                } catch (Throwable th2) {
                    dqVar.unsubscribe();
                    if (atomicBoolean.compareAndSet(false, true)) {
                        completableSubscriber.onError(th2);
                        return;
                    } else {
                        Cif.m39151protected(th2);
                        return;
                    }
                }
            }
        } catch (Throwable th3) {
            completableSubscriber.onError(th3);
        }
    }
}
