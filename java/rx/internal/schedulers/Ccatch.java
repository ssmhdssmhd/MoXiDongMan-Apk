package rx.internal.schedulers;

import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import rx.Cif;
import rx.Subscription;
import rx.functions.Action0;
import rx.subscriptions.Cfor;

/* renamed from: rx.internal.schedulers.catch, reason: invalid class name */
/* loaded from: classes4.dex */
public final class Ccatch extends rx.Cif {

    /* renamed from: do, reason: not valid java name */
    public static final Ccatch f35696do = new Ccatch();

    /* renamed from: rx.internal.schedulers.catch$do, reason: invalid class name */
    public static final class Cdo extends Cif.Cdo implements Subscription {

        /* renamed from: do, reason: not valid java name */
        public final AtomicInteger f35697do = new AtomicInteger();

        /* renamed from: if, reason: not valid java name */
        public final PriorityBlockingQueue<Cif> f35699if = new PriorityBlockingQueue<>();

        /* renamed from: for, reason: not valid java name */
        private final rx.subscriptions.Cdo f35698for = new rx.subscriptions.Cdo();

        /* renamed from: new, reason: not valid java name */
        private final AtomicInteger f35700new = new AtomicInteger();

        /* renamed from: rx.internal.schedulers.catch$do$do, reason: invalid class name and collision with other inner class name */
        public class C0546do implements Action0 {

            /* renamed from: do, reason: not valid java name */
            public final /* synthetic */ Cif f35701do;

            public C0546do(Cif cif) {
                this.f35701do = cif;
            }

            @Override // rx.functions.Action0
            public void call() {
                Cdo.this.f35699if.remove(this.f35701do);
            }
        }

        /* renamed from: try, reason: not valid java name */
        private Subscription m38834try(Action0 action0, long j) {
            if (this.f35698for.isUnsubscribed()) {
                return Cfor.m39229try();
            }
            Cif cif = new Cif(action0, Long.valueOf(j), this.f35697do.incrementAndGet());
            this.f35699if.add(cif);
            if (this.f35700new.getAndIncrement() != 0) {
                return Cfor.m39225do(new C0546do(cif));
            }
            do {
                Cif cifPoll = this.f35699if.poll();
                if (cifPoll != null) {
                    cifPoll.f35703do.call();
                }
            } while (this.f35700new.decrementAndGet() > 0);
            return Cfor.m39229try();
        }

        @Override // rx.Cif.Cdo
        /* renamed from: for */
        public Subscription mo38375for(Action0 action0, long j, TimeUnit timeUnit) {
            long jMo38374do = mo38374do() + timeUnit.toMillis(j);
            return m38834try(new Cbreak(action0, this, jMo38374do), jMo38374do);
        }

        @Override // rx.Cif.Cdo
        /* renamed from: if */
        public Subscription mo38376if(Action0 action0) {
            return m38834try(action0, mo38374do());
        }

        @Override // rx.Subscription
        public boolean isUnsubscribed() {
            return this.f35698for.isUnsubscribed();
        }

        @Override // rx.Subscription
        public void unsubscribe() {
            this.f35698for.unsubscribe();
        }
    }

    /* renamed from: rx.internal.schedulers.catch$if, reason: invalid class name */
    public static final class Cif implements Comparable<Cif> {

        /* renamed from: do, reason: not valid java name */
        public final Action0 f35703do;

        /* renamed from: for, reason: not valid java name */
        public final int f35704for;

        /* renamed from: if, reason: not valid java name */
        public final Long f35705if;

        public Cif(Action0 action0, Long l, int i) {
            this.f35703do = action0;
            this.f35705if = l;
            this.f35704for = i;
        }

        @Override // java.lang.Comparable
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public int compareTo(Cif cif) {
            int iCompareTo = this.f35705if.compareTo(cif.f35705if);
            return iCompareTo == 0 ? Ccatch.m38833new(this.f35704for, cif.f35704for) : iCompareTo;
        }
    }

    private Ccatch() {
    }

    /* renamed from: new, reason: not valid java name */
    public static int m38833new(int i, int i2) {
        if (i < i2) {
            return -1;
        }
        return i == i2 ? 0 : 1;
    }

    @Override // rx.Cif
    /* renamed from: do */
    public Cif.Cdo mo971do() {
        return new Cdo();
    }
}
