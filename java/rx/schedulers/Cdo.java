package rx.schedulers;

import java.util.Comparator;
import java.util.PriorityQueue;
import java.util.Queue;
import java.util.concurrent.TimeUnit;
import rx.Cif;
import rx.Subscription;
import rx.functions.Action0;
import rx.internal.schedulers.SchedulePeriodicHelper;

/* renamed from: rx.schedulers.do, reason: invalid class name */
/* loaded from: classes4.dex */
public class Cdo extends rx.Cif {

    /* renamed from: for, reason: not valid java name */
    public static long f36153for;

    /* renamed from: do, reason: not valid java name */
    public final Queue<Cfor> f36154do = new PriorityQueue(11, new C0567do());

    /* renamed from: if, reason: not valid java name */
    public long f36155if;

    /* renamed from: rx.schedulers.do$do, reason: invalid class name and collision with other inner class name */
    public static final class C0567do implements Comparator<Cfor> {
        @Override // java.util.Comparator
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public int compare(Cfor cfor, Cfor cfor2) {
            long j = cfor.f36156do;
            long j2 = cfor2.f36156do;
            if (j == j2) {
                if (cfor.f36159new < cfor2.f36159new) {
                    return -1;
                }
                return cfor.f36159new > cfor2.f36159new ? 1 : 0;
            }
            if (j < j2) {
                return -1;
            }
            return j > j2 ? 1 : 0;
        }
    }

    /* renamed from: rx.schedulers.do$for, reason: invalid class name */
    public static final class Cfor {

        /* renamed from: do, reason: not valid java name */
        public final long f36156do;

        /* renamed from: for, reason: not valid java name */
        public final Cif.Cdo f36157for;

        /* renamed from: if, reason: not valid java name */
        public final Action0 f36158if;

        /* renamed from: new, reason: not valid java name */
        private final long f36159new;

        public Cfor(Cif.Cdo cdo, long j, Action0 action0) {
            long j2 = Cdo.f36153for;
            Cdo.f36153for = 1 + j2;
            this.f36159new = j2;
            this.f36156do = j;
            this.f36158if = action0;
            this.f36157for = cdo;
        }

        public String toString() {
            return String.format("TimedAction(time = %d, action = %s)", Long.valueOf(this.f36156do), this.f36158if.toString());
        }
    }

    /* renamed from: rx.schedulers.do$if, reason: invalid class name */
    public final class Cif extends Cif.Cdo implements SchedulePeriodicHelper.NowNanoSupplier {

        /* renamed from: do, reason: not valid java name */
        private final rx.subscriptions.Cdo f36160do = new rx.subscriptions.Cdo();

        /* renamed from: rx.schedulers.do$if$do, reason: invalid class name and collision with other inner class name */
        public class C0568do implements Action0 {

            /* renamed from: do, reason: not valid java name */
            public final /* synthetic */ Cfor f36162do;

            public C0568do(Cfor cfor) {
                this.f36162do = cfor;
            }

            @Override // rx.functions.Action0
            public void call() {
                Cdo.this.f36154do.remove(this.f36162do);
            }
        }

        /* renamed from: rx.schedulers.do$if$if, reason: invalid class name and collision with other inner class name */
        public class C0569if implements Action0 {

            /* renamed from: do, reason: not valid java name */
            public final /* synthetic */ Cfor f36164do;

            public C0569if(Cfor cfor) {
                this.f36164do = cfor;
            }

            @Override // rx.functions.Action0
            public void call() {
                Cdo.this.f36154do.remove(this.f36164do);
            }
        }

        public Cif() {
        }

        @Override // rx.Cif.Cdo
        /* renamed from: do */
        public long mo38374do() {
            return Cdo.this.mo38373if();
        }

        @Override // rx.Cif.Cdo
        /* renamed from: for */
        public Subscription mo38375for(Action0 action0, long j, TimeUnit timeUnit) {
            Cfor cfor = new Cfor(this, Cdo.this.f36155if + timeUnit.toNanos(j), action0);
            Cdo.this.f36154do.add(cfor);
            return rx.subscriptions.Cfor.m39225do(new C0568do(cfor));
        }

        @Override // rx.Cif.Cdo
        /* renamed from: if */
        public Subscription mo38376if(Action0 action0) {
            Cfor cfor = new Cfor(this, 0L, action0);
            Cdo.this.f36154do.add(cfor);
            return rx.subscriptions.Cfor.m39225do(new C0569if(cfor));
        }

        @Override // rx.Subscription
        public boolean isUnsubscribed() {
            return this.f36160do.isUnsubscribed();
        }

        @Override // rx.Cif.Cdo
        /* renamed from: new */
        public Subscription mo38377new(Action0 action0, long j, long j2, TimeUnit timeUnit) {
            return SchedulePeriodicHelper.m38832do(this, action0, j, j2, timeUnit, this);
        }

        @Override // rx.internal.schedulers.SchedulePeriodicHelper.NowNanoSupplier
        public long nowNanos() {
            return Cdo.this.f36155if;
        }

        @Override // rx.Subscription
        public void unsubscribe() {
            this.f36160do.unsubscribe();
        }
    }

    /* renamed from: else, reason: not valid java name */
    private void m39199else(long j) {
        while (!this.f36154do.isEmpty()) {
            Cfor cforPeek = this.f36154do.peek();
            long j2 = cforPeek.f36156do;
            if (j2 > j) {
                break;
            }
            if (j2 == 0) {
                j2 = this.f36155if;
            }
            this.f36155if = j2;
            this.f36154do.remove();
            if (!cforPeek.f36157for.isUnsubscribed()) {
                cforPeek.f36158if.call();
            }
        }
        this.f36155if = j;
    }

    /* renamed from: case, reason: not valid java name */
    public void m39200case() {
        m39199else(this.f36155if);
    }

    @Override // rx.Cif
    /* renamed from: do */
    public Cif.Cdo mo971do() {
        return new Cif();
    }

    @Override // rx.Cif
    /* renamed from: if */
    public long mo38373if() {
        return TimeUnit.NANOSECONDS.toMillis(this.f36155if);
    }

    /* renamed from: new, reason: not valid java name */
    public void m39201new(long j, TimeUnit timeUnit) {
        m39202try(this.f36155if + timeUnit.toNanos(j), TimeUnit.NANOSECONDS);
    }

    /* renamed from: try, reason: not valid java name */
    public void m39202try(long j, TimeUnit timeUnit) {
        m39199else(timeUnit.toNanos(j));
    }
}
