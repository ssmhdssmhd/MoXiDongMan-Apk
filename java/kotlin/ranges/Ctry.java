package kotlin.ranges;

import android.support.v4.iz1;
import android.support.v4.m41;
import android.support.v4.um0;
import androidx.exifinterface.media.ExifInterface;
import kotlin.Cwhile;
import kotlin.jvm.internal.Csuper;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000B\n\u0002\u0010\u000f\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0000\n\u0002\u0010\u001c\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0004\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a2\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003\"\u000e\b\u0000\u0010\u0001*\b\u0012\u0004\u0012\u00028\u00000\u0000*\u00028\u00002\u0006\u0010\u0002\u001a\u00028\u0000H\u0086\u0002¢\u0006\u0004\b\u0004\u0010\u0005\u001a\u001b\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00060\u0007*\u00020\u00062\u0006\u0010\u0002\u001a\u00020\u0006H\u0087\u0002\u001a\u001b\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\u0007*\u00020\t2\u0006\u0010\u0002\u001a\u00020\tH\u0087\u0002\u001aB\u0010\u0010\u001a\u00020\u000f\"\b\b\u0000\u0010\u0001*\u00020\u000b\"\u0018\b\u0001\u0010\r*\b\u0012\u0004\u0012\u00028\u00000\f*\b\u0012\u0004\u0012\u00028\u00000\u0003*\u00028\u00012\b\u0010\u000e\u001a\u0004\u0018\u00018\u0000H\u0087\n¢\u0006\u0004\b\u0010\u0010\u0011\u001a\u0018\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0012\u001a\u00020\u000f2\u0006\u0010\u0014\u001a\u00020\u0013H\u0000¨\u0006\u0017"}, d2 = {"", ExifInterface.GPS_DIRECTION_TRUE, "that", "Lkotlin/ranges/ClosedRange;", "try", "(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lkotlin/ranges/ClosedRange;", "", "Lkotlin/ranges/ClosedFloatingPointRange;", "for", "", "new", "", "", "R", "element", "", "if", "(Ljava/lang/Iterable;Ljava/lang/Object;)Z", "isPositive", "", "step", "Landroid/support/v4/ub2;", "do", "kotlin-stdlib"}, k = 5, mv = {1, 5, 1}, xs = "kotlin/ranges/RangesKt")
/* renamed from: kotlin.ranges.try, reason: invalid class name */
/* loaded from: classes3.dex */
class Ctry {
    /* renamed from: do, reason: not valid java name */
    public static final void m30958do(boolean z, @m41 Number step) {
        Csuper.m30700throw(step, "step");
        if (z) {
            return;
        }
        throw new IllegalArgumentException("Step must be positive, was: " + step + org.apache.commons.lang3.Ctry.f28883do);
    }

    @m41
    @iz1(version = "1.1")
    /* renamed from: for, reason: not valid java name */
    public static final ClosedFloatingPointRange<Double> m30959for(double d, double d2) {
        return new Cdo(d, d2);
    }

    /* JADX WARN: Incorrect types in method signature: <T:Ljava/lang/Object;R::Ljava/lang/Iterable<+TT;>;:Lkotlin/ranges/ClosedRange<TT;>;>(TR;TT;)Z */
    @iz1(version = "1.3")
    @um0
    /* renamed from: if, reason: not valid java name */
    private static final boolean m30960if(Iterable contains, Object obj) {
        Csuper.m30700throw(contains, "$this$contains");
        return obj != null && ((ClosedRange) contains).contains((Comparable) obj);
    }

    @m41
    @iz1(version = "1.1")
    /* renamed from: new, reason: not valid java name */
    public static final ClosedFloatingPointRange<Float> m30961new(float f, float f2) {
        return new Cif(f, f2);
    }

    @m41
    /* renamed from: try, reason: not valid java name */
    public static final <T extends Comparable<? super T>> ClosedRange<T> m30962try(@m41 T rangeTo, @m41 T that) {
        Csuper.m30700throw(rangeTo, "$this$rangeTo");
        Csuper.m30700throw(that, "that");
        return new Cfor(rangeTo, that);
    }
}
