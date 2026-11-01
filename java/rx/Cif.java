package rx;

import java.util.concurrent.TimeUnit;
import rx.functions.Action0;
import rx.functions.Func1;
import rx.internal.schedulers.Cthis;
import rx.internal.schedulers.SchedulePeriodicHelper;

/* renamed from: rx.if, reason: invalid class name */
/* loaded from: classes4.dex */
public abstract class Cif {

    /* renamed from: rx.if$do, reason: invalid class name */
    public static abstract class Cdo implements Subscription {
        /* renamed from: do, reason: not valid java name */
        public long mo38374do() {
            return System.currentTimeMillis();
        }

        /* renamed from: for, reason: not valid java name */
        public abstract Subscription mo38375for(Action0 action0, long j, TimeUnit timeUnit);

        /* renamed from: if, reason: not valid java name */
        public abstract Subscription mo38376if(Action0 action0);

        /* renamed from: new, reason: not valid java name */
        public Subscription mo38377new(Action0 action0, long j, long j2, TimeUnit timeUnit) {
            return SchedulePeriodicHelper.m38832do(this, action0, j, j2, timeUnit, null);
        }
    }

    /* renamed from: do */
    public abstract Cdo mo971do();

    /* renamed from: for, reason: not valid java name */
    public <S extends Cif & Subscription> S m38372for(Func1<Observable<Observable<Completable>>, Completable> func1) {
        return new Cthis(func1, this);
    }

    /* renamed from: if, reason: not valid java name */
    public long mo38373if() {
        return System.currentTimeMillis();
    }
}
