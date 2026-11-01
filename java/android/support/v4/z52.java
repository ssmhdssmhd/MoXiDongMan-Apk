package android.support.v4;

import java.util.concurrent.TimeUnit;
import kotlin.Cwhile;
import kotlin.time.Cif;
import kotlin.time.Cnew;
import org.apache.commons.lang3.Ctry;

@l90
@iz1(version = "1.3")
@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\n\u0010\u000bJ\u001a\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002ø\u0001\u0000¢\u0006\u0004\b\u0005\u0010\u0006J\b\u0010\b\u001a\u00020\u0007H\u0014J\u001b\u0010\t\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0086\u0002ø\u0001\u0000¢\u0006\u0004\b\t\u0010\u0006\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\f"}, d2 = {"Landroid/support/v4/z52;", "Lkotlin/time/if;", "Lkotlin/time/new;", "duration", "Landroid/support/v4/ub2;", "for", "(J)V", "", "if", "new", "<init>", "()V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes3.dex */
public final class z52 extends Cif {

    /* renamed from: if, reason: not valid java name */
    private long f8453if;

    public z52() {
        super(TimeUnit.NANOSECONDS);
    }

    /* renamed from: for, reason: not valid java name */
    private final void m10072for(long j) {
        throw new IllegalStateException("TestTimeSource will overflow if its reading " + this.f8453if + "ns is advanced by " + Cnew.K(j) + Ctry.f28883do);
    }

    @Override // kotlin.time.Cif
    /* renamed from: if */
    public long mo5068if() {
        return this.f8453if;
    }

    /* renamed from: new, reason: not valid java name */
    public final void m10073new(long j) {
        long j2;
        long jH = Cnew.H(j, m31286do());
        if (jH == Long.MIN_VALUE || jH == Long.MAX_VALUE) {
            double dE = Cnew.E(j, m31286do());
            double d = this.f8453if;
            Double.isNaN(d);
            double d2 = d + dE;
            if (d2 > Long.MAX_VALUE || d2 < Long.MIN_VALUE) {
                m10072for(j);
            }
            j2 = (long) d2;
        } else {
            long j3 = this.f8453if;
            j2 = j3 + jH;
            if ((jH ^ j3) >= 0 && (j3 ^ j2) < 0) {
                m10072for(j);
            }
        }
        this.f8453if = j2;
    }
}
