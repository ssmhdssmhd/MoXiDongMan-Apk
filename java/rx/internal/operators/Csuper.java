package rx.internal.operators;

import android.support.v4.dq;
import java.util.Iterator;
import java.util.Queue;
import java.util.concurrent.atomic.AtomicInteger;
import rx.Completable;
import rx.CompletableSubscriber;
import rx.Subscription;
import rx.internal.util.atomic.Cfor;
import rx.internal.util.unsafe.Cfinal;
import rx.internal.util.unsafe.Cimplements;

/* renamed from: rx.internal.operators.super, reason: invalid class name */
/* loaded from: classes4.dex */
public final class Csuper implements Completable.OnSubscribe {

    /* renamed from: do, reason: not valid java name */
    public final Iterable<? extends Completable> f35366do;

    /* renamed from: rx.internal.operators.super$do, reason: invalid class name */
    public class Cdo implements CompletableSubscriber {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ dq f35367do;

        /* renamed from: for, reason: not valid java name */
        public final /* synthetic */ AtomicInteger f35368for;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ Queue f35369if;

        /* renamed from: new, reason: not valid java name */
        public final /* synthetic */ CompletableSubscriber f35370new;

        public Cdo(dq dqVar, Queue queue, AtomicInteger atomicInteger, CompletableSubscriber completableSubscriber) {
            this.f35367do = dqVar;
            this.f35369if = queue;
            this.f35368for = atomicInteger;
            this.f35370new = completableSubscriber;
        }

        /* renamed from: do, reason: not valid java name */
        public void m38734do() {
            if (this.f35368for.decrementAndGet() == 0) {
                if (this.f35369if.isEmpty()) {
                    this.f35370new.onCompleted();
                } else {
                    this.f35370new.onError(Cclass.m38426if(this.f35369if));
                }
            }
        }

        @Override // rx.CompletableSubscriber
        public void onCompleted() {
            m38734do();
        }

        @Override // rx.CompletableSubscriber
        public void onError(Throwable th) {
            this.f35369if.offer(th);
            m38734do();
        }

        @Override // rx.CompletableSubscriber
        public void onSubscribe(Subscription subscription) {
            this.f35367do.m1488do(subscription);
        }
    }

    public Csuper(Iterable<? extends Completable> iterable) {
        this.f35366do = iterable;
    }

    @Override // rx.functions.Action1
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public void call(CompletableSubscriber completableSubscriber) {
        dq dqVar = new dq();
        completableSubscriber.onSubscribe(dqVar);
        try {
            Iterator<? extends Completable> it = this.f35366do.iterator();
            if (it == null) {
                completableSubscriber.onError(new NullPointerException("The source iterator returned is null"));
                return;
            }
            AtomicInteger atomicInteger = new AtomicInteger(1);
            Queue cfinal = Cimplements.m38984case() ? new Cfinal() : new Cfor();
            while (!dqVar.isUnsubscribed()) {
                try {
                    if (!it.hasNext()) {
                        if (atomicInteger.decrementAndGet() == 0) {
                            if (cfinal.isEmpty()) {
                                completableSubscriber.onCompleted();
                                return;
                            } else {
                                completableSubscriber.onError(Cclass.m38426if(cfinal));
                                return;
                            }
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
                            cfinal.offer(new NullPointerException("A completable source is null"));
                            if (atomicInteger.decrementAndGet() == 0) {
                                if (cfinal.isEmpty()) {
                                    completableSubscriber.onCompleted();
                                    return;
                                } else {
                                    completableSubscriber.onError(Cclass.m38426if(cfinal));
                                    return;
                                }
                            }
                            return;
                        }
                        atomicInteger.getAndIncrement();
                        next.V(new Cdo(dqVar, cfinal, atomicInteger, completableSubscriber));
                    } catch (Throwable th) {
                        cfinal.offer(th);
                        if (atomicInteger.decrementAndGet() == 0) {
                            if (cfinal.isEmpty()) {
                                completableSubscriber.onCompleted();
                                return;
                            } else {
                                completableSubscriber.onError(Cclass.m38426if(cfinal));
                                return;
                            }
                        }
                        return;
                    }
                } catch (Throwable th2) {
                    cfinal.offer(th2);
                    if (atomicInteger.decrementAndGet() == 0) {
                        if (cfinal.isEmpty()) {
                            completableSubscriber.onCompleted();
                            return;
                        } else {
                            completableSubscriber.onError(Cclass.m38426if(cfinal));
                            return;
                        }
                    }
                    return;
                }
            }
        } catch (Throwable th3) {
            completableSubscriber.onError(th3);
        }
    }
}
