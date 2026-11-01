package rx.internal.operators;

import android.support.v4.dq;
import android.support.v4.y22;
import java.util.ArrayList;
import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import rx.Completable;
import rx.CompletableSubscriber;
import rx.Observable;
import rx.Subscription;
import rx.plugins.Cif;

/* renamed from: rx.internal.operators.class, reason: invalid class name */
/* loaded from: classes4.dex */
public final class Cclass implements Completable.OnSubscribe {

    /* renamed from: do, reason: not valid java name */
    public final Observable<Completable> f34583do;

    /* renamed from: for, reason: not valid java name */
    public final boolean f34584for;

    /* renamed from: if, reason: not valid java name */
    public final int f34585if;

    /* renamed from: rx.internal.operators.class$do, reason: invalid class name */
    public static final class Cdo extends y22<Completable> {

        /* renamed from: do, reason: not valid java name */
        public final CompletableSubscriber f34587do;

        /* renamed from: for, reason: not valid java name */
        public final boolean f34589for;

        /* renamed from: new, reason: not valid java name */
        public volatile boolean f34591new;

        /* renamed from: if, reason: not valid java name */
        public final dq f34590if = new dq();

        /* renamed from: else, reason: not valid java name */
        public final AtomicInteger f34588else = new AtomicInteger(1);

        /* renamed from: case, reason: not valid java name */
        public final AtomicBoolean f34586case = new AtomicBoolean();

        /* renamed from: try, reason: not valid java name */
        public final AtomicReference<Queue<Throwable>> f34592try = new AtomicReference<>();

        /* renamed from: rx.internal.operators.class$do$do, reason: invalid class name and collision with other inner class name */
        public class C0518do implements CompletableSubscriber {

            /* renamed from: do, reason: not valid java name */
            public Subscription f34593do;

            /* renamed from: if, reason: not valid java name */
            public boolean f34595if;

            public C0518do() {
            }

            @Override // rx.CompletableSubscriber
            public void onCompleted() {
                if (this.f34595if) {
                    return;
                }
                this.f34595if = true;
                Cdo.this.f34590if.m1492try(this.f34593do);
                Cdo.this.m38432try();
                if (Cdo.this.f34591new) {
                    return;
                }
                Cdo.this.request(1L);
            }

            @Override // rx.CompletableSubscriber
            public void onError(Throwable th) {
                if (this.f34595if) {
                    Cif.m39151protected(th);
                    return;
                }
                this.f34595if = true;
                Cdo.this.f34590if.m1492try(this.f34593do);
                Cdo.this.m38430for().offer(th);
                Cdo.this.m38432try();
                Cdo cdo = Cdo.this;
                if (!cdo.f34589for || cdo.f34591new) {
                    return;
                }
                Cdo.this.request(1L);
            }

            @Override // rx.CompletableSubscriber
            public void onSubscribe(Subscription subscription) {
                this.f34593do = subscription;
                Cdo.this.f34590if.m1488do(subscription);
            }
        }

        public Cdo(CompletableSubscriber completableSubscriber, int i, boolean z) {
            this.f34587do = completableSubscriber;
            this.f34589for = z;
            if (i == Integer.MAX_VALUE) {
                request(Long.MAX_VALUE);
            } else {
                request(i);
            }
        }

        /* renamed from: for, reason: not valid java name */
        public Queue<Throwable> m38430for() {
            Queue<Throwable> queue = this.f34592try.get();
            if (queue != null) {
                return queue;
            }
            ConcurrentLinkedQueue concurrentLinkedQueue = new ConcurrentLinkedQueue();
            return this.f34592try.compareAndSet(null, concurrentLinkedQueue) ? concurrentLinkedQueue : this.f34592try.get();
        }

        @Override // rx.Observer
        /* renamed from: new, reason: not valid java name and merged with bridge method [inline-methods] */
        public void onNext(Completable completable) {
            if (this.f34591new) {
                return;
            }
            this.f34588else.getAndIncrement();
            completable.V(new C0518do());
        }

        @Override // rx.Observer
        public void onCompleted() {
            if (this.f34591new) {
                return;
            }
            this.f34591new = true;
            m38432try();
        }

        @Override // rx.Observer
        public void onError(Throwable th) {
            if (this.f34591new) {
                Cif.m39151protected(th);
                return;
            }
            m38430for().offer(th);
            this.f34591new = true;
            m38432try();
        }

        /* renamed from: try, reason: not valid java name */
        public void m38432try() {
            Queue<Throwable> queue;
            if (this.f34588else.decrementAndGet() != 0) {
                if (this.f34589for || (queue = this.f34592try.get()) == null || queue.isEmpty()) {
                    return;
                }
                Throwable thM38426if = Cclass.m38426if(queue);
                if (this.f34586case.compareAndSet(false, true)) {
                    this.f34587do.onError(thM38426if);
                    return;
                } else {
                    Cif.m39151protected(thM38426if);
                    return;
                }
            }
            Queue<Throwable> queue2 = this.f34592try.get();
            if (queue2 == null || queue2.isEmpty()) {
                this.f34587do.onCompleted();
                return;
            }
            Throwable thM38426if2 = Cclass.m38426if(queue2);
            if (this.f34586case.compareAndSet(false, true)) {
                this.f34587do.onError(thM38426if2);
            } else {
                Cif.m39151protected(thM38426if2);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Cclass(Observable<? extends Completable> observable, int i, boolean z) {
        this.f34583do = observable;
        this.f34585if = i;
        this.f34584for = z;
    }

    /* renamed from: if, reason: not valid java name */
    public static Throwable m38426if(Queue<Throwable> queue) {
        ArrayList arrayList = new ArrayList();
        while (true) {
            Throwable thPoll = queue.poll();
            if (thPoll == null) {
                break;
            }
            arrayList.add(thPoll);
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return arrayList.size() == 1 ? (Throwable) arrayList.get(0) : new rx.exceptions.Cdo(arrayList);
    }

    @Override // rx.functions.Action1
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public void call(CompletableSubscriber completableSubscriber) {
        Cdo cdo = new Cdo(completableSubscriber, this.f34585if, this.f34584for);
        completableSubscriber.onSubscribe(cdo);
        this.f34583do.r5(cdo);
    }
}
