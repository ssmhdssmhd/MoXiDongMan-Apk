package kotlin.time;

import android.support.v4.iz1;
import android.support.v4.l90;
import android.support.v4.m41;
import android.support.v4.rx;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.util.concurrent.TimeUnit;
import kotlin.Cwhile;
import kotlin.jvm.internal.Csuper;

@l90
@iz1(version = "1.3")
@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\b'\u0018\u00002\u00020\u0001:\u0001\bB\u0013\u0012\n\u0010\u000b\u001a\u00060\u0006j\u0002`\u0007¢\u0006\u0004\b\f\u0010\rJ\b\u0010\u0003\u001a\u00020\u0002H$J\b\u0010\u0005\u001a\u00020\u0004H\u0016R \u0010\u000b\u001a\u00060\u0006j\u0002`\u00078\u0004@\u0004X\u0084\u0004¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\b\u0010\n¨\u0006\u000e"}, d2 = {"Lkotlin/time/if;", "Lkotlin/time/TimeSource;", "", "if", "Lkotlin/time/catch;", "markNow", "Ljava/util/concurrent/TimeUnit;", "Lkotlin/time/DurationUnit;", "do", "Ljava/util/concurrent/TimeUnit;", "()Ljava/util/concurrent/TimeUnit;", "unit", "<init>", "(Ljava/util/concurrent/TimeUnit;)V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* renamed from: kotlin.time.if, reason: invalid class name */
/* loaded from: classes3.dex */
public abstract class Cif implements TimeSource {

    /* renamed from: do, reason: not valid java name */
    @m41
    private final TimeUnit f28061do;

    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u001e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\b\u0002\u0018\u00002\u00020\u0001B\"\u0012\u0006\u0010\n\u001a\u00020\b\u0012\u0006\u0010\u000e\u001a\u00020\u000b\u0012\u0006\u0010\u0010\u001a\u00020\u0002ø\u0001\u0000¢\u0006\u0004\b\u0011\u0010\u0012J\u0015\u0010\u0003\u001a\u00020\u0002H\u0016ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0003\u0010\u0004J\u001b\u0010\u0006\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0002H\u0096\u0002ø\u0001\u0000¢\u0006\u0004\b\u0006\u0010\u0007R\u0016\u0010\n\u001a\u00020\b8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\tR\u0016\u0010\u000e\u001a\u00020\u000b8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\rR\u001c\u0010\u0010\u001a\u00020\u00028\u0002@\u0002X\u0082\u0004ø\u0001\u0000ø\u0001\u0001¢\u0006\u0006\n\u0004\b\u000f\u0010\t\u0082\u0002\b\n\u0002\b\u0019\n\u0002\b!¨\u0006\u0013"}, d2 = {"kotlin/time/if$do", "Lkotlin/time/catch;", "Lkotlin/time/new;", "do", "()J", "duration", "try", "(J)Lkotlin/time/catch;", "", "J", "startedAt", "Lkotlin/time/if;", "if", "Lkotlin/time/if;", "timeSource", "for", TypedValues.Cycle.S_WAVE_OFFSET, "<init>", "(JLkotlin/time/if;JLandroid/support/v4/rx;)V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
    /* renamed from: kotlin.time.if$do, reason: invalid class name */
    public static final class Cdo extends Ccatch {

        /* renamed from: do, reason: not valid java name */
        private final long f28062do;

        /* renamed from: for, reason: not valid java name */
        private final long f28063for;

        /* renamed from: if, reason: not valid java name */
        private final Cif f28064if;

        private Cdo(long j, Cif cif, long j2) {
            this.f28062do = j;
            this.f28064if = cif;
            this.f28063for = j2;
        }

        @Override // kotlin.time.Ccatch
        /* renamed from: do */
        public long mo31270do() {
            return Cnew.w(Ctry.B(this.f28064if.mo5068if() - this.f28062do, this.f28064if.m31286do()), this.f28063for);
        }

        @Override // kotlin.time.Ccatch
        @m41
        /* renamed from: try */
        public Ccatch mo31274try(long j) {
            return new Cdo(this.f28062do, this.f28064if, Cnew.x(this.f28063for, j));
        }

        public /* synthetic */ Cdo(long j, Cif cif, long j2, rx rxVar) {
            this(j, cif, j2);
        }
    }

    public Cif(@m41 TimeUnit unit) {
        Csuper.m30700throw(unit, "unit");
        this.f28061do = unit;
    }

    @m41
    /* renamed from: do, reason: not valid java name */
    public final TimeUnit m31286do() {
        return this.f28061do;
    }

    /* renamed from: if */
    public abstract long mo5068if();

    @Override // kotlin.time.TimeSource
    @m41
    public Ccatch markNow() {
        return new Cdo(mo5068if(), this, Cnew.f28068try.m31333else(), null);
    }
}
