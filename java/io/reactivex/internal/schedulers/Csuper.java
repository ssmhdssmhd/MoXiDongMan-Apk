package io.reactivex.internal.schedulers;

import android.support.v4.b41;
import android.support.v4.jp1;
import io.reactivex.Ctry;
import io.reactivex.disposables.Disposable;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

/* renamed from: io.reactivex.internal.schedulers.super, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Csuper extends Ctry {

    /* renamed from: if, reason: not valid java name */
    private static final Csuper f27369if = new Csuper();

    /* renamed from: io.reactivex.internal.schedulers.super$do, reason: invalid class name */
    public static final class Cdo implements Runnable {

        /* renamed from: do, reason: not valid java name */
        private final Runnable f27370do;

        /* renamed from: for, reason: not valid java name */
        private final long f27371for;

        /* renamed from: if, reason: not valid java name */
        private final Cfor f27372if;

        public Cdo(Runnable runnable, Cfor cfor, long j) {
            this.f27370do = runnable;
            this.f27372if = cfor;
            this.f27371for = j;
        }

        @Override // java.lang.Runnable
        public void run() throws InterruptedException {
            if (this.f27372if.f27376new) {
                return;
            }
            long jMo29784do = this.f27372if.mo29784do(TimeUnit.MILLISECONDS);
            long j = this.f27371for;
            if (j > jMo29784do) {
                try {
                    Thread.sleep(j - jMo29784do);
                } catch (InterruptedException e) {
                    Thread.currentThread().interrupt();
                    jp1.l(e);
                    return;
                }
            }
            if (this.f27372if.f27376new) {
                return;
            }
            this.f27370do.run();
        }
    }

    /* renamed from: io.reactivex.internal.schedulers.super$for, reason: invalid class name */
    public static final class Cfor extends Ctry.Cfor implements Disposable {

        /* renamed from: new, reason: not valid java name */
        public volatile boolean f27376new;

        /* renamed from: do, reason: not valid java name */
        public final PriorityBlockingQueue<Cif> f27373do = new PriorityBlockingQueue<>();

        /* renamed from: if, reason: not valid java name */
        private final AtomicInteger f27375if = new AtomicInteger();

        /* renamed from: for, reason: not valid java name */
        public final AtomicInteger f27374for = new AtomicInteger();

        /* renamed from: io.reactivex.internal.schedulers.super$for$do, reason: invalid class name */
        public final class Cdo implements Runnable {

            /* renamed from: do, reason: not valid java name */
            public final Cif f27377do;

            public Cdo(Cif cif) {
                this.f27377do = cif;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.f27377do.f27382new = true;
                Cfor.this.f27373do.remove(this.f27377do);
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f27376new = true;
        }

        @Override // io.reactivex.Ctry.Cfor
        @b41
        /* renamed from: for */
        public Disposable mo29362for(@b41 Runnable runnable, long j, @b41 TimeUnit timeUnit) {
            long jMo29784do = mo29784do(TimeUnit.MILLISECONDS) + timeUnit.toMillis(j);
            return m29699try(new Cdo(runnable, this, jMo29784do), jMo29784do);
        }

        @Override // io.reactivex.Ctry.Cfor
        @b41
        /* renamed from: if */
        public Disposable mo29677if(@b41 Runnable runnable) {
            return m29699try(runnable, mo29784do(TimeUnit.MILLISECONDS));
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f27376new;
        }

        /* renamed from: try, reason: not valid java name */
        public Disposable m29699try(Runnable runnable, long j) {
            if (this.f27376new) {
                return io.reactivex.internal.disposables.Cif.INSTANCE;
            }
            Cif cif = new Cif(runnable, Long.valueOf(j), this.f27374for.incrementAndGet());
            this.f27373do.add(cif);
            if (this.f27375if.getAndIncrement() != 0) {
                return io.reactivex.disposables.Cif.m29363case(new Cdo(cif));
            }
            int iAddAndGet = 1;
            while (!this.f27376new) {
                Cif cifPoll = this.f27373do.poll();
                if (cifPoll == null) {
                    iAddAndGet = this.f27375if.addAndGet(-iAddAndGet);
                    if (iAddAndGet == 0) {
                        return io.reactivex.internal.disposables.Cif.INSTANCE;
                    }
                } else if (!cifPoll.f27382new) {
                    cifPoll.f27379do.run();
                }
            }
            this.f27373do.clear();
            return io.reactivex.internal.disposables.Cif.INSTANCE;
        }
    }

    /* renamed from: io.reactivex.internal.schedulers.super$if, reason: invalid class name */
    public static final class Cif implements Comparable<Cif> {

        /* renamed from: do, reason: not valid java name */
        public final Runnable f27379do;

        /* renamed from: for, reason: not valid java name */
        public final int f27380for;

        /* renamed from: if, reason: not valid java name */
        public final long f27381if;

        /* renamed from: new, reason: not valid java name */
        public volatile boolean f27382new;

        public Cif(Runnable runnable, Long l, int i) {
            this.f27379do = runnable;
            this.f27381if = l.longValue();
            this.f27380for = i;
        }

        @Override // java.lang.Comparable
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public int compareTo(Cif cif) {
            int iM29471if = io.reactivex.internal.functions.Cif.m29471if(this.f27381if, cif.f27381if);
            return iM29471if == 0 ? io.reactivex.internal.functions.Cif.m29467do(this.f27380for, cif.f27380for) : iM29471if;
        }
    }

    /* renamed from: break, reason: not valid java name */
    public static Csuper m29698break() {
        return f27369if;
    }

    @Override // io.reactivex.Ctry
    @b41
    /* renamed from: if */
    public Ctry.Cfor mo4229if() {
        return new Cfor();
    }

    @Override // io.reactivex.Ctry
    @b41
    /* renamed from: new */
    public Disposable mo29697new(@b41 Runnable runnable) {
        jp1.o(runnable).run();
        return io.reactivex.internal.disposables.Cif.INSTANCE;
    }

    @Override // io.reactivex.Ctry
    @b41
    /* renamed from: try */
    public Disposable mo29361try(@b41 Runnable runnable, long j, TimeUnit timeUnit) throws InterruptedException {
        try {
            timeUnit.sleep(j);
            jp1.o(runnable).run();
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
            jp1.l(e);
        }
        return io.reactivex.internal.disposables.Cif.INSTANCE;
    }
}
