package rx.internal.schedulers;

import android.support.v4.uw1;
import java.util.concurrent.TimeUnit;
import rx.Cif;
import rx.Subscription;
import rx.functions.Action0;

/* loaded from: classes4.dex */
public final class SchedulePeriodicHelper {

    /* renamed from: do, reason: not valid java name */
    public static final long f35679do = TimeUnit.MINUTES.toNanos(Long.getLong("rx.scheduler.drift-tolerance", 15).longValue());

    public interface NowNanoSupplier {
        long nowNanos();
    }

    /* renamed from: rx.internal.schedulers.SchedulePeriodicHelper$do, reason: invalid class name */
    public static class Cdo implements Action0 {

        /* renamed from: break, reason: not valid java name */
        public final /* synthetic */ long f35680break;

        /* renamed from: case, reason: not valid java name */
        public final /* synthetic */ Action0 f35681case;

        /* renamed from: do, reason: not valid java name */
        public long f35682do;

        /* renamed from: else, reason: not valid java name */
        public final /* synthetic */ uw1 f35683else;

        /* renamed from: for, reason: not valid java name */
        public long f35684for;

        /* renamed from: goto, reason: not valid java name */
        public final /* synthetic */ NowNanoSupplier f35685goto;

        /* renamed from: if, reason: not valid java name */
        public long f35686if;

        /* renamed from: new, reason: not valid java name */
        public final /* synthetic */ long f35687new;

        /* renamed from: this, reason: not valid java name */
        public final /* synthetic */ Cif.Cdo f35688this;

        /* renamed from: try, reason: not valid java name */
        public final /* synthetic */ long f35689try;

        public Cdo(long j, long j2, Action0 action0, uw1 uw1Var, NowNanoSupplier nowNanoSupplier, Cif.Cdo cdo, long j3) {
            this.f35687new = j;
            this.f35689try = j2;
            this.f35681case = action0;
            this.f35683else = uw1Var;
            this.f35685goto = nowNanoSupplier;
            this.f35688this = cdo;
            this.f35680break = j3;
            this.f35686if = j;
            this.f35684for = j2;
        }

        /* JADX WARN: Removed duplicated region for block: B:14:0x0042  */
        @Override // rx.functions.Action0
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void call() {
            long j;
            this.f35681case.call();
            if (this.f35683else.isUnsubscribed()) {
                return;
            }
            NowNanoSupplier nowNanoSupplier = this.f35685goto;
            long jNowNanos = nowNanoSupplier != null ? nowNanoSupplier.nowNanos() : TimeUnit.MILLISECONDS.toNanos(this.f35688this.mo38374do());
            long j2 = SchedulePeriodicHelper.f35679do;
            long j3 = jNowNanos + j2;
            long j4 = this.f35686if;
            if (j3 >= j4) {
                long j5 = this.f35680break;
                if (jNowNanos >= j4 + j5 + j2) {
                    long j6 = this.f35680break;
                    long j7 = jNowNanos + j6;
                    long j8 = this.f35682do + 1;
                    this.f35682do = j8;
                    this.f35684for = j7 - (j6 * j8);
                    j = j7;
                } else {
                    long j9 = this.f35684for;
                    long j10 = this.f35682do + 1;
                    this.f35682do = j10;
                    j = j9 + (j10 * j5);
                }
            }
            this.f35686if = jNowNanos;
            this.f35683else.replace(this.f35688this.mo38375for(this, j - jNowNanos, TimeUnit.NANOSECONDS));
        }
    }

    private SchedulePeriodicHelper() {
        throw new IllegalStateException("No instances!");
    }

    /* renamed from: do, reason: not valid java name */
    public static Subscription m38832do(Cif.Cdo cdo, Action0 action0, long j, long j2, TimeUnit timeUnit, NowNanoSupplier nowNanoSupplier) {
        long nanos = timeUnit.toNanos(j2);
        long jNowNanos = nowNanoSupplier != null ? nowNanoSupplier.nowNanos() : TimeUnit.MILLISECONDS.toNanos(cdo.mo38374do());
        long nanos2 = timeUnit.toNanos(j) + jNowNanos;
        uw1 uw1Var = new uw1();
        uw1 uw1Var2 = new uw1(uw1Var);
        uw1Var.replace(cdo.mo38375for(new Cdo(jNowNanos, nanos2, action0, uw1Var2, nowNanoSupplier, cdo, nanos), j, timeUnit));
        return uw1Var2;
    }
}
