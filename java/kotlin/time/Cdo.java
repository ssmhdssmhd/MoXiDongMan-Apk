package kotlin.time;

import android.support.v4.iz1;
import android.support.v4.l90;
import android.support.v4.m41;
import android.support.v4.rx;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import freemarker.template.Cstatic;
import java.util.concurrent.TimeUnit;
import kotlin.Cwhile;
import kotlin.jvm.internal.Csuper;

@l90
@iz1(version = "1.3")
@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0006\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\b'\u0018\u00002\u00020\u0001:\u0001\bB\u0013\u0012\n\u0010\u000b\u001a\u00060\u0006j\u0002`\u0007¢\u0006\u0004\b\f\u0010\rJ\b\u0010\u0003\u001a\u00020\u0002H$J\b\u0010\u0005\u001a\u00020\u0004H\u0016R \u0010\u000b\u001a\u00060\u0006j\u0002`\u00078\u0004@\u0004X\u0084\u0004¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\b\u0010\n¨\u0006\u000e"}, d2 = {"Lkotlin/time/do;", "Lkotlin/time/TimeSource;", "", "if", "Lkotlin/time/catch;", "markNow", "Ljava/util/concurrent/TimeUnit;", "Lkotlin/time/DurationUnit;", "do", "Ljava/util/concurrent/TimeUnit;", "()Ljava/util/concurrent/TimeUnit;", "unit", "<init>", "(Ljava/util/concurrent/TimeUnit;)V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* renamed from: kotlin.time.do, reason: invalid class name */
/* loaded from: classes3.dex */
public abstract class Cdo implements TimeSource {

    /* renamed from: do, reason: not valid java name */
    @m41
    private final TimeUnit f28055do;

    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u001e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0006\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\b\u0002\u0018\u00002\u00020\u0001B\"\u0012\u0006\u0010\n\u001a\u00020\b\u0012\u0006\u0010\u000e\u001a\u00020\u000b\u0012\u0006\u0010\u0011\u001a\u00020\u0002ø\u0001\u0000¢\u0006\u0004\b\u0012\u0010\u0013J\u0015\u0010\u0003\u001a\u00020\u0002H\u0016ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0003\u0010\u0004J\u001b\u0010\u0006\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0002H\u0096\u0002ø\u0001\u0000¢\u0006\u0004\b\u0006\u0010\u0007R\u0016\u0010\n\u001a\u00020\b8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\tR\u0016\u0010\u000e\u001a\u00020\u000b8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\rR\u001c\u0010\u0011\u001a\u00020\u00028\u0002@\u0002X\u0082\u0004ø\u0001\u0000ø\u0001\u0001¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010\u0082\u0002\b\n\u0002\b\u0019\n\u0002\b!¨\u0006\u0014"}, d2 = {"kotlin/time/do$do", "Lkotlin/time/catch;", "Lkotlin/time/new;", "do", "()J", "duration", "try", "(J)Lkotlin/time/catch;", "", Cstatic.m1, "startedAt", "Lkotlin/time/do;", "if", "Lkotlin/time/do;", "timeSource", "for", "J", TypedValues.Cycle.S_WAVE_OFFSET, "<init>", "(DLkotlin/time/do;JLandroid/support/v4/rx;)V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
    /* renamed from: kotlin.time.do$do, reason: invalid class name and collision with other inner class name */
    public static final class C0376do extends Ccatch {

        /* renamed from: do, reason: not valid java name */
        private final double f28056do;

        /* renamed from: for, reason: not valid java name */
        private final long f28057for;

        /* renamed from: if, reason: not valid java name */
        private final Cdo f28058if;

        private C0376do(double d, Cdo cdo, long j) {
            this.f28056do = d;
            this.f28058if = cdo;
            this.f28057for = j;
        }

        @Override // kotlin.time.Ccatch
        /* renamed from: do */
        public long mo31270do() {
            return Cnew.w(Ctry.z(this.f28058if.m31276if() - this.f28056do, this.f28058if.m31275do()), this.f28057for);
        }

        @Override // kotlin.time.Ccatch
        @m41
        /* renamed from: try */
        public Ccatch mo31274try(long j) {
            return new C0376do(this.f28056do, this.f28058if, Cnew.x(this.f28057for, j));
        }

        public /* synthetic */ C0376do(double d, Cdo cdo, long j, rx rxVar) {
            this(d, cdo, j);
        }
    }

    public Cdo(@m41 TimeUnit unit) {
        Csuper.m30700throw(unit, "unit");
        this.f28055do = unit;
    }

    @m41
    /* renamed from: do, reason: not valid java name */
    public final TimeUnit m31275do() {
        return this.f28055do;
    }

    /* renamed from: if, reason: not valid java name */
    public abstract double m31276if();

    @Override // kotlin.time.TimeSource
    @m41
    public Ccatch markNow() {
        return new C0376do(m31276if(), this, Cnew.f28068try.m31333else(), null);
    }
}
