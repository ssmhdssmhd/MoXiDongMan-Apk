package rx.internal.operators;

import android.support.v4.dq;
import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.atomic.AtomicInteger;
import rx.Completable;
import rx.CompletableSubscriber;
import rx.Subscription;

/* renamed from: rx.internal.operators.final, reason: invalid class name */
/* loaded from: classes4.dex */
public final class Cfinal implements Completable.OnSubscribe {

    /* renamed from: do, reason: not valid java name */
    public final Completable[] f34762do;

    /* renamed from: rx.internal.operators.final$do, reason: invalid class name */
    public class Cdo implements CompletableSubscriber {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ dq f34763do;

        /* renamed from: for, reason: not valid java name */
        public final /* synthetic */ AtomicInteger f34764for;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ Queue f34765if;

        /* renamed from: new, reason: not valid java name */
        public final /* synthetic */ CompletableSubscriber f34766new;

        public Cdo(dq dqVar, Queue queue, AtomicInteger atomicInteger, CompletableSubscriber completableSubscriber) {
            this.f34763do = dqVar;
            this.f34765if = queue;
            this.f34764for = atomicInteger;
            this.f34766new = completableSubscriber;
        }

        /* renamed from: do, reason: not valid java name */
        public void m38494do() {
            if (this.f34764for.decrementAndGet() == 0) {
                if (this.f34765if.isEmpty()) {
                    this.f34766new.onCompleted();
                } else {
                    this.f34766new.onError(Cclass.m38426if(this.f34765if));
                }
            }
        }

        @Override // rx.CompletableSubscriber
        public void onCompleted() {
            m38494do();
        }

        @Override // rx.CompletableSubscriber
        public void onError(Throwable th) {
            this.f34765if.offer(th);
            m38494do();
        }

        @Override // rx.CompletableSubscriber
        public void onSubscribe(Subscription subscription) {
            this.f34763do.m1488do(subscription);
        }
    }

    public Cfinal(Completable[] completableArr) {
        this.f34762do = completableArr;
    }

    @Override // rx.functions.Action1
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public void call(CompletableSubscriber completableSubscriber) {
        dq dqVar = new dq();
        AtomicInteger atomicInteger = new AtomicInteger(this.f34762do.length + 1);
        ConcurrentLinkedQueue concurrentLinkedQueue = new ConcurrentLinkedQueue();
        completableSubscriber.onSubscribe(dqVar);
        for (Completable completable : this.f34762do) {
            if (dqVar.isUnsubscribed()) {
                return;
            }
            if (completable == null) {
                concurrentLinkedQueue.offer(new NullPointerException("A completable source is null"));
                atomicInteger.decrementAndGet();
            } else {
                completable.V(new Cdo(dqVar, concurrentLinkedQueue, atomicInteger, completableSubscriber));
            }
        }
        if (atomicInteger.decrementAndGet() == 0) {
            if (concurrentLinkedQueue.isEmpty()) {
                completableSubscriber.onCompleted();
            } else {
                completableSubscriber.onError(Cclass.m38426if(concurrentLinkedQueue));
            }
        }
    }
}
